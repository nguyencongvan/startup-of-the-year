-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2017 at 03:33 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_green`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE IF NOT EXISTS `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `color`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(17, 'Điện thoại', 'dien-thoai', 1, 0, '1', '#ff9800', '2017-03-08 23:04:22', '2', '2017-03-09 00:41:54', '2', 1, 1, 1, '', ''),
(18, 'Thiết bị âm thanh', 'thiet-bi-am-thanh', 1, 0, '5', '#8ac400', '2017-03-08 23:04:37', '2', '2017-03-26 16:12:58', '4', 1, 1, 1, '', ''),
(19, 'Laptop', 'laptop', 1, 0, '2', '#3c8dbc', '2017-03-08 23:04:48', '2', '2017-03-08 23:04:48', '2', 1, 1, 1, '', ''),
(20, 'Máy cũ', 'may-cu', 1, 0, '3', '#dd4b39', '2017-03-08 23:05:02', '2', '2017-03-08 23:05:02', '2', 1, 1, 1, '', ''),
(21, 'Phụ kiện', 'phu-kien', 1, 0, '4', '#00a65a', '2017-03-08 23:05:18', '2', '2017-03-08 23:05:18', '2', 1, 1, 1, '', ''),
(22, 'Kỹ thuật số', 'ky-thuat-so', 1, 0, '3', '#f39c12', '2017-03-08 23:07:11', '2', '2017-03-08 23:07:11', '2', 1, 1, 1, '', ''),
(23, 'Thiết bị văn phòng', 'thiet-bi-van-phong', 1, 0, '4', '#8ac400', '2017-03-08 23:07:48', '2', '2017-03-08 23:07:48', '2', 1, 1, 1, '', ''),
(24, 'Iphone', 'iphone', 2, 17, '0', '', '2017-03-08 23:08:14', '2', '2017-03-08 23:08:14', '2', 1, 1, 1, '', ''),
(25, 'Samsung', 'samsung', 2, 17, '', '', '2017-03-08 23:08:29', '2', '2017-03-08 23:08:29', '2', 1, 1, 1, '', ''),
(26, 'Oppo', 'oppo', 2, 17, '', '', '2017-03-08 23:08:47', '2', '2017-03-08 23:08:47', '2', 1, 1, 1, '', ''),
(27, 'Huawei', 'huawei', 2, 17, '0', '', '2017-03-08 23:09:00', '2', '2017-03-09 00:42:28', '2', 1, 1, 1, '', ''),
(28, 'Asus ( ĐT )', 'asus-dt', 2, 17, '0', '', '2017-03-08 23:09:15', '2', '2017-03-20 20:27:55', '4', 1, 1, 1, '', ''),
(29, 'LG', 'lg', 2, 17, '', '', '2017-03-08 23:09:24', '2', '2017-03-08 23:09:24', '2', 1, 1, 1, '', ''),
(30, 'Sony', 'sony', 2, 17, '', '', '2017-03-08 23:09:36', '2', '2017-03-08 23:09:36', '2', 1, 1, 1, '', ''),
(31, 'Khác', 'khac', 2, 17, '', '', '2017-03-08 23:09:47', '2', '2017-03-08 23:09:47', '2', 1, 1, 1, '', ''),
(32, 'Macbook', 'macbook', 2, 19, '0', '', '2017-03-09 00:44:17', '2', '2017-03-09 00:44:17', '2', 1, 1, 1, '', ''),
(33, 'HP', 'hp', 2, 19, '', '', '2017-03-09 00:44:42', '2', '2017-03-09 00:44:42', '2', 1, 1, 1, '', ''),
(34, 'Dell', 'dell', 2, 19, '', '', '2017-03-09 00:44:59', '2', '2017-03-09 00:44:59', '2', 1, 1, 1, '', ''),
(36, 'Lenovo', 'lenovo', 2, 19, '', '', '2017-03-09 00:47:07', '2', '2017-03-09 00:47:07', '2', 1, 1, 1, '', ''),
(37, 'Acer', 'acer', 2, 19, '', '', '2017-03-09 00:47:21', '2', '2017-03-09 00:47:21', '2', 1, 1, 1, '', ''),
(38, 'Pin sạc dự phòng', 'pin-sac-du-phong', 2, 21, '', '', '2017-03-09 00:47:51', '2', '2017-03-09 00:47:51', '2', 1, 1, 1, '', ''),
(39, 'Cáp sạc', 'cap-sac', 2, 21, '', '', '2017-03-09 00:48:46', '2', '2017-03-09 00:48:46', '2', 1, 1, 1, '', ''),
(40, 'Thẻ nhớ', 'the-nho', 2, 21, '', '', '2017-03-09 00:49:01', '2', '2017-03-09 00:49:01', '2', 1, 1, 1, '', ''),
(41, 'Tai nghe', 'tai-nghe', 2, 21, '', '', '2017-03-09 00:49:14', '2', '2017-03-09 00:49:14', '2', 1, 1, 1, '', ''),
(42, 'USB', 'usb', 2, 21, '', '', '2017-03-09 00:49:24', '2', '2017-03-09 00:49:24', '2', 1, 1, 1, '', ''),
(43, 'Chuột', 'chuot', 2, 21, '', '', '2017-03-09 00:49:51', '2', '2017-03-09 00:49:51', '2', 1, 1, 1, '', ''),
(44, 'Loa', 'loa', 2, 21, '', '', '2017-03-09 00:50:04', '2', '2017-03-09 00:50:04', '2', 1, 1, 1, '', ''),
(45, 'Đồng hồ', 'dong-ho', 2, 21, '', '', '2017-03-09 00:50:13', '2', '2017-03-09 00:50:13', '2', 1, 1, 1, '', ''),
(46, 'Ốp lưng điện thoại', 'op-lung-dien-thoai', 2, 21, '', '', '2017-03-09 00:50:43', '2', '2017-03-09 00:50:43', '2', 1, 1, 1, '', ''),
(47, 'Ốp lưng máy tính bản', 'op-lung-may-tinh-ban', 2, 21, '', '', '2017-03-09 00:50:59', '2', '2017-03-09 00:50:59', '2', 1, 1, 1, '', ''),
(48, 'Miếng dán màn hình', 'mieng-dan-man-hinh', 2, 21, '', '', '2017-03-09 00:51:14', '2', '2017-03-09 00:51:14', '2', 1, 1, 1, '', ''),
(49, 'Hãng Apple', 'hang-apple', 2, 21, '', '', '2017-03-09 00:52:22', '2', '2017-03-09 00:52:22', '2', 1, 1, 1, '', ''),
(50, 'Hãng Sony', 'hang-sony', 2, 21, '', '', '2017-03-09 00:52:33', '2', '2017-03-09 00:52:33', '2', 1, 1, 1, '', ''),
(51, 'Phụ kiện khác', 'phu-kien-khac', 2, 21, '', '', '2017-03-09 00:53:41', '2', '2017-03-09 00:53:41', '2', 1, 1, 1, '', ''),
(52, 'Máy tính bảng', 'may-tinh-bang', 1, 0, '2', '#00c0ef', '2017-03-20 20:05:11', '4', '2017-03-20 20:05:11', '4', 1, 1, 1, '', ''),
(53, 'Asus (LT)', 'asus-lt', 2, 19, '', '', '2017-03-20 20:28:59', '4', '2017-03-20 20:28:59', '4', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE IF NOT EXISTS `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(64) NOT NULL,
  `mail_port` smallint(6) NOT NULL,
  `mail_info` varchar(64) NOT NULL,
  `mail_noreply` varchar(64) NOT NULL,
  `mail_password` varchar(64) NOT NULL,
  `priceShip` mediumtext NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keyword` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_port`, `mail_info`, `mail_noreply`, `mail_password`, `priceShip`, `title`, `description`, `keyword`) VALUES
(1, '', 29, 'hodienloi', 'hodienloi@', '', '30000', 'Web site bán hàng Demo', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE IF NOT EXISTS `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `view` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `trash` int(11) NOT NULL DEFAULT '1',
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `view`, `status`, `trash`, `fullname`) VALUES
(1, '', '01234567891', 'lenhsangcntt1508@gmail.com', 'aaa', '0000-00-00 00:00:00', 1, 1, 1, 'lenhsang');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE IF NOT EXISTS `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE IF NOT EXISTS `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `gender`, `birthday`, `address`, `phone`, `email`, `created`, `trash`, `access`, `status`) VALUES
(1, 'Ngô Trung Phát', 'trungphatit', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292459', 'ngotrungphat.admin@gmail.com', '2017-04-19 23:34:03', 1, 1, 1),
(8, '', '', '', NULL, '0000-00-00', '', '', 'ngotrungphat@gmail.com', '2017-04-25 23:28:14', 1, 1, 1),
(23, '', '', '', NULL, '0000-00-00', '', '', 'trungphong3913@gmail.com', '2017-04-27 03:26:32', 1, 1, 1),
(4, '', '', '', NULL, '0000-00-00', '', '', 'admin@gmail.com', '2017-04-22 10:15:10', 1, 1, 1),
(5, '', '', '', NULL, '0000-00-00', '', '', 'customer@gmail.com', '2017-04-22 10:33:51', 1, 1, 1),
(6, '', '', '', NULL, '0000-00-00', '', '', 'phat123@gmail.com', '2017-04-22 10:53:23', 1, 1, 1),
(7, '', '', '', NULL, '0000-00-00', '', '', 'shopping@gmail.com', '2017-04-25 21:44:05', 1, 1, 1),
(15, 'admin002', 'admin002', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292454', 'admin002@gmail.com', '2017-04-26 00:18:47', 1, 1, 1),
(14, 'admin001', 'admin001', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292453', 'admin001@gmail.com', '2017-04-26 00:17:43', 1, 1, 1),
(13, 'admintest02', 'admintest02', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292451', 'admintest02@gmail.com', '2017-04-26 00:04:27', 1, 1, 1),
(16, 'admin009', 'admin009', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '09876543299', 'admin009@gmail.com', '2017-04-26 00:26:07', 1, 1, 1),
(17, 'supperadmin001', 'supperadmin001', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567819', 'supperadmin001@gmil.com', '2017-04-27 02:06:45', 1, 1, 1),
(18, 'admina1222', 'admina1', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567812', 'admina1@gmail.com', '2017-04-27 02:12:48', 1, 1, 1),
(19, 'admin123', 'admin123', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567813', 'admin123@gmail.com', '2017-04-27 02:15:37', 1, 1, 1),
(20, 'admin1234', 'admin1234', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567814', 'admin1234@gmail.com', '2017-04-27 02:24:23', 1, 1, 1),
(38, '', '', '', NULL, '0000-00-00', '', '', 'abcaxyz@gmail.com', '2017-05-13 00:52:23', 1, 1, 1),
(35, 'Sale 24hStore', 'Sale 24hStore', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567878', 'sale.24hstore@gmail.com', '2017-05-05 21:03:20', 1, 1, 1),
(39, 'Ngo Trung Phat', 'Phat Admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '0102030405', 'customer.24hstore@gmail.com', '2017-05-13 08:20:53', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE IF NOT EXISTS `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(6) NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `money` int(12) NOT NULL,
  `province` int(10) NOT NULL,
  `district` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE IF NOT EXISTS `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE IF NOT EXISTS `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `trash` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Apple', 'APPLE', 'dienthoai, maytinhbang,phukien, laptop,phukien', '2017-04-10 22:18:45', 4, '2017-04-11 20:31:52', 6, 1, 1),
(2, 'Samsung', 'SAMSUNG', 'dienthoai, maytinhbang,dongho,phukien', '2017-04-10 22:35:02', 4, '2017-04-11 20:31:44', 6, 1, 1),
(3, 'Oppo', 'OPPO', 'dienthoai, maytinhbang,phukien', '2017-04-10 22:35:16', 4, '2017-04-11 20:30:27', 6, 1, 1),
(4, 'Sony', 'SONY', 'dienthoai, maytinhbang, phukien, laptop', '2017-04-10 22:50:16', 4, '2017-04-10 22:52:45', 4, 1, 1),
(5, 'Asus', 'ASUS', 'dienthoai, maytinhbang, laptop,phukien', '2017-04-10 22:50:36', 4, '2017-04-11 20:28:30', 6, 1, 1),
(6, 'HTC', 'HTC', 'dienthoai, maytinhbang,phukien', '2017-04-10 22:50:54', 4, '2017-04-11 20:30:17', 6, 1, 1),
(7, 'Nokia', 'NOKIA', 'dienthoai, maytinhbang', '2017-04-10 22:51:44', 4, '2017-04-10 22:51:44', 4, 1, 1),
(8, 'Huawei', 'HUAWEi', 'dienthoai, maytinhbang,phukien', '2017-04-10 22:52:01', 4, '2017-04-11 20:28:37', 6, 1, 1),
(9, 'LG', 'LG', 'dienthoai, maytinhbang, laptop,phukien', '2017-04-10 22:52:09', 4, '2017-04-11 20:28:46', 6, 1, 1),
(11, 'Apacer,Sandisk,Transcend', 'usb', 'usbapacer,usbSandisk,usbTranscend', '2017-04-11 19:52:11', 6, '2017-04-11 19:56:53', 6, 1, 0),
(12, 'Micro', 'thenho', 'thenhomicro', '2017-04-11 20:01:46', 6, '2017-04-11 20:01:46', 6, 1, 1),
(13, 'iphone', 'iphone', 'dienthoai,maytinh,dongho', '2017-04-11 20:07:00', 6, '2017-04-11 20:07:00', 6, 1, 0),
(14, 'Xmobile', 'Xmobile', 'oplungXmobile', '2017-04-11 20:17:55', 6, '2017-04-11 20:17:55', 6, 1, 0),
(15, 'lenovo', 'lenovo', 'dienthoai, maytinhbang, laptop,phukien', '2017-04-11 20:59:37', 6, '2017-04-11 20:59:37', 6, 1, 1),
(16, 'Mobell', 'Molbell', 'dienthoai, maytinhbang, laptop,phukien', '2017-04-11 21:00:34', 6, '2017-04-11 21:00:34', 6, 1, 1),
(17, 'Acer', 'Acer', 'laptop,maytinhbang', '2017-04-11 21:03:58', 6, '2017-04-11 21:03:58', 6, 1, 1),
(18, 'HP', 'HP', 'laptop', '2017-04-12 19:05:09', 6, '2017-04-12 19:05:09', 6, 1, 1),
(19, 'Dell', 'Dell', 'laptop', '2017-04-12 19:09:47', 6, '2017-04-12 19:09:47', 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE IF NOT EXISTS `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `sortDesc` text NOT NULL,
  `detail` text NOT NULL,
  `producer` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(1, 32, 'Laptop Apple Macbook Air MMGF2ZP/A i5 5250U/8GB/128GB', 'laptop-apple-macbook-air-mmgf2zp-a-i5-5250u-8gb-128gb', '025bcbc48b6aa9049c378438846e723a.png', '6420c5f45052e150ada8fb7013ecf13b.jpg#9a0b8ea1d50572e065a086eee90180b4.jpg#78dfa7e526e609e101dfd6e410f9c2fa.jpg#62bdc34f2b3d1cc61824c45e99c80d08.jpg#f29182840d76571ca7cb386149323828.jpg#ea039d9325a0463faf823cbfedea1193.jpg', 'Apple Macbook Air 2015 i5/8 GB/128 GB – Mới hơn, mạnh mẽ hơn\r\nMacbook Air là dòng laptop nổi bật của Apple, được người dùng ưa chuộng trong suốt thời gian dài kể từ ngày chính thức ra mắt. Với thiết kế gần như hoàn hảo, hiệu năng mượt mà, phiên bản Macbook Air 2015 13 inch sẽ còn tối ưu hơn khi được trang bị card đồ họa tích hợp Intel HD Graphics 6000, thanh RAM 8 GB mạnh mẽ, ổ cứng lưu trữ SSD tốc độ tăng gấp đôi 128 GB và bộ vi xử lý mới từ Intel. ', '<h2>Apple Macbook Air 2015 i5/8 GB/128 GB &ndash; Mới hơn, mạnh mẽ hơn</h2>\r\n\r\n<p><strong><a href="https://www.thegioididong.com/laptop-apple-macbook" target="_blank">Macbook</a>&nbsp;Air&nbsp;l&agrave; d&ograve;ng laptop nổi bật của Apple, được người d&ugrave;ng ưa chuộng trong suốt thời gian d&agrave;i kể từ ng&agrave;y ch&iacute;nh thức ra mắt. Với thiết kế gần như ho&agrave;n hảo, hiệu năng mượt m&agrave;, phi&ecirc;n bản Macbook Air 2015 13 inch sẽ c&ograve;n tối ưu hơn khi được trang bị&nbsp;<a href="https://www.thegioididong.com/tin-tuc/card-do-hoa-onboard-tren-laptop-594905" target="_blank">card đồ họa t&iacute;ch hợp Intel</a>&nbsp;HD Graphics 6000, thanh RAM 8 GB mạnh mẽ,&nbsp;<a href="https://www.thegioididong.com/tin-tuc/o-cung-la-gi-co-may-loai--590183#ssd" target="_blank">ổ cứng lưu trữ SSD</a>&nbsp;tốc độ tăng gấp đ&ocirc;i 128 GB v&agrave; bộ vi xử l&yacute; mới từ Intel.&nbsp;</strong></p>\r\n\r\n<h3><strong>Thiết kế</strong></h3>\r\n\r\n<p>So với c&aacute;c phi&ecirc;n bản trước đ&oacute;&nbsp;Macbook Air 2015&nbsp;13 inch/8 GB/128 GB hay gọi tắt l&agrave; Macbook Air 2015 kh&ocirc;ng c&oacute; sự thay đổi kh&aacute;c biệt. M&aacute;y vẫn được trang bị lớp vỏ nh&ocirc;m nguy&ecirc;n khối Unibody rất đẹp v&agrave; chắc chắn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/a1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Thiết kế si&ecirc;u mỏng v&agrave; si&ecirc;u nhẹ l&yacute; tưởng, chỉ mỏng 1.7 cm v&agrave; trọng lượng l&agrave; 1.35 kg, rất tiện lợi v&agrave; dễ d&agrave;ng để bạn lu&ocirc;n mang theo b&ecirc;n m&igrave;nh</em></p>\r\n\r\n<p>Logo quả t&aacute;o Apple ph&aacute;t s&aacute;ng mặt tr&ecirc;n m&aacute;y tạo điểm nhấn kh&aacute;c biệt v&agrave; đầy sang trọng khi kết hợp c&ugrave;ng vỏ m&agrave;u bạc qu&yacute; ph&aacute;i. Macbook Air 2015 sẽ mang đến cho bạn kh&ocirc;ng chỉ một sản phẩm c&ocirc;ng nghệ cao m&agrave; c&ograve;n l&agrave; một m&oacute;n trang sức đầy quyến rũ.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/a2.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Chi tiết thiết kế được n&acirc;ng cấp đ&oacute; ch&iacute;nh l&agrave; cổng Thunderbolt thế hệ thứ hai m&agrave; nh&igrave;n v&agrave;o bằng mắt ch&uacute;ng ta sẽ kh&ocirc;ng nhận ra được</em></p>\r\n\r\n<h3><strong>Cổng Thunderbolt thế hệ thứ 2</strong></h3>\r\n\r\n<p>Cổng Thunderbolt 2 tr&ecirc;n Macbook Air 2015 về mặt l&yacute; thuyết cho tốc độ cao hơn gấp đ&ocirc;i so với Thunderbolt 1, tốc độ truyền tải dữ liệu được đo l&agrave; 20 GBps, hỗ trợ ch&eacute;p file nhanh hơn gấp đ&ocirc;i so với chuẩn cũ. Đồng thời c&ograve;n c&oacute; thể xuất h&igrave;nh ảnh độ ph&acirc;n giải cao ra m&agrave;n h&igrave;nh 4K v&agrave; thậm ch&iacute; l&agrave; 5K.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/a3.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Ngo&agrave;i cổng giao tiếp Thunderbolt 2 th&igrave; Macbook Air 2015 c&ograve;n c&oacute; 2 cổng&nbsp;<a href="https://www.thegioididong.com/usb/usb-transcend-jetflash-790-16gb-30" target="_blank">USB 3.0</a>, SD card</em></p>\r\n\r\n<p>So với c&aacute;c sản phẩm laptop c&ugrave;ng ph&acirc;n kh&uacute;c th&igrave; c&aacute;c cổng kết nối của Macbook Air 2015 thua thiệt hơn khi kh&ocirc;ng c&oacute; cổng LAN,&nbsp;<a href="https://www.thegioididong.com/tin-tuc/hdmi-la-gi--590061" target="_blank">HDMI</a>&nbsp;v&agrave; ổ đĩa quang.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, x&eacute;t cho c&ugrave;ng, với sự phong ph&uacute; của internet cũng như mạng wifi phổ biến hiện nay, th&igrave; gần như người d&ugrave;ng c&oacute; thể t&igrave;m thấy mọi thứ m&agrave; kh&ocirc;ng c&ograve;n cần đến ổ đĩa quang hay cổng LAN truyền thống nữa rồi.</p>\r\n\r\n<h3><strong>Hiệu năng</strong></h3>\r\n\r\n<p>Macbook Air 2015 được cập nhật phần cứng mới n&ecirc;n mang lại hiệu năng cao hơn thế hệ trước. Bạn sẽ c&oacute; bộ xử l&yacute; Intel core i5 thế hệ thứ năm hoạt động theo&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#broadwell" target="_blank">kiến tr&uacute;c Broadwell</a>, hai nh&acirc;n xung nhịp 1.6 GHz. M&aacute;y cũng được trang bị card đồ họa t&iacute;ch hợp Intel HD Graphics 6000.</p>\r\n\r\n<p>Với cấu h&igrave;nh n&agrave;y, mọi nhu cầu c&ocirc;ng việc văn ph&ograve;ng hay giải tr&iacute; của bạn đều l&agrave;m việc một c&aacute;ch trơn tru mượt m&agrave; v&agrave; kh&ocirc;ng g&acirc;y bất cứ một kh&oacute; chịu n&agrave;o.&nbsp;</p>\r\n\r\n<p><a href="https://www.thegioididong.com/tin-tuc/ram-laptop-599009" target="_blank">Bộ nhớ RAM</a>&nbsp;8 GB cho bạn những t&aacute;c vụ đa nhiệm mượt m&agrave;. C&oacute; một điều người d&ugrave;ng Macbook hay gặp phải đ&oacute; l&agrave; khi kiểm tra dung lượng trống của RAM th&igrave; hầu như sẽ thấy n&oacute; lu&ocirc;n trong t&igrave;nh trạng gần hết, tuy nhi&ecirc;n bạn đừng lo lắng v&igrave; điều n&agrave;y bởi Apple đ&atilde; tối ưu hệ thống của họ, dung lượng RAM lu&ocirc;n được sử dụng gần mức tối đa nhằm mang lại một hiệu suất cao nhất.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/a4.jpg" style="width:100%" /></p>\r\n\r\n<p>Ổ cứng lưu trữ SSD theo chuẩn PCIe c&oacute; tốc độ đọc v&agrave; ghi dữ liệu cao hơn 2 lần so với thế hệ trước v&agrave; nhanh bằng với tốc độ của SSD tr&ecirc;n Mac Pro tức đạt gần 1300 Mbps. Việc n&acirc;ng cấp tốc độ ổ SSD hứa hẹn sẽ cải thiện đ&aacute;ng kể tốc độ thực thi của m&aacute;y v&agrave; cho những trải nghiệm&nbsp;khi d&ugrave;ng ở mức tốt hơn.</p>\r\n\r\n<p>Hiện nay SSD tr&ecirc;n c&aacute;c m&aacute;y Macbook cũ ở mức khoảng hơn 700 MB/s, tr&ecirc;n&nbsp;Macbook Pro&nbsp;Retina 2014 cũng chỉ khoảng gần 1000 MB/s. Với dung lượng SSD 128 GB cho phi&ecirc;n bản n&agrave;y th&igrave; sẽ ph&ugrave; hợp hơn cho người d&ugrave;ng cần tốc độ mạnh để xử l&yacute; m&agrave; kh&ocirc;ng cần lưu trữ nhiều.</p>\r\n\r\n<p>Ổ cứng flash SSD thể rắn kh&ocirc;ng c&oacute; bất kỳ bộ phận chuyển động n&agrave;o trong ổ n&ecirc;n m&aacute;y hoạt động rất y&ecirc;n tĩnh v&agrave; đặt biệt l&agrave; rất bền bỉ.</p>\r\n\r\n<p>Một điều rất nhiều người d&ugrave;ng ưa th&iacute;ch khi sở hữu một m&aacute;y Macbook sử dụng ổ SSD đ&oacute; l&agrave; hiếm khi họ cần tắt m&aacute;y, khi c&oacute; việc cần di chuyển, bạn chỉ cần gập m&aacute;y lại v&agrave; đi m&agrave; kh&ocirc;ng c&oacute; bất kỳ ảnh hưởng n&agrave;o, đến khi cần sử dụng lại bạn mở ra v&agrave; ngay lập tức mọi thứ đ&atilde; sẵn s&agrave;ng.</p>\r\n\r\n<p>Đồng thời ổ cứng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/o-cung-ssd-la-gi-923073" target="_blank">SSD</a>&nbsp;cực kỳ tiết kiệm năng lượng, cho ph&eacute;p chiếc MacBook Air 2015 của bạn khả năng chờ l&ecirc;n đến một th&aacute;ng m&agrave; kh&ocirc;ng cần cắm sạc.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh độ ph&acirc;n giải kh&aacute;</strong></h3>\r\n\r\n<p>Tr&ecirc;n phi&ecirc;n bản mới n&agrave;y, Macbook Air 2015 với m&agrave;n h&igrave;nh rộng 13.3 inch vẫn giữ nguy&ecirc;n độ ph&acirc;n giải l&agrave; 1440 x 900 pixels, đạt mật độ khoảng 128ppi. H&igrave;nh ảnh hiển thị kh&aacute; chất lượng, tươi s&aacute;ng.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, so trong hệ sinh th&aacute;i m&aacute;y m&oacute;c của Apple th&igrave; hiện Macbook Air vẫn l&agrave; d&ograve;ng c&oacute; m&agrave;n h&igrave;nh với mật độ điểm ảnh thấp, kh&ocirc;ng trang bị&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-cong-nghe-hien-thi-tren-man-hinh-laptop-597377#retina" target="_blank">m&agrave;n h&igrave;nh Retina</a>, đ&acirc;y l&agrave; một điều đ&aacute;ng tiếc tr&ecirc;n phi&ecirc;n bản 2015 n&agrave;y.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, đ&oacute; cũng l&agrave; một yếu tố khiến gi&aacute; của sản phẩm mềm hơn, l&agrave; cơ hội cho người d&ugrave;ng c&oacute; thể sở hữu được si&ecirc;u phẩm của Apple.</p>\r\n\r\n<h3><strong>B&agrave;n r&ecirc; cảm ứng v&agrave; b&agrave;n ph&iacute;m</strong></h3>\r\n\r\n<p><strong><img alt="" src="/TTTN-Green/public/upload/a5.jpg" style="width:100%" /></strong></p>\r\n\r\n<p>Tr&ecirc;n phi&ecirc;n bản n&acirc;ng cấp 2015 của Macbook Air, Apple đ&atilde; kh&ocirc;ng cập nhật b&agrave;n r&ecirc; chuột c&ocirc;ng nghệ mới Force Touch của h&atilde;ng. Tuy nhi&ecirc;n, b&agrave;n r&ecirc; cảm ứng hiện tại vẫn cho trải nghiệm mượt m&agrave; khi di ng&oacute;n tay, độ ma s&aacute;t thấp, thao t&aacute;c phong ph&uacute;, tương t&aacute;c với hệ điều h&agrave;nh, cảm gi&aacute;c như bạn đang đi tr&ecirc;n một m&agrave;n h&igrave;nh cảm ứng.</p>\r\n\r\n<p>V&iacute; dụ như khi cuộn trang web, n&oacute; rất giống khi ta đang vuốt tr&ecirc;n m&agrave;n h&igrave;nh cảm ứng, di chuyển mượt v&agrave; dừng lại đ&uacute;ng chỗ khi dừng ng&oacute;n tay. Với&nbsp;<a href="https://www.thegioididong.com/hoi-dap/cu-chi-thong-minh-voi-trackpad-tren-mac-os-848490" target="_blank">Trackpad</a>&nbsp;của Apple, hầu hết người d&ugrave;ng đều qu&ecirc;n đi sự hiện diện của con chuột m&aacute;y t&iacute;nh.</p>\r\n\r\n<p>Thiết kế b&agrave;n ph&iacute;m chiclet cho c&aacute;c ph&iacute;m bấm gọn g&agrave;ng, tinh tế. Với c&aacute;c ph&iacute;m vừa tay, khoảng c&aacute;ch giữa c&aacute;c ph&iacute;m th&iacute;ch hợp việc thao t&aacute;c tiện lợi v&agrave; chuẩn x&aacute;c. Độ đ&agrave;n hồi của c&aacute;c ph&iacute;m kh&aacute; tốt c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/cach-bat-den-ban-phim-macbook-956542" target="_blank">đ&egrave;n nền backlit</a>&nbsp;tạo cảm gi&aacute;c thoải m&aacute;i v&agrave; dễ d&agrave;ng khi g&otilde;, nhập văn bản ngay cả trong điều kiện &aacute;nh s&aacute;ng yếu.</p>\r\n\r\n<h3><strong>Thời lượng pin khủng - 12 giờ sử dụng</strong></h3>\r\n\r\n<p>MacBook Air 2015 cho thời gian đến 12 giờ sử dụng sau một lần sạc đầy. Đ&oacute; l&agrave; thời lượng pin rất ấn tượng đối với bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay n&agrave;o. H&atilde;y tưởng tượng chỉ cần sạc đầy l&agrave; bạn c&oacute; thể y&ecirc;n t&acirc;m mang m&aacute;y đi khắp nơi suốt ng&agrave;y l&agrave;m việc m&agrave; kh&ocirc;ng cần quan t&acirc;m đến thiết bị sạc c&ugrave;ng ổ cắm điện.</p>\r\n\r\n<p>Ngo&agrave;i ra, những cải tiến từ Apple cho ph&eacute;p bạn sạc đến 1000 lần thời gian xả đầy đủ chu kỳ v&agrave; chế độ chờ l&ecirc;n đến 30 ng&agrave;y.</p>\r\n\r\n<h3><strong>Hệ điều h&agrave;nh OS X El Capitan</strong></h3>\r\n\r\n<p>Tất cả những thiết bị Macbook của Apple đều được c&agrave;i đặt sẵn&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-cac-he-dieu-hanh-tren-laptop-599737#macosx" target="_blank">hệ điều h&agrave;nh bản quyền OS X</a>. Tr&ecirc;n Macbook Air 2015, bạn cũng sẽ được trải nghiệm hệ điều h&agrave;nh OS X El Capitan mới nhất v&ocirc; c&ugrave;ng ho&agrave;n hảo. Hệ thống hoạt động mượt m&agrave;, ứng dụng, phần mềm ng&agrave;y c&agrave;ng phong ph&uacute; được tải về trực tiếp từ &nbsp;App Store.</p>\r\n\r\n<p>Một điều đ&aacute;ng gi&aacute; nữa để bạn lựa chọn hệ điều h&agrave;nh n&agrave;y đ&oacute; l&agrave; người d&ugrave;ng Macbook kh&ocirc;ng cần quan t&acirc;m đến vấn đề virus m&aacute;y t&iacute;nh, do t&iacute;nh năng bảo mật cực kỳ cao. Việc phải c&agrave;i lại m&aacute;y l&agrave; rất hiếm khi xảy ra bởi Apple thường xuy&ecirc;n cung cấp c&aacute;c bản cập nhật v&aacute; lỗi miễn ph&iacute; cho người d&ugrave;ng.</p>\r\n\r\n<p>Với OS X El Capitan tr&ecirc;n Macbook, nếu bạn c&oacute; một chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a>&nbsp;th&igrave; mọi thứ dường như l&agrave; một tr&ecirc;n cả&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">điện thoại</a>&nbsp;v&agrave;&nbsp;<a href="https://www.thegioididong.com/laptop" target="_blank">m&aacute;y t&iacute;nh</a>&nbsp;của bạn. Chức năng đồng bộ, nghe gọi, nhắn tin, l&agrave;m việc với văn bản, h&igrave;nh ảnh&hellip; của điện thoại đều c&oacute; thể thực hiện tr&ecirc;n một chiếc Macbook. Trải nghiệm tuyệt vời c&ugrave;ng một hệ điều h&agrave;nh độc quyền l&agrave; hiển nhi&ecirc;n khi bạn sỡ hữu n&oacute;.&nbsp;</p>\r\n', '1', 150, 150, 0, 23990000, 23990000, '2017-05-23 20:32:30', '4', '2017-05-23 20:32:30', '4', 1, 1, 1, '', ''),
(33, 24, 'Điện thoại iPhone 7 Plus 32GB', 'dien-thoai-iphone-7-plus-32gb', '8c971a3b7154693faff84bf5500c7f3a.jpg', '0092fefcac38133d05cdf20d639d212a.jpg#04c62e941746350538f64a1448880540.jpg#813b0d98857860933cb27b5e4681769e.jpg', 'Với thiết kế không quá nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus,  iPhone 7 Plus 32GB được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh.', '<h2><strong>Với thiết kế kh&ocirc;ng qu&aacute; nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6-plus-64gb" target="_blank">iPhone 6 Plus</a>, &nbsp;iPhone 7 Plus&nbsp;được trang bị nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; như camera k&eacute;p, đạt chuẩn chống nước chống bụi c&ugrave;ng cấu h&igrave;nh cực mạnh.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb1-1.jpg" /><br />\r\nThay đổi d&atilde;y nhựa an-ten bắt s&oacute;ng được đưa v&ograve;ng l&ecirc;n tr&ecirc;n thay v&igrave; cắt ngang ở mặt lưng như trước.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb2-1.jpg" /><br />\r\nN&uacute;t Home quen thuộc kh&ocirc;ng c&ograve;n l&agrave; ph&iacute;m vật l&yacute; nữa m&agrave; được thay thế bằng cảm ứng, n&oacute; sẽ rung l&ecirc;n khi bạn ấn. V&igrave; đ&atilde; d&ugrave;ng iPhone một thời gian rất d&agrave;i, n&ecirc;n t&ocirc;i c&ocirc;ng nhận rằng hơi kh&oacute; để l&agrave;m quen với n&oacute;, nhưng c&oacute; lẽ chỉ mất v&agrave;i ng&agrave;y th&ocirc;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb3-1.jpg" /><br />\r\nCuối c&ugrave;ng ch&uacute;ng ta cũng c&oacute; được chiếc iPhone vẫn sống khi rơi v&agrave;o nước hay đi mưa kh&ocirc;ng cần phải loay hoay t&igrave;m chỗ cất v&igrave; Apple đ&atilde; mang chuẩn chống nước IP67 cho iphone 7 plus .(Lưu &yacute;: kh&ocirc;ng n&ecirc;n cố t&igrave;nh ng&acirc;m nước v&igrave; nếu c&oacute; thiệt hại do v&agrave;o nước sẽ kh&ocirc;ng được Apple bảo h&agrave;nh).</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb4-1.jpg" /><br />\r\nM&agrave;n h&igrave;nh Retina tr&ecirc;n 7 Plus hỗ trợ DCI-P3 gam m&agrave;u rộng, nghĩa l&agrave; ch&uacute;ng c&oacute; khả năng t&aacute;i tạo m&agrave;u sắc trong phạm vi của sRGB. N&oacute;i đơn giản, ch&uacute;ng c&oacute; thể hiển thị sống động hơn, sắc th&aacute;i h&igrave;nh ảnh tốt hơn trước đ&oacute;. Độ ph&acirc;n giải, mật độ điểm ảnh v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh vẫn giữ nguy&ecirc;n so với iPhone 6s Plus.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb5-1.jpg" /><br />\r\nLần đầu ti&ecirc;n iPhone xuất hiện t&iacute;nh năng &acirc;m thanh Stereo. Phim ảnh, podcast v&agrave; c&aacute;c cuộc gọi loa ngo&agrave;i b&acirc;y giờ &acirc;m thanh r&otilde; r&agrave;ng hơn rất nhiều. Đ&oacute; l&agrave; do Apple đ&atilde; d&ugrave;ng c&ocirc;ng nghệ thiết lập loa chứ kh&ocirc;ng phải thiết kế 2 loa ngay tr&ecirc;n mặt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb6-.jpg" /></p>\r\n\r\n<p>iPhone 7 Plus l&agrave;&nbsp;chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau. Camera th&ocirc;ng thường vẫn chụp h&igrave;nh g&oacute;c rộng, c&ograve;n camera thứ hai c&oacute; ti&ecirc;u cự ph&ugrave; hợp để chụp ch&acirc;n dung, c&oacute; t&iacute;nh năng chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng (l&agrave;m mờ hậu cảnh).&nbsp;</p>\r\n\r\n<p>Với 1 chạm nhanh ch&oacute;ng bạn c&oacute; thể chuyển đổi giữa chế độ 1x v&agrave; zoom 2x, hoặc bạn c&oacute; thể k&eacute;o thanh trượt hay d&ugrave;ng 2 ng&oacute;n tay đến zoom. Apple đ&atilde; th&ecirc;m t&iacute;nh năng zoom kỹ thuật số l&ecirc;n đến 10x.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb8-1.jpg" /><br />\r\nĐiểm nhấn ấn tượng nhất nằm ở mặt lưng của sản phẩm với hiệu ứng phản chiếu &aacute;nh s&aacute;ng khi thay đổi g&oacute;c nh&igrave;n rất đặc biệt. Hiệu ứng n&agrave;y cũng được &aacute;p dụng cho to&agrave;n bộ khung m&aacute;y, từ cạnh tr&ecirc;n, cạnh dưới cho đến c&aacute;c n&uacute;t bấm n&ecirc;n cho cảm gi&aacute;c một thiết bị cực kỳ ho&agrave;n thiện, gần như kh&ocirc;ng c&oacute; bất kỳ một chi tiết thừa n&agrave;o cả.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb9.jpg" /></p>\r\n\r\n<p>Ngo&agrave;i tr&aacute;i tim&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">Apple A10 Fusion 4 nh&acirc;n</a>&nbsp;với hiệu năng cực k&igrave; mạnh mẽ v&agrave; ấn tượng th&igrave; iPhone 7 Plus c&ograve;n được trang bị hệ điều h&agrave;nh mới nhất IOS 10 với nhiều t&iacute;nh năng bất ngờ, v&agrave; th&uacute; vị.</p>\r\n\r\n<p>&ldquo;T&aacute;o khuyết&rdquo; cũng kh&ocirc;ng qu&ecirc;n nhấn mạnh iPhone 7 Plus sẽ nhanh hơn iPhone đời đầu tới&hellip; 140 lần. Những ai m&ecirc; chơi game tr&ecirc;n di động cũng sẽ &ldquo;phải l&ograve;ng&rdquo; iPhone mới khi c&oacute; chip xử l&yacute; đồ họa được n&acirc;ng tầm đ&uacute;ng chất &ldquo;m&aacute;y chơi game&rdquo;.</p>\r\n\r\n<p>Camera trước n&acirc;ng cấp độ ph&acirc;n giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiệu thiếu s&aacute;ng tuyệt vời với c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-tinh-nang-chup-anh-camera-truoc-769270#retinaflash" target="_blank">Retina Flash</a>, Auto HDR</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb10.jpg" /></p>\r\n\r\n<p>Iphone 7 plus theo bản th&acirc;n đ&aacute;nh gi&aacute; l&agrave; một sự lựa chọn hợp l&yacute; trong tầm gi&aacute;:</p>\r\n\r\n<ul>\r\n	<li><strong>Ưu điểm:</strong>\r\n\r\n	<ul>\r\n		<li>Hiệu năng rất cao</li>\r\n		<li>Camera trước sau rất tuyệt vời</li>\r\n		<li>Chống nước</li>\r\n		<li>Thời lượng pin tốt</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Nhược điểm:</strong>\r\n	<ul>\r\n		<li>Loại bỏ jack 3.5mm</li>\r\n		<li>Kh&ocirc;ng thay đổi thiết kế qu&aacute; nhiều mặc d&ugrave; đ&atilde; 3 năm</li>\r\n		<li>Ph&iacute;m Home cần thời gian để l&agrave;m quen</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '1', 10, 10, 0, 21990000, 20990000, '2017-05-23 19:01:41', '6', '2017-05-23 19:01:41', '6', 1, 1, 1, '', ''),
(3, 32, 'Laptop Apple Macbook Pro MF839ZP/A i5 5257U/8GB/128GB', 'laptop-apple-macbook-pro-mf839zp-a-i5-5257u-8gb-128gb', '39ef8ab4354c4e98853aa4ea2a220ac3.png', 'd00a0cf5e276ddcda133ce8b551b1e1b.jpg#4f665c97122aa205b12c2c9c447dc6ca.jpg#f249a52c493d82ad2bd7993f8d02a3ce.jpg#663df17a1c8799e9e7bda3541789dd25.jpg', 'Dòng Macbook Pro Retina sẽ mang lại cho bạn những trải nghiệm tuyệt vời trong công việc lẫn giải trí. Không chỉ vậy, nó còn như một món trang sức công nghệ đầy sang trọng và tiện lợi để bạn luôn mang theo bên mình.', '<h2>D&ograve;ng&nbsp;<a href="https://www.thegioididong.com/tim-kiem?key=macbook+pro+retina" target="_blank">Macbook Pro Retina</a>&nbsp;sẽ mang lại cho bạn những trải nghiệm tuyệt vời trong c&ocirc;ng việc lẫn giải tr&iacute;. Kh&ocirc;ng chỉ vậy, n&oacute; c&ograve;n như một m&oacute;n trang sức c&ocirc;ng nghệ đầy sang trọng v&agrave; tiện lợi để bạn lu&ocirc;n mang theo b&ecirc;n m&igrave;nh.</h2>\r\n\r\n<p>Trong số ba phi&ecirc;n bản mới 2015,&nbsp;<strong>Macbook Pro Retina 2015 13 inch SSD 128 GB</strong>&nbsp;l&agrave; phi&ecirc;n bản c&oacute; bộ nhớ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/o-cung-la-gi-co-may-loai--590183#ssd" target="_self">ổ cứng lưu trữ SSD</a>&nbsp;thấp nhất &ndash; 128 GB, ph&ugrave; hợp cho những người cần một thiết bị để l&agrave;m việc v&agrave; giải tr&iacute; nhẹ nh&agrave;ng, &iacute;t lưu trữ, nhưng vẫn trải nghiệm được những điều tuyệt vời m&agrave; một chiếc Macbook sẽ mang lại.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/c1.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Thiết kế đặc trưng từ APPLE</strong></h3>\r\n\r\n<p>So với c&aacute;c phi&ecirc;n bản trước đ&oacute;&nbsp;<strong>Macbook Pro Retina 13inch 2015 128 GB hay gọi tắt l&agrave; Macbook Pro 2015</strong>&nbsp;kh&ocirc;ng c&oacute; sự thay đổi kh&aacute;c biệt. M&aacute;y vẫn được trang bị lớp vỏ nh&ocirc;m nguy&ecirc;n khối&nbsp;<strong>Unibody</strong>&nbsp;rất đẹp v&agrave; chắc chắn. Thiết kế mỏng, nhẹ ấn tượng, chỉ mỏng 1.8 cm v&agrave; trọng lượng l&agrave; 1,58 kg, rất tiện lợi khi di chuyển.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/c2.jpg" style="width:100%" /></p>\r\n\r\n<p><a href="https://www.thegioididong.com/hoi-dap/cach-bat-den-ban-phim-macbook-956542" target="_blank">Đ&egrave;n LED nền đẹp mắt tr&ecirc;n b&agrave;n ph&iacute;m</a>&nbsp;gi&uacute;p tăng độ ch&iacute;nh x&aacute;c khi d&ugrave;ng ph&iacute;m nhất l&agrave; v&agrave;o ban đ&ecirc;m, logo Apple ph&aacute;t s&aacute;ng mặt tr&ecirc;n m&aacute;y tạo điểm nhấn kh&aacute;c biệt v&agrave; đầy sang trọng khi kết hợp c&ugrave;ng vỏ m&agrave;u bạc qu&yacute; ph&aacute;i.&nbsp;<strong>Macbook Pro 2015</strong>&nbsp;sẽ mang đến cho bạn kh&ocirc;ng chỉ một sản phẩm c&ocirc;ng nghệ cao m&agrave; c&ograve;n l&agrave; một m&oacute;n trang sức hấp dẫn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/c3.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>B&agrave;n r&ecirc; cảm ứng lực -&nbsp;<a href="https://www.thegioididong.com/hoi-dap/force-touch-trackpad-tren-macbook-la-gi-956432" target="_blank">Force Touch</a></strong></h3>\r\n\r\n<p>Chi tiết thiết kế được n&acirc;ng cấp đ&oacute; ch&iacute;nh l&agrave; b&agrave;n r&ecirc; cảm ứng lực v&agrave; cổng Thunderbolt thế hệ thứ hai m&agrave; nh&igrave;n v&agrave;o bằng mắt ch&uacute;ng ta sẽ kh&ocirc;ng nhận ra được.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/c4.jpg" style="width:100%" /></p>\r\n\r\n<p>B&agrave;n r&ecirc; cảm ứng Trackpad tr&ecirc;n thế hệ&nbsp;<strong>Macbook Pro</strong>&nbsp;trước đ&acirc;y đ&atilde; kh&aacute; ho&agrave;n hảo bởi độ mượt m&agrave; v&agrave; cực nhạy, nay h&atilde;ng lại tiếp tục n&acirc;ng cấp hơn nữa với c&ocirc;ng nghệ cấu tr&uacute;c 4 cảm biến nằm 4 cạnh của b&agrave;n r&ecirc; cảm ứng mới (được gọi l&agrave; Force Touch), gi&uacute;p người d&ugrave;ng dễ d&agrave;ng nhấn ở bất kỳ đ&acirc;u tr&ecirc;n bề mặt cảm ứng m&agrave; kh&ocirc;ng bị hiện tượng click l&ecirc;n xuống. C&aacute;c cảm biến lực t&iacute;ch hợp để biết khi n&agrave;o người d&ugrave;ng nhấn mạnh hay nhẹ. Ngo&agrave;i ra, Trackpad mới c&oacute; cảm biến rung (taptic) rung phản hồi lại khi ch&uacute;ng ta chạm, giống với kiểu điện thoại.</p>\r\n\r\n<p><strong>Force Touch</strong>&nbsp;mới cho một cảm gi&aacute;c mượt như nhung khi di ng&oacute;n tay, độ ma s&aacute;t cực thấp, thao t&aacute;c phong ph&uacute;, phối hợp tốt với hệ điều h&agrave;nh, như đang đi tr&ecirc;n một m&agrave;n h&igrave;nh cảm ứng. V&iacute; dụ như khi cuộn trang web, n&oacute; rất giống khi ta đang vuốt tr&ecirc;n m&agrave;n h&igrave;nh, di chuyển mượt v&agrave; dừng lại đ&uacute;ng chỗ khi dừng ng&oacute;n tay. Với Force Touch mới n&agrave;y của Apple, hầu hết người d&ugrave;ng đều qu&ecirc;n đi sự hiện diện của con chuột m&aacute;y t&iacute;nh.</p>\r\n\r\n<h3><strong>Cổng Thunderbolt thế hệ thứ 2</strong></h3>\r\n\r\n<h3><strong>Thời lượng pin tăng đến 10 tiếng sử dụng&nbsp;</strong></h3>\r\n\r\n<p>MacBook Pro 2015 được cải tiến thời lượng pin từ 9 giờ l&ecirc;n đến 10 giờ sử dụng sau một lần sạc đầy. Đ&oacute; l&agrave; thời lượng pin rất ấn tượng đối với bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay n&agrave;o. H&atilde;y tưởng tượng chỉ cần sạc đầy l&agrave; bạn c&oacute; thể y&ecirc;n t&acirc;m mang m&aacute;y đi khắp nơi suốt ng&agrave;y l&agrave;m việc m&agrave; kh&ocirc;ng cần quan t&acirc;m đến thiết bị sạc c&ugrave;ng ổ cắm điện. Ngo&agrave;i ra, những cải tiến từ Apple cho ph&eacute;p bạn sạc đến 1000 lần thời gian xả đầy đủ chu kỳ v&agrave; chế độ chờ l&ecirc;n đến 30 ng&agrave;y.</p>\r\n\r\n<h3><strong><a href="https://www.thegioididong.com/tin-tuc/tim-hieu-cac-he-dieu-hanh-tren-laptop-599737#macosx" target="_self">Hệ điều h&agrave;nh OS X Yosemite</a></strong></h3>\r\n\r\n<p>Tất cả những thiết bị Macbook của Apple đều được c&agrave;i đặt sẵn hệ điều h&agrave;nh bản quyền OS X.&nbsp;<strong>Tr&ecirc;n Macbook Pro 2015</strong>, bạn cũng sẽ được trải nghiệm&nbsp;<strong>hệ điều h&agrave;nh OS X Yosemite mới nhất</strong>&nbsp;v&ocirc; c&ugrave;ng ho&agrave;n hảo. Hệ thống hoạt động mượt m&agrave;, ứng dụng, phần mềm ng&agrave;y c&agrave;ng phong ph&uacute; được tải về trực tiếp từ App Store.</p>\r\n\r\n<p>Một điều đ&aacute;ng gi&aacute; nữa để bạn lựa chọn hệ điều h&agrave;nh n&agrave;y đ&oacute; l&agrave; người d&ugrave;ng Macbook kh&ocirc;ng cần quan t&acirc;m đến vấn đề virus m&aacute;y t&iacute;nh, do t&iacute;nh năng bảo mật cực kỳ cao. Việc phải c&agrave;i lại m&aacute;y l&agrave; rất hiếm khi xảy ra bởi Apple thường xuy&ecirc;n cung cấp c&aacute;c bản cập nhật v&aacute; lỗi miễn ph&iacute; cho người d&ugrave;ng.</p>\r\n\r\n<p>Với OS X Yosemite tr&ecirc;n Macbook, nếu bạn c&oacute; một chiếc iPhone th&igrave; mọi thứ dường như l&agrave; một tr&ecirc;n cả điện thoại v&agrave; m&aacute;y t&iacute;nh của bạn. Chức năng đồng bộ, nghe gọi, nhắn tin, l&agrave;m việc với văn bản, h&igrave;nh ảnh&hellip;của điện thoại đều c&oacute; thể thực hiện tr&ecirc;n một chiếc Macbook. Trải nghiệm tuyệt vời c&ugrave;ng một hệ điều h&agrave;nh độc quyền l&agrave; hiển nhi&ecirc;n khi bạn sỡ hữu n&oacute;.</p>\r\n', '1', 100, 100, 0, 3059000, 3059000, '2017-05-23 20:52:34', '4', '2017-05-23 20:52:34', '4', 1, 1, 1, '', ''),
(4, 32, 'Laptop Apple Macbook 12" MMGL2 Core M 1.1G/8GB/256GB/MacOS (2016)', 'laptop-apple-macbook-12-mmgl2-core-m-1-1g-8gb-256gb-macos-2016', 'f96ee9e6d99e8f6f787b560ab2c157dd.png', 'e5f7df0c9448584cba2b66126519ae0d.jpg#a0061893b944bd30d8ccccc36713a541.jpg#26365451fbfe759a80dd85aa43361a9a.jpg#24a37a9641f3b7b9525e3ce5516d1f6e.jpg#22375bd64b19f2273a602389fa1ddbf8.jpg#3958a694ebc46b91abcda038121c8521.jpg', 'Apple Macbook 12" MMGL2 là một chiếc laptop nổi bật lên hẳn với màu hồng bắt mắt cùng vỏ nhôm nguyên khối sang trọng, siêu mỏng và siêu nhẹ, một màn hình với độ phân giải khủng.Apple Macbook 12" MMGL2 là một chiếc laptop nổi bật lên hẳn với màu hồng bắt mắt cùng vỏ nhôm nguyên khối sang trọng, siêu mỏng và siêu nhẹ, một màn hình với độ phân giải khủng.', '<h2><strong>Apple Macbook 12&quot; MMGL2&nbsp;l&agrave; một chiếc laptop nổi bật l&ecirc;n hẳn với m&agrave;u hồng bắt mắt c&ugrave;ng vỏ nh&ocirc;m nguy&ecirc;n khối sang trọng, si&ecirc;u mỏng v&agrave; si&ecirc;u nhẹ, một m&agrave;n h&igrave;nh với độ ph&acirc;n giải khủng.</strong></h2>\r\n\r\n<h3><strong>Thiết kế sang trọng, tinh tế</strong></h3>\r\n\r\n<p><strong>Macbook 12 inch MMGL2</strong>&nbsp;c&oacute; thể chinh phục cả những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất bởi thiết kế của n&oacute;. Lớp vỏ kim loại nguy&ecirc;n khối mịn m&agrave;ng với m&agrave;u hồng cực sang chảnh.</p>\r\n\r\n<p>K&iacute;ch thước m&aacute;y si&ecirc;u mỏng v&agrave; nhẹ, c&acirc;n nặng chỉ 900 gr v&agrave; d&agrave;y 13.1 mm, mỏng hơn đến 24% so với chiếc&nbsp;<a href="https://www.thegioididong.com/laptop/apple-macbook-air-2015-mjvm2zp-a-i5-5250u-4gb-128g" target="_blank">MacBook Air</a>&nbsp;hiện tại. Đ&acirc;y được xem l&agrave; d&ograve;ng laptop đỉnh cao khi di chuyển bởi độ gọn nhẹ của n&oacute;.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/d1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Logo quả t&aacute;o ở mặt trước đ&atilde; kh&ocirc;ng c&ograve;n ph&aacute;t s&aacute;ng m&agrave; được thay thế bằng mặt kim loại tr&aacute;ng gương</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/d2.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Thiết kế si&ecirc;u mỏng</em></p>\r\n\r\n<p><em><img alt="" src="/TTTN-Green/public/upload/d3.jpg" style="width:100%" /></em></p>\r\n\r\n<p>Điều n&agrave;y gi&uacute;p cho sản phẩm thật tinh tế, gọn nhẹ nhưng sẽ hơi bất tiện nếu bạn đ&atilde; quen với c&aacute;c cổng th&ocirc;ng thường c&oacute; tr&ecirc;n một chiếc laptop như USB, HDMI, đọc thẻ nhớ&hellip;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/d4.jpg" style="width:100%" /></p>\r\n\r\n<p><strong>Macbook 12 inch MLHE2</strong>&nbsp;c&oacute; m&agrave;n h&igrave;nh rộng 12 inch&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780" target="_blank">Retina</a>,&nbsp;độ ph&acirc;n giải&nbsp;l&ecirc;n đến 2304x1440px lần đầu ti&ecirc;n được sử dụng tr&ecirc;n d&ograve;ng Macbook. Tấm nền IPS cho g&oacute;c nh&igrave;n rộng hơn, l&ecirc;n tới 178 độ.</p>\r\n\r\n<p>H&atilde;y h&igrave;nh dung d&ugrave; đứng từ cạnh n&agrave;o th&igrave; bạn cũng sẽ nh&igrave;n thấy rất r&otilde; những h&igrave;nh ảnh hiển thị tr&ecirc;n m&agrave;n h&igrave;nh n&agrave;y.</p>\r\n\r\n<p>Một điểm nữa l&agrave; n&oacute; chỉ mỏng 0.88 mm, mỏng nhất trong số tất cả c&aacute;c m&aacute;y t&iacute;nh c&oacute; m&agrave;n h&igrave;nh Retina của Apple từ trước đến nay.&nbsp;</p>\r\n\r\n<h3><strong>Cấu h&igrave;nh</strong></h3>\r\n\r\n<p>Sản phẩm c&oacute; bộ xử l&yacute;&nbsp;<a href="https://www.thegioididong.com/tin-tuc/suc-manh-cua-cpu-core-m-thoi-bay-quat-tan-nhiet-tr-629329" target="_blank">Intel Core M</a>&nbsp;l&otilde;i k&eacute;p tốc độ 1.1 Ghz, chip đồ hoạ&nbsp;Intel HD Graphic 515&nbsp;v&agrave; RAM 8 GB, ổ cứng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/o-cung-ssd-la-gi-923073" target="_blank">SSD</a>&nbsp;256 GB.</p>\r\n\r\n<p>Một điểm đ&aacute;ng lưu &yacute; đ&oacute; l&agrave; quạt tản nhiệt đ&atilde; kh&ocirc;ng c&ograve;n tr&ecirc;n thiết bị n&agrave;y nữa. Apple cho biết&nbsp;chip Intel Core M b&ecirc;n trong MacBook 12 inch được chế tạo tr&ecirc;n tiến tr&igrave;nh 14 nm, n&oacute; tiết kiệm pin hơn đ&aacute;ng kể v&agrave; l&agrave; con chip tất cả trong một SoC, n&oacute; kh&ocirc;ng c&ograve;n cần một quạt tản nhiệt để l&agrave;m m&aacute;t.</p>\r\n\r\n<h3><strong>B&agrave;n ph&iacute;m v&agrave; trackpad</strong></h3>\r\n\r\n<p><strong><img alt="" src="/TTTN-Green/public/upload/d5.jpg" style="width:100%" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MacBook 12 inch MLHE2 được trang bị cấu tr&uacute;c b&agrave;n ph&iacute;m mới của Apple c&oacute; t&ecirc;n gọi l&agrave; Butterfly mechanism. N&oacute; đem lại trải nghiệm g&otilde; ph&iacute;m đều tr&ecirc;n bề mặt từng ph&iacute;m, tạo độ ổn định khi nhấn. Độ d&agrave;y b&agrave;n ph&iacute;m đ&atilde; giảm đi 40% so với trước đ&acirc;y, k&iacute;ch thước từng ph&iacute;m cũng đ&atilde; tăng l&ecirc;n 17%.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, thay v&igrave; trang bị dải đ&egrave;n LED b&agrave;n ph&iacute;m như trước kia th&igrave; Apple trang bị&nbsp;<a href="https://www.thegioididong.com/hoi-dap/cach-bat-den-ban-phim-macbook-956542" target="_blank">đ&egrave;n LED dưới từng ph&iacute;m</a>&nbsp;một, tiết kiệm diện t&iacute;ch v&agrave; cho &aacute;nh s&aacute;ng tập trung hơn.</p>\r\n\r\n<p>Về Trackpad, b&agrave;n di chuột của Apple trước đ&acirc;y đ&atilde; rất tốt, mượt m&agrave; v&agrave; cực nhạy, nay h&atilde;ng lại tiếp tục n&acirc;ng cấp hơn nữa với c&ocirc;ng nghệ cấu tr&uacute;c 4 cảm biến nằm 4 cạnh của Trackpad, gi&uacute;p người d&ugrave;ng dễ d&agrave;ng nhấn ở bất kỳ đ&acirc;u tr&ecirc;n bề mặt cảm ứng m&agrave; kh&ocirc;ng bị hiện tượng click l&ecirc;n xuống. C&aacute;c cảm biến lực t&iacute;ch hợp để biết khi n&agrave;o người d&ugrave;ng nhấn mạnh hay nhẹ.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, Trackpad mới c&oacute; cảm biến rung (taptic) rung phản hồi lại khi ch&uacute;ng ta chạm, giống với kiểu điện thoại.</p>\r\n\r\n<h3><strong>Kết nối USB-C (USB type C)</strong></h3>\r\n\r\n<p><a href="https://www.thegioididong.com/hoi-dap/usb-type-c-chuan-muc-cong-ket-noi-moi-723760" target="_blank">USB Type-C</a>&nbsp;c&oacute; thiết kế mới gi&uacute;p sử dụng dễ d&agrave;ng hơn (cắm được cả hai chiều) m&agrave; c&ograve;n c&oacute; thể truyền tải nhiều hơn, nhanh hơn.</p>\r\n\r\n<p>Đừng ngạc nhi&ecirc;n khi bạn chỉ t&igrave;m thấy duy nhất một cổng kết nối tr&ecirc;n&nbsp;MacBook 12 inch. Apple gọi đ&oacute; l&agrave;&nbsp;<a href="https://www.thegioididong.com/tin-tuc/nhung-dieu-can-biet-ve-chuan-ket-noi-moi-usb-type--619776" target="_blank">USB-C</a>. Sẽ kh&ocirc;ng c&ograve;n rườm r&agrave; v&agrave; phức tạp khi bạn cần kết nối với USB, sạc pin,&nbsp;HDMI/DVI/VGA&hellip;</p>\r\n\r\n<p>Ban đầu c&oacute; thể rất nhiều người d&ugrave;ng cảm thấy kh&oacute; chịu v&agrave; lo lắng về sự tốn k&eacute;m khi phải mua th&ecirc;m c&aacute;c phụ kiện, tuy nhi&ecirc;n ch&uacute;ng ta sẽ bắt đầu l&agrave;m quen với việc đơn giản đến mức thấp nhất c&oacute; thể để chiếc laptop kh&ocirc;ng những chỉ l&agrave; c&ocirc;ng cụ l&agrave;m việc m&agrave; c&ograve;n l&agrave; một m&oacute;n đồ thời trang tinh tế, tương tự như việc Apple đ&atilde; đi đầu trong việc bỏ đi ổ đĩa &nbsp;quang tr&ecirc;n laptop vốn l&agrave; truyền thống trước đ&acirc;y vậy.&nbsp;</p>\r\n\r\n<p>Apple sẽ k&egrave;m theo cho bạn sạc USB-C 29W dạng rời, nghĩa l&agrave; sẽ c&oacute; một c&aacute;p USB-C t&aacute;ch ri&ecirc;ng với đầu sạc. Bạn sẽ cần mua th&ecirc;m &iacute;t nhất một cổng chuyển USB-C ra cổng USB 3.1, một c&aacute;i hub&nbsp;<a href="https://www.thegioididong.com/usb/usb-16gb-30-apacer-ah354" target="_blank">USB 3.0</a>&nbsp;để c&oacute; thể vừa sạc vừa kết nối.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1', 1, 1, 0, 0, 0, '2017-05-23 21:36:00', '4', '2017-05-23 21:36:00', '4', 1, 1, 1, '', ''),
(5, 32, 'Laptop Apple Macbook 12" MLHE2 Core M 1.1G/8GB/256GB/MacOS (2016)', 'laptop-apple-macbook-12-mlhe2-core-m-1-1g-8gb-256gb-macos-2016', '20792ab4ced9557f0ee6d63c28efc0d3.png', '8415ca67817fefbed002d461182a2e96.jpg#7b28f58177421ca037e0e8c2454121e1.jpg#b7aee60d23a9e7f07a2cf6b1b9b5f18b.jpg#e0678e7aa8c04395b2df8553bc879fea.jpg#17c395e309456adfbfa36949b60aa206.jpg#db250e00c8e4387c3118b9c9de94951b.jpg#6edfdceb4ffa671967b468f8c1919d78.', 'Macbook 12 inch là một chiếc laptop có thiết kế khó có thể hoàn hảo hơn với vỏ nhôm nguyên khối sang trọng, siêu mỏng và siêu nhẹ, một màn hình với độ phân giải khủng.', '<h2><strong>Macbook 12 inch&nbsp;l&agrave; một chiếc laptop c&oacute; thiết kế kh&oacute; c&oacute; thể ho&agrave;n hảo hơn với vỏ nh&ocirc;m nguy&ecirc;n khối sang trọng, si&ecirc;u mỏng v&agrave; si&ecirc;u nhẹ, một m&agrave;n h&igrave;nh với độ ph&acirc;n giải khủng.</strong></h2>\r\n\r\n<h3><strong>Thiết kế sang trọng, tinh tế</strong></h3>\r\n\r\n<p><strong>Macbook 12 inch&nbsp;MLHE2</strong>&nbsp;c&oacute; thể chinh phục cả những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất bởi thiết kế của n&oacute;. Lớp vỏ kim loại nguy&ecirc;n khối mịn m&agrave;ng với m&agrave;u v&agrave;ng đồng sang trọng.</p>\r\n\r\n<p>K&iacute;ch thước m&aacute;y si&ecirc;u mỏng v&agrave; nhẹ, c&acirc;n nặng chỉ 0.9 kg v&agrave; d&agrave;y 13.1 mm, mỏng hơn đến 24% so với chiếc<a href="https://www.thegioididong.com/laptop/apple-macbook-air-2015-mjvm2zp-a-i5-5250u-4gb-128g" target="_blank">MacBook Air</a>&nbsp;hiện tại. Đ&acirc;y được xem l&agrave; d&ograve;ng&nbsp;<a href="https://www.thegioididong.com/laptop" target="_blank">laptop</a>&nbsp;đỉnh cao khi di chuyển bởi độ gọn nhẹ của n&oacute;.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/e1.jpg" style="width:100%" /></p>\r\n\r\n<p>Điều n&agrave;y gi&uacute;p cho sản phẩm thật tinh tế, gọn nhẹ nhưng sẽ hơi bất tiện nếu bạn đ&atilde; quen với c&aacute;c cổng th&ocirc;ng thường c&oacute; tr&ecirc;n một chiếc laptop như USB,&nbsp;<a href="https://www.thegioididong.com/hoi-dap/hdmi-la-gi-930605" target="_blank">HDMI</a>, đọc thẻ nhớ&hellip;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/e2.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh với độ ph&acirc;n giải khủng</strong></h3>\r\n\r\n<p><strong><img alt="" src="/TTTN-Green/public/upload/e3.jpg" style="width:100%" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Macbook 12 inch MLHE2</strong>&nbsp;c&oacute; m&agrave;n h&igrave;nh rộng 12 inch,&nbsp;độ ph&acirc;n giải&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-cong-nghe-hien-thi-tren-man-hinh-laptop-597377#retina" target="_blank">retina</a>&nbsp;l&ecirc;n đến 2304x1440 px lần đầu ti&ecirc;n được sử dụng tr&ecirc;n d&ograve;ng Macbook. Tấm nền IPS cho g&oacute;c nh&igrave;n rộng hơn, l&ecirc;n tới 178 độ.</p>\r\n\r\n<p>H&atilde;y h&igrave;nh dung d&ugrave; đứng từ cạnh n&agrave;o th&igrave; bạn cũng sẽ nh&igrave;n thấy rất r&otilde; những h&igrave;nh ảnh hiển thị tr&ecirc;n m&agrave;n h&igrave;nh n&agrave;y. Một điểm nữa l&agrave; n&oacute; chỉ mỏng 0.88 mm, mỏng nhất trong số tất cả c&aacute;c m&aacute;y t&iacute;nh c&oacute; m&agrave;n h&igrave;nh Retina của Apple từ trước đến nay.&nbsp;</p>\r\n\r\n<h3><strong>Cấu h&igrave;nh</strong></h3>\r\n\r\n<p><strong><img alt="" src="/TTTN-Green/public/upload/e4.jpg" style="width:100%" /></strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/hoi-dap/usb-type-c-chuan-muc-cong-ket-noi-moi-723760" target="_blank">USB Type-C</a>&nbsp;c&oacute; thiết kế mới gi&uacute;p sử dụng dễ d&agrave;ng hơn (cắm được cả hai chiều) m&agrave; c&ograve;n c&oacute; thể truyền tải nhiều hơn, nhanh hơn.</p>\r\n\r\n<p>Đừng ngạc nhi&ecirc;n khi bạn chỉ t&igrave;m thấy duy nhất một cổng kết nối tr&ecirc;n&nbsp;MacBook 12 inch. Apple gọi đ&oacute; l&agrave;&nbsp;USB-C. Sẽ kh&ocirc;ng c&ograve;n rườm r&agrave; v&agrave; phức tạp khi bạn cần kết nối với USB, sạc pin,&nbsp;HDMI/DVI/VGA&hellip;</p>\r\n\r\n<p>Ban đầu c&oacute; thể rất nhiều người d&ugrave;ng cảm thấy kh&oacute; chịu v&agrave; lo lắng về sự tốn k&eacute;m khi phải mua th&ecirc;m c&aacute;c phụ kiện, tuy nhi&ecirc;n ch&uacute;ng ta sẽ bắt đầu l&agrave;m quen với việc đơn giản đến mức thấp nhất c&oacute; thể để chiếc laptop kh&ocirc;ng những chỉ l&agrave; c&ocirc;ng cụ l&agrave;m việc m&agrave; c&ograve;n l&agrave; một m&oacute;n đồ thời trang tinh tế, tương tự như việc Apple đ&atilde; đi đầu trong việc bỏ đi ổ đĩa &nbsp;quang tr&ecirc;n laptop vốn l&agrave; truyền thống trước đ&acirc;y vậy.&nbsp;</p>\r\n\r\n<p>Apple sẽ k&egrave;m theo cho bạn sạc USB-C 29W dạng rời, nghĩa l&agrave; sẽ c&oacute; một c&aacute;p USB-C t&aacute;ch ri&ecirc;ng với đầu sạc. Bạn sẽ cần mua th&ecirc;m &iacute;t nhất một cổng chuyển USB-C ra cổng USB 3.1, một c&aacute;i hub&nbsp;<a href="https://www.thegioididong.com/usb" target="_blank">USB 3.0</a>&nbsp;để c&oacute; thể vừa sạc vừa kết nối.</p>\r\n\r\n<h3><strong>Thời lượng pin khủng</strong></h3>\r\n\r\n<p><strong><img alt="" src="/TTTN-Green/public/upload/e5.jpg" style="width:100%" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pin thiết kế kiểu &quot;xếp lớp&quot;, gi&uacute;p tăng dung lượng, thời gian sử dụng l&ecirc;n đến 10 giờ.</p>\r\n\r\n<p>Thời lượng pin tr&ecirc;n d&ograve;ng Macbook chưa bao giờ l&agrave; đ&aacute;ng ph&agrave;n n&agrave;n cả. Với&nbsp;MacBook 12 inch, pin của m&aacute;y kh&ocirc;ng c&ograve;n nguy&ecirc;n khối nữa m&agrave; được thiết kế dạng xếp lớp, tranh thủ mọi kh&ocirc;ng gian trống tr&ecirc;n th&acirc;n m&aacute;y để c&oacute; độ mỏng l&yacute; tưởng nhất nhưng vẫn đảm bảo thời lượng sử dụng l&ecirc;n đến 10 tiếng.</p>\r\n', '1', 120, 120, 0, 31490000, 31490000, '2017-05-23 21:41:31', '4', '2017-05-23 21:41:31', '4', 1, 1, 1, '', ''),
(30, 24, 'Điện thoại iPhone 7 Plus 256GB', 'dien-thoai-iphone-7-plus-256gb', 'ef24e85b330599c65624d9e83a6acf2a.jpg', 'e358c30094698795a04de5eb303569f7.jpg#104a00929c2c1548397f20982e35b412.jpg#b9442c3921deb69e5a3d14cec30a112d.jpg', 'Với thiết kế không quá nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus,  iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh.', '<h2><strong>Với thiết kế kh&ocirc;ng qu&aacute; nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6-plus-64gb" target="_blank">iPhone 6 Plus</a>, &nbsp;iPhone 7 Plus&nbsp;được trang bị nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; như camera k&eacute;p, đạt chuẩn chống nước chống bụi c&ugrave;ng cấu h&igrave;nh cực mạnh.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb1-1.jpg" style="width:100%" /><br />\r\nThay đổi d&atilde;y nhựa an-ten bắt s&oacute;ng được đưa v&ograve;ng l&ecirc;n tr&ecirc;n thay v&igrave; cắt ngang ở mặt lưng như trước.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb2-1.jpg" style="width:100%" /><br />\r\nN&uacute;t Home quen thuộc kh&ocirc;ng c&ograve;n l&agrave; ph&iacute;m vật l&yacute; nữa m&agrave; được thay thế bằng cảm ứng, n&oacute; sẽ rung l&ecirc;n khi bạn ấn. V&igrave; đ&atilde; d&ugrave;ng iPhone một thời gian rất d&agrave;i, n&ecirc;n t&ocirc;i c&ocirc;ng nhận rằng hơi kh&oacute; để l&agrave;m quen với n&oacute;, nhưng c&oacute; lẽ chỉ mất v&agrave;i ng&agrave;y th&ocirc;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb3-1.jpg" style="width:100%" /><br />\r\nCuối c&ugrave;ng ch&uacute;ng ta cũng c&oacute; được chiếc iPhone vẫn sống khi rơi v&agrave;o nước hay đi mưa kh&ocirc;ng cần phải loay hoay t&igrave;m chỗ cất v&igrave; Apple đ&atilde; mang chuẩn chống nước IP67 cho iphone 7 plus .(Lưu &yacute;: kh&ocirc;ng n&ecirc;n cố t&igrave;nh ng&acirc;m nước v&igrave; nếu c&oacute; thiệt hại do v&agrave;o nước sẽ kh&ocirc;ng được Apple bảo h&agrave;nh).</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb4-1.jpg" style="width:100%" /><br />\r\nM&agrave;n h&igrave;nh Retina tr&ecirc;n 7 Plus hỗ trợ DCI-P3 gam m&agrave;u rộng, nghĩa l&agrave; ch&uacute;ng c&oacute; khả năng t&aacute;i tạo m&agrave;u sắc trong phạm vi của sRGB. N&oacute;i đơn giản, ch&uacute;ng c&oacute; thể hiển thị sống động hơn, sắc th&aacute;i h&igrave;nh ảnh tốt hơn trước đ&oacute;. Độ ph&acirc;n giải, mật độ điểm ảnh v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh vẫn giữ nguy&ecirc;n so với iPhone 6s Plus.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb5-1.jpg" style="width:100%" /><br />\r\nLần đầu ti&ecirc;n iPhone xuất hiện t&iacute;nh năng &acirc;m thanh Stereo. Phim ảnh, podcast v&agrave; c&aacute;c cuộc gọi loa ngo&agrave;i b&acirc;y giờ &acirc;m thanh r&otilde; r&agrave;ng hơn rất nhiều. Đ&oacute; l&agrave; do Apple đ&atilde; d&ugrave;ng c&ocirc;ng nghệ thiết lập loa chứ kh&ocirc;ng phải thiết kế 2 loa ngay tr&ecirc;n mặt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb6-.jpg" style="width:100%" /></p>\r\n\r\n<p>iPhone 7 Plus l&agrave;&nbsp;chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau. Camera th&ocirc;ng thường vẫn chụp h&igrave;nh g&oacute;c rộng, c&ograve;n camera thứ hai c&oacute; ti&ecirc;u cự ph&ugrave; hợp để chụp ch&acirc;n dung, c&oacute; t&iacute;nh năng chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng (l&agrave;m mờ hậu cảnh).&nbsp;</p>\r\n\r\n<p>Với 1 chạm nhanh ch&oacute;ng bạn c&oacute; thể chuyển đổi giữa chế độ 1x v&agrave; zoom 2x, hoặc bạn c&oacute; thể k&eacute;o thanh trượt hay d&ugrave;ng 2 ng&oacute;n tay đến zoom. Apple đ&atilde; th&ecirc;m t&iacute;nh năng zoom kỹ thuật số l&ecirc;n đến 10x.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb8-1.jpg" style="width:100%" /><br />\r\nĐiểm nhấn ấn tượng nhất nằm ở mặt lưng của sản phẩm với hiệu ứng phản chiếu &aacute;nh s&aacute;ng khi thay đổi g&oacute;c nh&igrave;n rất đặc biệt. Hiệu ứng n&agrave;y cũng được &aacute;p dụng cho to&agrave;n bộ khung m&aacute;y, từ cạnh tr&ecirc;n, cạnh dưới cho đến c&aacute;c n&uacute;t bấm n&ecirc;n cho cảm gi&aacute;c một thiết bị cực kỳ ho&agrave;n thiện, gần như kh&ocirc;ng c&oacute; bất kỳ một chi tiết thừa n&agrave;o cả.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb9.jpg" style="width:100%" /></p>\r\n\r\n<p>Ngo&agrave;i tr&aacute;i tim&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">Apple A10 Fusion 4 nh&acirc;n</a>&nbsp;với hiệu năng cực k&igrave; mạnh mẽ v&agrave; ấn tượng th&igrave; iPhone 7 Plus c&ograve;n được trang bị hệ điều h&agrave;nh mới nhất IOS 10 với nhiều t&iacute;nh năng bất ngờ, v&agrave; th&uacute; vị.</p>\r\n\r\n<p>&ldquo;T&aacute;o khuyết&rdquo; cũng kh&ocirc;ng qu&ecirc;n nhấn mạnh iPhone 7 Plus sẽ nhanh hơn iPhone đời đầu tới&hellip; 140 lần. Những ai m&ecirc; chơi game tr&ecirc;n di động cũng sẽ &ldquo;phải l&ograve;ng&rdquo; iPhone mới khi c&oacute; chip xử l&yacute; đồ họa được n&acirc;ng tầm đ&uacute;ng chất &ldquo;m&aacute;y chơi game&rdquo;.</p>\r\n\r\n<p>Camera trước n&acirc;ng cấp độ ph&acirc;n giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiệu thiếu s&aacute;ng tuyệt vời với c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-tinh-nang-chup-anh-camera-truoc-769270#retinaflash" target="_blank">Retina Flash</a>, Auto HDR</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb10.jpg" style="width:100%" /></p>\r\n\r\n<p>Iphone 7 plus theo bản th&acirc;n đ&aacute;nh gi&aacute; l&agrave; một sự lựa chọn hợp l&yacute; trong tầm gi&aacute;:</p>\r\n\r\n<ul>\r\n	<li><strong>Ưu điểm:</strong>\r\n\r\n	<ul>\r\n		<li>Hiệu năng rất cao</li>\r\n		<li>Camera trước sau rất tuyệt vời</li>\r\n		<li>Chống nước</li>\r\n		<li>Thời lượng pin tốt</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Nhược điểm:</strong>\r\n	<ul>\r\n		<li>Loại bỏ jack 3.5mm</li>\r\n		<li>Kh&ocirc;ng thay đổi thiết kế qu&aacute; nhiều mặc d&ugrave; đ&atilde; 3 năm</li>\r\n		<li>Ph&iacute;m Home cần thời gian để l&agrave;m quen</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '1', 100, 100, 0, 25990000, 25990000, '2017-05-23 18:51:26', '6', '2017-05-23 18:55:00', '6', 1, 1, 1, '', '');
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(31, 24, 'Điện thoại iPhone 7 Plus 128GB', 'dien-thoai-iphone-7-plus-128gb', '47ba09db5bae5ae7a3c5867b29790366.jpg', 'dedf840e68593bdc8e50f26aa1f3fd3b.jpg#a3b6439de12a940810d88d80ec37e12e.jpg#c244dcdf23bb407053a5b5c3ee0c5067.jpg', 'Với thiết kế không quá nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus,  iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh.', '<h2><strong>Với thiết kế kh&ocirc;ng qu&aacute; nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6-plus-64gb" target="_blank">iPhone 6 Plus</a>, &nbsp;iPhone 7 Plus&nbsp;được trang bị nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; như camera k&eacute;p, đạt chuẩn chống nước chống bụi c&ugrave;ng cấu h&igrave;nh cực mạnh.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb1-1.jpg" /><br />\r\nThay đổi d&atilde;y nhựa an-ten bắt s&oacute;ng được đưa v&ograve;ng l&ecirc;n tr&ecirc;n thay v&igrave; cắt ngang ở mặt lưng như trước.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb2-1.jpg" /><br />\r\nN&uacute;t Home quen thuộc kh&ocirc;ng c&ograve;n l&agrave; ph&iacute;m vật l&yacute; nữa m&agrave; được thay thế bằng cảm ứng, n&oacute; sẽ rung l&ecirc;n khi bạn ấn. V&igrave; đ&atilde; d&ugrave;ng iPhone một thời gian rất d&agrave;i, n&ecirc;n t&ocirc;i c&ocirc;ng nhận rằng hơi kh&oacute; để l&agrave;m quen với n&oacute;, nhưng c&oacute; lẽ chỉ mất v&agrave;i ng&agrave;y th&ocirc;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb3-1.jpg" /><br />\r\nCuối c&ugrave;ng ch&uacute;ng ta cũng c&oacute; được chiếc iPhone vẫn sống khi rơi v&agrave;o nước hay đi mưa kh&ocirc;ng cần phải loay hoay t&igrave;m chỗ cất v&igrave; Apple đ&atilde; mang chuẩn chống nước IP67 cho iphone 7 plus .(Lưu &yacute;: kh&ocirc;ng n&ecirc;n cố t&igrave;nh ng&acirc;m nước v&igrave; nếu c&oacute; thiệt hại do v&agrave;o nước sẽ kh&ocirc;ng được Apple bảo h&agrave;nh).</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb4-1.jpg" /><br />\r\nM&agrave;n h&igrave;nh Retina tr&ecirc;n 7 Plus hỗ trợ DCI-P3 gam m&agrave;u rộng, nghĩa l&agrave; ch&uacute;ng c&oacute; khả năng t&aacute;i tạo m&agrave;u sắc trong phạm vi của sRGB. N&oacute;i đơn giản, ch&uacute;ng c&oacute; thể hiển thị sống động hơn, sắc th&aacute;i h&igrave;nh ảnh tốt hơn trước đ&oacute;. Độ ph&acirc;n giải, mật độ điểm ảnh v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh vẫn giữ nguy&ecirc;n so với iPhone 6s Plus.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb5-1.jpg" /><br />\r\nLần đầu ti&ecirc;n iPhone xuất hiện t&iacute;nh năng &acirc;m thanh Stereo. Phim ảnh, podcast v&agrave; c&aacute;c cuộc gọi loa ngo&agrave;i b&acirc;y giờ &acirc;m thanh r&otilde; r&agrave;ng hơn rất nhiều. Đ&oacute; l&agrave; do Apple đ&atilde; d&ugrave;ng c&ocirc;ng nghệ thiết lập loa chứ kh&ocirc;ng phải thiết kế 2 loa ngay tr&ecirc;n mặt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb6-.jpg" /></p>\r\n\r\n<p>iPhone 7 Plus l&agrave;&nbsp;chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau. Camera th&ocirc;ng thường vẫn chụp h&igrave;nh g&oacute;c rộng, c&ograve;n camera thứ hai c&oacute; ti&ecirc;u cự ph&ugrave; hợp để chụp ch&acirc;n dung, c&oacute; t&iacute;nh năng chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng (l&agrave;m mờ hậu cảnh).&nbsp;</p>\r\n\r\n<p>Với 1 chạm nhanh ch&oacute;ng bạn c&oacute; thể chuyển đổi giữa chế độ 1x v&agrave; zoom 2x, hoặc bạn c&oacute; thể k&eacute;o thanh trượt hay d&ugrave;ng 2 ng&oacute;n tay đến zoom. Apple đ&atilde; th&ecirc;m t&iacute;nh năng zoom kỹ thuật số l&ecirc;n đến 10x.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb8-1.jpg" /><br />\r\nĐiểm nhấn ấn tượng nhất nằm ở mặt lưng của sản phẩm với hiệu ứng phản chiếu &aacute;nh s&aacute;ng khi thay đổi g&oacute;c nh&igrave;n rất đặc biệt. Hiệu ứng n&agrave;y cũng được &aacute;p dụng cho to&agrave;n bộ khung m&aacute;y, từ cạnh tr&ecirc;n, cạnh dưới cho đến c&aacute;c n&uacute;t bấm n&ecirc;n cho cảm gi&aacute;c một thiết bị cực kỳ ho&agrave;n thiện, gần như kh&ocirc;ng c&oacute; bất kỳ một chi tiết thừa n&agrave;o cả.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb9.jpg" /></p>\r\n\r\n<p>Ngo&agrave;i tr&aacute;i tim&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">Apple A10 Fusion 4 nh&acirc;n</a>&nbsp;với hiệu năng cực k&igrave; mạnh mẽ v&agrave; ấn tượng th&igrave; iPhone 7 Plus c&ograve;n được trang bị hệ điều h&agrave;nh mới nhất IOS 10 với nhiều t&iacute;nh năng bất ngờ, v&agrave; th&uacute; vị.</p>\r\n\r\n<p>&ldquo;T&aacute;o khuyết&rdquo; cũng kh&ocirc;ng qu&ecirc;n nhấn mạnh iPhone 7 Plus sẽ nhanh hơn iPhone đời đầu tới&hellip; 140 lần. Những ai m&ecirc; chơi game tr&ecirc;n di động cũng sẽ &ldquo;phải l&ograve;ng&rdquo; iPhone mới khi c&oacute; chip xử l&yacute; đồ họa được n&acirc;ng tầm đ&uacute;ng chất &ldquo;m&aacute;y chơi game&rdquo;.</p>\r\n\r\n<p>Camera trước n&acirc;ng cấp độ ph&acirc;n giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiệu thiếu s&aacute;ng tuyệt vời với c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-tinh-nang-chup-anh-camera-truoc-769270#retinaflash" target="_blank">Retina Flash</a>, Auto HDR</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb10.jpg" /></p>\r\n\r\n<p>Iphone 7 plus theo bản th&acirc;n đ&aacute;nh gi&aacute; l&agrave; một sự lựa chọn hợp l&yacute; trong tầm gi&aacute;:</p>\r\n\r\n<ul>\r\n	<li><strong>Ưu điểm:</strong>\r\n\r\n	<ul>\r\n		<li>Hiệu năng rất cao</li>\r\n		<li>Camera trước sau rất tuyệt vời</li>\r\n		<li>Chống nước</li>\r\n		<li>Thời lượng pin tốt</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Nhược điểm:</strong>\r\n	<ul>\r\n		<li>Loại bỏ jack 3.5mm</li>\r\n		<li>Kh&ocirc;ng thay đổi thiết kế qu&aacute; nhiều mặc d&ugrave; đ&atilde; 3 năm</li>\r\n		<li>Ph&iacute;m Home cần thời gian để l&agrave;m quen</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '1', 1000, 1000, 0, 23990000, 23990000, '2017-05-23 18:54:38', '6', '2017-05-23 18:54:38', '6', 1, 1, 1, '', ''),
(7, 32, 'Laptop Apple Macbook Pro New MLL42SA/A i5 6360U/8GB/256GB (2016)', 'laptop-apple-macbook-pro-new-mll42sa-a-i5-6360u-8gb-256gb-2016', '4501bb59130cad12439e4927741bdd25.png', '287d75c98718be1e2b52d22c0d1d21c7.jpg#fdd35702a3e63b879c71a549b7fb904f.jpg#831f4b2670ffab27be38c8881460db97.jpg#6e5d1f707e439f773239870c3fff8592.jpg#40503c441db9dff1d39ad95ec81b2609.jpg#5113c7ecb080ebb828ab8e340b74a4b1.jpg#a5a0e4de9db432a7fa1c38de25805d08.', 'MacBook Pro 13" (2016) với nhiều cải tiến mạnh mẽ đánh dấu bước đột phá mới của Apple trên dòng máy tính xách tay.', '<h2><strong>MacBook Pro 13&quot; (2016) với nhiều cải tiến mạnh mẽ đ&aacute;nh dấu bước đột ph&aacute; mới của Apple tr&ecirc;n d&ograve;ng m&aacute;y t&iacute;nh x&aacute;ch tay.</strong></h2>\r\n\r\n<h3><strong>Thiết kế sang trọng</strong></h3>\r\n\r\n<p>Thiết kế lu&ocirc;n l&agrave; điểm được nhiều người d&ugrave;ng y&ecirc;u th&iacute;ch nhất ở những chiếc Macbook v&agrave; với chiếc&nbsp;MacBook Pro 13&quot; (2016) th&igrave; thiết kế cũng kh&ocirc;ng l&agrave;m cho người d&ugrave;ng phải thất vọng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/macbook-pro-13-2016-khong-touch-bar2.jpg" style="width:100%" /></p>\r\n\r\n<p>Ở phi&ecirc;n bản 2016 lần n&agrave;y của Macbook Pro, TouchPad sẽ c&oacute; diện t&iacute;ch lớn hơn so với thế hệ cũ. Cụ thể diện t&iacute;ch bề mặt cảm ứng lực ở sản phẩm n&agrave;y lớn gấp đ&ocirc;i so với MacBook 15 inch trước đ&acirc;y. Gi&uacute;p cải thiện đ&aacute;ng kể cảm gi&aacute;c r&ecirc; chuột khi sử dụng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/macbook-pro-13-2016-khong-touch-bar7.jpg" style="width:100%" /></p>\r\n\r\n<p>Tuy chỉ l&agrave; bản 13 inch, nhưng MacBook Pro 13&quot;&nbsp;2016 vẫn trang bị hai dải loa ở hai b&ecirc;n b&agrave;n ph&iacute;m tương tự như bản MacBook Pro 15 inch của c&aacute;c đời trước.</p>\r\n\r\n<h3><strong>Cổng kết nối mới</strong></h3>\r\n\r\n<p>Tất cả c&aacute;c cổng kết nối tr&ecirc;n thế hệ MacBook Pro 13&quot; (2016) năm nay sẽ bao gồm 2 cổng Thunderbolt 3 USB Type-C. Kể từ năm 2016 trở đi c&aacute;c thế hệ MacBook mới sẽ kh&ocirc;ng c&ograve;n sử dụng cổng sạc MagSafe, thay v&agrave;o đ&oacute; sẽ l&agrave; chuẩn sạc USB Type-C giống như tr&ecirc;n MacBook 12 inch.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/macbook-pro-13-2016-khong-touch-bar4.jpg" style="width:100%" /></p>\r\n\r\n<p>Rất may mắn l&agrave; Apple vẫn giữ lại cho bạn jack cắm&nbsp;<a href="https://www.thegioididong.com/tai-nghe" target="_blank">tai nghe</a>&nbsp;3.5 mm ở cạnh phải của m&aacute;y chứ kh&ocirc;ng bị loại bỏ như tr&ecirc;n thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a>&nbsp;mới của h&atilde;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/macbook-pro-13-2016-khong-touch-bar3.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh đẹp hơn</strong></h3>\r\n\r\n<p>Theo như Apple cho biết, m&agrave;n h&igrave;nh mới của MacBook Pro 13&quot; (2016) năm nay sẽ c&oacute; độ mỏng tương tự như&nbsp;<a href="https://www.thegioididong.com/laptop/apple-macbook-2016-mlhe2-m3-8gb-256gb-macosx" target="_blank">MacBook 12 inch</a>, độ s&aacute;ng v&agrave; độ tương phản sẽ cao hơn 67%, số lượng m&agrave;u cao hơn 25% so với phi&ecirc;n bản tiền nhiệm.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/macbook-pro-13-2016-khong-touch-bar1.jpg" style="width:100%" /></p>\r\n\r\n<p>Với m&agrave;n h&igrave;nh mới th&igrave;&nbsp;MacBook Pro 13&quot; (2016) cho m&agrave;u sắc hiển thị ch&iacute;nh x&aacute;c hơn, g&oacute;c nh&igrave;n vẫn rất rộng v&agrave; chất lượng h&igrave;nh ảnh đem lại thực sự ấn tượng.</p>\r\n\r\n<h3><strong>B&agrave;n ph&iacute;m được cải tiến</strong></h3>\r\n\r\n<p>Tr&ecirc;n MacBook Pro 2016,&nbsp;<a href="https://www.thegioididong.com/laptop-apple-macbook" target="_blank">Apple</a>&nbsp;mang đến b&agrave;n ph&iacute;m cấu tr&uacute;c c&aacute;nh bướm thế hệ hai, khiến độ d&agrave;y ph&iacute;m chỉ c&ograve;n một nửa so với model 2015.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/macbook-pro-13-2016-khong-touch-bar9.jpg" style="width:100%" /></p>\r\n\r\n<p>Khoảng c&aacute;ch giữa c&aacute;c ph&iacute;m cũng được thu hẹp lại. Nhờ đ&oacute;, h&agrave;nh tr&igrave;nh ph&iacute;m cũng được r&uacute;t ngắn v&agrave; cải thiện trải nghiệm g&otilde; của người d&ugrave;ng.</p>\r\n', '1', 100, 100, 0, 33690000, 33690000, '2017-05-23 21:51:13', '4', '2017-05-23 21:51:13', '4', 1, 1, 1, '', ''),
(8, 32, 'Laptop Apple Macbook 12" MMGM2 Core M 1.2G/8GB/512GB/MacOS (2016)', 'laptop-apple-macbook-12-mmgm2-core-m-1-2g-8gb-512gb-macos-2016', '70b2ef369cc227a40392246060ba88b8.png', '22da6306988ee533f939952c303a9bf4.jpg#46188fe1534202d6fb56249f96d579c7.jpg#73fec931d2b9a6dc50187a370b07535c.jpg#09c754f44f14293a81567526134ff205.jpg#136eb28d7e48435301b03b5e97ceb7f4.jpg#01d355ec56e899bd80420215127a4fcd.jpg', 'Apple Macbook 12 inch MMGM2 sở hữu thân hình lý tưởng nhờ chất liệu nhôm nguyên khối được gia công bằng bàn tay tuyệt vời của các kỹ sư đến từ Apple. Thân máy mỏng chỉ 13.1 mm và nhẹ chỉ 0,9 kg. Thiết bị có màu vàng hồng rất cuốn hút, trên thân máy chỉ có một cổng kết nối USB C và một jack âm thanh 3.5 mm.', '<p>Apple Macbook 12 inch MMGM2 sở hữu th&acirc;n h&igrave;nh l&yacute; tưởng nhờ chất liệu nh&ocirc;m nguy&ecirc;n khối được gia c&ocirc;ng bằng b&agrave;n tay tuyệt vời của c&aacute;c kỹ sư đến từ Apple. Th&acirc;n m&aacute;y mỏng chỉ 13.1 mm v&agrave; nhẹ chỉ 0,9 kg.</p>\r\n\r\n<p>Thiết bị c&oacute; m&agrave;u v&agrave;ng hồng rất cuốn h&uacute;t, tr&ecirc;n th&acirc;n m&aacute;y chỉ c&oacute; một cổng kết nối USB C v&agrave; một jack &acirc;m thanh 3.5 mm.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/apple-macbook-12-mmgm2-core-m-12g-8gb-512gb-macos-2-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Th&acirc;n h&igrave;nh si&ecirc;u mỏng, được gia c&ocirc;ng rất đẹp v&agrave; cao cấp</em></p>\r\n\r\n<p><em><img alt="" src="/TTTN-Green/public/upload/apple-macbook-12-mmgm2-core-m-12g-8gb-512gb-macos-3-1.jpg" style="width:100%" /></em></p>\r\n\r\n<p><em>Mặt ph&iacute;a dưới c&oacute; c&aacute;c ch&acirc;n đế gi&uacute;p m&aacute;y c&acirc;n bằng v&agrave; chắc chắn</em></p>\r\n\r\n<p><em><img alt="" src="/TTTN-Green/public/upload/apple-macbook-12-mmgm2-core-m-12g-8gb-512gb-macos-4-1.jpg" style="width:100%" /></em></p>\r\n\r\n<p><em>C&ugrave;ng với cổng USB C v&agrave; một chiếc adapter chuyển đổi bạn c&oacute; thể kết nối đơn giản với c&aacute;c thiết bị kh&aacute;c</em></p>\r\n\r\n<h3><strong>B&agrave;n ph&iacute;m</strong></h3>\r\n\r\n<p>B&agrave;n ph&iacute;m của Apple Macbook 12 inch MMGM2 được l&agrave;m hơi n&ocirc;ng do th&acirc;n m&aacute;y đ&atilde; qu&aacute; mỏng, qua thời gian l&agrave;m quen ngắn bạn sẽ dễ d&agrave;ng sử dụng hơn. C&aacute;c ph&iacute;m ấn cho độ đ&agrave;n hồi tốt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/apple-macbook-12-mmgm2-core-m-12g-8gb-512gb-macos-5-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>C&aacute;c ph&iacute;m ấn được l&agrave;m đủ k&iacute;ch thước, ngo&agrave;i trừ hai n&uacute;t điều hướng l&ecirc;n tr&ecirc;n, xuống dưới đ&atilde; được tối giản</em></p>\r\n\r\n<h3><strong>Force Touch</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; t&iacute;nh năng rất mới tương tự như t&iacute;nh năng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/huong-dan-su-dung-3d-touch-738113" target="_blank">3D Touch</a>&nbsp;tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6s-64gb" target="_blank">iPhone 6s</a>&nbsp;v&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6s-plus-64gb" target="_blank">iPhone 6s Plus</a>. Touchpad c&oacute; thể hiểu được c&aacute;c t&aacute;c động mạnh nhẹ kh&aacute;c nhau, t&ugrave;y từng trường hợp m&agrave; khi ấn s&acirc;u hơn b&igrave;nh thường t&aacute;c dụng sẽ kh&aacute;c nhau.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/apple-macbook-12-mmgm2-core-m-12g-8gb-512gb-macos-9.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh độ ph&acirc;n giải cao n&ecirc;n chất lượng hiển thị rất tốt</em></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; chiếc Macbook 12 inch n&agrave;y được trang bị vi&ecirc;n pin c&oacute; thời lượng sử dụng khoảng 10 tiếng v&agrave; một chiếc camera ph&iacute;a trước độ ph&acirc;n giải 1.3 MP gi&uacute;p bạn chia sẻ h&igrave;nh ảnh, online video với người th&acirc;n dễ d&agrave;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/apple-macbook-12-mmgm2-core-m-12g-8gb-512gb-macos-10.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Một sản phẩm c&oacute; khả năng di động cao</em></p>\r\n\r\n<p>D&ograve;ng Macbook của Appe lu&ocirc;n được đ&aacute;nh gi&aacute; cao v&agrave; l&agrave; biểu tượng c&ocirc;ng nghệ, sản phẩm 12 inch được thiết kế rất tối ưu, c&aacute;c chi tiết thừa được loại bỏ, điều đ&oacute; đ&uacute;ng với cả c&aacute;c chi tiết v&agrave; hệ thống, hệ điều h&agrave;nh b&ecirc;n trong, rất tối ưu v&agrave; cao cấp.</p>\r\n', '1', 130, 130, 0, 37990000, 37990000, '2017-05-23 21:53:52', '4', '2017-05-23 21:57:27', '4', 1, 1, 1, '', ''),
(32, 24, 'Điện thoại iPhone 7 Plus Red 128GB', 'dien-thoai-iphone-7-plus-red-128gb', '2bc102003a9bf4fcd8a416547f93ca41.jpg', 'ae74bbfa0e3183a86be344f2acae42e2.jpg#31a4400aec4c60377a5cc0348dc92f83.jpg#bbaa3c189258b95c1740927af7d9949c.jpg', 'iPhone 7 Plus Red 128GB là phiên bản iPhone 7 Plus mới được Apple giới thiệu với màu sắc mới là màu Red nhằm kỉ niệm 10 năm hợp tác giữa Apple và (RED) – một tổ chức gây quỹ hỗ trợ phòng chống AIDS.', '<h2><strong>iPhone 7 Plus Red 128GB l&agrave; phi&ecirc;n bản iPhone 7 Plus mới được Apple giới thiệu với m&agrave;u sắc mới l&agrave; m&agrave;u Red nhằm kỉ niệm 10 năm&nbsp;hợp t&aacute;c giữa Apple v&agrave; (RED) &ndash; một tổ chức g&acirc;y quỹ hỗ trợ ph&ograve;ng chống AIDS.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-red-128gb5.jpg" style="width:100%" /></p>\r\n\r\n<p>M&agrave;u đỏ l&agrave; tr&ecirc;n chiếc&nbsp;iPhone 7 Plus Red 128GB l&agrave; m&agrave;u lần đầu ti&ecirc;n được Apple mang l&ecirc;n những chiếc iPhone của m&igrave;nh. Theo đ&oacute; th&igrave; những chiếc iPhone mới sẽ c&oacute; mặt lưng được l&agrave;m từ nh&ocirc;m nguy&ecirc;n khối, được sơn l&ecirc;n lớp sơn m&agrave;u đỏ rất nổi bật v&agrave; bắt mắt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-red-128gb8.jpg" style="width:100%" /></p>\r\n\r\n<p>Đ&aacute;ng tiếc l&agrave; phần mặt trước của m&aacute;y vẫn giữ m&agrave;u trắng quen thuộc n&ecirc;n sẽ cho bạn đ&ocirc;i ch&uacute;t cảm thấy hụt hẫng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-red-128gb10.jpg" style="width:100%" /></p>\r\n\r\n<p>Điểm cộng của chiếc&nbsp;iPhone 7 Plus Red 128GB mới l&agrave; mặt lưng của m&aacute;y sẽ kh&ocirc;ng để lại mồ h&ocirc;i v&agrave; dấu v&acirc;n tay trong qu&aacute; tr&igrave;nh sử dụng như m&agrave;u Jet Black ra mắt trước đ&oacute;.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-red-128gb8(1).jpg" style="width:100%" /></p>\r\n\r\n<p>Ngo&agrave;i thiết kế được bổ sung m&agrave;u sắc mới th&igrave;&nbsp;iPhone 7 Plus Red 128GB vẫn sở hữu cho m&igrave;nh đầy đủ c&aacute;c t&iacute;nh năng v&agrave; trang bị như những chiếc<a href="https://www.thegioididong.com/dtdd/iphone-7-plus" target="_blank">&nbsp;iPhone 7 Plus</a>&nbsp;được giới thiệu trước đ&oacute;.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-red-128gb11.jpg" style="width:100%" /></p>\r\n\r\n<p>iPhone 7 Plus l&agrave; chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau. Với bộ đ&ocirc;i camera n&agrave;y th&igrave; bạn c&oacute; thể chụp cho m&igrave;nh những bức ảnh x&oacute;a ph&ocirc;ng c&oacute; chất lượng rất tốt.</p>\r\n\r\n<p>Camera trước cũng được n&acirc;ng cấp độ ph&acirc;n giải l&ecirc;n 7 MP c&ugrave;ng t&iacute;nh năng Retina Flash th&igrave; bạn c&oacute; thể thỏa sức tự sướng ngay cả trong điều kiện thiếu s&aacute;ng m&agrave; chất lượng ảnh cho ra vẫn rất tốt.</p>\r\n\r\n<p>Ph&iacute;m Home của m&aacute;y cũng đ&atilde; được thay đổi từ ph&iacute;m Home truyền thống sang dạng ph&iacute;m Home cảm ứng lực gi&uacute;p giảm thiểu khả năng hỏng ph&iacute;m Home khi sử dụng l&acirc;u d&agrave;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-red-128gb7.jpg" style="width:100%" /></p>\r\n\r\n<p>Apple cũng trang bị cho chiếc iPhone 7 Plus khả năng chống nước v&agrave; chống bụi ti&ecirc;u chuẩn IP67 gi&uacute;p bạn c&oacute; thể mang chiếc điện thoại của m&igrave;nh xuống nước v&agrave; chụp những bức ảnh vui vẻ. Tuy nhi&ecirc;n bạn cũng kh&ocirc;ng n&ecirc;n qu&aacute; lạm dụng t&iacute;nh năng n&agrave;y bởi m&aacute;y chỉ c&oacute; thể chống nước chứ kh&ocirc;ng &quot;kh&aacute;ng nước&quot; ho&agrave;n to&agrave;n n&ecirc;n một v&agrave;i trường hợp đ&aacute;ng tiếc c&oacute; thể xảy ra.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-red-128gb12.jpg" style="width:100%" /></p>\r\n\r\n<p>Với con chip&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">Apple A10 Fusion 4 nh&acirc;n</a>&nbsp;kết hợp với 3 GB RAM th&igrave; bạn c&oacute; thể sử dụng mượt m&agrave; tất cả c&aacute;c game v&agrave; ứng dụng đang c&oacute; mặt tr&ecirc;n App Store hiện nay.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-red-128gb9.jpg" style="width:100%" /></p>\r\n\r\n<p>Một điều đ&aacute;ng ch&uacute; &yacute; l&agrave; khi bạn mua cho m&igrave;nh những chiếc iPhone 7 Plus Red 128GB th&igrave;&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank">Apple</a>&nbsp;sẽ đ&oacute;ng g&oacute;p một phần doanh thu từ iPhone của bạn cho Quỹ to&agrave;n cầu để hỗ trợ c&aacute;c chương tr&igrave;nh ph&ograve;ng chống HIV / AIDS v&agrave; điều trị AIDS miễn ph&iacute; ở ch&acirc;u Phi.</p>\r\n', '1', 100, 100, 0, 23990000, 23990000, '2017-05-23 18:59:00', '6', '2017-05-23 18:59:00', '6', 1, 1, 1, '', ''),
(34, 24, 'Điện thoại iPhone 7 256GB', 'dien-thoai-iphone-7-256gb', 'e0b12d9c5dffafce9020da32e8df345f.jpg', '02cd35656a6ce5c535e42038e8e507b4.jpg#c075359a4c523f4abf669cda8d362a17.jpg#b1cda426a95e6c1b554d455385acb30f.jpg', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh.', '<h2><strong><a href="https://www.thegioididong.com/tim-kiem?key=iphone+7" target="_blank">iPhone 7</a>&nbsp;256 GB mang tr&ecirc;n m&igrave;nh thiết kế quen thuộc từ thời iPhone 6, m&aacute;y được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, d&agrave;n loa stereo cho &acirc;m thanh hay v&agrave; cấu h&igrave;nh cực mạnh.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-256gb6-1.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Camera trước tăng l&ecirc;n 7 MP</strong></h3>\r\n\r\n<p>Một sự cải thiện đ&aacute;ng kể so với iPhone 6s trước đ&oacute;, những tấm ảnh chụp selfie của bạn c&agrave;ng th&ecirc;m độ chi tiết v&agrave; sắc n&eacute;t, bộ nhớ lớn 256 GB cũng gi&uacute;p bạn thoải m&aacute;i chụp v&agrave; lưu trữ ảnh m&agrave; kh&ocirc;ng lo hết dung lượng để lưu.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-256gb-19.jpg" style="width:100%" /></p>\r\n\r\n<p>C&ugrave;ng với đ&oacute; l&agrave; t&iacute;nh năng chụp Retina Flash gi&uacute;p bạn chụp ảnh tốt hơn ở điều kiện thiếu s&aacute;ng.</p>\r\n\r\n<p>Ngo&agrave;i ra, camera ph&iacute;a sau đ&atilde; được thiết kế gọn g&agrave;ng với đường bo mềm mại hơn, hạn chế tối đa trầy xước cho ống k&iacute;nh.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-128gb-4-3.jpg" /></p>\r\n\r\n<h3><strong>Chuẩn chống nước mới</strong></h3>\r\n\r\n<p>Cuối c&ugrave;ng th&igrave;&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a>&nbsp;7 cũng được trang bị chuẩn chống nước cao cấp, mang tới sự an t&acirc;m lớn cho người d&ugrave;ng khi v&ocirc; t&igrave;nh để m&aacute;y d&iacute;nh nước mưa hay l&agrave;m đổ nước.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-256gb5-1.jpg" /><em>Tuy nhi&ecirc;n, bạn lưu &yacute; kh&ocirc;ng mang m&aacute;y xuống bể bơi, hồ nước...</em></p>\r\n\r\n<h3><strong>&Acirc;m thanh stereo ph&aacute;t ra từ 2 ph&iacute;a</strong></h3>\r\n\r\n<p>Kh&ocirc;ng c&ograve;n kh&oacute; chịu khi bạn cầm m&aacute;y chơi game nhưng bị b&iacute;t loa như ở những phi&ecirc;n bản trước đ&oacute;.</p>\r\n\r\n<p>iPhone 7 256 GB được trang bị d&agrave;n loa tr&ecirc;n dưới cho &acirc;m thanh ph&aacute;t ra hay hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-256gb-loa.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Cảm biến v&acirc;n tay nhanh nhạy hơn</strong></h3>\r\n\r\n<p>Gi&uacute;p bạn mở kh&oacute;a m&aacute;y chỉ trong v&agrave;i nốt nhạc, gi&uacute;p tiết kiệm thời gian cũng như bảo mật cao dữ liệu trong m&aacute;y.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/hoi-dap/thiet-lap-van-tay-moi-tren-iphone-7-920010" target="_blank">Hướng dẫn bạn c&aacute;ch c&agrave;i đặt v&acirc;n tay iPhone 7</a>.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-256gb3-1.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh 4.7 inch c&agrave;ng th&ecirc;m sắc n&eacute;t</strong></h3>\r\n\r\n<p>C&ugrave;ng với đ&oacute; l&agrave; khả năng hiển thị tốt hơn dưới trời nắng, g&oacute;c nh&igrave;n nghi&ecirc;ng kh&ocirc;ng bị mất m&agrave;u.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-256gb4-1.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh mạnh mẽ thoải m&aacute;i chiến game</strong></h3>\r\n\r\n<p>M&aacute;y t&iacute;ch hợp&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">chip xử l&yacute; A10</a>&nbsp;mới nhất, RAM 2 GB c&ugrave;ng hệ điều h&agrave;nh iOS 10 mới gi&uacute;p m&aacute;y vận h&agrave;nh nhẹ nh&agrave;ng v&agrave; nhanh nhạy.</p>\r\n\r\n<p><strong>N&uacute;t home th&agrave;nh dạng cứng v&agrave; nhận biết cảm ứng lực</strong></p>\r\n\r\n<p>N&uacute;t home tr&ograve;n tr&ecirc;n iPhone 7 ch&iacute;nh thức l&agrave; dạng cứng, tức bạn sẽ kh&ocirc;ng nhấn xuống được nữa, để thao t&aacute;c tr&ecirc;n n&uacute;t n&agrave;y bạn sẽ nhấn 1 lực vừa phải đến khi n&uacute;t home run nhẹ l&ecirc;n.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-256gb-20.jpg" style="width:100%" /></p>\r\n\r\n<p>Điều dễ nhận thấy nhất về iPhone 7 tiếp theo ch&iacute;nh l&agrave; mặt sau với d&atilde;y ăng-ten được giấu đi, c&ograve;n lại ngoại h&igrave;nh m&aacute;y kh&ocirc;ng thay đổi nhiều so với&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6s-32gb" target="_blank">iPhone 6s</a>&nbsp;trước đ&oacute;.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-256gb1-1.jpg" style="width:100%" /></p>\r\n\r\n<p>Ngo&agrave;i ra, iPhone 7 c&ograve;n rất nhiều t&iacute;nh năng hay kh&aacute;c m&agrave; bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m ở link tổng hợp dưới đ&acirc;y:</p>\r\n', '1', 100, 100, 0, 21990000, 21990000, '2017-05-23 19:09:22', '6', '2017-05-23 19:09:22', '6', 1, 1, 1, '', ''),
(35, 24, 'Điện thoại iPhone 7 Red 128GB', 'dien-thoai-iphone-7-red-128gb', 'd162be8308878c7d526479432700c26d.jpg', '04ff0c134ae9a89170bf8e4c29eebea1.jpg#73b0c58a5c9683e67fffe349a644d6b4.jpg#aa615c47a4a6bb896ef8bbda72b060b0.jpg', 'Sau rất nhiều thông tin thì cuối cùng Apple cũng cho ra mắt chiếc điện thoại để kỉ niệm 10 năm hợp tác giữa Apple và (RED) – một tổ chức gây quỹ hỗ trợ phòng chống AIDS đó là iPhone 7 RED.', '<h2><strong>Sau rất nhiều th&ocirc;ng tin th&igrave; cuối c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank">Apple&nbsp;</a>cũng cho ra mắt chiếc điện thoại để kỉ niệm 10 năm hợp t&aacute;c giữa Apple v&agrave; (RED) &ndash; một tổ chức g&acirc;y quỹ hỗ trợ ph&ograve;ng chống AIDS đ&oacute; l&agrave; iPhone 7 RED.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-red1.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>M&agrave;u sắc tinh tế, sang trọng</strong></h3>\r\n\r\n<p>Đ&acirc;y kh&ocirc;ng phải l&agrave; lần đầu ti&ecirc;n sản phẩm của Apple c&oacute; m&agrave;u đỏ, cụ thể l&agrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-5c-32gb" target="_blank">iPhone 5C</a>&nbsp;đ&atilde; từng mang m&agrave;u đỏ. Nhưng m&agrave;u đỏ lần n&agrave;y tr&ecirc;n iPhone 7 sang trọng v&agrave; tinh tế hơn nhiều nhờ v&agrave;o việc l&agrave; vỏ của n&oacute; được l&agrave;m từ kim loại v&agrave; được sơn m&agrave;u đỏ, thay v&igrave; chất liệu nhựa ở 5C. R&otilde; r&agrave;ng n&oacute; mang lại một sự cuốn h&uacute;t ri&ecirc;ng v&agrave; rất đặc biệt cho những fan của Apple.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-red3.jpg" style="width:100%" /></p>\r\n\r\n<p>Với việc nắm bắt được xu hướng v&agrave; lu&ocirc;n khiến c&aacute;c h&atilde;ng kh&aacute;c th&egrave;m kh&aacute;t th&igrave; m&agrave;u đỏ tr&ecirc;n iPhone 7 lại khiến khẳng định hơn sự s&aacute;ng tạo của họ.\\</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-red4.jpg" style="width:100%" /></p>\r\n\r\n<p>iPhone 7 RED sẽ &ldquo;sạch sẽ&rdquo; hơn so với m&agrave;u Jet Black v&igrave; mặt lưng của m&aacute;y sẽ kh&ocirc;ng b&aacute;m dấu v&acirc;n tay. Một điểm cộng nữa cho m&agrave;u đỏ c&aacute; t&iacute;nh n&agrave;y.</p>\r\n\r\n<h3><strong>Cấu h&igrave;nh mạnh mẽ</strong></h3>\r\n\r\n<p>Ngo&agrave;i một điểm kh&aacute;c biệt về m&agrave;u sắc th&igrave; những chiếc iPhone 7 RED sẽ kh&ocirc;ng c&oacute; g&igrave; kh&aacute;c so với những bản&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-7-256gb" target="_blank">iPhone 7</a>&nbsp;trước đ&oacute;.</p>\r\n\r\n<p>Vẫn l&agrave; chip&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">Apple A10 Fusion 4 nh&acirc;n 64-bit</a>&nbsp;kết hợp với 2 GB điện thoại n&agrave;y vẫn l&agrave; top hiệu năng hiện nay. Đủ sức c&acirc;n tất cả c&aacute;c ứng dụng hiện nay.</p>\r\n\r\n<p>Nhằm tăng tuổi thọ của ph&iacute;m Home, m&aacute;y cũng đ&atilde; thay đổi từ ph&iacute;m Home truyền thống sang dạng ph&iacute;m Home cảm ứng lực.</p>\r\n\r\n<h3><strong>Camera selfie 7 MP</strong></h3>\r\n\r\n<p>Camera độ ph&acirc;n giải l&ecirc;n 7 MP c&oacute; t&iacute;nh năng&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-tinh-nang-chup-anh-camera-truoc-769270#retinaflash" target="_blank">Retina Flash</a>&nbsp;th&igrave; bạn c&oacute; thể thỏa sức tự sướng ngay cả trong điều kiện thiếu s&aacute;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-red6.jpg" style="width:100%" /></p>\r\n\r\n<p>Camera sau độ ph&acirc;n giải 12 MP c&oacute; 4 đ&egrave;n LED (2 t&ocirc;ng m&agrave;u) gi&uacute;p việc chụp ảnh tốt hơn ở nhiều điều kiện &aacute;nh s&aacute;ng, gi&uacute;p người d&ugrave;ng c&oacute; những bức ảnh ưng &yacute; nhất.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh sắc n&eacute;t</strong></h3>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-red5.jpg" style="width:100%" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh 4.7 inch với khả năng hiển thị tốt hơn dưới trời nắng, g&oacute;c nh&igrave;n nghi&ecirc;ng kh&ocirc;ng bị mất m&agrave;u.</p>\r\n\r\n<h3><strong>Chống nước, chống bụi</strong></h3>\r\n\r\n<p>Khả năng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/chong-nuoc-va-chong-bui-tren-smart-phone-771130" target="_blank">chống nước v&agrave; chống bụi</a>&nbsp;ti&ecirc;u chuẩn IP67 gi&uacute;p chiếc điện thoại của bạn c&oacute; thể sử dụng được khi bị ướt.</p>\r\n\r\n<h3><strong>Cảm biến v&acirc;n tay</strong></h3>\r\n\r\n<p>Gi&uacute;p bạn mở kh&oacute;a m&aacute;y chỉ trong v&agrave;i nốt nhạc, gi&uacute;p tiết kiệm thời gian cũng như bảo mật cao dữ liệu trong m&aacute;y.</p>\r\n\r\n<p>Một sự thay đổi nhỏ nhưng đặc biệt chắc chắn với m&agrave;u sắc mới n&agrave;y, Apple sẽ khiến iPhone 7 RED trở th&agrave;nh một xu thế mới.</p>\r\n', '1', 100, 100, 0, 19900000, 19900000, '2017-05-23 19:15:45', '6', '2017-05-23 19:15:45', '6', 1, 1, 1, '', ''),
(36, 24, 'Điện thoại iPhone 7 128GB', 'dien-thoai-iphone-7-128gb', 'ecde024588954958a68f1e637114457b.jpg', 'cb600edcd45ee6a4a81f6feab7856684.jpg#55d413a93426742e2a27cdd602c3491f.jpg#8488ab62b90bc73690b251c881344d73.jpg', 'Đặc điểm nổi bật của iPhone 7 128GB\r\n\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Jack chuyển tai nghe 3.5mm, Cáp, Cây lấy sim\r\niPhone 7 128 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh.', '<h2><strong>Với thiết kế kh&ocirc;ng qu&aacute; nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6-plus-64gb" target="_blank">iPhone 6 Plus</a>, &nbsp;iPhone 7 Plus&nbsp;được trang bị nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; như camera k&eacute;p, đạt chuẩn chống nước chống bụi c&ugrave;ng cấu h&igrave;nh cực mạnh.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb1-1.jpg" /><br />\r\nThay đổi d&atilde;y nhựa an-ten bắt s&oacute;ng được đưa v&ograve;ng l&ecirc;n tr&ecirc;n thay v&igrave; cắt ngang ở mặt lưng như trước.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb2-1.jpg" /><br />\r\nN&uacute;t Home quen thuộc kh&ocirc;ng c&ograve;n l&agrave; ph&iacute;m vật l&yacute; nữa m&agrave; được thay thế bằng cảm ứng, n&oacute; sẽ rung l&ecirc;n khi bạn ấn. V&igrave; đ&atilde; d&ugrave;ng iPhone một thời gian rất d&agrave;i, n&ecirc;n t&ocirc;i c&ocirc;ng nhận rằng hơi kh&oacute; để l&agrave;m quen với n&oacute;, nhưng c&oacute; lẽ chỉ mất v&agrave;i ng&agrave;y th&ocirc;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb3-1.jpg" /><br />\r\nCuối c&ugrave;ng ch&uacute;ng ta cũng c&oacute; được chiếc iPhone vẫn sống khi rơi v&agrave;o nước hay đi mưa kh&ocirc;ng cần phải loay hoay t&igrave;m chỗ cất v&igrave; Apple đ&atilde; mang chuẩn chống nước IP67 cho iphone 7 plus .(Lưu &yacute;: kh&ocirc;ng n&ecirc;n cố t&igrave;nh ng&acirc;m nước v&igrave; nếu c&oacute; thiệt hại do v&agrave;o nước sẽ kh&ocirc;ng được Apple bảo h&agrave;nh).</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb4-1.jpg" /><br />\r\nM&agrave;n h&igrave;nh Retina tr&ecirc;n 7 Plus hỗ trợ DCI-P3 gam m&agrave;u rộng, nghĩa l&agrave; ch&uacute;ng c&oacute; khả năng t&aacute;i tạo m&agrave;u sắc trong phạm vi của sRGB. N&oacute;i đơn giản, ch&uacute;ng c&oacute; thể hiển thị sống động hơn, sắc th&aacute;i h&igrave;nh ảnh tốt hơn trước đ&oacute;. Độ ph&acirc;n giải, mật độ điểm ảnh v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh vẫn giữ nguy&ecirc;n so với iPhone 6s Plus.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb5-1.jpg" /><br />\r\nLần đầu ti&ecirc;n iPhone xuất hiện t&iacute;nh năng &acirc;m thanh Stereo. Phim ảnh, podcast v&agrave; c&aacute;c cuộc gọi loa ngo&agrave;i b&acirc;y giờ &acirc;m thanh r&otilde; r&agrave;ng hơn rất nhiều. Đ&oacute; l&agrave; do Apple đ&atilde; d&ugrave;ng c&ocirc;ng nghệ thiết lập loa chứ kh&ocirc;ng phải thiết kế 2 loa ngay tr&ecirc;n mặt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb6-.jpg" /></p>\r\n\r\n<p>iPhone 7 Plus l&agrave;&nbsp;chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau. Camera th&ocirc;ng thường vẫn chụp h&igrave;nh g&oacute;c rộng, c&ograve;n camera thứ hai c&oacute; ti&ecirc;u cự ph&ugrave; hợp để chụp ch&acirc;n dung, c&oacute; t&iacute;nh năng chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng (l&agrave;m mờ hậu cảnh).&nbsp;</p>\r\n\r\n<p>Với 1 chạm nhanh ch&oacute;ng bạn c&oacute; thể chuyển đổi giữa chế độ 1x v&agrave; zoom 2x, hoặc bạn c&oacute; thể k&eacute;o thanh trượt hay d&ugrave;ng 2 ng&oacute;n tay đến zoom. Apple đ&atilde; th&ecirc;m t&iacute;nh năng zoom kỹ thuật số l&ecirc;n đến 10x.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb8-1.jpg" /><br />\r\nĐiểm nhấn ấn tượng nhất nằm ở mặt lưng của sản phẩm với hiệu ứng phản chiếu &aacute;nh s&aacute;ng khi thay đổi g&oacute;c nh&igrave;n rất đặc biệt. Hiệu ứng n&agrave;y cũng được &aacute;p dụng cho to&agrave;n bộ khung m&aacute;y, từ cạnh tr&ecirc;n, cạnh dưới cho đến c&aacute;c n&uacute;t bấm n&ecirc;n cho cảm gi&aacute;c một thiết bị cực kỳ ho&agrave;n thiện, gần như kh&ocirc;ng c&oacute; bất kỳ một chi tiết thừa n&agrave;o cả.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb9.jpg" /></p>\r\n\r\n<p>Ngo&agrave;i tr&aacute;i tim&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">Apple A10 Fusion 4 nh&acirc;n</a>&nbsp;với hiệu năng cực k&igrave; mạnh mẽ v&agrave; ấn tượng th&igrave; iPhone 7 Plus c&ograve;n được trang bị hệ điều h&agrave;nh mới nhất IOS 10 với nhiều t&iacute;nh năng bất ngờ, v&agrave; th&uacute; vị.</p>\r\n\r\n<p>&ldquo;T&aacute;o khuyết&rdquo; cũng kh&ocirc;ng qu&ecirc;n nhấn mạnh iPhone 7 Plus sẽ nhanh hơn iPhone đời đầu tới&hellip; 140 lần. Những ai m&ecirc; chơi game tr&ecirc;n di động cũng sẽ &ldquo;phải l&ograve;ng&rdquo; iPhone mới khi c&oacute; chip xử l&yacute; đồ họa được n&acirc;ng tầm đ&uacute;ng chất &ldquo;m&aacute;y chơi game&rdquo;.</p>\r\n\r\n<p>Camera trước n&acirc;ng cấp độ ph&acirc;n giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiệu thiếu s&aacute;ng tuyệt vời với c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-tinh-nang-chup-anh-camera-truoc-769270#retinaflash" target="_blank">Retina Flash</a>, Auto HDR</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb10.jpg" /></p>\r\n\r\n<p>Iphone 7 plus theo bản th&acirc;n đ&aacute;nh gi&aacute; l&agrave; một sự lựa chọn hợp l&yacute; trong tầm gi&aacute;:</p>\r\n\r\n<ul>\r\n	<li><strong>Ưu điểm:</strong>\r\n\r\n	<ul>\r\n		<li>Hiệu năng rất cao</li>\r\n		<li>Camera trước sau rất tuyệt vời</li>\r\n		<li>Chống nước</li>\r\n		<li>Thời lượng pin tốt</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Nhược điểm:</strong>\r\n	<ul>\r\n		<li>Loại bỏ jack 3.5mm</li>\r\n		<li>Kh&ocirc;ng thay đổi thiết kế qu&aacute; nhiều mặc d&ugrave; đ&atilde; 3 năm</li>\r\n		<li>Ph&iacute;m Home cần thời gian để l&agrave;m quen</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '1', 1, 1, 0, 19990000, 19990000, '2017-05-23 19:17:36', '6', '2017-05-23 19:17:36', '6', 1, 1, 1, '', ''),
(37, 25, 'Điện thoại Samsung Galaxy S8', 'dien-thoai-samsung-galaxy-s8', '6df66944468859abc409cba0d08fdb0d.jpg', 'ef830de57c880e6626c5bcf4a4359550.jpg#96d8ceb74b900727cfa767f70b6edecf.jpg#d25989a598ee113844d56de41ae2b14a.jpg', 'Galaxy S8 là siêu phẩm mới nhất được Samsung ra mắt vào ngày 29/3 với thiết kế nhỏ gọn hoàn toàn mới, màn hình vô cực viền siêu mỏng.', '<h2><strong>Galaxy S8 l&agrave; si&ecirc;u phẩm mới nhất được&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;ra mắt v&agrave;o ng&agrave;y 29/3 với thiết kế nhỏ gọn ho&agrave;n to&agrave;n mới, m&agrave;n h&igrave;nh v&ocirc; cực viền si&ecirc;u mỏng.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1680_1280x719-800-resize.jpg" style="width:100%" />Lần đầu ti&ecirc;n cầm chiếc m&aacute;y tr&ecirc;n tay, cảm gi&aacute;c kh&ocirc;ng c&ograve;n l&agrave; chiếc smartphone truyền thống nữa.</p>\r\n\r\n<p>M&aacute;y d&agrave;i v&agrave; ốm, gọn trong l&ograve;ng b&agrave;n tay khiến m&igrave;nh nhớ đến thời LG c&oacute; chiếc Chocolate d&agrave;i d&agrave;i v&agrave; thon gọn kiểu n&agrave;y, tất nhi&ecirc;n Galaxy S8 cao cấp hơn nhiều.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1692_1280x719-800-resize.jpg" style="width:100%" /></p>\r\n\r\n<p>Ph&iacute;a trước l&agrave; m&agrave;n h&igrave;nh 5.8 inch độ ph&acirc;n giải QHD+ 2960 x 1440 pixels, tỉ lệ 18,5:9 c&ugrave;ng m&agrave;n h&igrave;nh cạnh căng tr&agrave;n. Sử dụng c&ocirc;ng nghệ Super AMOLED cho khả năng hiển thị tươi tắn, độ s&aacute;ng tuyệt vời.</p>\r\n\r\n<p>Quả kh&ocirc;ng ngoa khi Samsung gọi đ&acirc;y l&agrave; Infinity Display (M&agrave;n h&igrave;nh v&ocirc; cực).</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1720_1280x720-800-resize.jpg" style="width:100%" /></p>\r\n\r\n<p>Tr&ecirc;n Galaxy S8, Samsung đ&atilde; quyết định mang ph&iacute;m điều hướng v&agrave;o trong m&agrave;n h&igrave;nh, k&egrave;m theo đ&oacute; l&agrave; n&uacute;t home hỗ trợ cảm ứng lực.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1695_1280x720-800-resize.jpg" style="width:100%" /></p>\r\n\r\n<p>Phần tr&ecirc;n l&agrave; camera phụ 8 MP hỗ trợ t&iacute;nh năng lấy n&eacute;t tự động đầu ti&ecirc;n tr&ecirc;n thế giới, c&aacute;c cảm biến, loa thoại v&agrave; quan trọng nhất l&agrave; cảm biến qu&eacute;t mống mắt. M&igrave;nh c&oacute; sử dụng thử th&igrave; m&aacute;y nhận dạng v&agrave; mở kh&oacute;a cực k&igrave; nhanh.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1732_1280x720-800-resize.jpg" style="width:100%" /></p>\r\n\r\n<p>Khung kim loại được l&agrave;m d&agrave;y hơn, cho cảm gi&aacute;c tựa ng&oacute;n tay chắc chắn hơn Galaxy S7 Edge rất nhiều.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1693_1280x720-800-resize.jpg" style="width:100%" />M&igrave;nh c&oacute; mang theo một chiếc Galaxy S7 Edge để cho c&aacute;c bạn tiện theo d&otilde;i những thay đổi tr&ecirc;n S8. Đầu ti&ecirc;n, m&agrave;n h&igrave;nh tăng l&ecirc;n nhưng k&iacute;ch thước hầu như kh&ocirc;ng đổi, thật tuyệt vời.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1722_1280x719-800-resize.jpg" style="width:100%" />&aacute;c vị tr&iacute; đặt ph&iacute;m nguồn, volume, cổng sạc đều kh&aacute; giống nhau. Ri&ecirc;ng tr&ecirc;n Galaxy S8 trang bị cổng USB Type-C, đồng thời xuất hiện th&ecirc;m ph&iacute;m tắt k&iacute;ch hoạt trợ l&yacute; ảo Bixby.</p>\r\n\r\n<p>Mặt lưng của Galaxy S8 vẫn l&agrave;m bằng k&iacute;nh bo cong mềm mại, bảo vệ bởi cường lực Gorilla Glass 5.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1696_1280x720-800-resize.jpg" style="width:100%" /></p>\r\n\r\n<p>Vị tr&iacute; ph&iacute;a tr&ecirc;n gồm camera ch&iacute;nh 12 MP, khẩu độ F/1.7 c&ugrave;ng c&ocirc;ng nghệ Dual Pixel, đ&egrave;n flash LED v&agrave; cảm biến v&acirc;n tay.</p>\r\n\r\n<p>Tuy nhi&ecirc;n nh&igrave;n kĩ sẽ thấy Samsung chăm ch&uacute;t camera hơn với chi tiết v&ograve;ng tr&ograve;n nhỏ bao quanh.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1697_1280x719-800-resize.jpg" style="width:100%" />C&ograve;n về chất lượng ảnh v&agrave; t&iacute;nh năng, m&igrave;nh sẽ c&oacute; b&agrave;i đ&aacute;nh gi&aacute; khi sử dụng m&aacute;y l&acirc;u hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1686_1280x720-800-resize.jpg" style="width:100%" />Về cấu h&igrave;nh, chiếc Galaxy S8 chạy con chip Exynos 8895 c&ugrave;ng 4 GB RAM, 64 GB bộ nhớ trong cho trải nghiệm mượt m&agrave; v&agrave; đủ sức chiến tất cả game 3D nặng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1715_1280x719-800-resize.jpg" style="width:100%" /></p>\r\n\r\n<p>M&aacute;y chạy tr&ecirc;n nền Android 7.0.1 Nougat với giao diện tuỳ biến Grace UX 8.1, vi&ecirc;n pin đi k&egrave;m 3.000 mAh được t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh Fast Charge.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1716_1280x720-800-resize.jpg" style="width:100%" />Điểm nhấn tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s8" target="_blank">Galaxy S8</a>&nbsp;c&ograve;n c&oacute; t&iacute;nh năng trợ l&yacute; ảo Bixby, tuy nhi&ecirc;n trợ l&yacute; ảo n&agrave;y chưa hỗ trợ tiếng việt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_1720_1280x720-800-resize(1).jpg" style="width:100%" /></p>\r\n\r\n<p>Với nhiều ưu điểm như m&agrave;n h&igrave;nh v&ocirc; cực viền si&ecirc;u mỏng, thiết kế định h&igrave;nh smartphone trong tương lai, cấu h&igrave;nh cực đỉnh v&agrave; camera chụp đ&ecirc;m rất tốt, Galaxy S8 sẽ l&agrave; một si&ecirc;u phẩm l&agrave;m vừa l&ograve;ng rất nhiều người d&ugrave;ng.</p>\r\n', '2', 100, 100, 0, 18490000, 18490000, '2017-05-23 19:34:42', '6', '2017-05-23 19:34:42', '6', 1, 1, 1, '', ''),
(9, 24, 'Điện thoại iPhone 7 32GB', 'dien-thoai-iphone-7-32gb', '83c431477cb29944a20a232aa085c115.jpg', 'fc9187604e26ae09bc2b45ebc3b4894c.jpg#dde48e0096a96ad5f6b08685dfe5a7ec.jpg#19c77032e227d126155e2daedc779225.jpg', 'iPhone 7 32 GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng như trang bị khả năng chống nước, dàn loa stereo và cấu hình cực mạnh.', '<h2><strong>Với thiết kế kh&ocirc;ng qu&aacute; nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6-plus-64gb" target="_blank">iPhone 6 Plus</a>, &nbsp;iPhone 7 Plus&nbsp;được trang bị nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; như camera k&eacute;p, đạt chuẩn chống nước chống bụi c&ugrave;ng cấu h&igrave;nh cực mạnh.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb1-1.jpg" /><br />\r\nThay đổi d&atilde;y nhựa an-ten bắt s&oacute;ng được đưa v&ograve;ng l&ecirc;n tr&ecirc;n thay v&igrave; cắt ngang ở mặt lưng như trước.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb2-1.jpg" /><br />\r\nN&uacute;t Home quen thuộc kh&ocirc;ng c&ograve;n l&agrave; ph&iacute;m vật l&yacute; nữa m&agrave; được thay thế bằng cảm ứng, n&oacute; sẽ rung l&ecirc;n khi bạn ấn. V&igrave; đ&atilde; d&ugrave;ng iPhone một thời gian rất d&agrave;i, n&ecirc;n t&ocirc;i c&ocirc;ng nhận rằng hơi kh&oacute; để l&agrave;m quen với n&oacute;, nhưng c&oacute; lẽ chỉ mất v&agrave;i ng&agrave;y th&ocirc;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb3-1.jpg" /><br />\r\nCuối c&ugrave;ng ch&uacute;ng ta cũng c&oacute; được chiếc iPhone vẫn sống khi rơi v&agrave;o nước hay đi mưa kh&ocirc;ng cần phải loay hoay t&igrave;m chỗ cất v&igrave; Apple đ&atilde; mang chuẩn chống nước IP67 cho iphone 7 plus .(Lưu &yacute;: kh&ocirc;ng n&ecirc;n cố t&igrave;nh ng&acirc;m nước v&igrave; nếu c&oacute; thiệt hại do v&agrave;o nước sẽ kh&ocirc;ng được Apple bảo h&agrave;nh).</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb4-1.jpg" /><br />\r\nM&agrave;n h&igrave;nh Retina tr&ecirc;n 7 Plus hỗ trợ DCI-P3 gam m&agrave;u rộng, nghĩa l&agrave; ch&uacute;ng c&oacute; khả năng t&aacute;i tạo m&agrave;u sắc trong phạm vi của sRGB. N&oacute;i đơn giản, ch&uacute;ng c&oacute; thể hiển thị sống động hơn, sắc th&aacute;i h&igrave;nh ảnh tốt hơn trước đ&oacute;. Độ ph&acirc;n giải, mật độ điểm ảnh v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh vẫn giữ nguy&ecirc;n so với iPhone 6s Plus.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb5-1.jpg" /><br />\r\nLần đầu ti&ecirc;n iPhone xuất hiện t&iacute;nh năng &acirc;m thanh Stereo. Phim ảnh, podcast v&agrave; c&aacute;c cuộc gọi loa ngo&agrave;i b&acirc;y giờ &acirc;m thanh r&otilde; r&agrave;ng hơn rất nhiều. Đ&oacute; l&agrave; do Apple đ&atilde; d&ugrave;ng c&ocirc;ng nghệ thiết lập loa chứ kh&ocirc;ng phải thiết kế 2 loa ngay tr&ecirc;n mặt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb6-.jpg" /></p>\r\n\r\n<p>iPhone 7 Plus l&agrave;&nbsp;chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau. Camera th&ocirc;ng thường vẫn chụp h&igrave;nh g&oacute;c rộng, c&ograve;n camera thứ hai c&oacute; ti&ecirc;u cự ph&ugrave; hợp để chụp ch&acirc;n dung, c&oacute; t&iacute;nh năng chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng (l&agrave;m mờ hậu cảnh).&nbsp;</p>\r\n\r\n<p>Với 1 chạm nhanh ch&oacute;ng bạn c&oacute; thể chuyển đổi giữa chế độ 1x v&agrave; zoom 2x, hoặc bạn c&oacute; thể k&eacute;o thanh trượt hay d&ugrave;ng 2 ng&oacute;n tay đến zoom. Apple đ&atilde; th&ecirc;m t&iacute;nh năng zoom kỹ thuật số l&ecirc;n đến 10x.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb8-1.jpg" /><br />\r\nĐiểm nhấn ấn tượng nhất nằm ở mặt lưng của sản phẩm với hiệu ứng phản chiếu &aacute;nh s&aacute;ng khi thay đổi g&oacute;c nh&igrave;n rất đặc biệt. Hiệu ứng n&agrave;y cũng được &aacute;p dụng cho to&agrave;n bộ khung m&aacute;y, từ cạnh tr&ecirc;n, cạnh dưới cho đến c&aacute;c n&uacute;t bấm n&ecirc;n cho cảm gi&aacute;c một thiết bị cực kỳ ho&agrave;n thiện, gần như kh&ocirc;ng c&oacute; bất kỳ một chi tiết thừa n&agrave;o cả.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb9.jpg" /></p>\r\n\r\n<p>Ngo&agrave;i tr&aacute;i tim&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">Apple A10 Fusion 4 nh&acirc;n</a>&nbsp;với hiệu năng cực k&igrave; mạnh mẽ v&agrave; ấn tượng th&igrave; iPhone 7 Plus c&ograve;n được trang bị hệ điều h&agrave;nh mới nhất IOS 10 với nhiều t&iacute;nh năng bất ngờ, v&agrave; th&uacute; vị.</p>\r\n\r\n<p>&ldquo;T&aacute;o khuyết&rdquo; cũng kh&ocirc;ng qu&ecirc;n nhấn mạnh iPhone 7 Plus sẽ nhanh hơn iPhone đời đầu tới&hellip; 140 lần. Những ai m&ecirc; chơi game tr&ecirc;n di động cũng sẽ &ldquo;phải l&ograve;ng&rdquo; iPhone mới khi c&oacute; chip xử l&yacute; đồ họa được n&acirc;ng tầm đ&uacute;ng chất &ldquo;m&aacute;y chơi game&rdquo;.</p>\r\n\r\n<p>Camera trước n&acirc;ng cấp độ ph&acirc;n giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiệu thiếu s&aacute;ng tuyệt vời với c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-tinh-nang-chup-anh-camera-truoc-769270#retinaflash" target="_blank">Retina Flash</a>, Auto HDR</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb10.jpg" /></p>\r\n\r\n<p>Iphone 7 plus theo bản th&acirc;n đ&aacute;nh gi&aacute; l&agrave; một sự lựa chọn hợp l&yacute; trong tầm gi&aacute;:</p>\r\n\r\n<ul>\r\n	<li><strong>Ưu điểm:</strong>\r\n\r\n	<ul>\r\n		<li>Hiệu năng rất cao</li>\r\n		<li>Camera trước sau rất tuyệt vời</li>\r\n		<li>Chống nước</li>\r\n		<li>Thời lượng pin tốt</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Nhược điểm:</strong>\r\n	<ul>\r\n		<li>Loại bỏ jack 3.5mm</li>\r\n		<li>Kh&ocirc;ng thay đổi thiết kế qu&aacute; nhiều mặc d&ugrave; đ&atilde; 3 năm</li>\r\n		<li>Ph&iacute;m Home cần thời gian để l&agrave;m quen</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '1', 100, 100, 0, 17990000, 17990000, '2017-05-23 19:36:58', '6', '2017-05-23 19:36:58', '6', 1, 1, 1, '', '');
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(10, 25, 'Điện thoại Samsung Galaxy S7 Edge', 'dien-thoai-samsung-galaxy-s7-edge', '0e31b48f8bfe5ca0d63ce2da9a9a72ac.jpg', 'ca6aa249f35f8e19aef8cc356b92a681.jpg#53c0e35b1203ef4762fc35e1a637c4af.jpg#c44d986de4b29c16541e91c4178e4659.jpg', 'Samsung Galaxy S7 Edge được thiết kế bóng bẩy và sang trọng hơn, bên cạnh đó viền màn hình với nhiều tùy chỉnh tiện ích, nhiều tính năng cao cấp như chống nước, camera chất lượng cao và chụp đêm rất tốt.', '<h2><strong>Samsung Galaxy S7 Edge được thiết kế b&oacute;ng bẩy v&agrave; sang trọng hơn, b&ecirc;n cạnh đ&oacute; viền m&agrave;n h&igrave;nh với nhiều t&ugrave;y chỉnh tiện &iacute;ch, nhiều t&iacute;nh năng cao cấp như chống nước, camera chất lượng cao v&agrave; chụp đ&ecirc;m rất tốt.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge2-2.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Khả năng chống nước, chống bụi an to&agrave;n của Galaxy S7 Edge</strong></h3>\r\n\r\n<p>Nhờ đạt chuẩn IP68 n&ecirc;n&nbsp;ho&agrave;n to&agrave;n c&oacute; thể bảo vệ được tốt cho&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7-edge" target="_blank">Galaxy S7 Edge</a>&nbsp;khi v&ocirc; t&igrave;nh d&iacute;nh nước mưa hay l&agrave;m đổ nước, cho bạn th&ecirc;m an t&acirc;m trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge1-2.jpg" style="width:100%" /><em>M&aacute;y thật sự an to&agrave;n khi v&ocirc; t&igrave;nh rớt v&agrave;o nước hay đi dưới mưa</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Rất nhiều cải tiến cho cạnh viền</strong></h3>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-15.jpg" style="width:100%" /><em>C&aacute;c t&aacute;c vụ nhanh hiển thị nhiều hơn trong 1 lần vuốt v&agrave; bạn c&oacute; thể gắn tới 20 t&aacute;c vụ nhanh tr&ecirc;n n&agrave;y</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Thiết kế cong ho&agrave;n hảo</strong></h3>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge1-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>C&aacute;c chi tiết tr&ecirc;n m&aacute;y đều được ho&agrave;n thiện một c&aacute;ch tỉ mỉ v&agrave; tinh tế nhất</em></p>\r\n\r\n<p><strong>Camera tuyệt vời</strong></p>\r\n\r\n<p>Giảm từ độ ph&acirc;n giải 16 MP tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s6-edge" target="_blank">S6 Edge</a>&nbsp;xuống 12 MP nhưng Galaxy S7 Edge được trang bị c&ocirc;ng nghệ Dual Pixel gi&uacute;p b&ugrave; s&aacute;ng rất tốt trong những điều kiện chụp ảnh thiếu s&aacute;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge11.jpg" style="width:100%" /><em>Nhiều chế độ chụp ảnh cho bạn lựa chọn</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-8.jpg" /></p>\r\n\r\n<p><em>Ảnh chụp của Galaxy S7 Edge (Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1004065202/trang-1" target="_blank">Nghĩa Trần</a>)</em></p>\r\n\r\n<p><strong>Phần cứng hoạt động hiệu quả</strong></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-1-1.jpg" style="width:100%" /><em>M&agrave;n h&igrave;nh k&iacute;ch thước lớn 5.5 inch, c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank">Super AMOLED</a>&nbsp;mang lại g&oacute;c nh&igrave;n rộng, m&agrave;u sắc kh&ocirc;ng bị biến đổi, h&igrave;nh ảnh cho m&agrave;u sắc tươi tắn</em></p>\r\n\r\n<p>M&aacute;y d&ugrave;ng chip Exynos 8890, 8 nh&acirc;n c&ugrave;ng mức RAM 4 GB mang lại hiệu quả hoạt động tuyệt vời, hơn hiệu năng 30% so với d&ograve;ng sản phẩm S6 trước.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-25.jpg" style="width:100%" /><em>&nbsp;M&aacute;y được tặng k&egrave;m theo 1 cổng USB OTG kết nối nhỏ, gi&uacute;p kết nối với USB hoặc tay cầm chơi game...</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Xem th&ecirc;m c&aacute;ch sử dụng USB nhỏ với tay cầm chơi game (Nguồn:&nbsp;adrianisen)</em></p>\r\n\r\n<p>M&aacute;y d&ugrave;ng hệ điều h&agrave;nh&nbsp;<a href="https://www.thegioididong.com/hoi-dap/android-6-marshmallow-co-gi-hot-726146" target="_blank">Marshmallow&nbsp;6.0</a>, đặc biệt với c&ocirc;ng nghệ tản nhiệt bằng chất lỏng gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng trong qu&aacute; tr&igrave;nh sử dụng thời gian d&agrave;i.</p>\r\n\r\n<h3><strong>C&aacute;c tiện &iacute;ch đi k&egrave;m</strong></h3>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-20.jpg" style="width:100%" /></p>\r\n\r\n<p><em><em>T&iacute;nh năng Game Tools v&agrave; Game Laucher cực k&igrave; hữu &iacute;ch cho c&aacute;c game thủ khi chơi game</em></em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge223.jpg" style="width:100%" /></p>\r\n\r\n<p><em><em>Always On Display gi&uacute;p bạn kh&ocirc;ng bỏ lỡ bất cứ th&ocirc;ng b&aacute;o quan trọng n&agrave;o v&agrave; kh&ocirc;ng hề ti&ecirc;u hao nhiều pin</em></em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge22323.jpg" style="width:100%" /></p>\r\n\r\n<p><em><em>Khả năng sạc nhanh bằng c&aacute;p hoặc kh&ocirc;ng d&acirc;y tr&ecirc;n Galaxy S7 Edge gi&uacute;p bạn r&uacute;t ngắn thời gian sạc để đầy dung lượng pin 3600 mAh</em></em></p>\r\n\r\n<p>Với nhiều những cải tiến mới lạ v&agrave; thực sự hữu &iacute;ch cho người d&ugrave;ng, Galaxy S7 Edge sẽ l&agrave; một sự lựa chọn tốt cho bạn y&ecirc;u th&iacute;ch một chiếc m&aacute;y mạnh v&agrave; c&oacute; thiết kế đẹp mắt.</p>\r\n', '2', 100, 100, 0, 15490000, 15490000, '2017-05-23 19:43:21', '6', '2017-05-23 19:43:21', '6', 1, 1, 1, '', ''),
(11, 25, 'Điện thoại Samsung Galaxy S7 Edge (Xanh Coral)', 'dien-thoai-samsung-galaxy-s7-edge-xanh-coral', '6ef999dcdc368761044afd46d4ac62ea.jpg', '1092674d355aa115562615f616dfc7f5.jpg#a78dd95473c6d27156aded3465500a3b.jpg#e5d4c23275be24bf356ac3d1aff3b5d9.jpg', 'Samsung Galaxy S7 Edge Xanh Coral được kết hợp giữa 2 màu sắc xanh dương và vàng tạo nên một tổng thể thiết kế vô cùng sang trọng và bắt mắt.', '<h3><strong>Th&ecirc;m sắc m&agrave;u xanh v&agrave;ng sang trọng</strong></h3>\r\n\r\n<p>S7 Edge Xanh Coral kh&ocirc;ng hề thay đổi về cấu h&igrave;nh m&agrave; th&ecirc;m v&agrave;o đ&oacute; l&agrave; m&agrave;u sắc được kho&aacute;c th&ecirc;m l&ecirc;n vẻ bề ngo&agrave;i của m&aacute;y.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-blue-coral-edition--7.jpg" style="width:100%" /></p>\r\n\r\n<p>Với 2 mặt k&iacute;nh trước sau m&aacute;y sẽ được phủ m&agrave;u xanh dương v&agrave; phần khung viền xung quanh m&aacute;y sẽ c&oacute; m&agrave;u v&agrave;ng nổi bật.</p>\r\n\r\n<h3><strong>Galaxy S7 Edge&nbsp;</strong>Xanh<strong>&nbsp;Coral<strong>&nbsp;v</strong>ới&nbsp;khả năng chống nước, chống bụi an to&agrave;n</strong></h3>\r\n\r\n<p>Nhờ đạt chuẩn IP68 n&ecirc;n&nbsp;ho&agrave;n to&agrave;n c&oacute; thể bảo vệ được tốt cho&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7-edge-blue-coral-edition" target="_blank">Galaxy S7 Edg Xanh&nbsp;Coral</a>&nbsp;khi v&ocirc; t&igrave;nh d&iacute;nh nước mưa hay l&agrave;m đổ nước, cho bạn th&ecirc;m an t&acirc;m trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-blue-coral-edition--5-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Một t&iacute;nh năng thật sự l&agrave; điểm s&aacute;ng mới tr&ecirc;n c&aacute;c d&ograve;ng cao cấp của Samsung so với đối thủ</em></p>\r\n\r\n<h3><strong>Rất nhiều cải tiến cho cạnh viền</strong></h3>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-blue-coral-edition--6-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>C&aacute;c t&aacute;c vụ nhanh hiển thị nhiều hơn trong 1 lần vuốt v&agrave; bạn c&oacute; thể gắn tới 20 t&aacute;c vụ nhanh tr&ecirc;n n&agrave;y</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-8.jpg" /></p>\r\n\r\n<p><em>Ảnh chụp của Galaxy S7 Edge (Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1004065202/trang-1" target="_blank">Nghĩa Trần</a>)</em></p>\r\n\r\n<p><strong>Phần cứng hoạt động hiệu quả</strong></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-1-1.jpg" /><em>M&agrave;n h&igrave;nh k&iacute;ch thước lớn 5.5 inch, c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank">Super AMOLED</a>&nbsp;mang lại g&oacute;c nh&igrave;n rộng, m&agrave;u sắc kh&ocirc;ng bị biến đổi, h&igrave;nh ảnh cho m&agrave;u sắc tươi tắn</em></p>\r\n\r\n<p>M&aacute;y d&ugrave;ng chip Exynos 8890, 8 nh&acirc;n c&ugrave;ng mức RAM 4 GB mang lại hiệu quả hoạt động tuyệt vời, hơn hiệu năng 30% so với d&ograve;ng sản phẩm S6 trước.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-25.jpg" /><em>&nbsp;M&aacute;y được tặng k&egrave;m theo 1 cổng USB OTG kết nối nhỏ, gi&uacute;p kết nối với USB hoặc tay cầm chơi game...</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Xem th&ecirc;m c&aacute;ch sử dụng USB nhỏ với tay cầm chơi game (Nguồn:&nbsp;adrianisen)</em></p>\r\n\r\n<p>M&aacute;y d&ugrave;ng hệ điều h&agrave;nh&nbsp;<a href="https://www.thegioididong.com/hoi-dap/android-6-marshmallow-co-gi-hot-726146" target="_blank">Marshmallow&nbsp;6.0</a>, đặc biệt với c&ocirc;ng nghệ tản nhiệt bằng chất lỏng gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng trong qu&aacute; tr&igrave;nh sử dụng thời gian d&agrave;i.</p>\r\n\r\n<h3><strong>C&aacute;c tiện &iacute;ch đi k&egrave;m</strong></h3>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-20.jpg" /></p>\r\n\r\n<p><em><em>T&iacute;nh năng Game Tools v&agrave; Game Laucher cực k&igrave; hữu &iacute;ch cho c&aacute;c game thủ khi chơi game</em></em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge223.jpg" /></p>\r\n\r\n<p><em><em>Always On Display gi&uacute;p bạn kh&ocirc;ng bỏ lỡ bất cứ th&ocirc;ng b&aacute;o quan trọng n&agrave;o v&agrave; kh&ocirc;ng hề ti&ecirc;u hao nhiều pin</em></em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge22323.jpg" /></p>\r\n\r\n<p><em><em>Khả năng sạc nhanh bằng c&aacute;p hoặc kh&ocirc;ng d&acirc;y tr&ecirc;n Galaxy S7 Edge gi&uacute;p bạn r&uacute;t ngắn thời gian sạc để đầy dung lượng pin 3600 mAh</em></em></p>\r\n\r\n<p>Với nhiều những cải tiến mới lạ v&agrave; thực sự hữu &iacute;ch cho người d&ugrave;ng, Galaxy S7 Edge sẽ l&agrave; một sự lựa chọn tốt cho bạn y&ecirc;u th&iacute;ch một chiếc m&aacute;y mạnh v&agrave; c&oacute; thiết kế đẹp mắt.</p>\r\n', '2', 100, 100, 0, 15490000, 15490000, '2017-05-23 19:48:36', '6', '2017-05-23 19:48:36', '6', 1, 1, 1, '', ''),
(12, 25, 'Điện thoại Samsung Galaxy S7 Edge (Pink Gold Edition)', 'dien-thoai-samsung-galaxy-s7-edge-pink-gold-edition', 'e91bd62085c40f2cc6adb82353b39991.jpg', '9f5faed62925ab7a46cf2d170c6d0a3d.jpg', 'Phiên bản màu Pink Gold vừa mới ra mắt sẽ càng tôn lên giá trị của Galaxy S7 Edge nhiều lần hơn nữa cùng với những đột phá vốn có đang hiện hữu.', '<h3><strong>M&agrave;u Pink Gold sang trọng, qu&yacute; ph&aacute;i</strong></h3>\r\n\r\n<p>Phi&ecirc;n bản Galaxy S7 Edge Pink Gold ch&iacute;nh l&agrave; sự h&ograve;a quyện độc đ&aacute;o giữa một thiết kế đẹp, b&oacute;ng bẩy của mặt k&iacute;nh cong đi k&egrave;m với một m&agrave;u sắc bay bổng, qu&yacute; ph&aacute;i v&agrave; nhẹ nh&agrave;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-vang-hong-1-2.jpg" style="width:100%" /></p>\r\n\r\n<p>Thiết kế cong cả mặt k&iacute;nh trước v&agrave; sau th&ocirc;ng minh của&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung" target="_blank">Samsung</a>&nbsp;Galaxy S7 Edge (Pink Gold Edition) cho cảm gi&aacute;c dễ chịu khi cầm &ocirc;m vừa vặn l&ograve;ng b&agrave;n tay, c&aacute;c cử chỉ vuốt, trượt, k&eacute;o thoải m&aacute;i v&agrave; th&iacute;ch th&uacute; hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-vang-hong-13.jpg" style="width:100%" /></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-vang-hong-1-3.jpg" style="width:100%" /></p>\r\n\r\n<p><em>C&aacute;c chi tiết tr&ecirc;n m&aacute;y được ho&agrave;n thiện tỉ mỉ v&agrave; sắc sảo tạo cảm gi&aacute;c cao cấp v&agrave; thanh lịch</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-vang-hong-1-4.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Cảm biến v&acirc;n tay&nbsp;nhanh nhạy, bảo mật tốt cho m&aacute;y</em></p>\r\n\r\n<h3><strong>Khả năng chống nước, chống bụi</strong></h3>\r\n\r\n<p>Với m&agrave;u Pink Gold nhẹ nh&agrave;ng, ta li&ecirc;n tưởng đến ch&uacute;t g&igrave; yếu đuối, mong manh nhưng ngược lại Galaxy S7 Edge (Pink Gold Edition) được ho&agrave;n thiện với hợp kim nh&ocirc;m cứng c&aacute;p, đạt chuẩn&nbsp;<a href="https://www.thegioididong.com/hoi-dap/chong-nuoc-va-chong-bui-tren-smart-phone-771130" target="_blank">IP68</a>&nbsp;n&ecirc;n ho&agrave;n to&agrave;n c&oacute; thể bảo vệ được tốt cho Galaxy S7 Edge khi v&ocirc; t&igrave;nh d&iacute;nh nước mưa hay l&agrave;m đổ nước, chống bụi tối đa gi&uacute;p bạn th&ecirc;m an t&acirc;m trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-vang-hong-1-6.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Camera tuyệt vời</strong></h3>\r\n\r\n<p>Giảm từ độ ph&acirc;n giải 16 MP tr&ecirc;n S6 Edge xuống 12 MP nhưng Galaxy S7 Edge được trang bị c&ocirc;ng nghệ Dual Pixel gi&uacute;p b&ugrave; s&aacute;ng rất tốt trong những điều kiện chụp ảnh thiếu s&aacute;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-vang-hong-26.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Nhiều chế độ chụp ảnh cho bạn lựa chọn</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-11.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Ảnh chụp của Galaxy S7 Edge (Ảnh: Nghĩa Trần)</em></p>\r\n\r\n<p>Camera selfie v&ocirc; c&ugrave;ng chất lượng với chất ảnh trong, s&aacute;ng, m&agrave;u sắc thể hiện trung thực. Nhiều t&iacute;nh năng l&agrave;m đẹp sẽ l&agrave;m cho bức ảnh &ldquo;tự sướng&rdquo; của bạn đẹp mắt v&agrave; lung linh.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-15.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh mạnh mẽ</strong></h3>\r\n\r\n<p>M&aacute;y d&ugrave;ng chip&nbsp;<a href="https://www.thegioididong.com/hoi-dap/exynos-8890-817132" target="_blank">Exynos 8890</a>, 8 nh&acirc;n c&ugrave;ng bộ nhớ RAM 4 GB mang lại hiệu quả hoạt động tuyệt vời, hiệu năng tăng 30% so với d&ograve;ng sản phẩm S6 trước.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-vang-hong-25.jpg" style="width:100%" /></p>\r\n\r\n<p>M&aacute;y d&ugrave;ng hệ điều h&agrave;nh mới nhất&nbsp;<a href="https://www.thegioididong.com/hoi-dap/android-6-marshmallow-co-gi-hot-726146" target="_blank">Marshmallow 6.0</a>, đặc biệt với c&ocirc;ng nghệ tản nhiệt bằng chất lỏng gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng trong qu&aacute; tr&igrave;nh sử dụng thời gian d&agrave;i.</p>\r\n\r\n<p>M&aacute;y sở hữu m&agrave;n h&igrave;nh k&iacute;ch thước lớn 5.5 inch, c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank">Super AMOLED</a>&nbsp;mang lại g&oacute;c nh&igrave;n rộng, m&agrave;u sắc được tinh chỉnh kh&ocirc;ng qu&aacute; rực như c&aacute;c sản phẩm trước kia, h&igrave;nh ảnh cho chất lượng tốt v&agrave; mịn m&agrave;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-vang-hong-1-3(1).jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Nhiều t&iacute;nh năng độc đ&aacute;o</strong></h3>\r\n\r\n<p>Samsung Galaxy S7 Edge được sinh ra với 2 cạnh viền độc đ&aacute;o, v&igrave; vậy c&aacute;c t&iacute;nh năng tr&ecirc;n cạnh viền v&ocirc; c&ugrave;ng th&uacute; vị. C&aacute;c t&aacute;c vụ nhanh hiển thị nhiều hơn trong 1 lần vuốt v&agrave; bạn c&oacute; thể gắn tới 20 t&aacute;c vụ nhanh tr&ecirc;n n&agrave;y.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s7-edge-pink-gold-edition-vang-hong-27.jpg" style="width:100%" /></p>\r\n\r\n<p>T&iacute;nh năng Always On Display gi&uacute;p m&agrave;n h&igrave;nh của bạn lu&ocirc;n s&aacute;ng để hiển thị những th&ocirc;ng tin cơ bản, nhờ vậy bạn kh&ocirc;ng bỏ lỡ bất cứ th&ocirc;ng b&aacute;o quan trọng n&agrave;o. Đặc biệt t&iacute;nh năng n&agrave;y kh&ocirc;ng hề ti&ecirc;u hao nhiều năng lượng.</p>\r\n\r\n<p>Galaxy S7 Edge (Pink Gold Edition) c&oacute; khả năng&nbsp;sạc nhanh&nbsp;bằng d&acirc;y gi&uacute;p bạn r&uacute;t ngắn thời gian sạc đầy vi&ecirc;n pin dung lượng 3600 mAh.</p>\r\n\r\n<p>Với nhiều t&iacute;nh năng hấp dẫn, cấu h&igrave;nh mạnh mẽ v&agrave; thiết kế đột ph&aacute;, Galaxy S7 Edge (Pink Gold Edition) mang đến một m&agrave;u sắc tươi trẻ, thanh tho&aacute;t. Galaxy S7 Edge (Pink Gold Edition) sẽ l&agrave; một sự lựa chọn tốt cho bạn nếu y&ecirc;u th&iacute;ch một chiếc m&aacute;y mạnh v&agrave; c&oacute; thiết kế đẹp mắt.</p>\r\n', '2', 10, 10, 0, 154900000, 154900000, '2017-05-23 19:56:05', '6', '2017-05-23 19:56:05', '6', 1, 1, 1, '', ''),
(13, 25, 'Điện thoại Samsung Galaxy S7', 'dien-thoai-samsung-galaxy-s7', '5db77009e264ec1d2682ceee9498c754.jpg', '859d1fa811ae0c45c70886efe6bdea2a.jpg#30ed971d461d5e963e42d6d3b90b28db.jpg#173a6f6b215cccc75374d89678e8c21e.jpg', 'Với những nâng cấp tuyệt vời mà Samsung mang lại cho người dùng như khả năng chống nước, thiết kế hoàn hảo, Galaxy S7 sẽ khiến bạn không thể rời mắt.', '<h2><strong>Với những n&acirc;ng cấp tuyệt vời m&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;mang lại cho người d&ugrave;ng như khả năng chống nước, thiết kế ho&agrave;n hảo, Galaxy S7 sẽ khiến bạn kh&ocirc;ng thể rời mắt.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s72-2.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Khả năng chống nước của Gaxaly S7</strong></h3>\r\n\r\n<p><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7">Galaxy S7</a>&nbsp;đạt chuẩn chống nước IP68 gi&uacute;p bảo vệ m&aacute;y vẫn an to&agrave;n khi v&ocirc; t&igrave;nh l&agrave;m đổ nước hay d&iacute;nh nước mưa.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s75-3.jpg" style="width:100%" /></p>\r\n\r\n<p>Chuẩn IP68 gi&uacute;p m&aacute;y c&oacute; thể ng&acirc;m dưới độ s&acirc;u 1,5m trong tối đa 30 ph&uacute;t, tuy nhi&ecirc;n bạn kh&ocirc;ng n&ecirc;n thử t&iacute;nh năng n&agrave;y v&igrave; nếu c&oacute; trục trặc dẫn tới v&agrave;o nước th&igrave; m&aacute;y bạn sẽ kh&ocirc;ng được hưởng chế độ bảo h&agrave;nh.</p>\r\n\r\n<h3><strong>Thiết kế bo cong mềm mại</strong></h3>\r\n\r\n<p>Galaxy S7 với c&aacute;c cạnh m&aacute;y được bo cong một c&aacute;ch mềm mại, gi&uacute;p m&aacute;y cầm gọn trong l&ograve;ng b&agrave;n tay v&agrave; kh&ocirc;ng hề c&oacute; cảm gi&aacute;c cấn. C&aacute;c g&oacute;c cạnh ở mặt trước được m&agrave;i cong 2.5D tạo cảm gi&aacute;c thoải m&aacute;i khi thao t&aacute;c tr&ecirc;n m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s73-3.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Mặt lưng v&agrave; mặt trước l&agrave;m từ k&iacute;nh Corning Gorilla Glass 4 chống trầy xước tốt</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s76-2.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Mặt lưng m&aacute;y được l&agrave;m cong 2 b&ecirc;n để tăng sự thoải m&aacute;i v&agrave; chắc chắn hơn khi cầm tay</em></p>\r\n\r\n<h3><strong>Camera ấn tượng</strong></h3>\r\n\r\n<p>Camera Galaxy S7 c&oacute; độ ph&acirc;n giải Dual Pixel&nbsp;12 MP với 2 đi-ốt quang&nbsp;gi&uacute;p cho bức ảnh chụp trong điều kiện thiếu s&aacute;ng rất tốt, chất lượng ảnh được đ&aacute;nh gi&aacute; rất cao trong mọi điều kiện chụp.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s74-3.jpg" style="width:100%" /></p>\r\n\r\n<p><em>C&ocirc;ng nghệ 2 đi-ốt quang gi&uacute;p lấy n&eacute;t cực nhanh v&agrave; ch&iacute;nh x&aacute;c</em></p>\r\n\r\n<p><em>C&aacute;ch hoạt động của nhận diện b&agrave;n tay bằng camera trước</em></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh mạnh mẽ</strong></h3>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s717.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&aacute;y được trang bị chip Exynos mới nhất&nbsp;8890, 8 nh&acirc;n, đặc biệt RAM 4 GB gi&uacute;p tốc độ xử l&yacute; tr&ecirc;n m&aacute;y tuyệt vời, tốc độ CPU nhanh hơn 30%, đặc biệt S7 trang bị chất lỏng tản nhiệt gi&uacute;p m&aacute;y kh&ocirc;ng bị n&oacute;ng trong qu&aacute; tr&igrave;nh sử dụng</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s71-3.jpg" style="width:100%" /></p>\r\n\r\n<p><em>T&iacute;nh năng ho&agrave;n to&agrave;n mới t&ecirc;n Game Laucher cho ph&eacute;p t&ugrave;y chỉnh tiết kiệm năng lượng hay kh&ocirc;ng l&agrave;m phiền khi chơi game</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-s716.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Sạc nhanh bằng d&acirc;y cho 1 tiếng 30 ph&uacute;t đ&atilde; đầy 100% cho dung lượng pin 3000 mAh, ngo&agrave;i ra c&ograve;n c&oacute; t&iacute;nh năng sạc kh&ocirc;ng d&acirc;y tiện lợi nhưng bạn cần mua ri&ecirc;ng phụ kiện</em></p>\r\n\r\n<p>Với những thay đổi ngoạn mục như khả năng chống nước, bụi tốt, camera với rất nhiều cải tiến th&ocirc;ng minh v&agrave; cấu h&igrave;nh mạnh mẽ đầy xuất sắc chắc chắn Galaxy S7 sẽ khiến bạn kh&ocirc;ng thể rời mắt.</p>\r\n', '2', 1000, 1000, 0, 129900000, 129900000, '2017-05-23 20:12:51', '6', '2017-05-23 20:12:51', '6', 1, 1, 1, '', ''),
(14, 25, 'Điện thoại Samsung Galaxy Note 5', 'dien-thoai-samsung-galaxy-note-5', '31384b933c5fbe129808593f5fbd8e34.jpg', 'd1a7bd4d173552cfc842e3829181ae18.jpg#e0ee9280c59f32b2cb1309aa55581398.jpg#36a11519c5101ba83ec40884b0c65f9a.jpg', 'Tiếp theo thành công vang dội của Galaxy Note 4 thì Galaxy Note 5 càng trở nên hoàn thiện và mạnh mẽ hơn.', '<h3><strong>Thiết kế đột ph&aacute;, cải thiện trải nghiệm người d&ugrave;ng</strong></h3>\r\n\r\n<p>Galaxy Note 5 trở n&ecirc;n sang trọng v&agrave; quyến rũ khi mang trong m&igrave;nh thiết kế kết hợp giữa khung kim loại chắc chắn v&agrave; mặt k&iacute;nh cường lực b&oacute;ng bẩy gi&uacute;p cầm nắm trong tay thoải m&aacute;i, dễ chịu.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-note-52-5.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Mặt lưng bằng k&iacute;nh dễ bắt s&aacute;ng l&agrave;m m&aacute;y th&ecirc;m nổi bật</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-note-59-1.jpg" style="width:100%" /><em>Mặt lưng bo cong tinh tế gi&uacute;p bạn thoải m&aacute;i khi cầm nắm,&nbsp;tuy nhi&ecirc;n lại&nbsp;dễ b&aacute;m dấu v&acirc;n tay</em></p>\r\n\r\n<h3><strong>B&uacute;t S-pen &ndash; c&aacute;i t&ecirc;n l&agrave;m n&ecirc;n danh tiếng d&ograve;ng Galaxy Note</strong></h3>\r\n\r\n<p>B&uacute;t S-pen tr&ecirc;n Galaxy Note 5 được thiết kế thon gọn hơn để dễ d&agrave;ng thao t&aacute;c, c&aacute;c t&iacute;nh năng mới rất hữu &iacute;ch như c&oacute; thể ghi ch&uacute; trực tiếp m&agrave; kh&ocirc;ng cần mở m&aacute;y, tuy nhi&ecirc;n bạn chỉ ghi ch&uacute; được 1 lần, lần tiếp theo sẽ kh&ocirc;ng thể thao t&aacute;c được nữa.</p>\r\n\r\n<p><strong>Dung lượng pin được cải thiện tốt hơn</strong></p>\r\n\r\n<p>Mặc d&ugrave; c&oacute; dung lượng thấp hơn so với Note 4 nhưng Note 5 lại cho thời gian d&ugrave;ng nhiều hơn, với c&ocirc;ng nghệ sạc nhanh sẽ gi&uacute;p bạn chỉ mất khoảng 90 ph&uacute;t để đầy 100% pin, nếu như d&ugrave;ng sạc th&ocirc;ng thường th&igrave; bạn sẽ mất khoảng từ 2 đến 3 tiếng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-note-58-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Ngo&agrave;i ra, dock sạc kh&ocirc;ng d&acirc;y được n&acirc;ng cấp để c&oacute; thể sạc được nhanh hơn, bạn sẽ phải mua ri&ecirc;ng v&igrave; dock sạc kh&ocirc;ng đi k&egrave;m với hộp m&aacute;y</em></p>\r\n\r\n<h3><strong>Camera c&oacute; độ ph&acirc;n giải lớn</strong></h3>\r\n\r\n<p>Camera c&oacute; độ ph&acirc;n giải 16 MP c&oacute; khẩu độ f1.9 gi&uacute;p ảnh thu được nhiều &aacute;nh s&aacute;ng hơn, t&iacute;nh năng chống rung quang học th&ocirc;ng minh hạn chế ảnh của bạn bị rung hay mất n&eacute;t rất tốt. C&aacute;c chế độ chỉnh tay kh&aacute;c nhau cho bạn thoải m&aacute;i s&aacute;ng tạo, quay phim 4K chi tiết hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-note-56-2.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Khả năng phơi s&aacute;ng của Note 5, ảnh n&agrave;y th&ocirc;ng số ISO 50, tốc độ 8 gi&acirc;y, WB tự c&acirc;n chỉnh (Ảnh: Nghĩa Trần)</em></p>\r\n\r\n<p><strong>Mạnh mẽ với RAM 4 GB v&agrave; m&agrave;n h&igrave;nh đẹp mắt</strong></p>\r\n\r\n<p>Sử dụng chip xử l&yacute;&nbsp;<a href="https://www.thegioididong.com/hoi-dap/suc-manh-cua-chipset-exynos-7420-tren-samsung-gala-629803" target="_blank">Exynos 7420</a>, tốc độ 4 nh&acirc;n&nbsp;1.5 GHz Cortex-A53 v&agrave; 4 nh&acirc;n 2.1 GHz Cortex-A57, đặc biệt thanh RAM 4 GB sẽ gi&uacute;p m&aacute;y lu&ocirc;n vận h&agrave;nh nhanh nhạy v&agrave; nhẹ nh&agrave;ng, đồ họa mượt m&agrave;.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-note-51-4.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh độ ph&acirc;n giải 2K, c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank">Super AMOLED</a>&nbsp;cho m&agrave;u sắc ch&acirc;n thật hơn, c&aacute;c chi tiết thể hiện r&otilde; r&agrave;ng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, t&iacute;nh năng bảo mật v&acirc;n tay được cải thiện hơn để nhận dạng tốt hơn, tiết kiệm được thời gian khi mở m&aacute;y.</p>\r\n\r\n<p>Galaxy Note 5 l&agrave; một chiếc phabtet đ&aacute;ng mua trong ph&acirc;n kh&uacute;c cao cấp nhờ sở hữu cấu h&igrave;nh mạnh mẽ, thiết kế đẹp tinh xảo, m&agrave;n h&igrave;nh hiển thị đẹp, hiệu năng xuất sắc, camera rất ấn tượng, c&ocirc;ng nghệ sạc nhanh tiện lợi.</p>\r\n', '2', 100, 100, 0, 12490000, 12490000, '2017-05-23 20:16:19', '6', '2017-05-23 20:16:19', '6', 1, 1, 1, '', ''),
(15, 25, 'Điện thoại Samsung Galaxy C9 Pro', 'dien-thoai-samsung-galaxy-c9-pro', '3280683824a74306e3402e5f3e9cebea.jpg', 'f34f8b5535d2e3276912f30c642a75be.jpg#d8926a5184195fdd8ce360877506e8ee.jpg#d3be75433eb2ae7af3ad0cca44481e1e.jpg', 'Samsung Galaxy C9 Pro gây được sự chú ý cho người dùng bởi nó sở hữu mức RAM lên tới 6 GB, lần đầu tiên có một chiếc Galaxy đến từ Samsung sở hữu mức RAM đó.', '<h3><strong>Thiết kế mỏng, sang trọng</strong></h3>\r\n\r\n<p>K&iacute;ch thước của chiếc C9 Pro thực sự kh&aacute; lớn so với c&aacute;c smartphone đang c&oacute; mặt tr&ecirc;n thị trường hiện nay bởi m&aacute;y sở hữu cho m&igrave;nh một m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước l&ecirc;n tới 6 inch.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-c9-pro5.jpg" style="width:100%" /></p>\r\n\r\n<p><em>C9 Pro sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh của một chiếc tablet</em></p>\r\n\r\n<p>Với việc sử dụng bộ nhớ RAM l&ecirc;n đến 6 GB, chip&nbsp;<a href="https://www.thegioididong.com/hoi-dap/chip-xu-ly-snapdragon-653-912378" target="_blank">Snapdragon 653</a>&nbsp;8 nh&acirc;n, hệ điều h&agrave;nh&nbsp;<a href="https://www.thegioididong.com/hoi-dap/android-6-marshmallow-co-gi-hot-726146" target="_blank">Android 6.0 (Marshmallow)</a>&nbsp;được c&agrave;i đặt sẵn cho ph&eacute;p bạn thoải m&aacute;i sử dụng hầu hết c&aacute;c ứng dụng nặng nhất hiện nay tr&ecirc;n Google Play.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-c9-pro-3-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>C9 Pro thoải m&aacute;i chiến c&aacute;c tựa game nặng mượt m&agrave;</em></p>\r\n\r\n<p>Samsung cũng trang bị cho m&aacute;y bộ nhớ trong 64 GB cho bạn thoải m&aacute;i lưu trữ dữ liệu c&ugrave;ng kết nối 4G tốc độ cao.</p>\r\n\r\n<h3><strong>Camera sắc n&eacute;t</strong></h3>\r\n\r\n<p>Camera ch&iacute;nh của m&aacute;y sở hữu độ ph&acirc;n giải 16 MP, khẩu độ lớn F/1.9 mang lại khả năng thu s&aacute;ng ấn tượng cho c&aacute;c bức ảnh. M&aacute;y cũng cho khả năng bắt n&eacute;t nhanh, lưu h&igrave;nh tức th&igrave; gi&uacute;p bạn kh&ocirc;ng bị bỏ lỡ khoảnh khắc đẹp trong cuộc sống.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-c9-pro14.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Giao diện camera đơn giản, dễ sử dụng</em></p>\r\n\r\n<p>Camera trước cũng sở hữu độ ph&acirc;n giải lớn 16 MP tương tự camera sau, hỗ trợ selfie g&oacute;c rộng hứa hẹn sẽ kh&ocirc;ng l&agrave;m cho c&aacute;c t&iacute;n đồ selfie phải thất vọng.</p>\r\n\r\n<h3><strong>Giao diện mượt m&agrave;</strong></h3>\r\n\r\n<p>C9 Pro được ưu &aacute;i sử dụng giao diện&nbsp;Grace UX, giao diện mới m&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;trang bị cho Galaxy Note 7 &quot;xấu số&quot; của h&atilde;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/tren-tay-samsung-galaxy-c9-pro-3.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Giao diện Grace UX mới của Samsung</em></p>\r\n\r\n<p>Vi&ecirc;n pin dung lượng l&ecirc;n tới 4000 mAh kết hợp với giao diện nhẹ nh&agrave;ng v&agrave; mượt m&agrave; gi&uacute;p m&aacute;y c&oacute; thể sử dụng thoải m&aacute;i trong thời gian d&agrave;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-c9-pro6.jpg" style="width:100%" /><em>Cảm biến v&acirc;n tay một chạm, kh&ocirc;ng cần mở s&aacute;ng m&agrave;n h&igrave;nh để mở kh&oacute;a thiết bị</em></p>\r\n\r\n<p>Ngo&agrave;i ra th&igrave; C9 Pro cũng sở hữu cảm biến v&acirc;n tay một chạm ở mặt trước, gi&uacute;p bạn c&oacute; thể mở kh&oacute;a dễ d&agrave;ng với một c&aacute;i chạm nhẹ m&agrave; kh&ocirc;ng cần mở s&aacute;ng m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Nếu bạn l&agrave; người y&ecirc;u th&iacute;ch c&aacute;c&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">smartphone</a>&nbsp;m&agrave;n h&igrave;nh lớn c&ugrave;ng với việc thường xuy&ecirc;n l&agrave;m việc v&agrave; giải tr&iacute; với chiếc điện thoại của m&igrave;nh th&igrave; C9 Pro thực sự l&agrave; sự lựa chọn h&agrave;ng đầu d&agrave;nh cho bạn.</p>\r\n', '2', 16, 16, 0, 11490000, 11490000, '2017-05-23 20:19:43', '6', '2017-05-23 20:19:43', '6', 1, 1, 1, '', ''),
(16, 25, 'Điện thoại Samsung Galaxy A7 (2017)', 'dien-thoai-samsung-galaxy-a7-2017', '22fd7101a5740db6aa9f6e932d897d0e.jpg', '2a6ff86a6b3447f3212ec43b6be54326.jpg#3bdfea4e2778933e6068f04905b666b3.jpg#30cab7bceb9c96bde32efe4c44166bd8.jpg', 'Samsung Galaxy A7 (2017) tạo bước đột phá cho dòng A với thiết kế sang trọng và đẳng cấp, cấu hình mạnh mẽ, nhiều tiện ích cao cấp.', '<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2017-1-2.jpg" style="width:100%" /><br />\r\n&nbsp;<br />\r\n<strong>Sang trọng, tinh tế:</strong>&nbsp;Galaxy A7 (2017) l&agrave; sự kết hợp h&agrave;i ho&agrave; của kim loại cao cấp v&agrave; 2 mặt k&iacute;nh cong kế thừa từ thiết kế của smartphone cao cấp&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7" target="_blank">Galaxy S7</a>. C&aacute;c ph&iacute;m tăng giảm &acirc;m lượng được thiết kế tỉ mỉ nằm gọn b&ecirc;n cạnh tr&ecirc;n b&ecirc;n tr&aacute;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2017-15.jpg" style="width:100%" /></p>\r\n\r\n<p>Ph&iacute;m nguồn cũng được l&agrave;m sao cho dễ sử dụng, loa được thiết kế s&aacute;ng tạo gi&uacute;p trải nghiệm &acirc;m thanh tốt hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2017-15(1).jpg" style="width:100%" />M&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-super-amoled-la-gi-905770" target="_blank">Super AMOLED</a>, 5.7 inch, độ ph&acirc;n giải 1080 x 1920 pixels hiển thị sắc n&eacute;t. Mặt k&iacute;nh cong 2.5D thời thượng, thao t&aacute;c chạm lướt sẽ thoải m&aacute;i v&agrave; mượt m&agrave; hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-20175.jpg" style="width:100%" /><strong>Hiệu năng mạnh mẽ:&nbsp;</strong>Cấu h&igrave;nh Exynos 7880 với tốc độ 1.9 GHz cho trải nghiệm lướt web, chơi game kh&aacute; tốt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2017-5-1.jpg" style="width:100%" /><br />\r\n&nbsp;<br />\r\nRAM 3 GB đi c&ugrave;ng hệ điều h&agrave;nh&nbsp;<a href="https://www.thegioididong.com/hoi-dap/android-6-marshmallow-co-gi-hot-726146" target="_blank">Android 6.0 (Marshmallow)</a>&nbsp;cho việc đa nhiệm cực tốt, bộ nhớ lưu trữ của m&aacute;y 32 GB v&agrave; hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 256 GB.</p>\r\n\r\n<p><br />\r\n<strong>Nhiều t&iacute;nh năng hữu &iacute;ch</strong><br />\r\nCổng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/usb-type-c-chua-n-mu-c-co-ng-ke-t-no-i-mo-i-723760" target="_blank">USB Type-C</a>&nbsp;được trang bị sẵn tr&ecirc;n A7 (2017) đi k&egrave;m n&oacute; l&agrave; c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549" target="_blank">sạc pin nhanh</a>. Ngo&agrave;i ra chuẩn Type-C c&oacute; tốc độ truyền tải dữ liệu của chuẩn 3.1 với tốc độ tối đa l&ecirc;n đến 10 Gbps, gấp đ&ocirc;i 3.0 v&agrave; tương đương chuẩn Thunderbolt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-20174.jpg" style="width:100%" /></p>\r\n\r\n<p>&nbsp;<br />\r\nCảm biến v&acirc;n tay một chạm, vừa mở m&aacute;y nhanh ch&oacute;ng vừa bảo mật dữ liệu.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2017-7-1.jpg" style="width:100%" />&nbsp;<br />\r\nGalaxy A7 (2017) được t&iacute;ch hợp khả năng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/chong-nuoc-va-chong-bui-tren-smart-phone-771130" target="_blank">chống nước v&agrave; bụi</a>&nbsp;chuẩn IP68 cho ph&eacute;p ng&acirc;m điện thoại dưới nước ở độ s&acirc;u 1.5 m&eacute;t trong 30 ph&uacute;t.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2017-8-1.jpg" style="width:100%" /><br />\r\n&nbsp;<br />\r\n<strong>Camera khẩu độ f1.9</strong></p>\r\n\r\n<p>Camera sau xuất hiện một điều đặc biệt l&agrave; n&oacute; kh&ocirc;ng bị lồi l&ecirc;n so với mặt lưng, một cải tiến cực k&igrave; gi&aacute; trị, vừa tạo t&iacute;nh thẩm mỹ m&agrave; vừa bảo vệ tốt mặt k&iacute;nh camera.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-20173.jpg" style="width:100%" /></p>\r\n\r\n<p>Bộ đ&ocirc;i camera của A7 (2017) thực sự nổi bật với c&ugrave;ng một độ ph&acirc;n giải 16 MP v&agrave; khẩu độ f1.9 ở camera trước v&agrave; sau.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2017-10-1.jpg" style="width:100%" /><br />\r\n&nbsp;<br />\r\nBộ đ&ocirc;i camera n&agrave;y được trang bị nhiều t&iacute;nh năng th&uacute; vị như: tự động lấy n&eacute;t, gắn thẻ địa lý, chạm lấy n&eacute;t... cho bạn thỏa sức lưu giữ những khoảnh khắc đẹp theo nhiều phong c&aacute;ch kh&aacute;c nhau.</p>\r\n\r\n<p><br />\r\nGalaxy A7 (2017) hứa hẹn sẽ l&agrave; một chiếc m&aacute;y ấn tượng nhiều chức năng mới, cấu h&igrave;nh mạnh mẽ sẽ v&agrave; lu&ocirc;n l&agrave; sự lựa chọn tốt cho bạn ở ph&acirc;n kh&uacute;c tầm trung.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2', 100, 100, 0, 10990000, 10990000, '2017-05-23 20:33:37', '6', '2017-05-23 20:33:37', '6', 1, 1, 1, '', ''),
(17, 25, 'Điện thoại Samsung Galaxy A9 Pro', 'dien-thoai-samsung-galaxy-a9-pro', '736ca8c221dd09ccf118e580c9c11e5a.jpg', '22ddd6314a430fa703141b09fb9c6c71.jpg#f5f81cdc6606964775a728d412d66196.jpg#3573401c9b2ea698155cf2dae3bf1928.jpg', 'Đặc điểm nổi bật của Samsung Galaxy A9 Pro\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim\r\nGalaxy A9 Pro là smartphone lớn nhất trong gia đình Galaxy A 2016. Máy sở hữu viên pin khủng dung lượng 5.000 mAh cùng 4 GB RAM mạnh mẽ.', '<h3><strong>Thiết kế sang trọng</strong></h3>\r\n\r\n<p>Galaxy A9 Pro vẫn sở hữu phong c&aacute;ch thiết kế tương tự c&aacute;c anh em d&ograve;ng Galaxy A 2016 của m&igrave;nh với khung viền kim loại chắc chắn c&ugrave;ng 2 mặt k&iacute;nh cường lực trước sau sang trọng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro1-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Thiết kế quen thuộc của d&ograve;ng Galaxy A 2016</em></p>\r\n\r\n<p>Tuy nhi&ecirc;n với k&iacute;ch thước kh&aacute; lớn th&igrave; việc sử dụng bằng một tay với Galaxy A9 Pro sẽ gặp đ&ocirc;i ch&uacute;t kh&oacute; khăn v&agrave; bất tiện.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro7.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Galaxy A9 Pro hơi kh&oacute; để sử dụng bằng một tay</em></p>\r\n\r\n<p>A9 Pro vẫn sử dụng cổng&nbsp;<a href="https://www.thegioididong.com/cap-dien-thoai" target="_blank">Micro USB</a>&nbsp;truyền thống c&ugrave;ng cụm camera hơi lồi ở mặt lưng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro5.jpg" style="width:100%" /></p>\r\n\r\n<p><em>A9 Pro vẫn sử dụng cổng Micro USB truyền thống</em></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh rực rỡ</strong></h3>\r\n\r\n<p>Galaxy A9 Pro mang trong m&igrave;nh m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước l&ecirc;n tới 6 inch c&ugrave;ng độ ph&acirc;n giải 1080 x 1920 pixels, sử dụng tấm nền&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank">Super AMOLED</a>&nbsp;cho bạn chất lượng hiển thị tốt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro14.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh Super AMOLED rực rỡ</em></p>\r\n\r\n<p>M&aacute;y c&oacute; độ s&aacute;ng cao gi&uacute;p bạn dễ d&agrave;ng sử dụng ngay cả trong điều kiện &aacute;nh s&aacute;ng mạnh. Ngo&agrave;i ra&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung&nbsp;</a>cũng trang bị cho A9 Pro k&iacute;nh cường lực Gorilla Glass 4 c&ugrave;ng mặt k&iacute;nh cong 2.5D thời thượng mang lại cho bạn trải nghiệm sử dụng tốt hơn.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ</strong></h3>\r\n\r\n<p>Cung cấp sức mạnh cho Galaxy A9 Pro l&agrave; con chip&nbsp;<a href="https://www.thegioididong.com/hoi-dap/qualcom-snapdragon-652-va-adreno-510-762187" target="_blank">Snapdragon 652</a>, một con chip mới v&agrave; kh&aacute; mạnh về hiệu năng của Qualcomm. M&aacute;y sở hữu 4 GB RAM c&ugrave;ng 32 GB bộ nhớ trong.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro11.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&aacute;y đ&aacute;p ứng gần như tức th&igrave; mọi thao t&aacute;c</em></p>\r\n\r\n<p>Qua trải nghiệm thực tế th&igrave; A9 Pro đ&aacute;p ứng gần như tức thời c&aacute;c thao t&aacute;c của người d&ugrave;ng v&agrave; kh&ocirc;ng gặp phải hiện tượng giật lag trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro7(1).jpg" style="width:100%" /></p>\r\n\r\n<p><em>Với 4 GB RAM bạn thoải m&aacute;i chạy đa nhiệm nhiều ứng dụng với A9 Pro</em></p>\r\n\r\n<h3><strong>Camera ấn tượng</strong></h3>\r\n\r\n<p>Galaxy A9 Pro sở hữu th&ocirc;ng số camera ấn tượng với camera ch&iacute;nh c&oacute; độ ph&acirc;n giải l&ecirc;n tới 16 MP, khẩu độ F/1.9 c&ugrave;ng c&ocirc;ng nghệ chống rung quang học OIS. Camera trước của m&aacute;y cũng c&oacute; độ ph&acirc;n giải 8 MP c&ugrave;ng t&iacute;nh năng l&agrave;m đẹp da được t&iacute;ch hợp sẵn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro9.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Camera vẫn hơi lồi so với mặt lưng</em></p>\r\n\r\n<p>Với những g&igrave; m&agrave; Samsung thể hiện trong v&agrave;i năm trở lại đ&acirc;y th&igrave; bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m với chất lượng ảnh m&agrave; camera của Galaxy A9 Pro mang lại.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro12.jpg" style="width:100%" /><em>Giao diện chụp ảnh trực quan</em></p>\r\n\r\n<h3><strong>Thời lượng pin kh&ocirc;ng đối thủ</strong></h3>\r\n\r\n<p>Điểm nhấn của A9 Pro ch&iacute;nh l&agrave; thời lượng pin khủng m&agrave; m&aacute;y được trang bị. Galaxy A9 Pro sở hữu vi&ecirc;n pin dung lượng 5.000 mAh c&ugrave;ng c&ocirc;ng nghệ sạc nhanh Fast Charge của Samsung.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro10.jpg" style="width:100%" /><em>Đ&aacute;p ứng thoải m&aacute;i nhu cầu sử dụng trong một ng&agrave;y l&agrave;m việc với cường độ cao</em></p>\r\n\r\n<p>Qua sử dụng thực tế th&igrave; A9 Pro c&oacute; thể đạt được thời gian sử dụng li&ecirc;n tục l&ecirc;n tới 12 giờ với c&aacute;c t&aacute;c vụ từ cơ bản đến n&acirc;ng cao. C&oacute; thể n&oacute;i trong c&ugrave;ng ph&acirc;n kh&uacute;c th&igrave; Galaxy A9 Pro l&agrave; &ldquo;v&ocirc; địch&rdquo; về thời lượng pin.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a9-pro6.jpg" style="width:100%" /></p>\r\n\r\n<p><em>A9 Pro gần như kh&ocirc;ng c&oacute; đối thủ trong ph&acirc;n kh&uacute;c về thời lượng pin</em></p>\r\n\r\n<p>Nếu bạn đang cần một thiết bị c&oacute; thiết kế đẹp, m&agrave;n h&igrave;nh lớn, hiệu năng ổn định c&ugrave;ng một vi&ecirc;n pin khủng cho l&agrave;m việc v&agrave; giải tr&iacute; th&igrave; Galaxy A9 Pro ch&iacute;nh l&agrave; sự lựa chọn h&agrave;ng đầu d&agrave;nh cho bạn.</p>\r\n', '2', 100, 100, 0, 10900000, 10900000, '2017-05-23 20:39:47', '6', '2017-05-23 20:39:47', '6', 1, 1, 1, '', ''),
(18, 25, 'Điện thoại Samsung Galaxy A5 (2017)', 'dien-thoai-samsung-galaxy-a5-2017', '6fdeb885a97cd59183d166ae43a57843.jpg', 'df1f08fcb3f380aff4201db49e614084.jpg#a1349349f53355fc18b4f104f4ebfdce.jpg#65900071b846057fd8e3016530df05f8.jpg', 'Đẳng cấp, sang trọng, dẫn đầu xu thế là những từ ngữ chuẩn xác để miêu tả về điện thoại Samsung Galaxy A5(2017).', '<h2><strong>Đẳng cấp, sang trọng, dẫn đầu xu thế l&agrave; những từ ngữ chuẩn x&aacute;c để mi&ecirc;u tả về điện thoại Samsung Galaxy A5(2017).</strong></h2>\r\n\r\n<p>&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-1.jpg" style="width:100%" /><br />\r\n<strong>Tinh tế, cao cấp từ thiết kế:&nbsp;</strong>Samsung Galaxy A5 (2017) mang tr&ecirc;n m&igrave;nh vẻ ngo&agrave;i kế thừa từ si&ecirc;u phẩm&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s7" target="_blank">Galaxy S7</a>, sự h&agrave;i ho&agrave; của kim loại cao cấp v&agrave; 2 mặt k&iacute;nh cong tạo ra một thiết kế sang trọng, tinh tế, to&aacute;t l&ecirc;n gi&aacute; trị của sản phẩm v&agrave; người sử dụng.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-2.jpg" style="width:100%" /><br />\r\nC&aacute;c ph&iacute;m tăng giảm &acirc;m lượng được thiết kế tỉ mỉ nằm gọn b&ecirc;n cạnh tr&ecirc;n b&ecirc;n tr&aacute;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-3.jpg" style="width:100%" />&nbsp;<br />\r\nPh&iacute;m nguồn cũng được thiết kế dễ bấm, độ nảy cao, loa được thiết kế s&aacute;ng tạo gi&uacute;p việc giải tr&iacute; được tốt hơn.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-4.jpg" style="width:100%" /><br />\r\nM&agrave;n h&igrave;nh Super AMOLED với m&agrave;u sắc tươi s&aacute;ng, k&iacute;ch thước 5.2 inch gi&uacute;p thiết bị c&oacute; k&iacute;ch thước vừa tay với hầu hết đối tượng người d&ugrave;ng, độ ph&acirc;n giải 1080 x 1920 pixels hiển thị sắc n&eacute;t. M&agrave;n k&iacute;nh cong 2.5D thời thượng gi&uacute;p thao t&aacute;c chạm lướt sẽ thoải m&aacute;i v&agrave; mượt m&agrave;.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-5.jpg" style="width:100%" /><br />\r\n<strong>Hiệu năng tốt với CPU 8 nh&acirc;n</strong><br />\r\nCấu h&igrave;nh Exynos 7880 cho tốc độ 1.9 GHz cho trải nghiệm lướt web, chơi game kh&aacute; tốt.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-6.jpg" style="width:100%" /><br />\r\nRAM 3 GB đi c&ugrave;ng hệ điều h&agrave;nh&nbsp;<a href="https://www.thegioididong.com/hoi-dap/android-6-marshmallow-co-gi-hot-726146" target="_blank">Android 6.0 (Marshmallow)</a>&nbsp;cho việc đa nhiệm cực tốt, ROM 32 GB đi k&egrave;m thẻ nhớ ngo&agrave;i l&ecirc;n đến 256 GB.</p>\r\n\r\n<p><br />\r\n<strong>Nhiều t&iacute;nh năng ấn tượng</strong><br />\r\nCổng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/usb-type-c-chua-n-mu-c-co-ng-ke-t-no-i-mo-i-723760" target="_blank">USB Type-C</a>&nbsp;được trang bị sẵn tr&ecirc;n A5(2017) cho tốc độ truyền tải si&ecirc;u nhanh, đi k&egrave;m n&oacute; l&agrave; c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549" target="_blank">sạc pin nhanh</a>&nbsp;rất hữu &iacute;ch.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-7.jpg" style="width:100%" />Cảm biến v&acirc;n tay một chạm, vừa mở m&aacute;y nhanh ch&oacute;ng vừa bảo mật dữ liệu.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-8.jpg" style="width:100%" />Galaxy A5 (2017) được t&iacute;ch hợp khả năng chống bụi v&agrave; nước chuẩn IP68 cho ph&eacute;p ng&acirc;m điện thoại dưới nước ở độ s&acirc;u 1.5 m&eacute;t trong 30 ph&uacute;t.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-9.jpg" style="width:100%" /><br />\r\n<strong>Camera ấn tượng với khẩu độ f1.9</strong><br />\r\nCamera sau xuất hiện một điều đặc biệt l&agrave; n&oacute; kh&ocirc;ng bị lồi l&ecirc;n so với mặt lưng, một cải tiến cực k&igrave; gi&aacute; trị. Vừa tạo t&iacute;nh thẩm mỹ vừa bảo vệ tốt mặt k&iacute;nh camera.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-10.jpg" style="width:100%" />C&ugrave;ng một độ ph&acirc;n giải 16 MP v&agrave; khẩu độ f1.9 bộ đ&ocirc;i camera của A5(2017) cho chất lượng h&igrave;nh ảnh thực sự nổi bật.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-11.jpg" style="width:100%" /><br />\r\nNhiều t&iacute;nh năng th&uacute; vị cũng c&oacute; sẵn tr&ecirc;n bộ đ&ocirc;i camera n&agrave;y như: tự động lấy n&eacute;t, gắn thẻ địa lý, chạm lấy n&eacute;t... cho bạn thỏa sức s&aacute;ng tạo những g&igrave; m&igrave;nh th&iacute;ch.<br />\r\n&nbsp;<img alt="" src="/TTTN-Green/public/upload/galaxy-a5-2017-12.jpg" style="width:100%" /><br />\r\nSự cải tiến mạnh mẽ so với thế hệ trước, đi k&egrave;m nhiều c&ocirc;ng nghệ mới mẻ, hiện đại, chắc chắn Samsung sẽ th&agrave;nh c&ocirc;ng với con b&agrave;i A5(2017).</p>\r\n', '2', 100, 100, 0, 8990000, 8990000, '2017-05-23 20:54:41', '6', '2017-05-23 20:54:41', '6', 1, 1, 1, '', '');
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(19, 25, 'Điện thoại Samsung Galaxy A7 (2016)', 'dien-thoai-samsung-galaxy-a7-2016', 'c2d698435ad152ecadedeef6e38c708d.jpg', '94f7f911810487514f2e69d315326887.jpg#b16de886e2616954993a08f3f612e1fd.jpg#31070a57b3cfd3d17a369cfd6c4d5488.jpg', 'Samsung Galaxy A7 (2016) đem lại màn hình to hơn, cấu hình mạnh mẽ hơn cùng nhiều tiện ích tốt cho bạn.', '<h3><strong>Thiết kế mới tr&ecirc;n Galaxy A7 phi&ecirc;n bản 2016</strong></h3>\r\n\r\n<p>So với A7 đời đầu kh&aacute; vu&ocirc;ng vức c&aacute;c g&oacute;c cạnh th&igrave; với&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-a7-2016">Galaxy A7 2016</a>&nbsp;được thay đổi ho&agrave;n to&agrave;n, mềm mại hơn nhưng vẫn kh&aacute;c biệt.</p>\r\n\r\n<p>Khung kim loại viền quanh m&aacute;y tạo n&ecirc;n vẻ chắc chắn, c&aacute;c chi tiết quanh m&aacute;y được gia c&ocirc;ng rất tỉ mỉ v&agrave; đẹp mắt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2016-10-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Mặt lưng bắt s&aacute;ng rất đẹp mắt</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2016-16.jpg" style="width:100%" /><em>C&aacute;c chi tiết tr&ecirc;n m&aacute;y đều được ho&agrave;n thiện rất tốt,&nbsp;độ mỏng m&aacute;y chỉ 7.3 mm</em></p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Super AMOLED</strong></h3>\r\n\r\n<p>C&aacute;c d&ograve;ng m&aacute;y cao cấp của Samsung lu&ocirc;n được trang bị m&agrave;n h&igrave;nh rất tốt, Galaxy A7 2016 cũng sử dụng c&ocirc;ng nghệ hiển thị&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank">Super AMOLED</a>.</p>\r\n\r\n<p>M&agrave;u sắc hiển thị tr&ecirc;n m&aacute;y hiển thị tươi tắn, c&aacute;c chi tiết nhỏ kh&ocirc;ng l&agrave;m kh&oacute; được m&aacute;y, bạn vẫn nh&igrave;n được dễ d&agrave;ng, g&oacute;c nh&igrave;n xung quanh rộng hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2016-8-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh k&iacute;ch thước lớn 5.5 inch đem lại kh&ocirc;ng gian nh&igrave;n thoải m&aacute;i</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2016-15.jpg" style="width:100%" /></p>\r\n\r\n<p><em>2 mặt k&iacute;nh tr&ecirc;n v&agrave; dưới m&aacute;y được bảo vệ với&nbsp;<a href="https://www.thegioididong.com/tin-tuc/kinh-cuong-luc-la-gi--596319#gorillaglass4" target="_blank">k&iacute;nh cường lực 4</a></em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2016-17.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh viền cong 2.5D tạo sự liền mạch với cạnh b&ecirc;n</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2016-18.jpg" style="width:100%" /><em>M&aacute;y bổ sung th&ecirc;m m&agrave;u hồng nữ t&iacute;nh cho ph&aacute;i nữ lựa chọn</em></p>\r\n\r\n<h3><strong>Chơi game thoải m&aacute;i với Galaxy A7 2016</strong></h3>\r\n\r\n<p>M&aacute;y sử dụng chip&nbsp;Exynos 7580 8 nh&acirc;n 64-bit, tốc độ 1.6 GHz, RAM 3 GB c&ugrave;ng bộ nhớ trong 16 GB, bạn c&oacute; thể chơi nhiều game nặng tr&ecirc;n m&aacute;y m&agrave; kh&ocirc;ng lo bị giật hay lag.</p>\r\n\r\n<p>Để tối ưu cấu h&igrave;nh, bạn n&ecirc;n sử dụng th&ecirc;m&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai" target="_blank">thẻ nhớ</a>&nbsp;(tối đa 128 GB) khi bạn muốn lưu trữ nhiều th&ocirc;ng tin v&agrave; dữ liệu.</p>\r\n\r\n<p><strong>Chụp ảnh tốt hơn, selfie đẹp hơn</strong></p>\r\n\r\n<p>Vẫn giữ nguy&ecirc;n camera 13 MP nhưng được cải thiện để chụp n&eacute;t hơn, ảnh được b&ugrave; s&aacute;ng tốt khi chụp tối, m&agrave;u sắc được t&aacute;i tạo lại tươi tắn. Ngo&agrave;i ra m&aacute;y được trang bị t&iacute;nh năng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/che-do-chong-rung-quang-hoc-ois-chup-anh-tren-sm-906416" target="_blank">chống rung quang học OIS</a>&nbsp;chỉ c&oacute; tr&ecirc;n c&aacute;c smartphone cao cấp, t&iacute;nh năng chống rung được t&iacute;ch hợp trong chế độ chụp ảnh, c&ograve;n quay video sẽ kh&ocirc;ng t&iacute;ch hợp.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a7-2016-1-6.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Camera phụ 5 MP c&ugrave;ng chế độ tự động nhận diện khu&ocirc;n mặt để l&agrave;m mịn da</em></p>\r\n\r\n<p>M&aacute;y t&iacute;ch hợp cảm biến v&acirc;n tay ngay ph&iacute;m home để n&acirc;ng cao an to&agrave;n bảo mật cho m&aacute;y của bạn.</p>\r\n\r\n<p>Ngo&agrave;i ra, m&aacute;y hỗ trợ kết nối 3G hay&nbsp;<a href="https://www.thegioididong.com/hoi-dap/4g-la-gi-731757#cat6" target="_blank">4G cat 6</a>&nbsp;tốc độ nhanh, chuẩn wifi hay bluetooth đều được n&acirc;ng cấp để tăng độ nhanh l&ecirc;n nhiều, sử dụng 2 sim nano.</p>\r\n\r\n<p>Nếu bạn th&iacute;ch sản phẩm Samsung, m&agrave;n h&igrave;nh lớn v&agrave; đẹp, cấu h&igrave;nh cao, camera chất lượng th&igrave; Galaxy A7 2016 sẽ l&agrave; một lựa chọn tốt cho bạn.</p>\r\n', '2', 100, 100, 0, 8990000, 8990000, '2017-05-23 21:03:06', '6', '2017-05-23 21:03:06', '6', 1, 1, 1, '', ''),
(20, 25, 'Điện thoại Samsung Galaxy A5 2016', 'dien-thoai-samsung-galaxy-a5-2016', 'a1258207ec8d119d5a4a9217d11c09af.jpg', 'cceece3af09f24e8a022399360e65d44.jpg#50abbb6ff60cde44fe698f6d822d7fc7.jpg#5ee38c65d45e2008ed64850671b6b863.jpg', 'Samsung Galaxy A5 2016 có thiết kế mới với khung kim loại bo tròn mềm mại hoàn hảo, cấu hình mạnh mẽ cùng camera tốt hơn.', '<h3><strong>Thiết kế mới của&nbsp;Galaxy A5 bản 2016</strong></h3>\r\n\r\n<p>Bỏ qua khung kim loại vu&ocirc;ng vức của&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-a500" target="_blank">Galaxy A5</a>&nbsp;cũ, phi&ecirc;n bản mới được l&agrave;m mới ho&agrave;n to&agrave;n với bộ khung kim loại chạy xung quanh m&aacute;y được bo tr&ograve;n tinh tế hơn, mang lại sự thoải m&aacute;i tuyệt đối khi cầm tr&ecirc;n tay v&agrave; thao t&aacute;c.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a5-201623.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Với 2 lớp k&iacute;nh cường lực&nbsp;<a href="https://www.thegioididong.com/tin-tuc/kinh-cuong-luc-la-gi--596319#gorillaglass4" target="_blank">Gorilla Glass 4</a>&nbsp;gi&uacute;p bảo vệ m&aacute;y tối đa khi bị trầy xước hay v&ocirc; t&igrave;nh va chạm mạnh</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a5-201617.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Phần khung kim loại đ&atilde; được l&agrave;m lại để thuận ti&ecirc;n hơn trong cầm nắm</em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh được cải thiện với n&acirc;ng cấp từ HD (1280 &times; 720) l&ecirc;n&nbsp;<a href="https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd" target="_blank">Full HD</a>&nbsp;(1920 &times; 1080)&nbsp;gi&uacute;p mang lại m&agrave;u sắc tươi tắn hơn, c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank">Super AMOLED</a>&nbsp;gi&uacute;p chống ch&oacute;i rất tốt, cho g&oacute;c nh&igrave;n rộng</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a5-201619.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Đặc biệt phần viền m&agrave;n h&igrave;nh cong 2.5D tạo sự liền mạch với cạnh b&ecirc;n</em></p>\r\n\r\n<p><strong>Cấu h&igrave;nh mạnh mẽ</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/dtdd/samsung-galaxy-a5-2016">A5 2016</a>&nbsp;d&ugrave;ng chip Exynos 7580, tốc độ 1.6 GHz với 8 nh&acirc;n, nhanh hơn hẳn so với A5 tiền nhiệm (<a href="https://www.thegioididong.com/tin-tuc/vi-xu-ly-di-dong-snapdragon-410-610-801-805-808-81-599368#snapdragon410" target="_blank">Snapdragon 410</a>, 4 nh&acirc;n, tốc độ 1.2 GHz). M&aacute;y cho khả năng chiến game nặng tốt, hỗ trợ c&aacute;c t&aacute;c vụ c&ocirc;ng việc hằng ng&agrave;y nhanh nhạy hơn</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Video thử khả năng chơi game nặng, tuy nhi&ecirc;n phần loa kh&ocirc;ng qu&aacute; lớn sẽ giảm đi ch&uacute;t hưng phấn khi chơi game</em></p>\r\n\r\n<h3><strong>Camera cải thiện hơn</strong></h3>\r\n\r\n<p><em>Tuy nhi&ecirc;n khi chụp ngo&agrave;i trời ảnh lại bị l&agrave;m mịn qu&aacute; v&agrave; tr&ocirc;ng kh&aacute; ảo</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/samsung-galaxy-a5-201615.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Trong điều kiện &aacute;nh s&aacute;ng trong nh&agrave;, h&igrave;nh ảnh thu về lại rất tốt (Ảnh: Ken Ken)</em></p>\r\n\r\n<p>Bạn c&oacute; thể xem chi tiết đ&aacute;nh gi&aacute; camera hơn&nbsp;<a href="https://www.thegioididong.com/tin-tuc/danh-gia-camera-galaxy-a5-a7-phan-cung-tot-cho-toi-uu-phan-mem-767430" target="_blank"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<h3><strong>Chế độ sạc nhanh v&agrave; t&iacute;nh năng si&ecirc;u tiết kiệm pin</strong></h3>\r\n\r\n<p>M&aacute;y c&oacute; dung lượng pin vừa đủ 2900 mAh để bạn sử dụng trong khoảng 1 ng&agrave;y l&agrave;m việc, chế độ sạc nhanh t&iacute;ch hợp sẵn trong bộ sạc đi k&egrave;m m&aacute;y sẽ r&uacute;t ngắn thời gian chờ khi chỉ 1 tiếng 40 ph&uacute;t đ&atilde; đầy pin.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Khi bạn chỉ c&ograve;n khoảng 30% th&igrave; h&atilde;y bật t&iacute;nh năng si&ecirc;u tiết kiệm pin để đưa m&aacute;y về m&agrave;n h&igrave;nh trắng đen v&agrave; giữ lại những t&aacute;c vụ căn bản nhất</em></p>\r\n\r\n<p>Ngo&agrave;i ra, m&aacute;y c&ograve;n c&oacute; c&aacute;c kết nối hiện đại như&nbsp;<a href="https://www.thegioididong.com/tin-tuc/nfc-la-gi--590273" target="_blank">NFC</a>&nbsp;hay&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ban-co-biet-gi-ve-usb-otg-chua-519811" target="_blank">OTG</a>,&nbsp;hỗ trợ&nbsp;<a href="https://www.thegioididong.com/hoi-dap/4g-la-gi-731757#cat6" target="_blank">4G LTE Cat 6</a>&nbsp;nhanh, hay t&iacute;nh năng bảo mật v&acirc;n tay an to&agrave;n.</p>\r\n\r\n<p>Th&ecirc;m m&agrave;u sắc mới nữ t&iacute;nh, cấu h&igrave;nh c&ugrave;ng camera được cải thiện tốt, thiết kế mới lạ so với phi&ecirc;n bản tiền nhiệm, Galaxy A5 2016 sẽ l&agrave; lựa chọn tốt cho bạn.</p>\r\n', '2', 100, 100, 0, 6790000, 6790000, '2017-05-23 21:12:42', '6', '2017-05-23 21:12:42', '6', 1, 1, 1, '', ''),
(21, 26, 'Điện thoại OPPO F3 Plus', 'dien-thoai-oppo-f3-plus', 'cd97a05737d3144d18e86939a87367aa.jpg', '3f0979b95bacd40321d7379fb088b2a2.jpg#16c68e5c592de666259bb95740a98700.jpg#1af4ad27c722d5df3508f84176dd674d.jpg', 'Sau sự thành công của F1 Plus, OPPO F3 Plus đang được người dùng quan tâm yêu thích với cụm camera selfie kép, công nghệ chụp thiếu sáng đỉnh cao, cấu hình mạnh mẽ và tất nhiên đó là thiết kế nguyên khối quá ư là sang trọng.', '<h3><strong>Thiết kế quen thuộc</strong></h3>\r\n\r\n<p><a href="https://www.thegioididong.com/dtdd-oppo" target="_blank">OPPO</a>&nbsp;F3 Plus vẫn sẽ mang trong m&igrave;nh phong c&aacute;ch thiết kế quen thuộc của OPPO trong thời gian gần đ&acirc;y với mặt lưng c&ugrave;ng c&aacute;c g&oacute;c cạnh bo cong mềm mại.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f3-plus-vang-2-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Thiết kế thời trang</em></p>\r\n\r\n<p>M&aacute;y vẫn sử dụng chất liệu kim loại sang trọng c&ugrave;ng c&aacute;c m&agrave;u sắc thời trang to&aacute;t l&ecirc;n c&aacute; t&iacute;nh cho người d&ugrave;ng.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/92569/oppo-f3-plus-vang-4-1.jpg" onclick="return false;"><img alt="Thiết kế mỏng nhẹ" src="https://cdn1.tgdd.vn/Products/Images/42/92569/oppo-f3-plus-vang-4-1.jpg" /></a></p>\r\n\r\n<p><em>Thiết kế mỏng nhẹ, m&agrave;u sắc trẻ trung</em></p>\r\n\r\n<p>F3 Plus cũng được ho&agrave;n thiện mặt k&iacute;nh cong 2.5D ở ph&iacute;a trước, được bảo vệ bởi k&iacute;nh cường lực&nbsp;Gorilla Glass 5 thế hệ mới nhất.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh k&iacute;ch thước lớn</strong></h3>\r\n\r\n<p>Đ&uacute;ng như t&ecirc;n gọi &quot;Plus&quot; th&igrave; OPPO F3 Plus sở hữu cho m&igrave;nh m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước 6 inch c&ugrave;ng độ ph&acirc;n giải Full HD, tấm nền IPS LCD cho g&oacute;c nh&igrave;n rộng c&ugrave;ng khả năng t&aacute;i tạo m&agrave;u sắc trung thực.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/92569/oppo-f3-plus-vang-1-1.jpg" onclick="return false;"><img alt="Màn hình kích thước to" src="https://cdn3.tgdd.vn/Products/Images/42/92569/oppo-f3-plus-vang-1-1.jpg" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh k&iacute;ch thước lớn cho giải tr&iacute; v&agrave; l&agrave;m việc</em></p>\r\n\r\n<p>M&aacute;y sở hữu cấu h&igrave;nh mạnh&nbsp;Snapdragon 635, c&ugrave;ng với đ&oacute; l&agrave; bộ nhớ RAM 4 GB v&agrave; bộ nhớ trong l&ecirc;n đến 64 GB cho bạn thoải m&aacute;i lưu trữ dữ liệu v&agrave; c&agrave;i đặt game ứng dụng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f3-plus-h3.png" style="width:100%" /></p>\r\n\r\n<p><em>Hiệu năng được cải thiện r&otilde; rệt so với thể hệ cũ</em></p>\r\n\r\n<p>M&aacute;y cũng hỗ trợ khe cắm&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai" target="_blank">thẻ nhớ</a>&nbsp;l&ecirc;n tới 256 GB c&ugrave;ng vi&ecirc;n pin dung lượng l&ecirc;n tới 4000 mAh t&iacute;ch hợp khả năng sạc nhanh VOOC độc quyền.</p>\r\n\r\n<h3><strong>Chuy&ecirc;n gia selfie mới</strong></h3>\r\n\r\n<p>Chắc chắn l&agrave; OPPO F3 Plus cũng sẽ l&agrave; một trong những cameraphone chụp đẹp nhất tr&ecirc;n thị trường trong năm 2017.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f3-plus-vang-6-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Camera k&eacute;p ở ph&iacute;a trước</em></p>\r\n\r\n<p>Theo đ&oacute; th&igrave; m&aacute;y sẽ sở hữu bộ đ&ocirc;i camera k&eacute;p ở ph&iacute;a trước với độ ph&acirc;n giải cho 2 camera l&agrave; 16 MP v&agrave; 8 MP mang lại chất lượng ảnh selfie đ&atilde; tốt nay c&ograve;n tốt hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f3-plus5.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Camera ch&iacute;nh ở mặt lưng vẫn kh&ocirc;ng lồi</em></p>\r\n\r\n<p>Camera ch&iacute;nh của m&aacute;y cũng sẽ được cải tiến với c&ocirc;ng nghệ lấy n&eacute;t theo pha nhanh ch&oacute;ng, độ ph&acirc;n giải cao cho chất lượng ảnh đẹp trong nhiều điều kiện kh&aacute;c nhau.</p>\r\n', '3', 100, 100, 0, 10690000, 10690000, '2017-05-23 21:15:34', '6', '2017-05-23 21:15:34', '6', 1, 1, 1, '', ''),
(22, 26, 'Điện thoại OPPO F3', 'dien-thoai-oppo-f3', '872f9abc7bc8fc524adfe5a3087ceb01.jpg', '5b91e6d73bb0493e2921bafb66c1687a.jpg#9bc77a4b2b6be13821937a31fd00d466.jpg#369dc9d948aa090347cd67a3e81ab607.jpg', 'Cuối cùng thì mẫu "chuyên gia selfie" mới OPPO F3 cũng đã chính thức được trình làng với cụm camera trước kép trang bị nhiều tính năng selfie tuyệt vời hứa hẹn sẽ đem đến trải nghiệm đáng giá cho người dùng.', '<h2><strong>Cuối c&ugrave;ng th&igrave; mẫu &quot;chuy&ecirc;n gia selfie&quot; mới&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-f3" target="_blank">OPPO F3</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức được tr&igrave;nh l&agrave;ng với cụm camera trước k&eacute;p trang bị nhiều t&iacute;nh năng selfie tuyệt vời hứa hẹn sẽ đem đến trải nghiệm đ&aacute;ng gi&aacute; cho người d&ugrave;ng.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/z1_899x506-800-resize.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>1. Camera selfie k&eacute;p g&oacute;c rộng</strong></h3>\r\n\r\n<p>Đầu ti&ecirc;n chắc chắn phải nhắc đến khả năng selfie của F3 với cụm camera selfie k&eacute;p được thừa hưởng từ F3 Plus. OPPO F3 c&oacute; một camera selfie 16 MP với nhiều chế độ l&agrave;m đẹp tương tự như F1s, c&ugrave;ng một camera g&oacute;c rộng 8 MP cho khung h&igrave;nh rộng gấp đ&ocirc;i, giải quyết c&aacute;c vấn đề khi chụp ảnh nh&oacute;m hoặc chụp với khung cảnh ph&iacute;a sau.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/f33_800x430.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>2. Camera ch&iacute;nh cảm biến lớn</strong></h3>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, camera ch&iacute;nh của thiết bị cũng được ch&uacute; trọng với c&ocirc;ng nghệ lấy n&eacute;t theo pha PDAF, cảm biến lớn 1/3 inch cho khả năng nhạy s&aacute;ng tốt hơn, chụp đ&ecirc;n ngon hơn, t&iacute;ch hợp nhiều chế độ chụp chuy&ecirc;n s&acirc;u bao gồm Ultra-HD, phơi s&aacute;ng 16 gi&acirc;y, chụp ảnh RAW,...</p>\r\n\r\n<h3><strong>3. Ph&iacute;m home cảm ứng 3D</strong></h3>\r\n\r\n<p>Điểm thay đổi kế tiếp tr&ecirc;n thiết bị n&agrave;y ch&iacute;nh l&agrave; ph&iacute;m home đ&atilde; được chuyển từ dạng nhấn được sang dạng cảm ứng lực, điều n&agrave;y cũng đ&atilde; từng xuất hiện tr&ecirc;n chiếc F3 Plus. Cảm biến v&acirc;n tay vẫn được đặt ở vị tr&iacute; cũ, t&iacute;ch hợp ngay tr&ecirc;n n&uacute;t home của thiết bị.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/f32_800x450.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>4. RAM 4 GB, ROM 64 GB, m&agrave;n h&igrave;nh FullHD</strong></h3>\r\n\r\n<p>Về mặt th&ocirc;ng số, OPPO F3 cũng được n&acirc;ng độ ph&acirc;n giải m&agrave;n h&igrave;nh l&ecirc;n FullHD, tr&ecirc;n m&agrave;n h&igrave;nh c&oacute; c&ugrave;ng k&iacute;ch thước với F1s l&agrave; 5.5 inch. Dung lượng bộ nhớ của thiết bị n&agrave;y cũng tương đồng với OPPO F1s 2017 với RAM 4GB v&agrave; ROM 64GB.</p>\r\n\r\n<h3><strong>5. Thiết kế thời trang</strong></h3>\r\n\r\n<p>OPPO F3 cũng sở hữu một thiết kế từ kim loại nguy&ecirc;n khối, mặt trước l&agrave; mặt k&iacute;nh cường lực Gorilla Glass 5 được l&agrave;m cong 2.5D. Thiết kế của thiết bị kh&ocirc;ng c&oacute; nhiều thay đổi so với F1s nhưng nh&igrave;n chung vẫn mang lại vẻ đẹp thời trang v&agrave; sang trọng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/img_0120_1280x720-800-resize.jpg" style="width:100%" /></p>\r\n', '3', 10, 10, 0, 7490000, 7490000, '2017-05-23 21:19:04', '6', '2017-05-23 21:19:04', '6', 1, 1, 1, '', ''),
(23, 26, 'Điện thoại OPPO F1s [17] 64GB', 'dien-thoai-oppo-f1s-17-64gb', '0263a9a9022c717b37244a2a32ee0860.jpg', 'f1880596d2a4b09c896aa12d906b95e8.jpg#a0efc0ee1f5158ab8d4fd6ba1ce42bce.jpg#efcbca7c53e0c11960fbb644cb7f9248.jpg', 'Tiếp nối sự thành công rực rỡ từ người tiền nhiệm OPPO F1s thì mới đây OPPO đã chính thức giới thiệu phiên bản kế nhiệm với nâng cấp nhẹ về cầu hình mang tên OPPO F1s 2017.', '<h2>Tiếp nối sự th&agrave;nh c&ocirc;ng rực rỡ từ người tiền nhiệm OPPO F1s th&igrave; mới đ&acirc;y OPPO đ&atilde; ch&iacute;nh thức giới thiệu phi&ecirc;n bản kế nhiệm với n&acirc;ng cấp nhẹ về cầu h&igrave;nh mang t&ecirc;n&nbsp;OPPO F1s 2017.</h2>\r\n\r\n<h3><strong>Thiết kế quen thuộc</strong></h3>\r\n\r\n<p>OPPO F1s 2017 kh&ocirc;ng mang nhiều thay đổi so với người tiền nhiệm. M&aacute;y vẫn được thừa hưởng khung vỏ kim loại sang trọng v&agrave; cứng c&aacute;p kết hợp với c&aacute;c đường cong mềm mại cho cảm gi&aacute;c cầm nắm thoải m&aacute;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-20174.jpg" style="width:100%" /></p>\r\n\r\n<p>Phần mặt k&iacute;nh ở ph&iacute;a trước được ho&agrave;n thiện cong 2.5D cho trải nghiệm sử dụng mượt m&agrave; v&agrave; thoải m&aacute;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-20175.jpg" style="width:100%" /><br />\r\n<em>Nhỏ gọn dễ cầm nắm</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-20171.jpg" style="width:100%" /><br />\r\n<em>Sang trọng v&agrave; tinh tế</em></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh được n&acirc;ng cấp</strong></h3>\r\n\r\n<p>Thay đổi lớn nhất tr&ecirc;n&nbsp;OPPO F1s 2017 ch&iacute;nh l&agrave; cấu h&igrave;nh, theo đ&oacute; th&igrave; bộ nhớ trong tr&ecirc;n&nbsp;OPPO F1s 2017 đ&atilde; được n&acirc;ng cấp l&ecirc;n 64 GB so với 32 GB của thế hệ cũ gi&uacute;p bạn thoải m&aacute;i lưu trữ dữ liệu v&agrave; c&agrave;i đặt game, ứng dụng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-20171.jpg" style="width:100%" /></p>\r\n\r\n<p>Mức RAM cũng đ&atilde; được n&acirc;ng cấp l&ecirc;n 4 GB thay v&igrave; 3 GB như trước cho người d&ugrave;ng thoải m&aacute;i chạy song song nhiều ứng dụng m&agrave; kh&ocirc;ng sợ hiện tượng m&aacute;y bị giật hay reload lại.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/91751/oppo-f1s-20179.jpg" onclick="return false;"><img alt="Vân tay một chạm" src="https://cdn.tgdd.vn/Products/Images/42/91751/oppo-f1s-20179.jpg" /></a></p>\r\n\r\n<p>C&aacute;c th&ocirc;ng số kh&aacute;c như chip&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-chip-mediatek-mt6750-900098" target="_blank">Mediatek MT6750 8 nh&acirc;n</a>, hỗ trợ thẻ nhớ tối đa l&ecirc;n tới 128 GB vẫn được giữ nguy&ecirc;n tr&ecirc;n F1s 2017.</p>\r\n\r\n<h3><strong>Chuy&ecirc;n gia selfie</strong></h3>\r\n\r\n<p>L&yacute; do quan trọng nhất m&agrave; người d&ugrave;ng chọn những sản phẩm của&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank">OPPO</a>&nbsp;ch&iacute;nh l&agrave; camera tự sướng ảo diệu.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-20178.jpg" style="width:100%" /></p>\r\n\r\n<p>F1s 2017 vẫn giữ nguy&ecirc;n độ ph&acirc;n giải camera trước 16 MP v&agrave; camera sau 13 MP nhưng m&aacute;y được n&acirc;ng cấp phần mềm chụp ảnh hứa hẹn cho ra những tấm h&igrave;nh tự sướng ấn tượng.</p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh lớn, pin khủng</strong></p>\r\n\r\n<p>M&aacute;y sở hữu m&agrave;n h&igrave;nh k&iacute;ch thước lớn 5.5 inch c&ugrave;ng độ ph&acirc;n giải HD cho bạn kh&ocirc;ng gian trải nghiệm thoải m&aacute;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-20177.jpg" style="width:100%" /></p>\r\n\r\n<p>Vi&ecirc;n pin dung lượng khủng 3075 mAh mang lại thời gian sử dụng thoải m&aacute;i trong cả ng&agrave;y d&agrave;i.</p>\r\n', '3', 10, 10, 0, 6990000, 6990000, '2017-05-23 21:22:31', '6', '2017-05-23 21:22:31', '6', 1, 1, 1, '', ''),
(24, 26, 'Điện thoại OPPO F1s', 'dien-thoai-oppo-f1s', '84c7cf89b0037332335b417ac6bf63e7.jpg', 'd30455d7e894cfc154ef57b6b56ca81b.jpg#8f0ef0e019d460a5320c05bc2b39d6cb.jpg#3c808a5d97bbb133a90c7d958565c29d.jpg', 'OPPO F1s sẽ là chiếc điện thoại được OPPO giới thiệu tại Việt Nam nhằm đánh vào sở thích selfie của giới trẻ với điểm nhấn là camera trước có độ phân giải lên tới 16 MP.', '<h3><strong>Thiết kế cao cấp</strong></h3>\r\n\r\n<p>Nh&igrave;n tổng quan th&igrave;&nbsp;OPPO F1s sẽ mang trong m&igrave;nh thiết kế tương tự như người anh em&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-f1-plus" target="_blank">OPPO F1 Plus</a>&nbsp;với chất liệu kim loại cao cấp. F1s cũng sẽ sở hữu cho m&igrave;nh phần viền m&agrave;n h&igrave;nh 2 b&ecirc;n si&ecirc;u mỏng với độ mỏng chỉ 1.55 mm.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-4.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Thiết kế thời trang, thanh mảnh</em></p>\r\n\r\n<p>C&aacute;c g&oacute;c cạnh của F1s cũng được bo cong mềm mại đem lại cho người d&ugrave;ng cảm gi&aacute;c cầm nắm kh&aacute; thoải m&aacute;i c&ugrave;ng phần viền m&agrave;n h&igrave;nh được ho&agrave;n thiện cong 2.5D mang lại trải nghiệm sử dụng tốt hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-3.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Phần mặt lưng của OPPO F1s</em></p>\r\n\r\n<p>M&aacute;y c&oacute; m&agrave;n h&igrave;nh 5.5 inch, độ ph&acirc;n giải HD. Theo th&ocirc;ng tin tiết lộ th&igrave; m&aacute;y sẽ c&oacute; 2 m&agrave;u rất thời trang l&agrave; m&agrave;u v&agrave;ng v&agrave; m&agrave;u hồng thời thượng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s2.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Phần viền m&agrave;n h&igrave;nh si&ecirc;u mỏng</em></p>\r\n\r\n<h3><strong>Camera si&ecirc;u n&eacute;t</strong></h3>\r\n\r\n<p>Với camera trước c&oacute; độ ph&acirc;n giải lớn l&ecirc;n tới 16 MP th&igrave; OPPO kh&ocirc;ng giấu tham vọng đ&aacute;nh mạnh v&agrave;o giới trẻ với nhu cầu tự sướng cao. Với chất lượng ảnh selfie từ c&aacute;c m&aacute;y OPPO trước đ&acirc;y lu&ocirc;n được người d&ugrave;ng đ&aacute;nh gi&aacute; cao th&igrave; hi vọng camera tự sướng của chiếc F1s sẽ một lần nữa khiến thị trường nhộn nhịp trở lại.</p>\r\n\r\n<p>Ngo&agrave;i ra m&aacute;y cũng được trang bị camera ch&iacute;nh độ ph&acirc;n giải 13 MP&nbsp;với t&iacute;nh năng tự động lấy n&eacute;t theo giai đoạn (PDAF) v&agrave; chống rung th&ocirc;ng minh cho ph&eacute;p chụp ảnh hay lấy n&eacute;t cực nhanh v&agrave; ch&iacute;nh x&aacute;c, để chụp n&ecirc;n những bức ảnh sắc n&eacute;t chỉ trong t&iacute;ch tắc.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>F1s được trang bị nhiều t&iacute;nh năng độc quyền</em></p>\r\n\r\n<h3><strong>Hiệu năng mượt m&agrave;</strong></h3>\r\n\r\n<p>OPPO F1s được cung cấp sức mạnh từ con chip&nbsp;MediaTek MT6750 8 nh&acirc;n 1,5 GHz, 3 GB RAM, bộ nhớ trong 32 GB.&nbsp;Tuy nhi&ecirc;n, chỉ tiếc l&agrave; hệ điều h&agrave;nh ColorOS 3.0, dựa tr&ecirc;n nền Android 5.1 Lollipop c&oacute; vẻ hơi cũ khi m&agrave; Android 7 chuẩn bị ra mắt.</p>\r\n\r\n<p>Hi vọng OPPO sẽ nhanh ch&oacute;ng đưa ra bản cập nhật cho F1s.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s-2.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Cấu h&igrave;nh kh&aacute; trong tầm gi&aacute;</em></p>\r\n\r\n<h3><strong>V&acirc;n tay si&ecirc;u nhạy</strong></h3>\r\n\r\n<p>Theo những g&igrave; OPPO giới thiệu th&igrave; F1s sẽ chỉ mất&nbsp;0.22 gi&acirc;y để c&oacute; thể nhận ra v&acirc;n tay của bạn khi mở kh&oacute;a thiết bị, một con số kh&aacute; ấn tượng với một chiếc m&aacute;y tầm trung. Với việc t&iacute;ch hợp cảm biến v&acirc;n tay th&igrave; OPPO F1s sẽ gi&uacute;p bạn bảo mật dữ liệu an to&agrave;n hơn, mở kh&oacute;a thiết bị nhanh ch&oacute;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-f1s1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Cảm biến v&acirc;n tay si&ecirc;u nhạy</em></p>\r\n\r\n<p>Với những điểm mạnh kh&aacute; ấn tượng th&igrave;&nbsp;<strong>OPPO F1s</strong>&nbsp;sẽ l&agrave; một sự lựa chọn s&aacute;ng gi&aacute; cho giới trẻ với thiết kế đẹp mắt, cảm biến v&acirc;n tay hiện đại v&agrave; khả năng selfie cực đỉnh.</p>\r\n', '3', 10, 10, 0, 4990000, 4990000, '2017-05-23 21:41:56', '6', '2017-05-23 21:41:56', '6', 1, 1, 1, '', ''),
(25, 26, 'Điện thoại OPPO A39 (Neo 9s)', 'dien-thoai-oppo-a39-neo-9s', 'ee4775f7100a69548cb2d5a42920b444.jpg', '7352fdbe13e71d17299b60c2da89daac.jpg#a60c5374cd7d6b3d7cf1a5fab27368e4.jpg', 'OPPO A39 (Neo 9s) nằm ở phân khúc giá rẻ với thiết kế trẻ trung, đẹp mắt cùng camera selfie cao cấp hứa hẹn sẽ là một sự lựa chọn sáng giá cho các bạn trẻ.', '<h2><strong>OPPO A39 (Neo 9s) nằm ở ph&acirc;n kh&uacute;c gi&aacute; rẻ với thiết kế trẻ trung, đẹp mắt c&ugrave;ng camera selfie cao cấp hứa hẹn sẽ l&agrave; một sự lựa chọn s&aacute;ng gi&aacute; cho c&aacute;c bạn trẻ.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a39-vangdong-1-1.jpg" style="width:100%" /></p>\r\n\r\n<h3><strong>Thiết kế sang trọng</strong></h3>\r\n\r\n<p>Ngoại h&igrave;nh của&nbsp;OPPO A39 (Neo 9s) kh&aacute; giống với những chiếc OPPO được sản xuất gần đ&acirc;y với phần khung kim loại chắc chắn ở giữa, phần m&agrave;n h&igrave;nh ph&iacute;a trước v&agrave; ph&iacute;a sau l&agrave; mặt lưng được l&agrave;m từ chất liệu nhựa.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a39-vangdong-10.jpg" style="width:100%" /></p>\r\n\r\n<p><em>OPPO A39 (Neo 9s) sang trọng v&agrave; thời trang</em></p>\r\n\r\n<p>OPPO A39 (Neo 9s) vẫn được ho&agrave;n thiện mặt k&iacute;nh cong dạng 2.5D cho bạn cảm gi&aacute;c cầm nắm kh&aacute; thoải m&aacute;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a395.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Mặt k&iacute;nh cong 2.5D mang lại trải nghiệm mượt m&agrave;</em></p>\r\n\r\n<p>OPPO đ&atilde; chuyển c&aacute;c ph&iacute;m Home, Recent App v&agrave; Back ra ngo&agrave;i. Điều n&agrave;y gi&uacute;p bạn c&oacute; thể sử dụng m&agrave;n h&igrave;nh tốt hơn nhiều, tuy nhi&ecirc;n c&aacute;c ph&iacute;m n&agrave;y tr&ecirc;n A39 kh&ocirc;ng c&oacute; đ&egrave;n nền, sẽ rất kh&oacute; để thấy trong tối.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh hiển thị tốt</strong></h3>\r\n\r\n<p>Với k&iacute;ch thước 5.2 inch độ ph&acirc;n giải HD&nbsp;720 x 1280 pixels c&ugrave;ng tấm nền&nbsp;IPS LCD&nbsp;th&igrave; m&aacute;y cho bạn chất lượng hiển thị kh&aacute; ổn, m&agrave;u sắc v&agrave; g&oacute;c nh&igrave;n đều ở mức tốt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a394.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh đẹp, hiển thị tốt nội dung</em></p>\r\n\r\n<p>OPPO cũng trang bị cho A39 tấm k&iacute;nh cường lực&nbsp;<a href="https://www.thegioididong.com/tin-tuc/kinh-cuong-luc-la-gi--596319#gorillaglass4" target="_blank">Gorilla Glass 4</a>&nbsp;cứng c&aacute;p v&agrave; mạnh mẽ &nbsp;hơn gi&uacute;p m&aacute;y chống chịu tốt hơn với những trầy xước kh&ocirc;ng đ&aacute;ng c&oacute;.</p>\r\n\r\n<h3><strong>Camera chất lượng</strong></h3>\r\n\r\n<p>Camera lu&ocirc;n l&agrave; điểm m&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd-oppo" target="_blank">OPPO</a>&nbsp;tự h&agrave;o nhất tr&ecirc;n c&aacute;c sản phẩm của m&igrave;nh v&agrave; với OPPO A39 th&igrave; đ&acirc;y cũng kh&ocirc;ng phải l&agrave; ngoại lệ.</p>\r\n\r\n<p>Với A39 th&igrave; bạn sẽ c&oacute; một camera ch&iacute;nh với độ ph&acirc;n giải 13 MP, hỗ trợ nhiều chế độ chụp ảnh th&ocirc;ng minh cũng như khả năng chỉnh tay cao cấp cho bạn những bức ảnh c&oacute; chất lượng kh&aacute; tốt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a39-vangdong-19.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Camera chụp ảnh nhanh, chi tiết tốt</em></p>\r\n\r\n<p>Camera trước c&oacute; độ ph&acirc;n giải&nbsp;5 MP, đi c&ugrave;ng với bộ xử l&yacute; ảnh Beauty 4.0 chắc chắn sẽ kh&ocirc;ng l&agrave;m c&aacute;c bạn trẻ phải thất vọng.</p>\r\n\r\n<h3><strong>Hiệu năng kh&aacute;</strong></h3>\r\n\r\n<p>M&aacute;y sở hữu con chip&nbsp;Mediatek MT6750 8 nh&acirc;n, RAM 3 GB c&ugrave;ng 32 GB bộ nhớ trong cho bạn thoải m&aacute;i c&agrave;i đặt game v&agrave; ứng dụng.</p>\r\n\r\n<p>M&aacute;y chạy sẵn&nbsp;giao diện ColorOS 3.0 độc quyền của OPPO nhưng vẫn chỉ dừng lại ở Android 5.1 kh&aacute; cũ kỹ.</p>\r\n\r\n<p>Nếu bạn l&agrave; một người y&ecirc;u th&iacute;ch tự sướng v&agrave; c&aacute;c thiết bị&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">smartphone</a>&nbsp;thời trang th&igrave;&nbsp;OPPO A39 (Neo 9s) ch&iacute;nh l&agrave; sự lựa chọn h&agrave;ng đầu d&agrave;nh cho bạn.</p>\r\n', '3', 1000, 1000, 0, 4290000, 4290000, '2017-05-23 21:44:51', '6', '2017-05-23 21:44:51', '6', 1, 1, 1, '', ''),
(26, 26, 'Điện thoại OPPO A37 (NEO 9)', 'dien-thoai-oppo-a37-neo-9', '6740b0c3fb8fd25bcc0a6c301ce68e09.jpg', 'd38e13be8c7212a6bc2a5e362d3ea459.jpg#aff34bcfd1da7e78911a552cfefb1137.jpg#5b1b68402b408b4587a22458f7a80762.jpg', 'OPPO A37 (Neo 9) là thiết bị tiếp theo của dòng OPPO Neo vốn được người dùng yêu thích với camera selfie ảo diệu cùng mức giá bán phải chăng.', '<h3><strong>Thiết kế bắt mắt</strong></h3>\r\n\r\n<p>Thiết kế l&agrave; điểm cải tiến lớn tr&ecirc;n OPPO A37 so với c&aacute;c thế hệ OPPO Neo 5 v&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-neo-7" target="_blank">Neo 7</a>&nbsp;đi trước, vẫn được l&agrave;m từ nhựa nhưng OPPO A37 đ&atilde; chắc chắn v&agrave; thời trang hơn c&aacute;c đ&agrave;n anh của m&igrave;nh rất nhiều.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a371.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Thiết kế thời trang</em></p>\r\n\r\n<p>M&aacute;y sở hữu thiết kế nhựa nguy&ecirc;n khối với nhiều đường n&eacute;t được thừa hưởng từ chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/oppo-f1-plus" target="_blank">OPPO F1 Plus</a>&nbsp;của h&atilde;ng, bắt mắt v&agrave; tinh tế.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a373.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Mang hơi hướng của OPPO F1 Plus</em></p>\r\n\r\n<p>Tuy nhi&ecirc;n vẫn c&ograve;n một số điểm trừ tr&ecirc;n thiết kế của OPPO A37 như camera của m&aacute;y c&ograve;n lồi nhẹ cũng như lớp sơn ở mặt lưng của m&aacute;y dễ bị trầy xước trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a374.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Camera lồi nhẹ</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a379.jpg" style="width:100%" /></p>\r\n\r\n<p><em>OPPO A37 vẫn sử dụng chuẩn Micro USB</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a378.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Độ mỏng ấn tượng</em></p>\r\n\r\n<h3><strong>Camera selfie ảo diệu</strong></h3>\r\n\r\n<p>Tiếp nối sự th&agrave;nh c&ocirc;ng của c&aacute;c thế hệ trước th&igrave; OPPO A37 cũng được đầu tư mạnh về camera selfie với độ ph&acirc;n giải l&ecirc;n tới 5 MP c&ugrave;ng t&iacute;nh năng l&agrave;m mịn da độc quyền được rất nhiều bạn trẻ y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh hiển thị kh&aacute;</strong></p>\r\n\r\n<p>OPPO A37 được trang bị m&agrave;n h&igrave;nh 5 inch độ ph&acirc;n giải HD&nbsp;720 x 1280 pixels, sử dụng tấm nền&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#ipslcd" target="_blank">IPS LCD</a>&nbsp;cho chất lượng hiển thị ở mức kh&aacute;.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/76014/oppo-a3710.jpg" onclick="return false;"><img alt="Màn hình hiển thị khá" src="https://cdn4.tgdd.vn/Products/Images/42/76014/oppo-a3710.jpg" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh hiển thị ở mức kh&aacute;</em></p>\r\n\r\n<p>OPPO cũng trang bị cho A37 m&agrave;n h&igrave;nh cong 2.5D thời thượng đem lại cho người d&ugrave;ng trải nghiệm sử dụng tốt hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a376.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh cong 2.5D thời thượng</em></p>\r\n\r\n<h3><strong>Hiệu năng ở mức kh&aacute;</strong></h3>\r\n\r\n<p>OPPO A37 được trang bị bộ vi xử l&yacute; Snapdragon 410 tốc độ 1.2 GHz, chip đồ họa Adreno 306, RAM 2 GB bộ nhớ trong 16 GB.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a375.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Hiệu năng ở mức kh&aacute;</em></p>\r\n\r\n<p>M&aacute;y được n&acirc;ng cấp RAM từ 1 GB tr&ecirc;n c&aacute;c thế hệ cũ l&ecirc;n th&agrave;nh 2 GB gi&uacute;p A37 hoạt động mượt m&agrave; hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/oppo-a372.jpg" style="width:100%" /></p>\r\n\r\n<p><em>RAM được n&acirc;ng cấp mạnh mẽ</em></p>\r\n\r\n<p>Qua trải nghiệm th&igrave; m&aacute;y c&oacute; thể chơi được c&aacute;c tựa game nặng như&nbsp;Asphalt 8 hay N.O.V.A 3 ở mức đồ họa trung b&igrave;nh.</p>\r\n\r\n<p>Nếu như bạn đang cần t&igrave;m kiếm một&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">smartphone&nbsp;</a>nhỏ gọn, thiết kế thời trang c&ugrave;ng camera selfie đẹp th&igrave; OPPO A37 sẽ l&agrave; sự lựa chọn h&agrave;ng đầu d&agrave;nh cho bạn.</p>\r\n', '3', 100, 100, 0, 3290000, 3290000, '2017-05-23 21:49:35', '6', '2017-05-23 21:49:35', '6', 1, 1, 1, '', ''),
(27, 50, 'Điện thoại Sony Xperia XZs', 'dien-thoai-sony-xperia-xzs', 'de6820ece3d5e6d27cc125dcf7242295.jpg', 'c4cb3a1c7612a34878c3cfd9ef6f849e.jpg#63b84eecf0b4b854192df0e098b62512.jpg#d851199758cc368449ae14dd54bd3c01.jpg', 'Đặc điểm nổi bật của Sony Xperia XZs\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp\r\nSony Xperia XZs là smartphone được Sony đầu tư mạnh mẽ về camera với hàng loạt các trang bị cao cấp và sở hữu cho mình một mức giá bán hợp lý với người tiêu dùng.', '<h3><strong>Thiết kế quen thuộc</strong></h3>\r\n\r\n<p>M&aacute;y vẫn sở hữu thiết kế quen thuộc được thừa hưởng từ chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd/sony-xperia-xz" target="_blank">Xperia XZ</a>&nbsp;đ&atilde; ra mắt trước đ&oacute;. Điểm kh&aacute;c biệt để ph&acirc;n biệt nằm ở mặt lưng khi XZs được trang bị cụm camera ch&iacute;nh với nhiều cảm biến hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xzs9.jpg" style="width:100%" /><em>Sony Xperia XZs b&ecirc;n cạnh Sony Xperia XZ</em></p>\r\n\r\n<p>Thiết kế vu&ocirc;ng vức, sạng trọng v&agrave; mạnh mẽ XZs mang đến cho người d&ugrave;ng sự chắc chắn v&agrave; cứng c&aacute;p khi cầm nắm tr&ecirc;n tay.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xzs10.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Thiết kế mạnh mẽ, sang trọng</em></p>\r\n\r\n<p>Mặt k&iacute;nh của m&aacute;y cũng được ho&agrave;n thiện cong 2.5D mang lại trải nghiệm thực sự tốt khi vuốt từ c&aacute;c m&eacute;p của cạnh viền v&agrave;o m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xzs3.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Mặt k&iacute;nh cong 2.5D thời thượng</em></p>\r\n\r\n<p>Một điểm kh&aacute; đ&aacute;ng khen l&agrave; XZs vẫn giữ cho m&igrave;nh ph&iacute;m chụp h&igrave;nh nhanh truyền thống của Sony, c&aacute;i m&agrave; hầu hết c&aacute;c h&atilde;ng sản xuất smartphone hiện nay đều lược bỏ.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xzs6.jpg" style="width:100%" /><em>Cụm ph&iacute;m cứng k&iacute;ch hoạt nhanh camera</em></p>\r\n\r\n<h3><strong>Camera h&agrave;ng đầu</strong></h3>\r\n\r\n<p>Điểm ch&uacute; &yacute; lớn nhất tr&ecirc;n chiếc XZs l&agrave; khả năng quay video&nbsp;super slow motion l&ecirc;n tới 960 khung h&igrave;nh tr&ecirc;n gi&acirc;y mang lại cho người d&ugrave;ng những thước phim độc nhất v&ocirc; nhị để chia sẻ với bạn b&egrave;.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xzs8.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Camera chất lượng cao</em></p>\r\n\r\n<p>Việc quay được video quay chậm 960 fps sẽ gi&uacute;p cho người d&ugrave;ng c&oacute; thể theo d&otilde;i được c&aacute;c chuyển động nhanh một c&aacute;ch ch&acirc;n thực v&agrave; ch&iacute;nh x&aacute;c nhất.</p>\r\n\r\n<p>Camera ch&iacute;nh độ ph&acirc;n giải 19 MP, được trang bị&nbsp;cảm biến h&igrave;nh ảnh ba chiều v&agrave; đặc biệt l&agrave; hệ thống chống rung 5 trục mang lại chất lượng h&igrave;nh ảnh tốt hơn khi chụp.</p>\r\n\r\n<p>Ngo&agrave;i ra c&ocirc;ng nghệ&nbsp;Motion Eye được trang bị tr&ecirc;n XZs gi&uacute;p m&aacute;y c&oacute; thể dự đo&aacute;n được chuyển động trước v&agrave; chụp những bức ảnh vật thể chuyển động v&agrave; kh&ocirc;ng bị mờ nh&ograve;e.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xzs3(1).jpg" style="width:100%" /></p>\r\n\r\n<p><em>Camera trước cũng cho ảnh chi tiết tốt, hỗ trợ nhận diện khu&ocirc;n mặt</em></p>\r\n\r\n<p>Camera trước cũng sở hữu độ ph&acirc;n giải l&ecirc;n tới 13 MP, hỗ trợ lấy n&eacute;t tự động v&agrave; được t&iacute;ch hợp sẵn chế độ l&agrave;m đẹp mang lại những bức ảnh selfie chất lượng.</p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ</strong></h3>\r\n\r\n<p>Cấu h&igrave;nh cũng l&agrave; một n&acirc;ng cấp kh&aacute; đ&aacute;ng gi&aacute; của chiếc XZs với con chip&nbsp;<a href="https://www.thegioididong.com/hoi-dap/qualcomm-snapdragon-820-763732" target="_blank">Snapdragon 820 4 nh&acirc;n 64-bit</a>&nbsp;kết hợp với 4 GB RAM mang lại sự ổn định khi sử dụng trong thời gian d&agrave;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xzs12.jpg" style="width:100%" /><em>Cấu h&igrave;nh thoải m&aacute;i đ&aacute;p ứng mọi nhu cầu sử dụng của người d&ugrave;ng</em></p>\r\n\r\n<p>M&aacute;y cũng sở hữu bộ nhớ trong với dung lượng lớn 64 GB cho người d&ugrave;ng thoải m&aacute;i c&agrave;i đặt ứng dụng v&agrave; lưu trữ dữ liệu c&aacute; nh&acirc;n m&agrave; kh&ocirc;ng cần d&ugrave;ng th&ecirc;m&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai" target="_blank">thẻ nhớ</a>&nbsp;ngo&agrave;i.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh hiển thị đẹp</strong></h3>\r\n\r\n<p>Với k&iacute;ch thước m&agrave;n h&igrave;nh 5.2 inch c&ugrave;ng độ ph&acirc;n giải FullHD XZs mang lại cho bạn những h&igrave;nh ảnh sắc n&eacute;t v&agrave; ch&acirc;n thực.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xzs5.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh trung thực, g&oacute;c nh&igrave;n rộng</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/dtdd-sony" target="_blank">Sony</a>&nbsp;cũng trang bị cho m&aacute;y c&ocirc;ng nghệ&nbsp;TriLuminous gi&uacute;p bạn dễ d&agrave;ng theo d&otilde;i nội dung tr&ecirc;n m&agrave;n h&igrave;nh ngay cả dưới &aacute;nh s&aacute;ng mạnh.</p>\r\n\r\n<h3><strong>Android 7 Nougat</strong></h3>\r\n\r\n<p>Xperia XZs sẽ chạy tr&ecirc;n nền Android 7.0 c&ugrave;ng vi&ecirc;n pin 2.900 mAh, hỗ trợ c&ocirc;ng nghệ sạc nhanh XCharge.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xzs8(1).jpg" style="width:100%" /><em>Android mới, mang lại trải nghiệm mượt m&agrave;</em></p>\r\n\r\n<p>Với nhiều cải tiến mạnh mẽ cả về cấu h&igrave;nh lẫn camera th&igrave; Xperia XZs xứng đ&aacute;ng l&agrave; si&ecirc;u phẩm đ&aacute;ng sở hữu cho người d&ugrave;ng trong khoảng thời gian đầu năm 2017.</p>\r\n', '4', 1, 1, 0, 14990000, 14990000, '2017-05-23 22:01:06', '6', '2017-05-23 22:01:06', '6', 1, 1, 1, '', ''),
(28, 30, 'Điện thoại Sony Xperia XZ', 'dien-thoai-sony-xperia-xz', 'fcab91633b2ac8fb0a693a6d417e5df8.jpg', '6fea4b1000aba0f8a771dd9ce531d357.jpg', 'Sony Xperia XZ với thiết kế cực đẹp, cùng camera chất lượng hơn, nhiều tính năng tiện ích hơn.', '<h3><strong>Thiết kế sang trọng</strong></h3>\r\n\r\n<p>Cải tiến hơn so với thiết kế truyền thống của d&ograve;ng Xperia,&nbsp;<a href="https://www.thegioididong.com/dtdd/sony-xperia-xz" target="_blank">Sony Xperia XZ</a>&nbsp;mang tr&ecirc;n m&igrave;nh diện mạo mới - đẹp hơn, sang trọng hơn.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xz8.png" style="width:100%" /></p>\r\n\r\n<p><em>Xperia XZ với nhiều m&agrave;u sắc để lựa chọn</em></p>\r\n\r\n<p>Sony Xperia XZ được trang bị c&ocirc;ng nghệ m&agrave;n h&igrave;nh TRILUMINOSTM k&iacute;ch thước 5.2 inch c&ugrave;ng độ ph&acirc;n giải FullHD gi&uacute;p h&igrave;nh ảnh hiển thị tốt, m&agrave;u sắc trung thực v&agrave; thời lượng pin được tăng cường đ&aacute;ng kể nhờ m&agrave;n h&igrave;nh kh&ocirc;ng qu&aacute; to.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xz2-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Thiết kế sang trọng</em></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh mạnh mẽ</strong></h3>\r\n\r\n<p>Mang tr&ecirc;n m&igrave;nh vi xử l&yacute; mới nhất Snapdragon 820 4 nh&acirc;n 64-bit chip đồ họa Adreno 530, bộ nhớ RAM 3 GB c&ugrave;ng 64 GB bộ nhớ trong. Cấu h&igrave;nh mạnh mẽ gi&uacute;p Xepria XZ xử l&yacute; c&aacute;c t&aacute;c vụ đa nhiệm tốt, chơi c&aacute;c game với đồ họa cao.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xz1.png" style="width:100%" /></p>\r\n\r\n<p><em>Sử dụng chip Snapdragon 820 mạnh mẽ</em></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, m&aacute;y c&ograve;n c&oacute; khe cắm mở rộng với thẻ MicroSD hỗ trợ tối đa 256 GB, kết nối 4G LTE Cat 9 với tốc độ cực nhanh, hệ điều h&agrave;nh mới Android 6.0 (Marshmallow) ổn định, bảo mật v&agrave; nhiều tiện &iacute;ch.</p>\r\n\r\n<h3><strong>M&aacute;y ảnh tốt</strong></h3>\r\n\r\n<p>Với cảm biến ảnh 23 MP c&ugrave;ng nhiều c&ocirc;ng nghệ ti&ecirc;n tiến như chống rung 5 trục, lấy n&eacute;t bằng laser... Sony Xperia XZ thực sự trở th&agrave;nh một thiết bị nhiếp ảnh di động chuy&ecirc;n nghiệp. H&igrave;nh ảnh chụp từ Xperia XZ c&oacute; độ ph&acirc;n giải tốt, lấy n&eacute;t nhanh c&ugrave;ng nhiều t&iacute;nh năng độc đ&aacute;o.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xz4-1.jpg" style="width:100%" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;Camera trước 13 MP hỗ trợ chụp ảnh ngược s&aacute;ng HDR, selfie g&oacute;c rộng...</p>\r\n\r\n<h3><strong>Giải tr&iacute; ấn tượng</strong></h3>\r\n\r\n<p>Sony Xperia XZ trang bị c&ocirc;ng nghệ &acirc;m thanh Hi-res Audio gi&uacute;p trải nghiệm &acirc;m thanh trung thực v&agrave; sống động hơn.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-xz11.png" style="width:100%" /></p>\r\n\r\n<p><em>Xperia XZ với khả năng chống nước, chống bụi tốt.</em></p>\r\n\r\n<p>Ngo&agrave;i ra XZ c&ograve;n trang bị khả năng chống nước, chống bụi hiệu quả c&ugrave;ng cảm biến v&acirc;n tay t&iacute;ch hợp ở ph&iacute;m Home.</p>\r\n', '4', 10, 10, 0, 12990000, 12990000, '2017-05-23 22:05:42', '6', '2017-05-23 22:05:42', '6', 1, 1, 1, '', '');
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(29, 30, 'Điện thoại Sony Xperia X', 'dien-thoai-sony-xperia-x', '16c943bc42d8bf484f95c4404bbcffe5.jpg', '2b87e99a382f31316c923bb70e6b9e22.jpg#8cbb19076ca1d556ae727ee8ed620b28.jpg#e8a4edfa703003b5dd6bc0e143205274.jpg', 'Sony vừa giới thiệu dòng sản phẩm X Serie mới của hãng trong năm 2016 tại triển lãm MWC. Xperia X là chiếc smartphone tầm trung mới với nhiều điểm nhấn đáng chú ý.', '<h3><strong>Thiết kế đối xứng mạnh mẽ</strong></h3>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-x1-1.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Nhiều m&agrave;u sắc được giới thiệu</em></p>\r\n\r\n<p>Sony Xperia X vẫn mang trong m&igrave;nh b&oacute;ng d&aacute;ng của c&aacute;c anh em d&ograve;ng Z Series với phong c&aacute;ch thiết kế omibaland quen thuộc. M&aacute;y tr&ocirc;ng vẫn rất sang trọng đ&uacute;ng phong c&aacute;ch rất &ldquo;Sony&rdquo;. Ch&uacute;ng ta sẽ c&oacute; phần ph&iacute;a tr&ecirc;n v&agrave; ph&iacute;a dưới m&agrave;n h&igrave;nh đối xứng nhau về độ rộng của viền m&agrave;n h&igrave;nh cũng như vị tr&iacute; đặt loa ngo&agrave;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-x3.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Xperia X mang triết l&yacute; thiết kế mới của Sony</em></p>\r\n\r\n<p>Sony đ&atilde; ch&uacute; &yacute; hơn tới trải nghiệm của người d&ugrave;ng với phong c&aacute;ch thiết kế đồng m&agrave;u cho c&aacute;c bộ phận tr&ecirc;n m&aacute;y. Ch&uacute;ng ta sẽ c&oacute; một chiếc Xperia X c&oacute; m&agrave;u mặt lưng, m&agrave;u khung viền v&agrave; m&agrave;u mặt trước như nhau. Việc thiết kế đồng m&agrave;u c&aacute;c chi tiết như vậy sẽ l&agrave;m cho chiếc Xperia X tr&ocirc;ng nổi bật v&agrave; bắt mắt hơn trong mắt người d&ugrave;ng.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-x5.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Xperia X vẫn sử dụng cổng kết nối&nbsp;<a href="https://www.thegioididong.com/cap-dien-thoai/cap-micro-usb-x-mobile" target="_blank">Micro USB</a></em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-x6.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Ph&iacute;m nguồn t&iacute;ch hợp cảm biến v&acirc;n tay</em></p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-x7.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Logo Xperia ở mặt lưng</em></p>\r\n\r\n<p>Nh&igrave;n chung th&igrave; thiết kế của Sony chưa bao giờ khiến người d&ugrave;ng phải thất vọng khi sở hữu c&aacute;c thiết bị Xperia v&agrave; Xperia X cũng l&agrave; một tuyệt t&aacute;c về thiết kế.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh sắc n&eacute;t</strong></h3>\r\n\r\n<p>Xperia X sở hữu m&agrave;n h&igrave;nh 5 inch Full HD tấm nền IPS LCD cho chất lượng hiển thị rất tốt. Sony vẫn trang bị cho Xperia X đầy đủ c&aacute;c t&iacute;nh năng cải thiện h&igrave;nh ảnh độc quyền của h&atilde;ng c&ugrave;ng c&ocirc;ng nghệ triluminos display.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-x4.jpg" style="width:100%" /></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh 5 inch&nbsp;<a href="https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd" target="_blank">Full HD</a></em></p>\r\n\r\n<p>Viền m&agrave;n h&igrave;nh của m&aacute;y cũng được l&agrave;m cong dạng 2.5D cho thao t&aacute;c vuốt từ c&aacute;c cạnh m&agrave;n h&igrave;nh thoải m&aacute;i hơn. Trải nghiệm thực tế với m&agrave;n h&igrave;nh của Xperia X th&igrave; m&aacute;y thể hiện m&agrave;u sắc kh&aacute; trung thực, kh&ocirc;ng bị &aacute;m v&agrave;ng hay &aacute;m xanh như c&aacute;c&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">smartphone</a>&nbsp;kh&aacute;c. G&oacute;c nh&igrave;n của m&aacute;y cũng kh&aacute; tốt với độ s&aacute;ng kh&aacute; cao v&agrave; c&oacute; thể thoải m&aacute;i sử dụng ngo&agrave;i trời.</p>\r\n\r\n<h3><strong>Camera c&oacute; chất lượng tốt</strong></h3>\r\n\r\n<p>Xperia X được trang bị camera ch&iacute;nh c&oacute; độ ph&acirc;n giải l&ecirc;n tới 23 MP c&ugrave;ng t&iacute;nh năng lấy n&eacute;t lại cực nhanh tới từ Sony. Xperia X cũng c&oacute; khả năng khởi động nhanh camera từ m&agrave;n h&igrave;nh kh&oacute;a với việc bấm v&agrave; giữ ph&iacute;m chụp h&igrave;nh nhanh ở cạnh phải của m&aacute;y th&igrave; camera sẽ khởi động l&ecirc;n chỉ trong 0.6 s.</p>\r\n\r\n<p>camera selfie tr&ecirc;n Xperia X c&oacute; độ ph&acirc;n giải l&ecirc;n tới 13 MP c&ugrave;ng nhiều t&iacute;nh năng chụp ảnh độc quyền của Sony. Xperia X c&oacute; thể quay video độ ph&acirc;n giải Full HD với camera trước v&agrave; hỗ trợ gọi VideoCall th&ocirc;ng qua ứng dụng OTT.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nh&igrave;n chung th&igrave; bộ đ&ocirc;i camera tr&ecirc;n Xperia X c&oacute; chất lượng rất tốt, m&aacute;y lấy n&eacute;t nhanh cũng như ảnh chụp c&oacute; chi tiết cao. Xperia X l&agrave;m tốt trong hầu hết c&aacute;c điều kiện &aacute;nh s&aacute;ng v&agrave; ho&agrave;n to&agrave;n c&oacute; thể đ&aacute;p ứng cho bạn nhu cầu chụp ảnh tr&ecirc;n smartphone.</p>\r\n\r\n<p><strong>Cấu h&igrave;nh tốt</strong></p>\r\n\r\n<p>Mang trong m&igrave;nh con chip Snapdragon 650 6 nh&acirc;n 64-bit c&ugrave;ng chip đồ họa&nbsp;<a href="https://www.thegioididong.com/hoi-dap/qualcomm-snapdragon-620-la-bo-vi-xu-ly-tam-trung-m-721996#andreno510" target="_blank">Adreno 510</a>&nbsp;th&igrave; Xperia X c&oacute; thể đ&aacute;p ứng cho bạn mọi nhu cầu sử dụng từ cơ bản đến n&acirc;ng cao. Ngo&agrave;i ra m&aacute;y c&ograve;n được trang bị 3 GB RAM c&ugrave;ng 64 GB bộ nhớ trong cho kh&ocirc;ng gian lưu trữ thoải m&aacute;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/sony-xperia-x8.jpg" style="width:100%" /></p>\r\n\r\n<p><em>Hiệu năng mượt m&agrave;</em></p>\r\n\r\n<p>Qua một số trải nghiệm th&igrave; Xperia X ho&agrave;n th&agrave;nh tốt c&aacute;c t&aacute;c vụ như chơi game c&oacute; đồ họa cao hay xem c&aacute;c bộ phim c&oacute; độ ph&acirc;n giải lớn. M&aacute;y cũng hỗ trợ khe cắm thẻ nhớ&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai" target="_blank">MicroSD (T-Flash)</a>&nbsp;l&ecirc;n tới 200 GB.</p>\r\n\r\n<p>Sony Xperia X thực sự l&agrave; sự lựa chọn tốt cho người d&ugrave;ng ở ph&acirc;n kh&uacute;c tầm trung</p>\r\n', '4', 100, 100, 0, 7990000, 7990000, '2017-05-23 22:10:15', '6', '2017-05-23 22:10:15', '6', 1, 1, 1, '', ''),
(38, 24, 'Điện thoại iPhone 7 Plus 256GB', 'dien-thoai-iphone-7-plus-256gb', 'ef24e85b330599c65624d9e83a6acf2a.jpg', 'e358c30094698795a04de5eb303569f7.jpg#104a00929c2c1548397f20982e35b412.jpg#b9442c3921deb69e5a3d14cec30a112d.jpg', 'Với thiết kế không quá nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus,  iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh.', '<h2><strong>Với thiết kế kh&ocirc;ng qu&aacute; nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6-plus-64gb" target="_blank">iPhone 6 Plus</a>, &nbsp;iPhone 7 Plus&nbsp;được trang bị nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; như camera k&eacute;p, đạt chuẩn chống nước chống bụi c&ugrave;ng cấu h&igrave;nh cực mạnh.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb1-1.jpg" style="width:100%" /><br />\r\nThay đổi d&atilde;y nhựa an-ten bắt s&oacute;ng được đưa v&ograve;ng l&ecirc;n tr&ecirc;n thay v&igrave; cắt ngang ở mặt lưng như trước.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb2-1.jpg" style="width:100%" /><br />\r\nN&uacute;t Home quen thuộc kh&ocirc;ng c&ograve;n l&agrave; ph&iacute;m vật l&yacute; nữa m&agrave; được thay thế bằng cảm ứng, n&oacute; sẽ rung l&ecirc;n khi bạn ấn. V&igrave; đ&atilde; d&ugrave;ng iPhone một thời gian rất d&agrave;i, n&ecirc;n t&ocirc;i c&ocirc;ng nhận rằng hơi kh&oacute; để l&agrave;m quen với n&oacute;, nhưng c&oacute; lẽ chỉ mất v&agrave;i ng&agrave;y th&ocirc;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb3-1.jpg" style="width:100%" /><br />\r\nCuối c&ugrave;ng ch&uacute;ng ta cũng c&oacute; được chiếc iPhone vẫn sống khi rơi v&agrave;o nước hay đi mưa kh&ocirc;ng cần phải loay hoay t&igrave;m chỗ cất v&igrave; Apple đ&atilde; mang chuẩn chống nước IP67 cho iphone 7 plus .(Lưu &yacute;: kh&ocirc;ng n&ecirc;n cố t&igrave;nh ng&acirc;m nước v&igrave; nếu c&oacute; thiệt hại do v&agrave;o nước sẽ kh&ocirc;ng được Apple bảo h&agrave;nh).</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb4-1.jpg" style="width:100%" /><br />\r\nM&agrave;n h&igrave;nh Retina tr&ecirc;n 7 Plus hỗ trợ DCI-P3 gam m&agrave;u rộng, nghĩa l&agrave; ch&uacute;ng c&oacute; khả năng t&aacute;i tạo m&agrave;u sắc trong phạm vi của sRGB. N&oacute;i đơn giản, ch&uacute;ng c&oacute; thể hiển thị sống động hơn, sắc th&aacute;i h&igrave;nh ảnh tốt hơn trước đ&oacute;. Độ ph&acirc;n giải, mật độ điểm ảnh v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh vẫn giữ nguy&ecirc;n so với iPhone 6s Plus.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb5-1.jpg" style="width:100%" /><br />\r\nLần đầu ti&ecirc;n iPhone xuất hiện t&iacute;nh năng &acirc;m thanh Stereo. Phim ảnh, podcast v&agrave; c&aacute;c cuộc gọi loa ngo&agrave;i b&acirc;y giờ &acirc;m thanh r&otilde; r&agrave;ng hơn rất nhiều. Đ&oacute; l&agrave; do Apple đ&atilde; d&ugrave;ng c&ocirc;ng nghệ thiết lập loa chứ kh&ocirc;ng phải thiết kế 2 loa ngay tr&ecirc;n mặt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb6-.jpg" style="width:100%" /></p>\r\n\r\n<p>iPhone 7 Plus l&agrave;&nbsp;chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau. Camera th&ocirc;ng thường vẫn chụp h&igrave;nh g&oacute;c rộng, c&ograve;n camera thứ hai c&oacute; ti&ecirc;u cự ph&ugrave; hợp để chụp ch&acirc;n dung, c&oacute; t&iacute;nh năng chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng (l&agrave;m mờ hậu cảnh).&nbsp;</p>\r\n\r\n<p>Với 1 chạm nhanh ch&oacute;ng bạn c&oacute; thể chuyển đổi giữa chế độ 1x v&agrave; zoom 2x, hoặc bạn c&oacute; thể k&eacute;o thanh trượt hay d&ugrave;ng 2 ng&oacute;n tay đến zoom. Apple đ&atilde; th&ecirc;m t&iacute;nh năng zoom kỹ thuật số l&ecirc;n đến 10x.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb8-1.jpg" style="width:100%" /><br />\r\nĐiểm nhấn ấn tượng nhất nằm ở mặt lưng của sản phẩm với hiệu ứng phản chiếu &aacute;nh s&aacute;ng khi thay đổi g&oacute;c nh&igrave;n rất đặc biệt. Hiệu ứng n&agrave;y cũng được &aacute;p dụng cho to&agrave;n bộ khung m&aacute;y, từ cạnh tr&ecirc;n, cạnh dưới cho đến c&aacute;c n&uacute;t bấm n&ecirc;n cho cảm gi&aacute;c một thiết bị cực kỳ ho&agrave;n thiện, gần như kh&ocirc;ng c&oacute; bất kỳ một chi tiết thừa n&agrave;o cả.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb9.jpg" style="width:100%" /></p>\r\n\r\n<p>Ngo&agrave;i tr&aacute;i tim&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">Apple A10 Fusion 4 nh&acirc;n</a>&nbsp;với hiệu năng cực k&igrave; mạnh mẽ v&agrave; ấn tượng th&igrave; iPhone 7 Plus c&ograve;n được trang bị hệ điều h&agrave;nh mới nhất IOS 10 với nhiều t&iacute;nh năng bất ngờ, v&agrave; th&uacute; vị.</p>\r\n\r\n<p>&ldquo;T&aacute;o khuyết&rdquo; cũng kh&ocirc;ng qu&ecirc;n nhấn mạnh iPhone 7 Plus sẽ nhanh hơn iPhone đời đầu tới&hellip; 140 lần. Những ai m&ecirc; chơi game tr&ecirc;n di động cũng sẽ &ldquo;phải l&ograve;ng&rdquo; iPhone mới khi c&oacute; chip xử l&yacute; đồ họa được n&acirc;ng tầm đ&uacute;ng chất &ldquo;m&aacute;y chơi game&rdquo;.</p>\r\n\r\n<p>Camera trước n&acirc;ng cấp độ ph&acirc;n giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiệu thiếu s&aacute;ng tuyệt vời với c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-tinh-nang-chup-anh-camera-truoc-769270#retinaflash" target="_blank">Retina Flash</a>, Auto HDR</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb10.jpg" style="width:100%" /></p>\r\n\r\n<p>Iphone 7 plus theo bản th&acirc;n đ&aacute;nh gi&aacute; l&agrave; một sự lựa chọn hợp l&yacute; trong tầm gi&aacute;:</p>\r\n\r\n<ul>\r\n	<li><strong>Ưu điểm:</strong>\r\n\r\n	<ul>\r\n		<li>Hiệu năng rất cao</li>\r\n		<li>Camera trước sau rất tuyệt vời</li>\r\n		<li>Chống nước</li>\r\n		<li>Thời lượng pin tốt</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Nhược điểm:</strong>\r\n	<ul>\r\n		<li>Loại bỏ jack 3.5mm</li>\r\n		<li>Kh&ocirc;ng thay đổi thiết kế qu&aacute; nhiều mặc d&ugrave; đ&atilde; 3 năm</li>\r\n		<li>Ph&iacute;m Home cần thời gian để l&agrave;m quen</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '1', 100, 100, 0, 25990000, 25990000, '2017-05-23 18:51:26', '6', '2017-05-23 18:55:00', '6', 1, 1, 1, '', ''),
(58, 24, 'Điện thoại iPhone 7 Plus 256GB', 'dien-thoai-iphone-7-plus-256gb', 'ef24e85b330599c65624d9e83a6acf2a.jpg', 'e358c30094698795a04de5eb303569f7.jpg#104a00929c2c1548397f20982e35b412.jpg#b9442c3921deb69e5a3d14cec30a112d.jpg', 'Với thiết kế không quá nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus,  iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh.', '<h2><strong>Với thiết kế kh&ocirc;ng qu&aacute; nhiều thay đổi, vẫn bảo tồn vẻ đẹp truyền thống từ thời&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6-plus-64gb" target="_blank">iPhone 6 Plus</a>, &nbsp;iPhone 7 Plus&nbsp;được trang bị nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; như camera k&eacute;p, đạt chuẩn chống nước chống bụi c&ugrave;ng cấu h&igrave;nh cực mạnh.</strong></h2>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb1-1.jpg" style="width:100%" /><br />\r\nThay đổi d&atilde;y nhựa an-ten bắt s&oacute;ng được đưa v&ograve;ng l&ecirc;n tr&ecirc;n thay v&igrave; cắt ngang ở mặt lưng như trước.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb2-1.jpg" style="width:100%" /><br />\r\nN&uacute;t Home quen thuộc kh&ocirc;ng c&ograve;n l&agrave; ph&iacute;m vật l&yacute; nữa m&agrave; được thay thế bằng cảm ứng, n&oacute; sẽ rung l&ecirc;n khi bạn ấn. V&igrave; đ&atilde; d&ugrave;ng iPhone một thời gian rất d&agrave;i, n&ecirc;n t&ocirc;i c&ocirc;ng nhận rằng hơi kh&oacute; để l&agrave;m quen với n&oacute;, nhưng c&oacute; lẽ chỉ mất v&agrave;i ng&agrave;y th&ocirc;i.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb3-1.jpg" style="width:100%" /><br />\r\nCuối c&ugrave;ng ch&uacute;ng ta cũng c&oacute; được chiếc iPhone vẫn sống khi rơi v&agrave;o nước hay đi mưa kh&ocirc;ng cần phải loay hoay t&igrave;m chỗ cất v&igrave; Apple đ&atilde; mang chuẩn chống nước IP67 cho iphone 7 plus .(Lưu &yacute;: kh&ocirc;ng n&ecirc;n cố t&igrave;nh ng&acirc;m nước v&igrave; nếu c&oacute; thiệt hại do v&agrave;o nước sẽ kh&ocirc;ng được Apple bảo h&agrave;nh).</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb4-1.jpg" style="width:100%" /><br />\r\nM&agrave;n h&igrave;nh Retina tr&ecirc;n 7 Plus hỗ trợ DCI-P3 gam m&agrave;u rộng, nghĩa l&agrave; ch&uacute;ng c&oacute; khả năng t&aacute;i tạo m&agrave;u sắc trong phạm vi của sRGB. N&oacute;i đơn giản, ch&uacute;ng c&oacute; thể hiển thị sống động hơn, sắc th&aacute;i h&igrave;nh ảnh tốt hơn trước đ&oacute;. Độ ph&acirc;n giải, mật độ điểm ảnh v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh vẫn giữ nguy&ecirc;n so với iPhone 6s Plus.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb5-1.jpg" style="width:100%" /><br />\r\nLần đầu ti&ecirc;n iPhone xuất hiện t&iacute;nh năng &acirc;m thanh Stereo. Phim ảnh, podcast v&agrave; c&aacute;c cuộc gọi loa ngo&agrave;i b&acirc;y giờ &acirc;m thanh r&otilde; r&agrave;ng hơn rất nhiều. Đ&oacute; l&agrave; do Apple đ&atilde; d&ugrave;ng c&ocirc;ng nghệ thiết lập loa chứ kh&ocirc;ng phải thiết kế 2 loa ngay tr&ecirc;n mặt.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb6-.jpg" style="width:100%" /></p>\r\n\r\n<p>iPhone 7 Plus l&agrave;&nbsp;chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau. Camera th&ocirc;ng thường vẫn chụp h&igrave;nh g&oacute;c rộng, c&ograve;n camera thứ hai c&oacute; ti&ecirc;u cự ph&ugrave; hợp để chụp ch&acirc;n dung, c&oacute; t&iacute;nh năng chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng (l&agrave;m mờ hậu cảnh).&nbsp;</p>\r\n\r\n<p>Với 1 chạm nhanh ch&oacute;ng bạn c&oacute; thể chuyển đổi giữa chế độ 1x v&agrave; zoom 2x, hoặc bạn c&oacute; thể k&eacute;o thanh trượt hay d&ugrave;ng 2 ng&oacute;n tay đến zoom. Apple đ&atilde; th&ecirc;m t&iacute;nh năng zoom kỹ thuật số l&ecirc;n đến 10x.</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb8-1.jpg" style="width:100%" /><br />\r\nĐiểm nhấn ấn tượng nhất nằm ở mặt lưng của sản phẩm với hiệu ứng phản chiếu &aacute;nh s&aacute;ng khi thay đổi g&oacute;c nh&igrave;n rất đặc biệt. Hiệu ứng n&agrave;y cũng được &aacute;p dụng cho to&agrave;n bộ khung m&aacute;y, từ cạnh tr&ecirc;n, cạnh dưới cho đến c&aacute;c n&uacute;t bấm n&ecirc;n cho cảm gi&aacute;c một thiết bị cực kỳ ho&agrave;n thiện, gần như kh&ocirc;ng c&oacute; bất kỳ một chi tiết thừa n&agrave;o cả.&nbsp;</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb9.jpg" style="width:100%" /></p>\r\n\r\n<p>Ngo&agrave;i tr&aacute;i tim&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052" target="_blank">Apple A10 Fusion 4 nh&acirc;n</a>&nbsp;với hiệu năng cực k&igrave; mạnh mẽ v&agrave; ấn tượng th&igrave; iPhone 7 Plus c&ograve;n được trang bị hệ điều h&agrave;nh mới nhất IOS 10 với nhiều t&iacute;nh năng bất ngờ, v&agrave; th&uacute; vị.</p>\r\n\r\n<p>&ldquo;T&aacute;o khuyết&rdquo; cũng kh&ocirc;ng qu&ecirc;n nhấn mạnh iPhone 7 Plus sẽ nhanh hơn iPhone đời đầu tới&hellip; 140 lần. Những ai m&ecirc; chơi game tr&ecirc;n di động cũng sẽ &ldquo;phải l&ograve;ng&rdquo; iPhone mới khi c&oacute; chip xử l&yacute; đồ họa được n&acirc;ng tầm đ&uacute;ng chất &ldquo;m&aacute;y chơi game&rdquo;.</p>\r\n\r\n<p>Camera trước n&acirc;ng cấp độ ph&acirc;n giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiệu thiếu s&aacute;ng tuyệt vời với c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-tinh-nang-chup-anh-camera-truoc-769270#retinaflash" target="_blank">Retina Flash</a>, Auto HDR</p>\r\n\r\n<p><img alt="" src="/TTTN-Green/public/upload/iphone-7-plus-256gb10.jpg" style="width:100%" /></p>\r\n\r\n<p>Iphone 7 plus theo bản th&acirc;n đ&aacute;nh gi&aacute; l&agrave; một sự lựa chọn hợp l&yacute; trong tầm gi&aacute;:</p>\r\n\r\n<ul>\r\n	<li><strong>Ưu điểm:</strong>\r\n\r\n	<ul>\r\n		<li>Hiệu năng rất cao</li>\r\n		<li>Camera trước sau rất tuyệt vời</li>\r\n		<li>Chống nước</li>\r\n		<li>Thời lượng pin tốt</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Nhược điểm:</strong>\r\n	<ul>\r\n		<li>Loại bỏ jack 3.5mm</li>\r\n		<li>Kh&ocirc;ng thay đổi thiết kế qu&aacute; nhiều mặc d&ugrave; đ&atilde; 3 năm</li>\r\n		<li>Ph&iacute;m Home cần thời gian để l&agrave;m quen</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '1', 100, 100, 0, 25990000, 25990000, '2017-05-23 18:51:26', '6', '2017-05-23 18:55:00', '6', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_quanhuyen`
--

CREATE TABLE IF NOT EXISTS `db_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_quanhuyen`
--

INSERT INTO `db_quanhuyen` (`maqh`, `name`, `type`, `matp`) VALUES
('1', 'Quận Ba Đình', 'Quận', '1'),
('10', 'Huyện Sóc Sơn', 'Huyện', '1'),
('100', 'Huyện Điện Biên', 'Huyện', '11'),
('101', 'Huyện Điện Biên Đông', 'Huyện', '11'),
('102', 'Huyện Mường Ảng', 'Huyện', '11'),
('103', 'Huyện Nậm Pồ', 'Huyện', '11'),
('105', 'Thành phố Lai Châu', 'Thành phố', '12'),
('106', 'Huyện Tam Đường', 'Huyện', '12'),
('107', 'Huyện Mường Tè', 'Huyện', '12'),
('108', 'Huyện Sìn Hồ', 'Huyện', '12'),
('109', 'Huyện Phong Thổ', 'Huyện', '12'),
('11', 'Huyện Đông Anh', 'Huyện', '1'),
('110', 'Huyện Than Uyên', 'Huyện', '12'),
('111', 'Huyện Tân Uyên', 'Huyện', '12'),
('112', 'Huyện Nậm Nhùn', 'Huyện', '12'),
('116', 'Thành phố Sơn La', 'Thành phố', '14'),
('118', 'Huyện Quỳnh Nhai', 'Huyện', '14'),
('119', 'Huyện Thuận Châu', 'Huyện', '14'),
('120', 'Huyện Mường La', 'Huyện', '14'),
('121', 'Huyện Bắc Yên', 'Huyện', '14'),
('122', 'Huyện Phù Yên', 'Huyện', '14'),
('123', 'Huyện Mộc Châu', 'Huyện', '14'),
('124', 'Huyện Yên Châu', 'Huyện', '14'),
('125', 'Huyện Mai Sơn', 'Huyện', '14'),
('126', 'Huyện Sông Mã', 'Huyện', '14'),
('127', 'Huyện Sốp Cộp', 'Huyện', '14'),
('128', 'Huyện Vân Hồ', 'Huyện', '14'),
('132', 'Thành phố Yên Bái', 'Thành phố', '15'),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', '15'),
('135', 'Huyện Lục Yên', 'Huyện', '15'),
('136', 'Huyện Văn Yên', 'Huyện', '15'),
('137', 'Huyện Mù Căng Chải', 'Huyện', '15'),
('138', 'Huyện Trấn Yên', 'Huyện', '15'),
('139', 'Huyện Trạm Tấu', 'Huyện', '15'),
('140', 'Huyện Văn Chấn', 'Huyện', '15'),
('141', 'Huyện Yên Bình', 'Huyện', '15'),
('148', 'Thành phố Hòa Bình', 'Thành phố', '17'),
('150', 'Huyện Đà Bắc', 'Huyện', '17'),
('151', 'Huyện Kỳ Sơn', 'Huyện', '17'),
('152', 'Huyện Lương Sơn', 'Huyện', '17'),
('153', 'Huyện Kim Bôi', 'Huyện', '17'),
('154', 'Huyện Cao Phong', 'Huyện', '17'),
('155', 'Huyện Tân Lạc', 'Huyện', '17'),
('156', 'Huyện Mai Châu', 'Huyện', '17'),
('157', 'Huyện Lạc Sơn', 'Huyện', '17'),
('158', 'Huyện Yên Thủy', 'Huyện', '17'),
('159', 'Huyện Lạc Thủy', 'Huyện', '17'),
('164', 'Thành phố Thái Nguyên', 'Thành phố', '19'),
('165', 'Thành phố Sông Công', 'Thành phố', '19'),
('167', 'Huyện Định Hóa', 'Huyện', '19'),
('168', 'Huyện Phú Lương', 'Huyện', '19'),
('169', 'Huyện Đồng Hỷ', 'Huyện', '19'),
('170', 'Huyện Võ Nhai', 'Huyện', '19'),
('171', 'Huyện Đại Từ', 'Huyện', '19'),
('172', 'Thị xã Phổ Yên', 'Thị xã', '19'),
('173', 'Huyện Phú Bình', 'Huyện', '19'),
('178', 'Thành phố Lạng Sơn', 'Thành phố', '20'),
('18', 'Huyện Gia Lâm', 'Huyện', '1'),
('180', 'Huyện Tràng Định', 'Huyện', '20'),
('181', 'Huyện Bình Gia', 'Huyện', '20'),
('182', 'Huyện Văn Lãng', 'Huyện', '20'),
('183', 'Huyện Cao Lộc', 'Huyện', '20'),
('184', 'Huyện Văn Quan', 'Huyện', '20'),
('185', 'Huyện Bắc Sơn', 'Huyện', '20'),
('186', 'Huyện Hữu Lũng', 'Huyện', '20'),
('187', 'Huyện Chi Lăng', 'Huyện', '20'),
('188', 'Huyện Lộc Bình', 'Huyện', '20'),
('189', 'Huyện Đình Lập', 'Huyện', '20'),
('19', 'Quận Nam Từ Liêm', 'Quận', '1'),
('193', 'Thành phố Hạ Long', 'Thành phố', '22'),
('194', 'Thành phố Móng Cái', 'Thành phố', '22'),
('195', 'Thành phố Cẩm Phả', 'Thành phố', '22'),
('196', 'Thành phố Uông Bí', 'Thành phố', '22'),
('198', 'Huyện Bình Liêu', 'Huyện', '22'),
('199', 'Huyện Tiên Yên', 'Huyện', '22'),
('2', 'Quận Hoàn Kiếm', 'Quận', '1'),
('20', 'Huyện Thanh Trì', 'Huyện', '1'),
('200', 'Huyện Đầm Hà', 'Huyện', '22'),
('201', 'Huyện Hải Hà', 'Huyện', '22'),
('202', 'Huyện Ba Chẽ', 'Huyện', '22'),
('203', 'Huyện Vân Đồn', 'Huyện', '22'),
('204', 'Huyện Hoành Bồ', 'Huyện', '22'),
('205', 'Thị xã Đông Triều', 'Thị xã', '22'),
('206', 'Thị xã Quảng Yên', 'Thị xã', '22'),
('207', 'Huyện Cô Tô', 'Huyện', '22'),
('21', 'Quận Bắc Từ Liêm', 'Quận', '1'),
('213', 'Thành phố Bắc Giang', 'Thành phố', '24'),
('215', 'Huyện Yên Thế', 'Huyện', '24'),
('216', 'Huyện Tân Yên', 'Huyện', '24'),
('217', 'Huyện Lạng Giang', 'Huyện', '24'),
('218', 'Huyện Lục Nam', 'Huyện', '24'),
('219', 'Huyện Lục Ngạn', 'Huyện', '24'),
('220', 'Huyện Sơn Động', 'Huyện', '24'),
('221', 'Huyện Yên Dũng', 'Huyện', '24'),
('222', 'Huyện Việt Yên', 'Huyện', '24'),
('223', 'Huyện Hiệp Hòa', 'Huyện', '24'),
('227', 'Thành phố Việt Trì', 'Thành phố', '25'),
('228', 'Thị xã Phú Thọ', 'Thị xã', '25'),
('230', 'Huyện Đoan Hùng', 'Huyện', '25'),
('231', 'Huyện Hạ Hoà', 'Huyện', '25'),
('232', 'Huyện Thanh Ba', 'Huyện', '25'),
('233', 'Huyện Phù Ninh', 'Huyện', '25'),
('234', 'Huyện Yên Lập', 'Huyện', '25'),
('235', 'Huyện Cẩm Khê', 'Huyện', '25'),
('236', 'Huyện Tam Nông', 'Huyện', '25'),
('237', 'Huyện Lâm Thao', 'Huyện', '25'),
('238', 'Huyện Thanh Sơn', 'Huyện', '25'),
('239', 'Huyện Thanh Thuỷ', 'Huyện', '25'),
('24', 'Thành phố Hà Giang', 'Thành phố', '2'),
('240', 'Huyện Tân Sơn', 'Huyện', '25'),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', '26'),
('244', 'Thị xã Phúc Yên', 'Thị xã', '26'),
('246', 'Huyện Lập Thạch', 'Huyện', '26'),
('247', 'Huyện Tam Dương', 'Huyện', '26'),
('248', 'Huyện Tam Đảo', 'Huyện', '26'),
('249', 'Huyện Bình Xuyên', 'Huyện', '26'),
('250', 'Huyện Mê Linh', 'Huyện', '1'),
('251', 'Huyện Yên Lạc', 'Huyện', '26'),
('252', 'Huyện Vĩnh Tường', 'Huyện', '26'),
('253', 'Huyện Sông Lô', 'Huyện', '26'),
('256', 'Thành phố Bắc Ninh', 'Thành phố', '27'),
('258', 'Huyện Yên Phong', 'Huyện', '27'),
('259', 'Huyện Quế Võ', 'Huyện', '27'),
('26', 'Huyện Đồng Văn', 'Huyện', '2'),
('260', 'Huyện Tiên Du', 'Huyện', '27'),
('261', 'Thị xã Từ Sơn', 'Thị xã', '27'),
('262', 'Huyện Thuận Thành', 'Huyện', '27'),
('263', 'Huyện Gia Bình', 'Huyện', '27'),
('264', 'Huyện Lương Tài', 'Huyện', '27'),
('268', 'Quận Hà Đông', 'Quận', '1'),
('269', 'Thị xã Sơn Tây', 'Thị xã', '1'),
('27', 'Huyện Mèo Vạc', 'Huyện', '2'),
('271', 'Huyện Ba Vì', 'Huyện', '1'),
('272', 'Huyện Phúc Thọ', 'Huyện', '1'),
('273', 'Huyện Đan Phượng', 'Huyện', '1'),
('274', 'Huyện Hoài Đức', 'Huyện', '1'),
('275', 'Huyện Quốc Oai', 'Huyện', '1'),
('276', 'Huyện Thạch Thất', 'Huyện', '1'),
('277', 'Huyện Chương Mỹ', 'Huyện', '1'),
('278', 'Huyện Thanh Oai', 'Huyện', '1'),
('279', 'Huyện Thường Tín', 'Huyện', '1'),
('28', 'Huyện Yên Minh', 'Huyện', '2'),
('280', 'Huyện Phú Xuyên', 'Huyện', '1'),
('281', 'Huyện Ứng Hòa', 'Huyện', '1'),
('282', 'Huyện Mỹ Đức', 'Huyện', '1'),
('288', 'Thành phố Hải Dương', 'Thành phố', '30'),
('29', 'Huyện Quản Bạ', 'Huyện', '2'),
('290', 'Thị xã Chí Linh', 'Thị xã', '30'),
('291', 'Huyện Nam Sách', 'Huyện', '30'),
('292', 'Huyện Kinh Môn', 'Huyện', '30'),
('293', 'Huyện Kim Thành', 'Huyện', '30'),
('294', 'Huyện Thanh Hà', 'Huyện', '30'),
('295', 'Huyện Cẩm Giàng', 'Huyện', '30'),
('296', 'Huyện Bình Giang', 'Huyện', '30'),
('297', 'Huyện Gia Lộc', 'Huyện', '30'),
('298', 'Huyện Tứ Kỳ', 'Huyện', '30'),
('299', 'Huyện Ninh Giang', 'Huyện', '30'),
('3', 'Quận Tây Hồ', 'Quận', '1'),
('30', 'Huyện Vị Xuyên', 'Huyện', '2'),
('300', 'Huyện Thanh Miện', 'Huyện', '30'),
('303', 'Quận Hồng Bàng', 'Quận', '31'),
('304', 'Quận Ngô Quyền', 'Quận', '31'),
('305', 'Quận Lê Chân', 'Quận', '31'),
('306', 'Quận Hải An', 'Quận', '31'),
('307', 'Quận Kiến An', 'Quận', '31'),
('308', 'Quận Đồ Sơn', 'Quận', '31'),
('309', 'Quận Dương Kinh', 'Quận', '31'),
('31', 'Huyện Bắc Mê', 'Huyện', '2'),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', '31'),
('312', 'Huyện An Dương', 'Huyện', '31'),
('313', 'Huyện An Lão', 'Huyện', '31'),
('314', 'Huyện Kiến Thuỵ', 'Huyện', '31'),
('315', 'Huyện Tiên Lãng', 'Huyện', '31'),
('316', 'Huyện Vĩnh Bảo', 'Huyện', '31'),
('317', 'Huyện Cát Hải', 'Huyện', '31'),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', '31'),
('32', 'Huyện Hoàng Su Phì', 'Huyện', '2'),
('323', 'Thành phố Hưng Yên', 'Thành phố', '33'),
('325', 'Huyện Văn Lâm', 'Huyện', '33'),
('326', 'Huyện Văn Giang', 'Huyện', '33'),
('327', 'Huyện Yên Mỹ', 'Huyện', '33'),
('328', 'Huyện Mỹ Hào', 'Huyện', '33'),
('329', 'Huyện Ân Thi', 'Huyện', '33'),
('33', 'Huyện Xín Mần', 'Huyện', '2'),
('330', 'Huyện Khoái Châu', 'Huyện', '33'),
('331', 'Huyện Kim Động', 'Huyện', '33'),
('332', 'Huyện Tiên Lữ', 'Huyện', '33'),
('333', 'Huyện Phù Cừ', 'Huyện', '33'),
('336', 'Thành phố Thái Bình', 'Thành phố', '34'),
('338', 'Huyện Quỳnh Phụ', 'Huyện', '34'),
('339', 'Huyện Hưng Hà', 'Huyện', '34'),
('34', 'Huyện Bắc Quang', 'Huyện', '2'),
('340', 'Huyện Đông Hưng', 'Huyện', '34'),
('341', 'Huyện Thái Thụy', 'Huyện', '34'),
('342', 'Huyện Tiền Hải', 'Huyện', '34'),
('343', 'Huyện Kiến Xương', 'Huyện', '34'),
('344', 'Huyện Vũ Thư', 'Huyện', '34'),
('347', 'Thành phố Phủ Lý', 'Thành phố', '35'),
('349', 'Huyện Duy Tiên', 'Huyện', '35'),
('35', 'Huyện Quang Bình', 'Huyện', '2'),
('350', 'Huyện Kim Bảng', 'Huyện', '35'),
('351', 'Huyện Thanh Liêm', 'Huyện', '35'),
('352', 'Huyện Bình Lục', 'Huyện', '35'),
('353', 'Huyện Lý Nhân', 'Huyện', '35'),
('356', 'Thành phố Nam Định', 'Thành phố', '36'),
('358', 'Huyện Mỹ Lộc', 'Huyện', '36'),
('359', 'Huyện Vụ Bản', 'Huyện', '36'),
('360', 'Huyện Ý Yên', 'Huyện', '36'),
('361', 'Huyện Nghĩa Hưng', 'Huyện', '36'),
('362', 'Huyện Nam Trực', 'Huyện', '36'),
('363', 'Huyện Trực Ninh', 'Huyện', '36'),
('364', 'Huyện Xuân Trường', 'Huyện', '36'),
('365', 'Huyện Giao Thủy', 'Huyện', '36'),
('366', 'Huyện Hải Hậu', 'Huyện', '36'),
('369', 'Thành phố Ninh Bình', 'Thành phố', '37'),
('370', 'Thành phố Tam Điệp', 'Thành phố', '37'),
('372', 'Huyện Nho Quan', 'Huyện', '37'),
('373', 'Huyện Gia Viễn', 'Huyện', '37'),
('374', 'Huyện Hoa Lư', 'Huyện', '37'),
('375', 'Huyện Yên Khánh', 'Huyện', '37'),
('376', 'Huyện Kim Sơn', 'Huyện', '37'),
('377', 'Huyện Yên Mô', 'Huyện', '37'),
('380', 'Thành phố Thanh Hóa', 'Thành phố', '38'),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', '38'),
('382', 'Thị xã Sầm Sơn', 'Thị xã', '38'),
('384', 'Huyện Mường Lát', 'Huyện', '38'),
('385', 'Huyện Quan Hóa', 'Huyện', '38'),
('386', 'Huyện Bá Thước', 'Huyện', '38'),
('387', 'Huyện Quan Sơn', 'Huyện', '38'),
('388', 'Huyện Lang Chánh', 'Huyện', '38'),
('389', 'Huyện Ngọc Lặc', 'Huyện', '38'),
('390', 'Huyện Cẩm Thủy', 'Huyện', '38'),
('391', 'Huyện Thạch Thành', 'Huyện', '38'),
('392', 'Huyện Hà Trung', 'Huyện', '38'),
('393', 'Huyện Vĩnh Lộc', 'Huyện', '38'),
('394', 'Huyện Yên Định', 'Huyện', '38'),
('395', 'Huyện Thọ Xuân', 'Huyện', '38'),
('396', 'Huyện Thường Xuân', 'Huyện', '38'),
('397', 'Huyện Triệu Sơn', 'Huyện', '38'),
('398', 'Huyện Thiệu Hóa', 'Huyện', '38'),
('399', 'Huyện Hoằng Hóa', 'Huyện', '38'),
('4', 'Quận Long Biên', 'Quận', '1'),
('40', 'Thành phố Cao Bằng', 'Thành phố', '4'),
('400', 'Huyện Hậu Lộc', 'Huyện', '38'),
('401', 'Huyện Nga Sơn', 'Huyện', '38'),
('402', 'Huyện Như Xuân', 'Huyện', '38'),
('403', 'Huyện Như Thanh', 'Huyện', '38'),
('404', 'Huyện Nông Cống', 'Huyện', '38'),
('405', 'Huyện Đông Sơn', 'Huyện', '38'),
('406', 'Huyện Quảng Xương', 'Huyện', '38'),
('407', 'Huyện Tĩnh Gia', 'Huyện', '38'),
('412', 'Thành phố Vinh', 'Thành phố', '40'),
('413', 'Thị xã Cửa Lò', 'Thị xã', '40'),
('414', 'Thị xã Thái Hoà', 'Thị xã', '40'),
('415', 'Huyện Quế Phong', 'Huyện', '40'),
('416', 'Huyện Quỳ Châu', 'Huyện', '40'),
('417', 'Huyện Kỳ Sơn', 'Huyện', '40'),
('418', 'Huyện Tương Dương', 'Huyện', '40'),
('419', 'Huyện Nghĩa Đàn', 'Huyện', '40'),
('42', 'Huyện Bảo Lâm', 'Huyện', '4'),
('420', 'Huyện Quỳ Hợp', 'Huyện', '40'),
('421', 'Huyện Quỳnh Lưu', 'Huyện', '40'),
('422', 'Huyện Con Cuông', 'Huyện', '40'),
('423', 'Huyện Tân Kỳ', 'Huyện', '40'),
('424', 'Huyện Anh Sơn', 'Huyện', '40'),
('425', 'Huyện Diễn Châu', 'Huyện', '40'),
('426', 'Huyện Yên Thành', 'Huyện', '40'),
('427', 'Huyện Đô Lương', 'Huyện', '40'),
('428', 'Huyện Thanh Chương', 'Huyện', '40'),
('429', 'Huyện Nghi Lộc', 'Huyện', '40'),
('43', 'Huyện Bảo Lạc', 'Huyện', '4'),
('430', 'Huyện Nam Đàn', 'Huyện', '40'),
('431', 'Huyện Hưng Nguyên', 'Huyện', '40'),
('432', 'Thị xã Hoàng Mai', 'Thị xã', '40'),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', '42'),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', '42'),
('439', 'Huyện Hương Sơn', 'Huyện', '42'),
('44', 'Huyện Thông Nông', 'Huyện', '4'),
('440', 'Huyện Đức Thọ', 'Huyện', '42'),
('441', 'Huyện Vũ Quang', 'Huyện', '42'),
('442', 'Huyện Nghi Xuân', 'Huyện', '42'),
('443', 'Huyện Can Lộc', 'Huyện', '42'),
('444', 'Huyện Hương Khê', 'Huyện', '42'),
('445', 'Huyện Thạch Hà', 'Huyện', '42'),
('446', 'Huyện Cẩm Xuyên', 'Huyện', '42'),
('447', 'Huyện Kỳ Anh', 'Huyện', '42'),
('448', 'Huyện Lộc Hà', 'Huyện', '42'),
('449', 'Thị xã Kỳ Anh', 'Thị xã', '42'),
('45', 'Huyện Hà Quảng', 'Huyện', '4'),
('450', 'Thành Phố Đồng Hới', 'Thành phố', '44'),
('452', 'Huyện Minh Hóa', 'Huyện', '44'),
('453', 'Huyện Tuyên Hóa', 'Huyện', '44'),
('454', 'Huyện Quảng Trạch', 'Thị xã', '44'),
('455', 'Huyện Bố Trạch', 'Huyện', '44'),
('456', 'Huyện Quảng Ninh', 'Huyện', '44'),
('457', 'Huyện Lệ Thủy', 'Huyện', '44'),
('458', 'Thị xã Ba Đồn', 'Huyện', '44'),
('46', 'Huyện Trà Lĩnh', 'Huyện', '4'),
('461', 'Thành phố Đông Hà', 'Thành phố', '45'),
('462', 'Thị xã Quảng Trị', 'Thị xã', '45'),
('464', 'Huyện Vĩnh Linh', 'Huyện', '45'),
('465', 'Huyện Hướng Hóa', 'Huyện', '45'),
('466', 'Huyện Gio Linh', 'Huyện', '45'),
('467', 'Huyện Đa Krông', 'Huyện', '45'),
('468', 'Huyện Cam Lộ', 'Huyện', '45'),
('469', 'Huyện Triệu Phong', 'Huyện', '45'),
('47', 'Huyện Trùng Khánh', 'Huyện', '4'),
('470', 'Huyện Hải Lăng', 'Huyện', '45'),
('471', 'Huyện Cồn Cỏ', 'Huyện', '45'),
('474', 'Thành phố Huế', 'Thành phố', '46'),
('476', 'Huyện Phong Điền', 'Huyện', '46'),
('477', 'Huyện Quảng Điền', 'Huyện', '46'),
('478', 'Huyện Phú Vang', 'Huyện', '46'),
('479', 'Thị xã Hương Thủy', 'Thị xã', '46'),
('48', 'Huyện Hạ Lang', 'Huyện', '4'),
('480', 'Thị xã Hương Trà', 'Thị xã', '46'),
('481', 'Huyện A Lưới', 'Huyện', '46'),
('482', 'Huyện Phú Lộc', 'Huyện', '46'),
('483', 'Huyện Nam Đông', 'Huyện', '46'),
('49', 'Huyện Quảng Uyên', 'Huyện', '4'),
('490', 'Quận Liên Chiểu', 'Quận', '48'),
('491', 'Quận Thanh Khê', 'Quận', '48'),
('492', 'Quận Hải Châu', 'Quận', '48'),
('493', 'Quận Sơn Trà', 'Quận', '48'),
('494', 'Quận Ngũ Hành Sơn', 'Quận', '48'),
('495', 'Quận Cẩm Lệ', 'Quận', '48'),
('497', 'Huyện Hòa Vang', 'Huyện', '48'),
('498', 'Huyện Hoàng Sa', 'Huyện', '48'),
('5', 'Quận Cầu Giấy', 'Quận', '1'),
('50', 'Huyện Phục Hoà', 'Huyện', '4'),
('502', 'Thành phố Tam Kỳ', 'Thành phố', '49'),
('503', 'Thành phố Hội An', 'Thành phố', '49'),
('504', 'Huyện Tây Giang', 'Huyện', '49'),
('505', 'Huyện Đông Giang', 'Huyện', '49'),
('506', 'Huyện Đại Lộc', 'Huyện', '49'),
('507', 'Thị xã Điện Bàn', 'Thị xã', '49'),
('508', 'Huyện Duy Xuyên', 'Huyện', '49'),
('509', 'Huyện Quế Sơn', 'Huyện', '49'),
('51', 'Huyện Hoà An', 'Huyện', '4'),
('510', 'Huyện Nam Giang', 'Huyện', '49'),
('511', 'Huyện Phước Sơn', 'Huyện', '49'),
('512', 'Huyện Hiệp Đức', 'Huyện', '49'),
('513', 'Huyện Thăng Bình', 'Huyện', '49'),
('514', 'Huyện Tiên Phước', 'Huyện', '49'),
('515', 'Huyện Bắc Trà My', 'Huyện', '49'),
('516', 'Huyện Nam Trà My', 'Huyện', '49'),
('517', 'Huyện Núi Thành', 'Huyện', '49'),
('518', 'Huyện Phú Ninh', 'Huyện', '49'),
('519', 'Huyện Nông Sơn', 'Huyện', '49'),
('52', 'Huyện Nguyên Bình', 'Huyện', '4'),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', '51'),
('524', 'Huyện Bình Sơn', 'Huyện', '51'),
('525', 'Huyện Trà Bồng', 'Huyện', '51'),
('526', 'Huyện Tây Trà', 'Huyện', '51'),
('527', 'Huyện Sơn Tịnh', 'Huyện', '51'),
('528', 'Huyện Tư Nghĩa', 'Huyện', '51'),
('529', 'Huyện Sơn Hà', 'Huyện', '51'),
('53', 'Huyện Thạch An', 'Huyện', '4'),
('530', 'Huyện Sơn Tây', 'Huyện', '51'),
('531', 'Huyện Minh Long', 'Huyện', '51'),
('532', 'Huyện Nghĩa Hành', 'Huyện', '51'),
('533', 'Huyện Mộ Đức', 'Huyện', '51'),
('534', 'Huyện Đức Phổ', 'Huyện', '51'),
('535', 'Huyện Ba Tơ', 'Huyện', '51'),
('536', 'Huyện Lý Sơn', 'Huyện', '51'),
('540', 'Thành phố Qui Nhơn', 'Thành phố', '52'),
('542', 'Huyện An Lão', 'Huyện', '52'),
('543', 'Huyện Hoài Nhơn', 'Huyện', '52'),
('544', 'Huyện Hoài Ân', 'Huyện', '52'),
('545', 'Huyện Phù Mỹ', 'Huyện', '52'),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', '52'),
('547', 'Huyện Tây Sơn', 'Huyện', '52'),
('548', 'Huyện Phù Cát', 'Huyện', '52'),
('549', 'Thị xã An Nhơn', 'Thị xã', '52'),
('550', 'Huyện Tuy Phước', 'Huyện', '52'),
('551', 'Huyện Vân Canh', 'Huyện', '52'),
('555', 'Thành phố Tuy Hoà', 'Thành phố', '54'),
('557', 'Thị xã Sông Cầu', 'Thị xã', '54'),
('558', 'Huyện Đồng Xuân', 'Huyện', '54'),
('559', 'Huyện Tuy An', 'Huyện', '54'),
('560', 'Huyện Sơn Hòa', 'Huyện', '54'),
('561', 'Huyện Sông Hinh', 'Huyện', '54'),
('562', 'Huyện Tây Hoà', 'Huyện', '54'),
('563', 'Huyện Phú Hoà', 'Huyện', '54'),
('564', 'Huyện Đông Hòa', 'Huyện', '54'),
('568', 'Thành phố Nha Trang', 'Thành phố', '56'),
('569', 'Thành phố Cam Ranh', 'Thành phố', '56'),
('570', 'Huyện Cam Lâm', 'Huyện', '56'),
('571', 'Huyện Vạn Ninh', 'Huyện', '56'),
('572', 'Thị xã Ninh Hòa', 'Thị xã', '56'),
('573', 'Huyện Khánh Vĩnh', 'Huyện', '56'),
('574', 'Huyện Diên Khánh', 'Huyện', '56'),
('575', 'Huyện Khánh Sơn', 'Huyện', '56'),
('576', 'Huyện Trường Sa', 'Huyện', '56'),
('58', 'Thành Phố Bắc Kạn', 'Thành phố', '6'),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', '58'),
('584', 'Huyện Bác Ái', 'Huyện', '58'),
('585', 'Huyện Ninh Sơn', 'Huyện', '58'),
('586', 'Huyện Ninh Hải', 'Huyện', '58'),
('587', 'Huyện Ninh Phước', 'Huyện', '58'),
('588', 'Huyện Thuận Bắc', 'Huyện', '58'),
('589', 'Huyện Thuận Nam', 'Huyện', '58'),
('593', 'Thành phố Phan Thiết', 'Thành phố', '60'),
('594', 'Thị xã La Gi', 'Thị xã', '60'),
('595', 'Huyện Tuy Phong', 'Huyện', '60'),
('596', 'Huyện Bắc Bình', 'Huyện', '60'),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', '60'),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', '60'),
('599', 'Huyện Tánh Linh', 'Huyện', '60'),
('6', 'Quận Đống Đa', 'Quận', '1'),
('60', 'Huyện Pác Nặm', 'Huyện', '6'),
('600', 'Huyện Đức Linh', 'Huyện', '60'),
('601', 'Huyện Hàm Tân', 'Huyện', '60'),
('602', 'Huyện Phú Quí', 'Huyện', '60'),
('608', 'Thành phố Kon Tum', 'Thành phố', '62'),
('61', 'Huyện Ba Bể', 'Huyện', '6'),
('610', 'Huyện Đắk Glei', 'Huyện', '62'),
('611', 'Huyện Ngọc Hồi', 'Huyện', '62'),
('612', 'Huyện Đắk Tô', 'Huyện', '62'),
('613', 'Huyện Kon Plông', 'Huyện', '62'),
('614', 'Huyện Kon Rẫy', 'Huyện', '62'),
('615', 'Huyện Đắk Hà', 'Huyện', '62'),
('616', 'Huyện Sa Thầy', 'Huyện', '62'),
('617', 'Huyện Tu Mơ Rông', 'Huyện', '62'),
('618', 'Huyện Ia H'' Drai', 'Huyện', '62'),
('62', 'Huyện Ngân Sơn', 'Huyện', '6'),
('622', 'Thành phố Pleiku', 'Thành phố', '64'),
('623', 'Thị xã An Khê', 'Thị xã', '64'),
('624', 'Thị xã Ayun Pa', 'Thị xã', '64'),
('625', 'Huyện KBang', 'Huyện', '64'),
('626', 'Huyện Đăk Đoa', 'Huyện', '64'),
('627', 'Huyện Chư Păh', 'Huyện', '64'),
('628', 'Huyện Ia Grai', 'Huyện', '64'),
('629', 'Huyện Mang Yang', 'Huyện', '64'),
('63', 'Huyện Bạch Thông', 'Huyện', '6'),
('630', 'Huyện Kông Chro', 'Huyện', '64'),
('631', 'Huyện Đức Cơ', 'Huyện', '64'),
('632', 'Huyện Chư Prông', 'Huyện', '64'),
('633', 'Huyện Chư Sê', 'Huyện', '64'),
('634', 'Huyện Đăk Pơ', 'Huyện', '64'),
('635', 'Huyện Ia Pa', 'Huyện', '64'),
('637', 'Huyện Krông Pa', 'Huyện', '64'),
('638', 'Huyện Phú Thiện', 'Huyện', '64'),
('639', 'Huyện Chư Pưh', 'Huyện', '64'),
('64', 'Huyện Chợ Đồn', 'Huyện', '6'),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', '66'),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', '66'),
('645', 'Huyện Ea H''leo', 'Huyện', '66'),
('646', 'Huyện Ea Súp', 'Huyện', '66'),
('647', 'Huyện Buôn Đôn', 'Huyện', '66'),
('648', 'Huyện Cư M''gar', 'Huyện', '66'),
('649', 'Huyện Krông Búk', 'Huyện', '66'),
('65', 'Huyện Chợ Mới', 'Huyện', '6'),
('650', 'Huyện Krông Năng', 'Huyện', '66'),
('651', 'Huyện Ea Kar', 'Huyện', '66'),
('652', 'Huyện M''Đrắk', 'Huyện', '66'),
('653', 'Huyện Krông Bông', 'Huyện', '66'),
('654', 'Huyện Krông Pắc', 'Huyện', '66'),
('655', 'Huyện Krông A Na', 'Huyện', '66'),
('656', 'Huyện Lắk', 'Huyện', '66'),
('657', 'Huyện Cư Kuin', 'Huyện', '66'),
('66', 'Huyện Na Rì', 'Huyện', '6'),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', '67'),
('661', 'Huyện Đăk Glong', 'Huyện', '67'),
('662', 'Huyện Cư Jút', 'Huyện', '67'),
('663', 'Huyện Đắk Mil', 'Huyện', '67'),
('664', 'Huyện Krông Nô', 'Huyện', '67'),
('665', 'Huyện Đắk Song', 'Huyện', '67'),
('666', 'Huyện Đắk R Lấp', 'Huyện', '67'),
('667', 'Huyện Tuy Đức', 'Huyện', '67'),
('672', 'Thành phố Đà Lạt', 'Thành phố', '68'),
('673', 'Thành phố Bảo Lộc', 'Thành phố', '68'),
('674', 'Huyện Đam Rông', 'Huyện', '68'),
('675', 'Huyện Lạc Dương', 'Huyện', '68'),
('676', 'Huyện Lâm Hà', 'Huyện', '68'),
('677', 'Huyện Đơn Dương', 'Huyện', '68'),
('678', 'Huyện Đức Trọng', 'Huyện', '68'),
('679', 'Huyện Di Linh', 'Huyện', '68'),
('680', 'Huyện Bảo Lâm', 'Huyện', '68'),
('681', 'Huyện Đạ Huoai', 'Huyện', '68'),
('682', 'Huyện Đạ Tẻh', 'Huyện', '68'),
('683', 'Huyện Cát Tiên', 'Huyện', '68'),
('688', 'Thị xã Phước Long', 'Thị xã', '70'),
('689', 'Thị xã Đồng Xoài', 'Thị xã', '70'),
('690', 'Thị xã Bình Long', 'Thị xã', '70'),
('691', 'Huyện Bù Gia Mập', 'Huyện', '70'),
('692', 'Huyện Lộc Ninh', 'Huyện', '70'),
('693', 'Huyện Bù Đốp', 'Huyện', '70'),
('694', 'Huyện Hớn Quản', 'Huyện', '70'),
('695', 'Huyện Đồng Phú', 'Huyện', '70'),
('696', 'Huyện Bù Đăng', 'Huyện', '70'),
('697', 'Huyện Chơn Thành', 'Huyện', '70'),
('698', 'Huyện Phú Riềng', 'Huyện', '70'),
('7', 'Quận Hai Bà Trưng', 'Quận', '1'),
('70', 'Thành phố Tuyên Quang', 'Thành phố', '8'),
('703', 'Thành phố Tây Ninh', 'Thành phố', '72'),
('705', 'Huyện Tân Biên', 'Huyện', '72'),
('706', 'Huyện Tân Châu', 'Huyện', '72'),
('707', 'Huyện Dương Minh Châu', 'Huyện', '72'),
('708', 'Huyện Châu Thành', 'Huyện', '72'),
('709', 'Huyện Hòa Thành', 'Huyện', '72'),
('71', 'Huyện Lâm Bình', 'Huyện', '8'),
('710', 'Huyện Gò Dầu', 'Huyện', '72'),
('711', 'Huyện Bến Cầu', 'Huyện', '72'),
('712', 'Huyện Trảng Bàng', 'Huyện', '72'),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', '74'),
('719', 'Huyện Bàu Bàng', 'Huyện', '74'),
('72', 'Huyện Nà Hang', 'Huyện', '8'),
('720', 'Huyện Dầu Tiếng', 'Huyện', '74'),
('721', 'Thị xã Bến Cát', 'Thị xã', '74'),
('722', 'Huyện Phú Giáo', 'Huyện', '74'),
('723', 'Thị xã Tân Uyên', 'Thị xã', '74'),
('724', 'Thị xã Dĩ An', 'Thị xã', '74'),
('725', 'Thị xã Thuận An', 'Thị xã', '74'),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', '74'),
('73', 'Huyện Chiêm Hóa', 'Huyện', '8'),
('731', 'Thành phố Biên Hòa', 'Thành phố', '75'),
('732', 'Thị xã Long Khánh', 'Thị xã', '75'),
('734', 'Huyện Tân Phú', 'Huyện', '75'),
('735', 'Huyện Vĩnh Cửu', 'Huyện', '75'),
('736', 'Huyện Định Quán', 'Huyện', '75'),
('737', 'Huyện Trảng Bom', 'Huyện', '75'),
('738', 'Huyện Thống Nhất', 'Huyện', '75'),
('739', 'Huyện Cẩm Mỹ', 'Huyện', '75'),
('74', 'Huyện Hàm Yên', 'Huyện', '8'),
('740', 'Huyện Long Thành', 'Huyện', '75'),
('741', 'Huyện Xuân Lộc', 'Huyện', '75'),
('742', 'Huyện Nhơn Trạch', 'Huyện', '75'),
('747', 'Thành phố Vũng Tàu', 'Thành phố', '77'),
('748', 'Thành phố Bà Rịa', 'Thành phố', '77'),
('75', 'Huyện Yên Sơn', 'Huyện', '8'),
('750', 'Huyện Châu Đức', 'Huyện', '77'),
('751', 'Huyện Xuyên Mộc', 'Huyện', '77'),
('752', 'Huyện Long Điền', 'Huyện', '77'),
('753', 'Huyện Đất Đỏ', 'Huyện', '77'),
('754', 'Huyện Tân Thành', 'Huyện', '77'),
('755', 'Huyện Côn Đảo', 'Huyện', '77'),
('76', 'Huyện Sơn Dương', 'Huyện', '8'),
('760', 'Quận 1', 'Quận', '79'),
('761', 'Quận 12', 'Quận', '79'),
('762', 'Quận Thủ Đức', 'Quận', '79'),
('763', 'Quận 9', 'Quận', '79'),
('764', 'Quận Gò Vấp', 'Quận', '79'),
('765', 'Quận Bình Thạnh', 'Quận', '79'),
('766', 'Quận Tân Bình', 'Quận', '79'),
('767', 'Quận Tân Phú', 'Quận', '79'),
('768', 'Quận Phú Nhuận', 'Quận', '79'),
('769', 'Quận 2', 'Quận', '79'),
('770', 'Quận 3', 'Quận', '79'),
('771', 'Quận 10', 'Quận', '79'),
('772', 'Quận 11', 'Quận', '79'),
('773', 'Quận 4', 'Quận', '79'),
('774', 'Quận 5', 'Quận', '79'),
('775', 'Quận 6', 'Quận', '79'),
('776', 'Quận 8', 'Quận', '79'),
('777', 'Quận Bình Tân', 'Quận', '79'),
('778', 'Quận 7', 'Quận', '79'),
('783', 'Huyện Củ Chi', 'Huyện', '79'),
('784', 'Huyện Hóc Môn', 'Huyện', '79'),
('785', 'Huyện Bình Chánh', 'Huyện', '79'),
('786', 'Huyện Nhà Bè', 'Huyện', '79'),
('787', 'Huyện Cần Giờ', 'Huyện', '79'),
('794', 'Thành phố Tân An', 'Thành phố', '80'),
('795', 'Thị xã Kiến Tường', 'Thị xã', '80'),
('796', 'Huyện Tân Hưng', 'Huyện', '80'),
('797', 'Huyện Vĩnh Hưng', 'Huyện', '80'),
('798', 'Huyện Mộc Hóa', 'Huyện', '80'),
('799', 'Huyện Tân Thạnh', 'Huyện', '80'),
('8', 'Quận Hoàng Mai', 'Quận', '1'),
('80', 'Thành phố Lào Cai', 'Thành phố', '10'),
('800', 'Huyện Thạnh Hóa', 'Huyện', '80'),
('801', 'Huyện Đức Huệ', 'Huyện', '80'),
('802', 'Huyện Đức Hòa', 'Huyện', '80'),
('803', 'Huyện Bến Lức', 'Huyện', '80'),
('804', 'Huyện Thủ Thừa', 'Huyện', '80'),
('805', 'Huyện Tân Trụ', 'Huyện', '80'),
('806', 'Huyện Cần Đước', 'Huyện', '80'),
('807', 'Huyện Cần Giuộc', 'Huyện', '80'),
('808', 'Huyện Châu Thành', 'Huyện', '80'),
('815', 'Thành phố Mỹ Tho', 'Thành phố', '82'),
('816', 'Thị xã Gò Công', 'Thị xã', '82'),
('817', 'Thị xã Cai Lậy', 'Huyện', '82'),
('818', 'Huyện Tân Phước', 'Huyện', '82'),
('819', 'Huyện Cái Bè', 'Huyện', '82'),
('82', 'Huyện Bát Xát', 'Huyện', '10'),
('820', 'Huyện Cai Lậy', 'Thị xã', '82'),
('821', 'Huyện Châu Thành', 'Huyện', '82'),
('822', 'Huyện Chợ Gạo', 'Huyện', '82'),
('823', 'Huyện Gò Công Tây', 'Huyện', '82'),
('824', 'Huyện Gò Công Đông', 'Huyện', '82'),
('825', 'Huyện Tân Phú Đông', 'Huyện', '82'),
('829', 'Thành phố Bến Tre', 'Thành phố', '83'),
('83', 'Huyện Mường Khương', 'Huyện', '10'),
('831', 'Huyện Châu Thành', 'Huyện', '83'),
('832', 'Huyện Chợ Lách', 'Huyện', '83'),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', '83'),
('834', 'Huyện Giồng Trôm', 'Huyện', '83'),
('835', 'Huyện Bình Đại', 'Huyện', '83'),
('836', 'Huyện Ba Tri', 'Huyện', '83'),
('837', 'Huyện Thạnh Phú', 'Huyện', '83'),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', '83'),
('84', 'Huyện Si Ma Cai', 'Huyện', '10'),
('842', 'Thành phố Trà Vinh', 'Thành phố', '84'),
('844', 'Huyện Càng Long', 'Huyện', '84'),
('845', 'Huyện Cầu Kè', 'Huyện', '84'),
('846', 'Huyện Tiểu Cần', 'Huyện', '84'),
('847', 'Huyện Châu Thành', 'Huyện', '84'),
('848', 'Huyện Cầu Ngang', 'Huyện', '84'),
('849', 'Huyện Trà Cú', 'Huyện', '84'),
('85', 'Huyện Bắc Hà', 'Huyện', '10'),
('850', 'Huyện Duyên Hải', 'Huyện', '84'),
('851', 'Thị xã Duyên Hải', 'Thị xã', '84'),
('855', 'Thành phố Vĩnh Long', 'Thành phố', '86'),
('857', 'Huyện Long Hồ', 'Huyện', '86'),
('858', 'Huyện Mang Thít', 'Huyện', '86'),
('859', 'Huyện  Vũng Liêm', 'Huyện', '86'),
('86', 'Huyện Bảo Thắng', 'Huyện', '10'),
('860', 'Huyện Tam Bình', 'Huyện', '86'),
('861', 'Thị xã Bình Minh', 'Thị xã', '86'),
('862', 'Huyện Trà Ôn', 'Huyện', '86'),
('863', 'Huyện Bình Tân', 'Huyện', '86'),
('866', 'Thành phố Cao Lãnh', 'Thành phố', '87'),
('867', 'Thành phố Sa Đéc', 'Thành phố', '87'),
('868', 'Thị xã Hồng Ngự', 'Thị xã', '87'),
('869', 'Huyện Tân Hồng', 'Huyện', '87'),
('87', 'Huyện Bảo Yên', 'Huyện', '10'),
('870', 'Huyện Hồng Ngự', 'Huyện', '87'),
('871', 'Huyện Tam Nông', 'Huyện', '87'),
('872', 'Huyện Tháp Mười', 'Huyện', '87'),
('873', 'Huyện Cao Lãnh', 'Huyện', '87'),
('874', 'Huyện Thanh Bình', 'Huyện', '87'),
('875', 'Huyện Lấp Vò', 'Huyện', '87'),
('876', 'Huyện Lai Vung', 'Huyện', '87'),
('877', 'Huyện Châu Thành', 'Huyện', '87'),
('88', 'Huyện Sa Pa', 'Huyện', '10'),
('883', 'Thành phố Long Xuyên', 'Thành phố', '89'),
('884', 'Thành phố Châu Đốc', 'Thành phố', '89'),
('886', 'Huyện An Phú', 'Huyện', '89'),
('887', 'Thị xã Tân Châu', 'Thị xã', '89'),
('888', 'Huyện Phú Tân', 'Huyện', '89'),
('889', 'Huyện Châu Phú', 'Huyện', '89'),
('89', 'Huyện Văn Bàn', 'Huyện', '10'),
('890', 'Huyện Tịnh Biên', 'Huyện', '89'),
('891', 'Huyện Tri Tôn', 'Huyện', '89'),
('892', 'Huyện Châu Thành', 'Huyện', '89'),
('893', 'Huyện Chợ Mới', 'Huyện', '89'),
('894', 'Huyện Thoại Sơn', 'Huyện', '89'),
('899', 'Thành phố Rạch Giá', 'Thành phố', '91'),
('9', 'Quận Thanh Xuân', 'Quận', '1'),
('900', 'Thị xã Hà Tiên', 'Thị xã', '91'),
('902', 'Huyện Kiên Lương', 'Huyện', '91'),
('903', 'Huyện Hòn Đất', 'Huyện', '91'),
('904', 'Huyện Tân Hiệp', 'Huyện', '91'),
('905', 'Huyện Châu Thành', 'Huyện', '91'),
('906', 'Huyện Giồng Riềng', 'Huyện', '91'),
('907', 'Huyện Gò Quao', 'Huyện', '91'),
('908', 'Huyện An Biên', 'Huyện', '91'),
('909', 'Huyện An Minh', 'Huyện', '91'),
('910', 'Huyện Vĩnh Thuận', 'Huyện', '91'),
('911', 'Huyện Phú Quốc', 'Huyện', '91'),
('912', 'Huyện Kiên Hải', 'Huyện', '91'),
('913', 'Huyện U Minh Thượng', 'Huyện', '91'),
('914', 'Huyện Giang Thành', 'Huyện', '91'),
('916', 'Quận Ninh Kiều', 'Quận', '92'),
('917', 'Quận Ô Môn', 'Quận', '92'),
('918', 'Quận Bình Thuỷ', 'Quận', '92'),
('919', 'Quận Cái Răng', 'Quận', '92'),
('923', 'Quận Thốt Nốt', 'Quận', '92'),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', '92'),
('925', 'Huyện Cờ Đỏ', 'Huyện', '92'),
('926', 'Huyện Phong Điền', 'Huyện', '92'),
('927', 'Huyện Thới Lai', 'Huyện', '92'),
('930', 'Thành phố Vị Thanh', 'Thành phố', '93'),
('931', 'Thị xã Ngã Bảy', 'Thị xã', '93'),
('932', 'Huyện Châu Thành A', 'Huyện', '93'),
('933', 'Huyện Châu Thành', 'Huyện', '93'),
('934', 'Huyện Phụng Hiệp', 'Huyện', '93'),
('935', 'Huyện Vị Thuỷ', 'Huyện', '93'),
('936', 'Huyện Long Mỹ', 'Huyện', '93'),
('937', 'Thị xã Long Mỹ', 'Thị xã', '93'),
('94', 'Thành phố Điện Biên Phủ', 'Thành phố', '11'),
('941', 'Thành phố Sóc Trăng', 'Thành phố', '94'),
('942', 'Huyện Châu Thành', 'Huyện', '94'),
('943', 'Huyện Kế Sách', 'Huyện', '94'),
('944', 'Huyện Mỹ Tú', 'Huyện', '94'),
('945', 'Huyện Cù Lao Dung', 'Huyện', '94'),
('946', 'Huyện Long Phú', 'Huyện', '94'),
('947', 'Huyện Mỹ Xuyên', 'Huyện', '94'),
('948', 'Thị xã Ngã Năm', 'Thị xã', '94'),
('949', 'Huyện Thạnh Trị', 'Huyện', '94'),
('95', 'Thị Xã Mường Lay', 'Thị xã', '11'),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', '94'),
('951', 'Huyện Trần Đề', 'Huyện', '94'),
('954', 'Thành phố Bạc Liêu', 'Thành phố', '95'),
('956', 'Huyện Hồng Dân', 'Huyện', '95'),
('957', 'Huyện Phước Long', 'Huyện', '95'),
('958', 'Huyện Vĩnh Lợi', 'Huyện', '95'),
('959', 'Thị xã Giá Rai', 'Thị xã', '95'),
('96', 'Huyện Mường Nhé', 'Huyện', '11'),
('960', 'Huyện Đông Hải', 'Huyện', '95'),
('961', 'Huyện Hoà Bình', 'Huyện', '95'),
('964', 'Thành phố Cà Mau', 'Thành phố', '96'),
('966', 'Huyện U Minh', 'Huyện', '96'),
('967', 'Huyện Thới Bình', 'Huyện', '96'),
('968', 'Huyện Trần Văn Thời', 'Huyện', '96'),
('969', 'Huyện Cái Nước', 'Huyện', '96'),
('97', 'Huyện Mường Chà', 'Huyện', '11'),
('970', 'Huyện Đầm Dơi', 'Huyện', '96'),
('971', 'Huyện Năm Căn', 'Huyện', '96'),
('972', 'Huyện Phú Tân', 'Huyện', '96'),
('973', 'Huyện Ngọc Hiển', 'Huyện', '96'),
('98', 'Huyện Tủa Chùa', 'Huyện', '11'),
('99', 'Huyện Tuần Giáo', 'Huyện', '11');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE IF NOT EXISTS `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `options` varchar(2) DEFAULT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_tinhthanhpho`
--

CREATE TABLE IF NOT EXISTS `db_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `db_tinhthanhpho`
--

INSERT INTO `db_tinhthanhpho` (`matp`, `name`, `type`) VALUES
('1', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('2', 'Tỉnh Hà Giang', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('4', 'Tỉnh Cao Bằng', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('6', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('8', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE IF NOT EXISTS `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `img`, `created`, `trash`, `access`, `status`) VALUES
(2, 'Ngô Trung Phát', 'greenadmin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'ngotrungphat@gmail.com', 1, '0165429', 'admin.jpg', '2016-10-03 22:30:00', 1, 1, 1),
(3, 'Huy Admin', 'huyadmin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'huy@gmail.com', 1, '0167892', '26ce8716.png', '2016-10-03 22:30:00', 1, 1, 1),
(4, 'Supper Admin', 'supperadmin', 'adc909449d4d5002003ac2a7613648305e681a83', 1, 'ngotrungphat@gmail.com', 1, '0167892', 'a22aeef917ae5c59006182ced50f72e8.png', '2016-10-03 22:30:00', 1, 1, 1),
(5, 'admin01', '', '', 2, '', 0, '', '', '2017-03-11 00:16:05', 1, 1, 1),
(6, 'admin02', 'admin02', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin02@gmail.com', 0, '0987654321', '', '2017-03-11 00:20:51', 1, 1, 1),
(7, 'admin03', 'admin03', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'ngotrungphat12@gmail.com', 0, '01654292452', 'images.png', '2017-03-11 00:26:52', 1, 1, 1),
(8, 'admin04', 'admin04', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin04@gmail.com', 0, '09990990', 'ef792cce5f7cf64e2c6ed2a1cebfd0cf.jpg', '2017-03-11 00:28:28', 1, 1, 1),
(9, 'admin07', 'admin07', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin07@gmail.com', 1, '19008198', '2a977c82712e6bc4fedd4e3e46d7e91c.jpg', '2017-03-11 22:34:03', 1, 1, 1),
(10, 'admin08', 'admin08', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'amdin08@gmail.com', 0, '09878988999', 'd9c2a3da4b64d8e89bff1254f77530d5.jpg', '2017-03-12 00:59:10', 1, 1, 1),
(11, 'admin09', 'admin09', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin09@gmail.com', 1, '0987654322', 'f28c2ae06974a46b9a1c566344019366.jpg', '2017-03-12 01:01:25', 1, 1, 1),
(12, 'admin10', 'admin10', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin10@gmail.com', 0, '0123456781', '006cec6866aae3a5c54a014f47d2fdc5.jpg', '2017-03-12 01:02:34', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE IF NOT EXISTS `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Quản trị', '2015-07-09 00:00:00', 4, '2015-07-09 00:00:00', 4, 1, 1, 1),
(2, 'Chủ shop', '2015-07-09 00:00:00', 4, '2015-07-09 00:00:00', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_quanhuyen`
--
ALTER TABLE `db_quanhuyen`
  ADD PRIMARY KEY (`maqh`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_tinhthanhpho`
--
ALTER TABLE `db_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
