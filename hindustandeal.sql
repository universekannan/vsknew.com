-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2021 at 05:56 PM
-- Server version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hindustandeal`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `followup_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `full_name`, `mobile_no`, `followup_date`) VALUES
(1, 'Jino', '8015888258', '2020-11-22'),
(2, 'Mangalam', '9443122084', '0000-00-00'),
(3, 'Adline', '9597297103', '2020-10-22'),
(4, 'Amal Raj', '9994430534', '2020-10-21'),
(5, 'Avm', '9442427522', '0000-00-00'),
(6, 'Battery Shop', '9087758868', '0000-00-00'),
(7, 'Bright', '9487311174', '2020-10-21'),
(8, 'Kalai Selvi', '9751302780', '0000-00-00'),
(9, 'Chen Tamil', '8248525664', '0000-00-00'),
(10, 'ChipNet', '9994174504', '0000-00-00'),
(11, 'Krishna Prasad', '9514088691', '0000-00-00'),
(12, 'Anbazakan', '9600299799', '0000-00-00'),
(13, 'Gopi', '8838266697', '0000-00-00'),
(14, 'Jas Construction', '9894180324', '0000-00-00'),
(15, 'Jb Tech', '9443323352', '0000-00-00'),
(16, 'Justin', '7845515411', '0000-00-00'),
(17, 'Kudo', '9442237952', '0000-00-00'),
(18, 'Krishna Kumar', '9943346130', '0000-00-00'),
(19, 'Selva Kumaran', '9443992485', '0000-00-00'),
(20, 'M Ajith', '9585405245', '0000-00-00'),
(21, 'M Azakesan', '9444818982', '0000-00-00'),
(22, 'M Kannan', '9500696123', '0000-00-00'),
(23, 'M Kannan CP', '7395879059', '0000-00-00'),
(24, 'M Rajan', '9994720638', '0000-00-00'),
(25, 'M Viswanathan', '9442711776', '0000-00-00'),
(26, 'Nirmal', '9789498810', '0000-00-00'),
(27, 'Nirmal Karungal', '9443500892', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'swati', 'mahajan', '', 'jhjhjhj', 'hjhjhjh', 'jhjhjhjh', '766778', 222, 3513, ''),
(2, 5, 'Suhail ', 'Syed ', 'Perumbakkam', '3/111', 'Opp.gym', 'Colachel', '600073', 99, 1503, ''),
(12, 25, 'Manikandan', 'C', '', 'Mottavilai', 'Karankadu PO', 'Kanyakumari Dist', '629809', 99, 1503, ''),
(9, 19, 'kannan', 'Page', '', 'Mottavilai', 'Karankadu PO', 'Kanyakumari Dist', '629809', 99, 1503, ''),
(10, 23, 'Ravi', 'A', '', 'Kusavankuzhi', 'Karan Kadu PO', 'Kanyakumari Dist', '629809', 99, 1503, ''),
(11, 24, 'Siva ', 'Kumar', '', 'Kanden Vilai', 'Kanden Vilai PO', 'Kanyakumari Dist', '629810', 99, 1503, ''),
(13, 26, 'Alwin', 'Anbu Sign Pvt Ltd', 'Anbu Sign Pvt Ltd', 'Chithanthoppu', 'Kandanvilai PO', 'Kanyakumari District,', '629810', 99, 1503, '[]'),
(14, 29, 'Amal', 'Raji', '', 'Kandenvilai', 'Kandenvilai PO', 'Kanyakumari Dist', '629810', 99, 1503, ''),
(15, 32, 'Benny', 'Lourdwin', '', 'KandenVilai', 'KandenVilai', 'Kanyakumari Dist', '629810', 99, 1503, ''),
(16, 28, 'Jino', 'Jino', '', 'Kusavan kuzhi karankadu po', '', 'Kandanvilai', '629809', 99, 1503, ''),
(18, 133, 'tom', 'harry', '', '', '', '', '', 0, 0, ''),
(19, 134, 'tom', 'harry', '', '', '', '', '', 0, 0, ''),
(20, 136, 'aaaa', 'aaa', '', '', '', '', '', 0, 0, ''),
(21, 137, 'aaa', 'aaa', '', '', '', '', '', 0, 0, ''),
(22, 138, 'bbb', 'bbb', '', '', '', '', '', 0, 0, ''),
(17, 82, 'Yrhh', 'Hhkhego', 'Gebh', 'Hdhkh', 'Vdjj', 'Cgij', 'Bx ', 99, 1503, '[]'),
(23, 153, 'Krishna', 'M', 'ITB Police', 'Unit hospital', '34 th Bn ITBP', 'Halduchaur', '262402', 99, 1505, ''),
(24, 161, 'sam', 'sam', '', '', '', '', '', 0, 0, ''),
(25, 173, 'Nixon ', 'P M', '', '23/79, Defence Colony Colony', '8th cross street', 'Chennai', '600032', 99, 1503, ''),
(26, 183, '111', '111', '', '', '', '', '', 0, 0, ''),
(27, 198, 'Swetha ', 'N', '', 'Ramurthinagar ACL layout Bombay tilar rod 11th cross ded end', '', 'Bangalore', '560016', 99, 1489, ''),
(28, 205, 'Rajni', 'Rajni', '', 'Aman colony, kanche thande wala road', 'Gali no. 6', 'Muktsar', '152026', 99, 1500, ''),
(29, 207, 'Rajni', 'Rajni', '', 'Gali no. 6, aman colony', 'Kanche thande wala road', 'Mukatsar', '152026', 99, 1500, ''),
(30, 209, 'Ramya', 'Kadari', '', 'Plot no-3, 2nd laxminagar east marredpalli phulkaas buliding', '', 'Secunderabad', '500026', 99, 4231, ''),
(31, 214, 'Nandan', 'Bhatkal', '', 'E002, DejaView Apartments,', 'CV Raman Nagar, Varthur Road, Opp Nagavarapalya Masjid', 'Bengaluru', '560093', 99, 1489, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'fSczK2SXmfNmLtThAPbuBHBK29FdsHv0olhBg16uS7If3Yuu175LJWfAJw8TPAAEY4ScdQPNc9JA8tix6IXlKd3ThJnJdy1vf6YrihK3oBAL4859KkI3rnhhDdelkXeQHjK2wyotFf0RfP9KHOA2ek9fGG7EWgn6MiS7Tif5NztnU2IQcz6TmRY1RRLpV1mcEnO68mAByxTqaQSk9oLwDCgjf0MKgFobp1CP2VaT7UxbZIklsAiN0YRD3VQHjnWj', 1, '2020-02-18 10:15:45', '2020-02-18 10:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '2.49.110.5'),
(2, 1, '112.133.237.62'),
(3, 1, '112.133.237.32'),
(4, 1, '112.133.248.98'),
(5, 1, '112.133.248.113'),
(6, 1, '112.133.237.22'),
(7, 1, '112.133.237.21'),
(8, 1, '112.133.248.125'),
(9, 1, '112.133.248.120'),
(10, 1, '42.106.176.236'),
(11, 1, '112.133.236.46'),
(12, 1, '112.133.236.32'),
(13, 1, '112.133.236.42'),
(14, 1, '112.133.236.116'),
(15, 1, '112.133.236.18'),
(16, 1, '122.166.197.63'),
(17, 1, '122.167.146.88'),
(18, 1, '112.133.236.1'),
(19, 1, '112.133.236.38'),
(20, 1, '112.133.236.63'),
(21, 1, '112.133.236.13'),
(22, 1, '112.133.236.126'),
(23, 1, '103.77.37.153'),
(24, 1, '103.77.37.133'),
(25, 1, '103.77.37.186'),
(26, 1, '103.77.37.166'),
(27, 1, '103.77.37.167'),
(28, 1, '103.77.37.149'),
(29, 1, '103.77.37.185');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(142, 1, '088c14b796b4d945cc9672ce24', '103.77.37.167', '2021-03-08 14:38:44', '2021-03-08 14:38:44'),
(141, 1, '2c19412f671a3f47e3fe6862ed', '103.77.37.167', '2021-03-08 14:25:13', '2021-03-08 14:25:13'),
(140, 1, '8b65fced22183ec5990da9292d', '103.77.37.167', '2021-03-08 14:21:31', '2021-03-08 14:21:31'),
(139, 1, '717f046837a82ab6af81ff85ad', '103.77.37.167', '2021-03-08 14:21:20', '2021-03-08 14:21:23'),
(138, 1, 'c0f65b3c7e527e093485adc306', '103.77.37.167', '2021-03-08 14:20:34', '2021-03-08 14:20:34'),
(137, 1, '2d1fb63ddbb969b3fc42b6babc', '103.77.37.167', '2021-03-08 14:18:58', '2021-03-08 14:20:19'),
(136, 1, '27f0767de5730ecf2caddf4ec4', '103.77.37.167', '2021-03-08 14:17:25', '2021-03-08 14:18:33'),
(131, 1, '09c46f472a28461fb8a4616bb9', '103.77.37.167', '2021-03-08 14:14:57', '2021-03-08 14:17:17'),
(130, 1, 'ce8fe8967247a1d64634ee30ba', '103.77.37.167', '2021-03-08 14:14:52', '2021-03-08 14:14:52'),
(129, 1, 'cff11df5a275657cffbf83fbe9', '103.77.37.167', '2021-03-08 14:07:48', '2021-03-08 14:07:48'),
(128, 1, '2a8a8768ec31a679a0b51da3f0', '103.77.37.167', '2021-03-08 14:07:04', '2021-03-08 14:07:04'),
(127, 1, '786aa5d5ea6371b73218fdc509', '103.77.37.167', '2021-03-08 14:04:47', '2021-03-08 14:04:47'),
(126, 1, 'ba2ccdcdd952a4d2cbd82a077d', '103.77.37.167', '2021-03-08 14:04:43', '2021-03-08 14:04:43'),
(125, 1, '6f9e5ce3d37b0047e51d08767f', '103.77.37.167', '2021-03-08 14:01:40', '2021-03-08 14:01:40'),
(135, 1, '238aa6a039dad0f6231c4e2f88', '103.77.37.167', '2021-03-08 14:17:20', '2021-03-08 14:17:20'),
(134, 1, 'b56b515179b4519890d1cb71ee', '103.77.37.167', '2021-03-08 14:17:12', '2021-03-08 14:17:12'),
(133, 1, '70ecb577455d7b448eafa37447', '103.77.37.167', '2021-03-08 14:16:02', '2021-03-08 14:16:50'),
(132, 1, '7d35b09f7a38a237965ea2f1c7', '103.77.37.167', '2021-03-08 14:15:57', '2021-03-08 14:15:57'),
(143, 1, '3212d3ad2476ef00938d66c7c7', '103.77.37.167', '2021-03-08 14:54:18', '2021-03-08 14:54:18'),
(144, 1, 'a841c54b3befcc75d2d566c15e', '103.77.37.167', '2021-03-08 14:54:22', '2021-03-08 14:54:22'),
(145, 1, 'ed61e15d0295e277a4ce407e46', '103.77.37.167', '2021-03-08 14:54:34', '2021-03-08 14:54:34'),
(146, 1, '84111d75edc8896859390cfc09', '103.77.37.167', '2021-03-08 14:54:37', '2021-03-08 14:54:38'),
(147, 1, '2bcc3c4ce3a010ddd85e37a977', '103.77.37.167', '2021-03-08 14:54:46', '2021-03-08 14:54:46'),
(148, 1, 'a5d8ff821ca4a21102f125a878', '103.77.37.167', '2021-03-08 14:54:52', '2021-03-08 14:56:21'),
(149, 1, '7cf092c0e3d7efc7b7d5a52a6a', '103.77.37.149', '2021-03-27 09:03:29', '2021-03-27 09:03:29'),
(150, 1, 'f315ef06b3c5287ead10d28bff', '103.77.37.149', '2021-03-27 09:03:31', '2021-03-27 09:03:31'),
(151, 1, '8f2d2a71200614254c113bbd41', '103.77.37.149', '2021-03-27 09:03:35', '2021-03-27 09:03:35'),
(152, 1, '64496f91e626b08feae159b48c', '103.77.37.149', '2021-03-27 09:03:37', '2021-03-27 09:03:37'),
(153, 1, 'f740e90c0f7b9c512403fefad2', '103.77.37.149', '2021-03-27 09:03:38', '2021-03-27 09:03:38'),
(154, 1, '146b3e83e78dcfba10698223ac', '103.77.37.185', '2021-03-29 10:23:42', '2021-03-29 10:23:42'),
(155, 1, '1dfe47c6ebf7fe037de548533d', '103.77.37.185', '2021-03-29 10:25:33', '2021-03-29 10:25:33'),
(156, 1, 'e33cfc0335fc69fe5146b8af1c', '103.77.37.185', '2021-03-29 10:25:44', '2021-03-29 10:25:44'),
(157, 1, '7fed68ff74d07e874afd9dc069', '103.77.37.185', '2021-03-29 10:25:58', '2021-03-29 10:25:58'),
(158, 1, 'ca32373b98349bfa8f81808f76', '103.77.37.185', '2021-03-29 10:26:18', '2021-03-29 10:26:18'),
(159, 1, 'aaa1ffa1fb2bb344998fc61694', '103.77.37.185', '2021-03-29 10:26:41', '2021-03-29 10:26:41'),
(160, 1, 'e1e276db61c9f0ba8c2f3e2716', '103.77.37.185', '2021-03-29 10:26:45', '2021-03-29 10:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `approve` smallint(6) NOT NULL DEFAULT '0',
  `seller_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`, `approve`, `seller_id`) VALUES
(1, 6, 1, 0, 0),
(2, 6, 5, 0, 0),
(3, 6, 3, 0, 0),
(4, 3, 1, 0, 0),
(5, 3, 2, 0, 0),
(6, 3, 3, 0, 0),
(7, 3, 4, 0, 0),
(8, 3, 5, 0, 0),
(9, 3, 6, 0, 0),
(10, 3, 7, 0, 0),
(11, 3, 8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'Grocery Regular Basket', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(9, 'Home Page', 0),
(10, 'Advance tamil new Year celebration', 1),
(11, 'Fruits &amp; Vegetables', 1),
(12, 'Foodgrains, Oil &amp; Masala', 1),
(13, 'Bakery, Cakes &amp; Dairy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(124, 7, 1, ' Foodgrains Oil Masala', '', 'catalog/Foodgrains-Oil-Masala.png', 2),
(123, 6, 1, 'Grocery Regular Basket', 'http://hindustandeal.com/index.php?route=product/category&amp;path=34', 'catalog/Combo offers/grocery-regular-baske.jpg', 0),
(127, 13, 1, 'Bakery, Cakes &amp; Dairy', 'https://hindustandeal.com/index.php?route=product/category&amp;path=57', 'catalog/Bakery_Cakes_and_Dairy.jpg', 0),
(126, 7, 1, ' Fruits and Vegetables', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/Fruits-and-Vegetables.png', 1),
(132, 10, 1, 'Advance tamil new Year celebration', 'http://hindustandeal.com', 'catalog/add-2.jpg', 0),
(102, 8, 1, 'RnD HuB', '', 'catalog/demo/manufacturer/rnd-hub.jpg', 0),
(101, 8, 1, 'GTP Inc', '', 'catalog/demo/manufacturer/gtp-inc.jpg', 0),
(125, 7, 1, 'Snacks &amp; Branded Food', '', 'catalog/snacks-and-branded-food.png', 3),
(130, 11, 1, 'Fruits &amp; Vegetables', 'https://hindustandeal.com/index.php?route=product/category&amp;path=20', 'catalog/Fruits_and_Vegetables.jpg', 0),
(131, 12, 1, 'Foodgrains, Oil &amp; Masala', 'https://hindustandeal.com/index.php?route=product/category&amp;path=18', 'catalog/Foodgrains_Oil_and_Masala.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`, `seller_id`) VALUES
(8, 0, 9, 'cf396dd7743c4d74330f98321f', 36, 0, '{\"235\":\"2020-04-15 12:01\"}', 1, '2020-04-15 12:01:24', 0),
(20, 0, 25, '77a76f097ed9699a375e9be56f', 131, 0, '[]', 4, '2020-04-28 12:19:01', 0),
(31, 0, 32, '8a4540b73dd43009e2707e0a83', 126, 0, '{\"329\":\"66\"}', 1, '2020-05-09 22:41:43', 0),
(33, 0, 67, '78a2d86271d81ffc9a9a0e5e58', 261, 0, '{\"378\":\"186\"}', 2, '2020-07-29 10:14:57', 0),
(35, 0, 82, '58d35e337f5fcfb0c9207ca3d3', 92, 0, '{\"288\":\"2020-08-22 22:12\"}', 1, '2020-08-20 22:15:11', 0),
(37, 0, 182, 'f366df878ec98e35d4b8df0fc3', 640, 0, '[]', 1, '2021-01-07 13:09:56', 0),
(47, 0, 198, 'c6b15aae262156d0dc2dad2e34', 43, 0, '{\"228\":\"2022-02-20 18:00\"}', 1, '2021-02-22 16:22:26', 0),
(51, 0, 214, '8c07171b3ddafe38fd9e89d3c7', 254, 0, '[]', 2, '2021-04-15 11:48:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `approve` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `seller_id`, `approve`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2020-04-07 10:57:33', 0, 1),
(27, '', 43, 0, 0, 0, 1, '2009-01-31 01:55:34', '2020-04-07 11:43:31', 0, 1),
(20, '', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2020-04-14 23:17:19', 0, 1),
(24, '', 0, 1, 1, 6, 1, '2009-01-20 02:36:26', '2020-05-26 09:47:17', 0, 1),
(18, '', 0, 1, 2, 2, 1, '2009-01-05 21:49:15', '2020-05-14 17:39:51', 0, 1),
(17, '', 0, 1, 1, 5, 1, '2009-01-03 21:08:57', '2020-04-07 11:04:35', 0, 1),
(28, '', 18, 0, 0, 0, 1, '2009-02-02 13:11:12', '2020-04-15 09:29:19', 0, 1),
(26, '', 43, 0, 0, 0, 1, '2009-01-31 01:55:14', '2020-04-07 11:44:42', 0, 1),
(29, '', 18, 0, 0, 0, 1, '2009-02-02 13:11:37', '2020-04-15 09:30:11', 0, 1),
(30, '', 33, 0, 0, 0, 1, '2009-02-02 13:11:59', '2020-04-13 10:17:40', 0, 1),
(31, '', 33, 0, 0, 0, 1, '2009-02-03 14:17:24', '2020-04-13 10:16:46', 0, 1),
(32, '', 33, 0, 0, 0, 1, '2009-02-03 14:17:34', '2020-04-13 10:15:49', 0, 1),
(33, '', 0, 1, 1, 5, 1, '2009-02-03 14:17:55', '2020-05-26 09:48:04', 0, 1),
(34, '', 0, 1, 0, 7, 1, '2009-02-03 14:18:11', '2020-04-22 19:04:54', 0, 1),
(35, '', 62, 0, 0, 0, 1, '2010-09-17 10:06:48', '2020-04-15 09:32:13', 0, 1),
(36, '', 62, 0, 0, 0, 1, '2010-09-17 10:07:13', '2020-04-15 09:33:26', 0, 1),
(37, '', 47, 0, 0, 0, 1, '2010-09-18 14:03:39', '2020-04-07 11:57:54', 0, 1),
(38, '', 44, 0, 0, 0, 1, '2010-09-18 14:03:51', '2020-04-07 11:56:15', 0, 1),
(39, '', 49, 0, 0, 0, 1, '2010-09-18 14:04:17', '2020-04-12 09:51:30', 0, 1),
(40, '', 49, 0, 0, 0, 1, '2010-09-18 14:05:36', '2020-04-12 09:53:19', 0, 1),
(41, '', 49, 0, 0, 0, 1, '2010-09-18 14:05:49', '2020-04-12 09:54:34', 0, 1),
(42, '', 49, 0, 0, 0, 1, '2010-09-18 14:06:34', '2020-04-12 09:55:31', 0, 1),
(43, '', 20, 0, 0, 0, 1, '2010-09-18 14:06:49', '2020-04-07 11:24:11', 0, 1),
(44, '', 20, 0, 0, 0, 1, '2010-09-21 15:39:21', '2020-04-07 11:25:01', 0, 1),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2020-04-15 09:30:25', 0, 1),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2020-04-15 09:29:55', 0, 1),
(47, '', 20, 0, 0, 0, 1, '2010-11-07 11:13:16', '2020-04-07 11:25:54', 0, 1),
(48, '', 20, 0, 0, 0, 1, '2010-11-07 11:13:33', '2020-04-07 11:26:53', 0, 1),
(49, '', 20, 0, 0, 0, 1, '2010-11-07 11:14:04', '2020-04-14 21:10:57', 0, 1),
(50, '', 43, 0, 0, 0, 1, '2010-11-07 11:14:23', '2020-04-07 11:46:13', 0, 1),
(51, '', 43, 0, 0, 0, 1, '2010-11-07 11:14:38', '2020-04-07 11:47:05', 0, 1),
(52, '', 43, 0, 0, 0, 1, '2010-11-07 11:16:09', '2020-04-07 11:47:53', 0, 1),
(53, '', 43, 0, 0, 0, 1, '2010-11-07 11:28:53', '2020-04-07 11:48:38', 0, 1),
(54, '', 43, 0, 0, 0, 1, '2010-11-07 11:29:16', '2020-04-07 11:49:19', 0, 1),
(55, '', 43, 0, 0, 0, 1, '2010-11-08 10:31:32', '2020-04-07 11:49:52', 0, 1),
(56, '', 44, 0, 0, 0, 1, '2010-11-08 10:31:50', '2020-04-07 11:54:57', 0, 1),
(57, '', 0, 1, 1, 4, 1, '2011-04-26 08:53:16', '2020-04-07 11:16:23', 0, 1),
(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16', 0, 1),
(86, '', 20, 0, 0, 0, 1, '2020-08-13 15:34:18', '2020-08-13 15:34:18', 0, 0),
(59, '', 47, 0, 0, 0, 1, '2020-04-13 08:34:21', '2020-04-13 08:34:21', 0, 0),
(60, '', 47, 0, 0, 0, 1, '2020-04-13 09:02:25', '2020-04-13 09:02:25', 0, 0),
(61, '', 47, 0, 0, 0, 1, '2020-04-13 09:18:11', '2020-04-13 09:18:11', 0, 0),
(62, '', 18, 0, 0, 0, 1, '2020-04-13 10:01:07', '2020-04-15 09:28:35', 0, 0),
(63, '', 18, 0, 0, 0, 1, '2020-04-13 10:02:02', '2020-04-15 09:30:54', 0, 0),
(64, '', 18, 0, 0, 0, 1, '2020-04-13 10:02:53', '2020-04-15 09:30:42', 0, 0),
(65, '', 18, 0, 0, 0, 1, '2020-04-13 10:03:47', '2020-04-15 09:29:06', 0, 0),
(66, '', 62, 0, 0, 0, 1, '2020-04-15 09:34:50', '2020-04-15 09:34:50', 0, 0),
(67, '', 34, 0, 1, 0, 1, '2020-04-17 08:26:25', '2020-04-17 08:26:25', 0, 0),
(68, '', 67, 0, 1, 0, 1, '2020-04-17 08:27:45', '2020-04-17 08:27:45', 0, 0),
(69, '', 67, 0, 2, 0, 1, '2020-04-17 08:28:41', '2020-04-17 08:28:41', 0, 0),
(70, '', 65, 0, 0, 0, 1, '2020-04-22 13:10:08', '2020-04-22 13:10:08', 0, 0),
(71, '', 65, 0, 0, 0, 1, '2020-04-22 17:01:01', '2020-04-22 17:01:01', 0, 0),
(72, '', 65, 0, 0, 0, 1, '2020-04-22 17:49:51', '2020-04-22 17:49:51', 0, 0),
(73, '', 34, 0, 0, 0, 1, '2020-04-22 18:57:07', '2020-04-22 18:57:07', 0, 0),
(74, '', 33, 0, 0, 0, 1, '2020-04-23 08:57:57', '2020-04-23 08:57:57', 0, 0),
(75, '', 33, 0, 0, 0, 1, '2020-04-23 09:56:30', '2020-04-23 09:56:30', 0, 0),
(76, '', 33, 0, 0, 0, 1, '2020-04-23 11:36:47', '2020-04-23 11:36:47', 0, 0),
(77, '', 33, 0, 0, 0, 1, '2020-04-23 12:58:30', '2020-04-23 12:58:30', 0, 0),
(78, '', 46, 0, 0, 0, 1, '2020-04-29 12:49:44', '2020-04-29 14:52:56', 0, 0),
(79, '', 46, 0, 0, 0, 1, '2020-04-29 14:54:17', '2020-04-29 14:54:17', 0, 0),
(80, '', 46, 0, 0, 0, 1, '2020-04-29 14:55:31', '2020-04-29 14:55:31', 0, 0),
(81, '', 46, 0, 0, 0, 1, '2020-04-29 14:56:28', '2020-04-29 14:56:28', 0, 0),
(82, '', 46, 0, 0, 0, 1, '2020-04-29 14:57:19', '2020-04-29 14:57:19', 0, 0),
(83, '', 46, 0, 0, 0, 1, '2020-04-29 14:58:12', '2020-04-29 14:58:12', 0, 0),
(84, '', 46, 0, 0, 0, 1, '2020-04-29 14:59:23', '2020-04-29 14:59:23', 0, 0),
(85, '', 46, 0, 0, 0, 1, '2020-04-29 15:00:13', '2020-04-29 15:00:13', 0, 0),
(87, '', 17, 0, 1, 0, 1, '2020-08-22 11:21:04', '2020-08-22 11:21:04', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(32, 1, 'Eggs', '&lt;p&gt;Eggs&lt;br&gt;&lt;/p&gt;', 'Eggs', '', ''),
(31, 1, 'Poultry', '&lt;p&gt;Poultry&lt;br&gt;&lt;/p&gt;', 'Poultry', '', ''),
(30, 1, 'Fish &amp; Seafood', '&lt;p&gt;Fish &amp;amp; Seafood&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Fish &amp; Seafood', '', ''),
(66, 1, 'Urad &amp; Other Dals', '', 'Urad &amp; Other Dals', '', ''),
(27, 1, 'Potato, Onion &amp; Tomato', '&lt;p&gt;Potato, Onion &amp;amp; Tomato&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Potato, Onion &amp; Tomato', 'Potato, Onion &amp; Tomato\r\n', ''),
(26, 1, 'Root Vegetables', '&lt;p&gt;Root Vegetables&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Root Vegetables', 'Root Vegetables\r\n', ''),
(17, 1, 'Beauty &amp; Hygiene', '&lt;p&gt;Beauty &amp;amp; Hygiene&lt;br&gt;&lt;/p&gt;', 'Beauty &amp; Hygiene', 'Beauty &amp; Hygiene', ''),
(25, 1, 'Snacks &amp; Branded Foods', '&lt;p&gt;Snacks &amp;amp; Branded Foods&lt;br&gt;&lt;/p&gt;', 'Snacks &amp; Branded Foods', 'Snacks &amp; Branded Foods', ''),
(20, 1, 'Fruits &amp; Vegetables', '&lt;p&gt;&lt;a href=&quot;https://www.webmd.com/food-recipes/ss/slideshow-fun-facts-fruits-vegetables&quot; ping=&quot;/url?sa=t&amp;amp;source=web&amp;amp;rct=j&amp;amp;url=https://www.webmd.com/food-recipes/ss/slideshow-fun-facts-fruits-vegetables&amp;amp;ved=2ahUKEwjjoJ-DwdXoAhV6H7cAHRXCBsoQFjAjegQIBhAB&quot; style=&quot;color: rgb(102, 0, 153); cursor: pointer; font-family: arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/a&gt;&lt;/p&gt;', 'Fruits &amp; Vegetables', 'Fruits &amp; Vegetables', ''),
(35, 1, 'Toor, Channa &amp; Moong Dal', '', 'Toor, Channa &amp; Moong Dal', '', ''),
(36, 1, 'Cereals &amp; Millets', '', 'Cereals &amp; Millets', '', ''),
(37, 1, 'Banana, Sapota &amp; Papaya', '&lt;p&gt;Banana, Sapota &amp;amp; Papaya&lt;br&gt;&lt;/p&gt;', 'Banana, Sapota &amp; Papaya', 'Banana, Sapota &amp; Papaya', ''),
(38, 1, 'Indian &amp; Exotic Herbs', '&lt;p&gt;Indian &amp;amp; Exotic Herbs&lt;br&gt;&lt;/p&gt;', 'Indian &amp; Exotic Herbs', 'Indian &amp; Exotic Herbs', ''),
(39, 1, 'Cut Fruit, Tender Coconut', '&lt;p&gt;Cut Fruit, Tender Coconut&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Cut Fruit, Tender Coconut', '', ''),
(40, 1, 'Cut &amp; Peeled Veggies', '&lt;p&gt;Cut &amp;amp; Peeled Veggies&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Cut &amp; Peeled Veggies', '', ''),
(41, 1, 'Fresh Salads &amp; Sprouts', '&lt;p&gt;Fresh Salads &amp;amp; Sprouts&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Fresh Salads &amp; Sprouts', '', ''),
(42, 1, 'Recipe Packs', '&lt;p&gt;Recipe Packs&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Recipe Packs', '', ''),
(43, 1, 'Fresh Vegetables', '&lt;p&gt;Fresh Vegetables&lt;br&gt;&lt;/p&gt;', 'Fresh Vegetables', 'Fresh Vegetables', ''),
(18, 1, 'Foodgrains, Oil &amp; Masala', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Foodgrains, Oil &amp; Masala', 'Foodgrains, Oil &amp; Masala', ''),
(57, 1, 'Bakery, Cakes &amp; Dairy', '&lt;p&gt;Bakery, Cakes &amp;amp; Dairy&lt;br&gt;&lt;/p&gt;', 'Bakery, Cakes &amp; Dairy', 'Bakery, Cakes &amp; Dairy', ''),
(44, 1, 'Herbs &amp; Seasonings', '&lt;p&gt;Herbs &amp;amp; Seasonings&lt;br&gt;&lt;/p&gt;', 'Herbs &amp; Seasonings', 'Herbs &amp; Seasonings', ''),
(47, 1, 'Fresh Fruits', '&lt;p&gt;Fresh Fruits&lt;br&gt;&lt;/p&gt;', 'Fresh Fruits', 'Fresh Fruits', ''),
(48, 1, 'Exotic Fruits &amp; Veggies', '&lt;p&gt;Exotic Fruits &amp;amp; Veggies&lt;br&gt;&lt;/p&gt;', 'Exotic Fruits &amp; Veggies', 'Exotic Fruits &amp; Veggies', ''),
(50, 1, 'Cucumber &amp; Capsicum', '&lt;p&gt;Cucumber &amp;amp; Capsicum&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Cucumber &amp; Capsicum', 'Cucumber &amp; Capsicum\r\n', ''),
(51, 1, 'Beans, Brinjals &amp; Okra', '&lt;p&gt;Beans, Brinjals &amp;amp; Okra&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Beans, Brinjals &amp; Okra', 'Beans, Brinjals &amp; Okra\r\n', ''),
(52, 1, 'Gourd, Pumpkin, Drumstick', '&lt;p&gt;Gourd, Pumpkin, Drumstick&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Gourd, Pumpkin, Drumstick', 'Gourd, Pumpkin, Drumstick\r\n', ''),
(53, 1, 'Cabbage &amp; Cauliflower', '&lt;p&gt;Cabbage &amp;amp; Cauliflower&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Cabbage &amp; Cauliflower', 'Cabbage &amp; Cauliflower\r\n', ''),
(54, 1, 'Leafy Vegetables', '&lt;p&gt;Leafy Vegetables&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Leafy Vegetables', 'Leafy Vegetables\r\n', ''),
(55, 1, 'Specialty', '&lt;p&gt;Specialty&lt;br&gt;&lt;/p&gt;', 'Specialty', 'Specialty', ''),
(56, 1, 'Lemon, Ginger &amp; Garlic', '&lt;p&gt;Lemon, Ginger &amp;amp; Garlic&lt;br&gt;&lt;/p&gt;', 'Lemon, Ginger &amp; Garlic', 'Lemon, Ginger &amp; Garlic', ''),
(58, 1, 'test 25', '', 'test 25', '', ''),
(33, 1, 'Meat &amp; Fish', '&lt;p&gt;Meat &amp;amp; Fish&lt;br&gt;&lt;/p&gt;', 'Meat &amp; Fish', 'Meat &amp; Fish', ''),
(49, 1, 'Cuts &amp; Sprouts', '&lt;p&gt;Cuts &amp;amp; Sprouts&lt;br&gt;&lt;/p&gt;', 'Cuts &amp; Sprouts', 'Cuts &amp; Sprouts', ''),
(59, 1, 'Kiwi, Melon, Citrus Fruit', '&lt;h2 qa=&quot;pageName&quot; class=&quot;ng-binding&quot; style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 24px; line-height: normal; font-family: ProximaNovaA-Regular; color: rgb(88, 89, 91); margin: 12px 0px 5px; padding: 0px;&quot;&gt;&lt;span ng-bind=&quot;vm.screen_name&quot; class=&quot;ng-binding&quot;&gt;Kiwi, Melon, Citrus Fruit&lt;/span&gt;&lt;/h2&gt;', 'Kiwi, Melon, Citrus Fruit', '', ''),
(60, 1, 'Apples &amp; Pomegranate', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span ng-bind=&quot;subcategory2.display_name&quot; class=&quot;ng-binding&quot; style=&quot;color: rgb(98, 161, 84); font-family: ProximaNovaA-Semibold; font-size: 14px;&quot;&gt;Apples &amp;amp; Pomegranate&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Apples &amp; Pomegranate', '', ''),
(61, 1, ' Seasonal Fruits', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(88, 89, 91); font-family: ProximaNovaA-Regular; font-size: 24px;&quot;&gt;Seasonal Fruits&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', ' Seasonal Fruits', '', ''),
(62, 1, 'Dals &amp; Pulses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dals &amp; Pulses', '', ''),
(63, 1, 'Salt, Sugar &amp; Jaggery', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Salt, Sugar &amp; Jaggery', '', ''),
(64, 1, 'Rice &amp; Rice Products', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Rice &amp; Rice Products', '', ''),
(65, 1, 'Atta, Flours &amp; Sooji', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Atta, Flours &amp; Sooji', '', ''),
(46, 1, 'Edible Oils &amp; Ghee', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Edible Oils &amp; Ghee', '', ''),
(45, 1, 'Organic Staples', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Organic Staples', '', ''),
(29, 1, 'Masalas &amp; Spices', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Masalas &amp; Spices', '', ''),
(28, 1, 'Dry Fruits', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dry Fruits', '', ''),
(34, 1, 'Combo offers ', '&lt;p class=&quot;&quot;&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Combo offers ', 'Baby Care', ''),
(67, 1, ' Fruits &amp; Vegetables', '', ' Fruits &amp; Vegetables', '', ''),
(68, 1, 'Fruits', '', 'Fruits', '', ''),
(69, 1, 'Vegetables', '', 'Vegetables', '', ''),
(70, 1, 'Atta Whole Wheat', '', 'Atta Whole Wheat', 'Atta Whole Wheat', ''),
(71, 1, 'Rice &amp; Other Flours', '', 'Rice &amp; Other Flours', 'Rice &amp; Other Flours', ''),
(72, 1, 'Sooji, Maida &amp; Besan', '', 'Sooji, Maida &amp; Besan', 'Sooji, Maida &amp; Besan', ''),
(73, 1, 'Grocery', '', 'Grocery', '', ''),
(74, 1, 'Mutton &amp; Lamb', '', 'Mutton &amp; Lamb', 'Mutton &amp; Lamb', ''),
(75, 1, 'Fresh Mutton', '', 'Fresh Mutton', 'Fresh Mutton', ''),
(76, 1, 'Chicken ', '', 'Chicken', 'Chicken', ''),
(77, 1, 'Fresh Beef', '', 'Fresh Beef', 'Fresh Beef', ''),
(78, 1, 'Blended Cooking Oils', '', 'Blended Cooking Oils', 'Blended Cooking Oils', ''),
(79, 1, 'Sunflower, Rice Bran Oil', '', 'Sunflower, Rice Bran Oil', 'Sunflower, Rice Bran Oil', ''),
(80, 1, 'Soya &amp; Mustard Oils', '', 'Soya &amp; Mustard Oils', 'Soya &amp; Mustard Oils\r\n', ''),
(81, 1, 'Gingelly Oil', '', 'Gingelly Oil', 'Gingelly Oil\r\n', ''),
(82, 1, 'Ghee &amp; Vanaspati', '', 'Ghee &amp; Vanaspati', 'Ghee &amp; Vanaspati\r\n', ''),
(83, 1, 'Other Edible Oils', '', 'Other Edible Oils', 'Other Edible Oils\r\n', ''),
(84, 1, 'Olive &amp; Canola Oils', '', 'Olive &amp; Canola Oils', 'Olive &amp; Canola Oils\r\n', ''),
(85, 1, 'Gingelly, Groundnut Oils', '', 'Gingelly, Groundnut Oils', 'Gingelly, Groundnut Oils', ''),
(24, 1, 'Electronics', '&lt;div&gt;&lt;font color=&quot;#111111&quot; face=&quot;Ubuntu, sans-serif&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;', 'Electronics', 'Electronics', 'Electronics'),
(86, 1, 'Spinach (Keerai)', '', 'Spinach (Keerai)', 'Spinach (Keerai)', 'Spinach (Keerai)'),
(87, 1, 'Personal Care', '', 'Personal Care', 'Personal Care', 'Personal Care');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 18, 0),
(28, 28, 1),
(35, 18, 0),
(35, 62, 1),
(35, 35, 2),
(36, 62, 1),
(36, 18, 0),
(36, 36, 2),
(29, 18, 0),
(29, 29, 1),
(30, 33, 0),
(30, 30, 1),
(31, 33, 0),
(31, 31, 1),
(32, 33, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 2),
(26, 20, 0),
(26, 26, 2),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(37, 20, 0),
(37, 37, 2),
(38, 20, 0),
(38, 38, 2),
(39, 20, 0),
(39, 39, 2),
(40, 20, 0),
(40, 40, 2),
(41, 20, 0),
(41, 41, 2),
(42, 20, 0),
(42, 42, 2),
(43, 20, 0),
(43, 43, 1),
(44, 20, 0),
(44, 44, 1),
(47, 20, 0),
(47, 47, 1),
(48, 20, 0),
(48, 48, 1),
(49, 20, 0),
(49, 49, 1),
(50, 20, 0),
(50, 50, 2),
(51, 20, 0),
(51, 51, 2),
(52, 20, 0),
(52, 52, 2),
(58, 20, 0),
(58, 52, 2),
(58, 58, 3),
(53, 20, 0),
(53, 53, 2),
(54, 20, 0),
(54, 54, 2),
(55, 20, 0),
(55, 55, 2),
(56, 20, 0),
(56, 56, 2),
(57, 57, 0),
(27, 43, 1),
(26, 43, 1),
(50, 43, 1),
(51, 43, 1),
(52, 43, 1),
(58, 43, 1),
(53, 43, 1),
(54, 43, 1),
(55, 43, 1),
(56, 44, 1),
(38, 44, 1),
(37, 47, 1),
(39, 49, 1),
(40, 49, 1),
(41, 49, 1),
(42, 49, 1),
(59, 20, 0),
(59, 47, 1),
(59, 59, 2),
(60, 20, 0),
(60, 47, 1),
(60, 60, 2),
(61, 20, 0),
(61, 47, 1),
(61, 61, 2),
(62, 18, 0),
(62, 62, 1),
(63, 18, 0),
(63, 63, 1),
(64, 18, 0),
(64, 64, 1),
(65, 18, 0),
(65, 65, 1),
(66, 18, 0),
(66, 62, 1),
(66, 66, 2),
(67, 34, 0),
(67, 67, 1),
(68, 34, 0),
(68, 67, 1),
(68, 68, 2),
(69, 34, 0),
(69, 67, 1),
(69, 69, 2),
(70, 18, 0),
(70, 65, 1),
(70, 70, 2),
(71, 18, 0),
(71, 65, 1),
(71, 71, 2),
(72, 18, 0),
(72, 65, 1),
(72, 72, 2),
(73, 34, 0),
(73, 73, 1),
(74, 33, 0),
(74, 74, 1),
(75, 33, 0),
(75, 75, 1),
(76, 33, 0),
(76, 76, 1),
(77, 33, 0),
(77, 77, 1),
(78, 46, 1),
(78, 18, 0),
(78, 78, 2),
(79, 18, 0),
(79, 46, 1),
(79, 79, 2),
(80, 18, 0),
(80, 46, 1),
(80, 80, 2),
(81, 18, 0),
(81, 46, 1),
(81, 81, 2),
(82, 18, 0),
(82, 46, 1),
(82, 82, 2),
(83, 18, 0),
(83, 46, 1),
(83, 83, 2),
(84, 18, 0),
(84, 46, 1),
(84, 84, 2),
(85, 18, 0),
(85, 46, 1),
(85, 85, 2),
(86, 20, 0),
(86, 86, 1),
(87, 17, 0),
(87, 87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(18, 0, 0),
(25, 0, 0),
(57, 0, 0),
(17, 0, 0),
(24, 0, 0),
(33, 0, 0),
(34, 0, 0),
(43, 0, 0),
(44, 0, 0),
(47, 0, 0),
(48, 0, 0),
(49, 0, 0),
(27, 0, 0),
(26, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(38, 0, 0),
(37, 0, 0),
(39, 0, 0),
(40, 0, 0),
(41, 0, 0),
(42, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(46, 0, 0),
(45, 0, 0),
(29, 0, 0),
(28, 0, 0),
(32, 0, 0),
(31, 0, 0),
(30, 0, 0),
(35, 0, 0),
(36, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_commission`
--

CREATE TABLE `oc_commission` (
  `commission_id` int(11) NOT NULL,
  `commission_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `commission_type` tinyint(4) NOT NULL,
  `commission` int(11) NOT NULL,
  `product_limit` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `amount` float NOT NULL,
  `commission_discount` int(11) NOT NULL,
  `per` int(11) NOT NULL,
  `duration_id` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_commission`
--

INSERT INTO `oc_commission` (`commission_id`, `commission_name`, `commission_type`, `commission`, `product_limit`, `sort_order`, `date_add`, `amount`, `commission_discount`, `per`, `duration_id`, `description`) VALUES
(1, 'Gold', 0, 10, 20, 2, '0000-00-00 00:00:00', 0, 0, 0, '', ''),
(2, 'Silver', 1, 20, 5, 3, '0000-00-00 00:00:00', 0, 0, 0, '', ''),
(3, 'Bronze', 0, 30, 10, 1, '0000-00-00 00:00:00', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_commission_rates`
--

CREATE TABLE `oc_commission_rates` (
  `category_id` int(11) NOT NULL,
  `commission_id` int(11) NOT NULL,
  `commission_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2020-06-22', '2020-06-24', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18'),
(7, 'suhi06', '6666', 'F', '30.0000', 0, 0, '0.0000', '2020-06-22', '2020-07-22', 1, '1', 0, '2020-06-22 18:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 0, '2020-03-26 22:37:05'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 0, '2020-03-26 17:08:14'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 0, '2020-03-26 22:36:45'),
(4, 'Indian Rupees', 'INR', '', ' ₹', '2', 1.00000000, 1, '2021-04-17 16:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'swati', 'mahajan', 'swati.mahajan.1985@gmail.com', '87899898', '', '3a1af7f00ed19fb61fd75061c7d8bb64e887a507', 'JAdDlsJWs', NULL, NULL, 0, 1, '', '2.49.110.5', 1, 0, '', '', '2020-02-18 13:55:39'),
(25, 1, 0, 1, 'Manikandan', 'C', 'mk4047695@gmail.com', '9042126463', '', 'cea30b3ed4c7347b376f21e9f511af6fb6619242', 'SCBeZ35az', NULL, NULL, 1, 12, '', '112.133.237.22', 1, 0, '', '', '2020-04-28 12:15:20'),
(22, 1, 0, 1, 'Louisa', 'Dooley', 'juliepascoe@bigpond.com', '1-050-906-4116 x0772', '', '1e0f4f9e41c4729427d8e40d2a4fecca838d76c5', 'RC9SEp09l', NULL, NULL, 0, 0, '', '104.244.76.56', 1, 0, '', '', '2020-04-27 21:08:48'),
(4, 1, 0, 1, 'Toni', 'Hackett', 'mark@qualitysoundinc.com', '326-656-5206 x31126', '', '39a55a89c03aca679e4d83505631257b5e67e554', 'KCtfzI5f9', NULL, NULL, 0, 0, '', '185.220.101.2', 1, 0, '', '', '2020-03-31 06:55:42'),
(5, 1, 0, 1, 'Suhail ', 'Syed ', 'suhaisha.14321@gmail.com', '9066987654', '', '5bdc659e3e010396689376598329cbd948af8bc0', 'xxh5Xgwdp', NULL, NULL, 1, 2, '', '223.182.196.13', 1, 0, '', '', '2020-04-02 16:33:39'),
(24, 1, 0, 1, 'Siva ', 'Kumar', 'sivakumar12051986@gmail.com', '919578883144', '', '9dbcc5f5ef7aa2691d1b4d46f43f2ac5c267716f', 'ZvrOgIhSm', NULL, NULL, 1, 11, '', '112.133.236.46', 1, 0, '', '', '2020-04-28 11:50:25'),
(18, 1, 0, 1, 'sukumar', 'hhh', 'sukumar.inapp2@gmail.com', '8778193926', '', '698d51a19d8a121ce581499d7b701668', 'KLhfisDFB', NULL, NULL, 0, 0, '[]', '157.49.160.115', 1, 0, '', '', '2020-04-15 23:33:41'),
(19, 1, 0, 1, 'kannan', 'Page', 'gtp.kannan@gmail.com', '9344332244', '', '984db247e1e7a3e9e157aff087442c19b4b1ab10', 'tybNVQ9U9', NULL, NULL, 1, 9, '', '112.133.237.32', 1, 0, '', '', '2020-04-15 23:55:27'),
(20, 1, 0, 1, 'Danielle', 'Auer', 'arlene_2007@verizon.net', '(250) 896-1825 x152', '', '8341c40def7b5eb3bc8e4e1f11774c11d3f361b9', 'MIZMxsq0A', NULL, NULL, 0, 0, '', '167.114.92.52', 1, 0, '', '', '2020-04-17 13:19:39'),
(21, 1, 0, 1, 'Mac', 'Stoltenberg', 'heasma02@hotmail.com', '(648) 891-8041 x71400', '', 'b913b331ea6b4ba78adb9aaae35e70345f9ca362', 'W7lYkx9d5', NULL, NULL, 0, 0, '', '46.166.139.111', 1, 0, '', '', '2020-04-23 23:15:36'),
(23, 1, 0, 1, 'Ravi', 'A', 'iniya5415@gmail.com', '8903706261', '', '586e2d3e6613cd5fb41cddd2c83739e7bc033380', '7ytqHaIBP', NULL, NULL, 1, 10, '', '112.133.237.22', 1, 0, '', '', '2020-04-28 11:26:00'),
(26, 1, 0, 1, 'Alwin', 'Anbu Sign Pvt Ltd', 'anbusign@yahoo.com', '7305505050', '', '0ac10ef8a77535993402eb8a4fb8f1001f1af34f', 'G5e4zq0Ma', NULL, NULL, 1, 13, '[]', '112.133.236.46', 1, 0, '', '', '2020-04-28 12:24:58'),
(27, 1, 0, 1, 'Theresia', 'Quitzon', 'missrenteria@yahoo.com', '206.971.0721', '', 'cdcadeacb88803ae49cc8bd3eb6dbf8250aa05b3', 'Msqv2ELXJ', NULL, NULL, 0, 0, '', '185.121.69.14', 1, 0, '', '', '2020-04-28 18:32:06'),
(28, 1, 0, 1, 'Jesus', 'Jino', 'Jino04652@gmail.com', '9047736317', '', '5787d931ca441bb2359465f770bd06629e037f14', 'K8pQesM0o', NULL, NULL, 1, 16, '[]', '122.166.197.63', 1, 0, '', '', '2020-05-02 19:37:23'),
(29, 1, 0, 1, 'Amal', 'Raji', 'amalrajraj232@gmail.com', '9994430534', '', '774c47c2e0b391aa43f5f71f135fb98c2ed69d64', 'DhhasNpnv', NULL, NULL, 1, 14, '', '112.133.248.125', 1, 0, '', '', '2020-05-02 22:32:07'),
(30, 1, 0, 1, 'Martina', 'Welch', 'debraluci@yahoo.com', '17244127593', '', '176b23556677c604de0b2b92c0977be0f8fea0ac', 'qc9xzEbEJ', NULL, NULL, 0, 0, '', '185.220.101.212', 1, 0, '', '', '2020-05-06 18:53:30'),
(31, 1, 0, 1, 'Valerie', 'Fritsch', 'bwyn17@yahoo.com', '11042768039', '', 'e8c23bdba57d2a86cb8f3895e40a2559c884d17f', 'F2tCgvzDf', NULL, NULL, 0, 0, '', '104.244.73.193', 1, 0, '', '', '2020-05-09 19:08:01'),
(32, 1, 0, 1, 'Benny', 'Lourdwin', 'lourdwinbenny@gmail.com', '9488252524', '', '20c86d252c348888f3abe04b364417d7886a11f6', '1GLUzciPb', NULL, NULL, 1, 15, '', '112.133.236.46', 1, 0, '', '', '2020-05-09 22:13:32'),
(33, 1, 0, 1, 'Marques', 'Bogisich', 'lisahouareau@hotmail.com', '14359565117', '', 'c05674eafa9c68e18c96d5fb91192ab0300bdcfd', 'uT9Dlpok8', NULL, NULL, 0, 0, '', '51.75.52.118', 1, 0, '', '', '2020-05-10 15:38:35'),
(34, 1, 0, 1, 'Audie', 'Okuneva', 'mangus111979@gmail.com', '11309174822', '', '63703d87ba70828e713f5be29fa3bc32af2519f4', '6vlvW48MY', NULL, NULL, 0, 0, '', '62.102.148.68', 1, 0, '', '', '2020-05-13 12:28:09'),
(35, 1, 0, 1, 'TSAciS080', 'eryn  Steski ', 'FLTSUXSiXTY@men.marrived.com', '89936117772', '', '094d5e622ec7feccc39815554850ae733037c4c5', 'T8tjNyO47', NULL, NULL, 0, 0, '', '195.154.207.112', 1, 0, '', '', '2020-05-15 13:37:15'),
(36, 1, 0, 1, 'Destin', 'Wolff', 'capricecfusco@gmail.com', '19002150218', '', '63fc6345b2c31175b3a3f10aa5dbcca82e2187b5', 'X6NZ4hx1F', NULL, NULL, 0, 0, '', '51.38.233.93', 1, 0, '', '', '2020-05-15 19:29:52'),
(37, 1, 0, 1, 'Cicero', 'Rutherford', 'clayps@gmail.com', '15209639714', '', 'aee6680ba6f8ad1b975a9d06bd2e4d828f2cb9c1', 'WzQ2VuH3r', NULL, NULL, 0, 0, '', '212.47.229.4', 1, 0, '', '', '2020-05-21 07:26:29'),
(38, 1, 0, 1, 'Imani', 'Graham', 'nnmbady@hotmail.com', '10007346687', '', 'acb4b3fc5f8a7705d152191928e7b5884d96d6f4', 'Thz9vSC0U', NULL, NULL, 0, 0, '', '185.220.101.156', 1, 0, '', '', '2020-05-25 09:27:01'),
(39, 1, 0, 1, 'Alvina', 'Raynor', 'abigailoansah@yahoo.co.uk', '11272037187', '', 'bcbaa1035d0835bb1e61f87cdb50cad44b8a0abf', '4Grcw5F8i', NULL, NULL, 0, 0, '', '27.122.59.100', 1, 0, '', '', '2020-05-30 03:55:47'),
(40, 1, 0, 1, 'Creola', 'Leffler', 'cbuchanan10@hotmail.co.uk', '18340409519', '', 'a51dc1b37b7a876956b52d4779bc44ab5c2cf0b7', 'hhzgjPpyq', NULL, NULL, 0, 0, '', '23.129.64.193', 1, 0, '', '', '2020-06-01 03:12:39'),
(41, 1, 0, 1, 'Treva', 'Boyle', 'babsecameron@yahoo.co.uk', '16843899069', '', '8da30d1f254c4bca548e64f42b67bbb77c81e3f7', 'il6vAcJul', NULL, NULL, 0, 0, '', '46.19.141.86', 1, 0, '', '', '2020-06-01 12:58:25'),
(42, 1, 0, 1, 'Cedrick', 'Gorczany', 'cmekchinda@msn.com', '14565434531', '', '7e6cfdf212510acc8c2ef5d2d485be9906b55523', 'Y0zmF6K1s', NULL, NULL, 0, 0, '', '95.211.230.211', 1, 0, '', '', '2020-06-05 08:09:18'),
(43, 1, 0, 1, 'Gerda', 'Rolfson', 'akelamacwilliams@yahoo.com', '18155951449', '', 'e8e4148838842d5351c9d8340a42bebb17fa14c8', '7YHHTH30Q', NULL, NULL, 0, 0, '', '167.114.92.50', 1, 0, '', '', '2020-06-06 07:37:17'),
(44, 1, 0, 1, 'Nolan', 'Bosco', 'filin_phuong@hotmail.com', '11482991354', '', '8fea40e61e835dad19c3e7071ace030ce957d804', 'aRryYufN6', NULL, NULL, 0, 0, '', '89.31.57.5', 1, 0, '', '', '2020-06-07 01:03:25'),
(45, 1, 0, 1, 'Malachi', 'Jacobs', 'jefferypoland@aol.com', '16167973441', '', '771403b6078e228b7db8ba29f88bad2d88d5f4ef', '4LGoT96oY', NULL, NULL, 0, 0, '', '199.249.230.100', 1, 0, '', '', '2020-06-08 08:38:31'),
(46, 1, 0, 1, 'Jennings', 'Labadie', 'louvainlake@aol.com', '19060094662', '', '8fc7c2aaa55001221dc10f1c77516f89b6b8fac1', 'OuUrgCyEP', NULL, NULL, 0, 0, '', '185.100.87.41', 1, 0, '', '', '2020-06-08 14:28:55'),
(47, 1, 0, 1, 'Elna', 'D\'Amore', 'kimberly@ciaowireless.com', '14820811181', '', '967c0dbb3b5ca251e9ab82bb7155ad6316f64974', 'vzEWFLbzS', NULL, NULL, 0, 0, '', '185.220.101.197', 1, 0, '', '', '2020-06-10 19:56:57'),
(48, 1, 0, 1, 'Donald', 'Smitham', 'kruffule@gmail.com', '11931177735', '', 'd33e145505b85c1e61c8c012aab6fcf9805af689', 'vK3ksPwEI', NULL, NULL, 0, 0, '', '212.21.66.6', 1, 0, '', '', '2020-06-15 20:33:53'),
(49, 1, 0, 1, 'London', 'Gusikowski', 'jarhead1093@gmail.com', '16530959869', '', '0e61f0859f900b4bd479241b18f8f45cdbcea8eb', 'bcuDcWazP', NULL, NULL, 0, 0, '', '185.220.101.129', 1, 0, '', '', '2020-06-18 14:15:09'),
(50, 1, 0, 1, 'Katrine', 'Turner', 'karsten.wolfewicz@web.de', '17130789974', '', 'e25fb59e995a3fc6c121a1319699737cf9f0baae', 'dHqLxUkmf', NULL, NULL, 0, 0, '', '193.70.12.219', 1, 0, '', '', '2020-06-19 15:00:35'),
(51, 1, 0, 1, 'Ella', 'Nienow', 'acarvalho@comecogroupinc.com', '19507055407', '', '81eb58ac900fd38d1a230efc1c188dcad5ae4f46', 'JHHLToEgx', NULL, NULL, 0, 0, '', '199.249.230.119', 1, 0, '', '', '2020-06-22 04:23:05'),
(52, 1, 0, 1, 'Tommie', 'Lind', 'daisy.g@gcliconcrete.com', '14280890618', '', '1121e809764971fecbfab887909d9a72e286659a', 'CEAKHNbOY', NULL, NULL, 0, 0, '', '185.220.100.246', 1, 0, '', '', '2020-06-22 20:43:24'),
(53, 1, 0, 1, 'Connor', 'Mraz', 'zandaaisso2020@gmail.com', '14596864484', '', '5e6e2b56a78a937d4134cbfd12d2a00f94c93f6e', 'io0d1SwHS', NULL, NULL, 0, 0, '', '185.107.83.71', 1, 0, '', '', '2020-06-25 16:25:20'),
(54, 1, 0, 1, 'Katharina', 'Abbott', 'abrianna.boggs@aol.com', '16910999992', '', '3711138cf3914bd1abdffa4d09f5dd9a61f88b9e', 'xqauzMt6j', NULL, NULL, 0, 0, '', '51.75.144.43', 1, 0, '', '', '2020-06-27 05:04:27'),
(55, 1, 0, 1, 'Heloise', 'Prohaska', 'valerie.bonfiglio@pro-digno.de', '10312581081', '', 'e7a238673b8eabc088fdf4753b0ce2534d5658e7', '1oQ3why8H', NULL, NULL, 0, 0, '', '185.220.100.253', 1, 0, '', '', '2020-06-27 09:44:08'),
(56, 1, 0, 1, 'Madie', 'Tremblay', 'jamesm14793@gmail.com', '10996362352', '', 'ac99931bd4a38bb83492e6073fb09291cd3531bf', 'FoIwj5BoT', NULL, NULL, 0, 0, '', '188.214.104.146', 1, 0, '', '', '2020-06-28 14:39:05'),
(57, 1, 0, 1, 'Spencer', 'Pollich', 'mrjarrodmoore@gmail.com', '12599505637', '', '1bf2ab8b356f7c0835a8a4f6090564d22adaaa39', 'OzvVqEilt', NULL, NULL, 0, 0, '', '185.220.101.166', 1, 0, '', '', '2020-07-02 08:07:27'),
(58, 1, 0, 1, 'Duane', 'Eichmann', 'dsafran@juno.com', '10374852204', '', '3554cf2d8d47f92a2f90a3dc83fbbbcce91b8acc', 'T0ZyHvv2q', NULL, NULL, 0, 0, '', '185.220.101.217', 1, 0, '', '', '2020-07-02 20:02:43'),
(59, 1, 0, 1, 'Emelia', 'Schimmel', 'lacatt@hotmail.com', '19490718931', '', '41513041219798a86385d48b45587523f9886033', 'RhMJ0RlGK', NULL, NULL, 0, 0, '', '51.79.53.145', 1, 0, '', '', '2020-07-03 19:53:52'),
(60, 1, 0, 1, 'Meggie', 'Kuhic', 'deepwatr@mindless.com', '12753252022', '', '89e93b7359f370e090a8c92ba463c088b8e52528', 'Wqd6a6ZQL', NULL, NULL, 0, 0, '', '199.249.230.141', 1, 0, '', '', '2020-07-05 00:48:58'),
(61, 1, 0, 1, 'Simone', 'Schneider', 'ledgington@shaw.ca', '19112377075', '', 'a8609dd168fb3f9dfad5b675bfece9a7ac19accf', 'kuyiM8te1', NULL, NULL, 0, 0, '', '163.172.125.41', 1, 0, '', '', '2020-07-05 18:23:08'),
(62, 1, 0, 1, 'Leland', 'Renner', 'info@starpress.de', '17309382189', '', '5716b3981b5d862952213b9d03b818871987fe0a', 'dI6qleoSb', NULL, NULL, 0, 0, '', '185.220.101.224', 1, 0, '', '', '2020-07-13 00:23:35'),
(63, 1, 0, 1, 'Raleigh', 'Fahey', 'karenpaschal@verizon.net', '16601439854', '', '67109f84f6a1c33393039215d64ddde6c690ab46', 'SmbZlbqPe', NULL, NULL, 0, 0, '', '46.165.230.5', 1, 0, '', '', '2020-07-14 16:15:54'),
(64, 1, 0, 1, 'Alvah', 'Buckridge', 'meg_dodd@hotmail.com', '19903229665', '', '8b1244c7ceb26fe212b5827748efe75855ab76c5', 'sq06an9my', NULL, NULL, 0, 0, '', '199.249.230.117', 1, 0, '', '', '2020-07-20 21:07:13'),
(65, 1, 0, 1, 'Scotty', 'Terry', 'leonardomachadoavai@gmail.com', '18516133711', '', '6fca039c5af46e99f6be74bff3b06608c4749260', 'Y5KBTFHZ6', NULL, NULL, 0, 0, '', '54.38.81.231', 1, 0, '', '', '2020-07-24 11:06:00'),
(66, 1, 0, 1, 'Ellsworth', 'Block', 'info@clicknewsandmedia.com', '16527084267', '', '2929ef88f0ce70fcc999939fe212d0072d116e72', 'JJl2tSx92', NULL, NULL, 0, 0, '', '51.15.43.205', 1, 0, '', '', '2020-07-28 00:49:40'),
(67, 1, 0, 1, 'Sree', 'Jith', 'sreejithjith@gmail.com', '8925363844', '', '2b05f3bda7a8222c500b4e5ff2fd7e808e024cc5', '4hkllrPDf', NULL, NULL, 0, 0, '', '112.133.236.61', 1, 0, '', '', '2020-07-29 10:12:50'),
(68, 1, 0, 1, 'Adam', 'Dicki', 'saba.fatemizadeh@gmail.com', '17925787290', '', 'cf66d27ca0e6901ac484ae8379fa8d0986eb566b', 'XsRxylkdp', NULL, NULL, 0, 0, '[]', '94.230.208.148', 1, 1, '', '', '2020-07-31 18:05:21'),
(69, 1, 0, 1, 'Beryl', 'Hyatt', 'info@hiltonmgmt.com', '15738554050', '', '15b8ce18a05abdb7403acfa2600040ae25343c63', '5cA5nEvWn', NULL, NULL, 0, 0, '', '185.220.101.197', 1, 0, '', '', '2020-08-02 03:54:18'),
(70, 1, 0, 1, 'Bailee', 'Blick', 'rsiebeneck@gmail.com', '15172495426', '', '3132bed5e7a69446f17c1a6918024edd6a4d2cb6', 'we6G33Tq1', NULL, NULL, 0, 0, '', '109.70.100.38', 1, 0, '', '', '2020-08-02 07:52:02'),
(71, 1, 0, 1, 'Wilford', 'Christiansen', 'jkachami@yahoo.ca', '13313720272', '', '1d20ef675eea8e650682a7802a34b81ab96e2028', 'pEozrWD9o', NULL, NULL, 0, 0, '', '87.120.254.98', 1, 0, '', '', '2020-08-04 08:26:30'),
(72, 1, 0, 1, 'Rahsaan', 'Bernhard', 'trustgasltd@yahoo.co.uk', '14808348825', '', '166022006b1ee59052f33ab45b0903c1d07e3a92', 'MmyhbtA4H', NULL, NULL, 0, 0, '', '185.220.101.17', 1, 0, '', '', '2020-08-07 02:43:30'),
(73, 1, 0, 1, 'Ryley', 'Wiza', 'berman.carleane@gmail.com', '11715708119', '', 'a258476c20b7582af107d9ec4ee3918e8f389746', 'AMhVLjFb1', NULL, NULL, 0, 0, '', '87.118.116.103', 1, 0, '', '', '2020-08-08 08:32:44'),
(74, 1, 0, 1, 'Elinor', 'Jacobson', 'bujinka.ma@gmail.com', '13077660235', '', 'cf192256d749337edcad3ae285a4d4b0391ecf98', 'rd6kp1Fkw', NULL, NULL, 0, 0, '', '51.195.166.192', 1, 0, '', '', '2020-08-09 16:16:18'),
(75, 1, 0, 1, 'Jerel', 'Nikolaus', 'krwhite1056@aol.com', '10621634660', '', '27b6c989a666162dc36202805cf443d831906e9f', '67Zr4BtVV', NULL, NULL, 0, 0, '', '87.98.139.44', 1, 0, '', '', '2020-08-10 02:47:02'),
(76, 1, 0, 1, 'Fanny', 'Powlowski', '5122301472@vtext.com', '17331076400', '', 'e1548e6ce448608374c3973a1379e4dbbf982b48', 'JKGIKvnoC', NULL, NULL, 0, 0, '', '51.77.52.11', 1, 0, '', '', '2020-08-10 13:32:39'),
(77, 1, 0, 1, 'Kamryn', 'Legros', 'ssimonson7@gmail.com', '14312802356', '', 'c0ec4b8cb57feadd7239d16bdccebbab26586529', '97dsqpvWv', NULL, NULL, 0, 0, '', '150.129.8.34', 1, 0, '', '', '2020-08-11 03:05:23'),
(78, 1, 0, 1, 'Jazmin', 'Mayert', 'leahldlr@gmail.com', '16283278894', '', '086d3dfd8da57d6a2b85a5bab9a87fbbb6c5823d', 'RJQWp1Ckm', NULL, NULL, 0, 0, '', '150.129.8.15', 1, 0, '', '', '2020-08-11 11:32:21'),
(79, 1, 0, 1, 'Columbus', 'Bogisich', 'meghanisene@hotmail.com', '14083592539', '', '7337bddfe3df56a99968ae8fbba8d2267fa7191b', 'MP6gxdCqz', NULL, NULL, 0, 0, '', '185.220.101.5', 1, 0, '', '', '2020-08-15 14:57:41'),
(80, 1, 0, 1, 'JTuvyoDRIZLVl', 'LSrXywZae', 'markbaker3753@gmail.com', '2860429048', '', '71a2eff174e212113456726d331ad83058881066', 'IJIK5azhj', NULL, NULL, 0, 0, '', '94.177.164.168', 1, 0, '', '', '2020-08-18 13:04:35'),
(81, 1, 0, 1, 'Haleigh', 'Veum', 'jasminemilligan@yahoo.com', '14254466168', '', 'c3963d6b884a4c2e428fc001cf0d1a13b01bfddd', 'otYmOCHSG', NULL, NULL, 0, 0, '', '217.182.139.85', 1, 0, '', '', '2020-08-20 19:15:07'),
(82, 1, 0, 1, 'Galaxy', 'Kannan', 'universekannan@gmail.com', '9443587282', '', 'b1bf546b58780b337fa7bab2ad26b666', 'e830oJ95m', NULL, NULL, 1, 17, '[]', '112.133.236.18', 1, 1, '', 'aSqSH3goxJWJD33OB4GwxcvA9x9pvh3zSRWtZewa', '2020-08-20 22:15:07'),
(83, 1, 0, 1, 'Kayli', 'Christiansen', 'jeremykondos@gmail.com', '16783184203', '', '647c202281b2f00bb9981faefa87053d852fd655', 'A4LuT1hyr', NULL, NULL, 0, 0, '', '144.217.166.65', 1, 0, '', '', '2020-08-23 05:27:29'),
(84, 1, 0, 1, 'sukumar', 'reddy', 'sukumar.inapp@gmail.com', '8778193926', '', '85bf792e0dd36f7e9d00802aac9254c12acdac76', 'COngOYxhS', NULL, NULL, 1, 0, '[]', '122.166.197.63', 1, 1, '', '', '2020-08-24 13:43:03'),
(85, 1, 0, 1, 'Eldred', 'Yundt', 'trgvg@comcast.net', '17936003213', '', 'd6aedfaca6002580285e0e682cc4271e5366d642', '5Ufj2tt6U', NULL, NULL, 0, 0, '', '185.220.101.15', 1, 0, '', '', '2020-08-27 18:56:44'),
(86, 1, 0, 1, 'Brad', 'Morar', 'sondag74@aol.com', '12572396814', '', 'a0d9a3b9ed88226bbc34013906426f3b3a76158e', 'Z4NebcWZK', NULL, NULL, 0, 0, '', '217.170.206.146', 1, 0, '', '', '2020-08-28 02:31:28'),
(87, 1, 0, 1, 'Claire', 'Stanton', 'leannhilton@hiltonmgmt.com', '10809172805', '', '83498689448da66e9c64bf7fc0504e5db57a8830', 'AXSbVlhIz', NULL, NULL, 0, 0, '', '185.100.85.101', 1, 0, '', '', '2020-08-30 09:58:12'),
(88, 1, 0, 1, 'EugeneLew', 'EugeneLewZX', 'sor0kinmixail@yandex.com', '88243727148', '', '1794088e26c1a8b71c94a88c2e60d39f755f2627', 'VInVMH3GV', NULL, NULL, 0, 0, '', '83.169.216.141', 1, 0, '', '', '2020-08-31 08:42:31'),
(89, 1, 0, 1, 'Carolyn', 'Zulauf', 'sdzamboni@msn.com', '16922279174', '', 'c7a5841d7bc7d11c8f42466951b7684c5369ad05', '8gDaNqgCp', NULL, NULL, 0, 0, '', '51.15.235.211', 1, 0, '', '', '2020-08-31 15:12:11'),
(90, 1, 0, 1, 'Vito', 'Hayes', 'emmartucci@yahoo.com', '18912968212', '', '40d49534c5a2709e64b56969e31c1ccd66e7d6d4', 'HARaFrIUa', NULL, NULL, 0, 0, '', '89.34.27.43', 1, 0, '', '', '2020-08-31 19:37:51'),
(91, 1, 0, 1, 'Magnolia', 'Spencer', 'cavinash1986@gmail.com', '14638895392', '', '033958bb5ae07a3323b46a27cae0e9c748a132ab', 'zRayT5Jz4', NULL, NULL, 0, 0, '', '51.75.144.43', 1, 0, '', '', '2020-09-01 12:38:21'),
(92, 1, 0, 1, 'Frank', 'Mohr', 'camoore0899@gmail.com', '10625098030', '', '468456f335191e21ac6bbe7e9222a188c9a5207c', 'tuSEE5yny', NULL, NULL, 0, 0, '', '185.220.100.240', 1, 0, '', '', '2020-09-02 11:17:23'),
(93, 1, 0, 1, 'Marisa', 'Koch', 'okuda.keiji@jp.panasonic.com', '19761552037', '', '61a37ff7c19404a22623cff384b4d43aecd351d9', 'WrZn8xKDX', NULL, NULL, 0, 0, '', '185.220.101.202', 1, 0, '', '', '2020-09-04 15:30:49'),
(94, 1, 0, 1, 'Cassandra', 'Jast', '5129819640@vtext.com', '15825411568', '', '9f639cfcb4c7fc699e84cb79a76d0aca05d20c89', 'cjWnuxp2r', NULL, NULL, 0, 0, '', '81.171.29.146', 1, 0, '', '', '2020-09-07 11:57:05'),
(95, 1, 0, 1, 'Emilie', 'Bradtke', 'perronkirk@yahoo.com', '17719536505', '', 'e275281f303526f7318d26edd5dc20581d90ff51', 'drLKffOP0', NULL, NULL, 0, 0, '', '188.214.104.146', 1, 0, '', '', '2020-09-08 23:22:35'),
(96, 1, 0, 1, 'Alf', 'Franecki', 'hldaugherty@hotmail.com', '12382137371', '', '6354f3fb0f7a264ce10f39fdb62008061861381f', 'dTEIYQxsF', NULL, NULL, 0, 0, '', '109.70.100.48', 1, 0, '', '', '2020-09-09 13:47:38'),
(97, 1, 0, 1, 'Pamela', 'Jacobson', 'timbernhoff@web.de', '10192311950', '', '81ea8d46d7710ef1720b85bcf329ab57d23c399f', 'ps3VMKVHe', NULL, NULL, 0, 0, '', '89.34.27.48', 1, 0, '', '', '2020-09-09 21:09:03'),
(98, 1, 0, 1, 'Aurelia', 'Hodkiewicz', 'morgan_0822@hotmail.com', '17905386154', '', 'eac466d4fd4bedcdd6545b1b51958c13bcfe5c51', 'sqkc7MnVS', NULL, NULL, 0, 0, '', '185.248.160.21', 1, 0, '', '', '2020-09-10 07:51:15'),
(99, 1, 0, 1, 'Greyson', 'Gutmann', 'ashleighshackelford@gmail.com', '19362363818', '', '0240144407f4ce3218644c2ae1378476cc1a52a5', 'C1Soj40oQ', NULL, NULL, 0, 0, '', '178.17.171.124', 1, 0, '', '', '2020-09-11 19:36:36'),
(100, 1, 0, 1, 'Michael', 'Jacobson', 'lutzker3@yahoo.com', '11184570070', '', '121799117508ae11b1e6b574b393c6931a0ee5c4', 'HDtizNT8Y', NULL, NULL, 0, 0, '', '185.220.100.249', 1, 0, '', '', '2020-09-14 01:10:56'),
(101, 1, 0, 1, 'Jerrod', 'Nitzsche', 'lwinsell@gmail.com', '18200929672', '', '81395825484d66122d4b6a5cb91ac68faee19531', 'bgF1WIY4x', NULL, NULL, 0, 0, '', '185.220.100.245', 1, 0, '', '', '2020-09-15 21:57:19'),
(102, 1, 0, 1, 'Dee', 'Crona', 'jsholmes250@gmail.com', '15170066320', '', '6122bb3f3950a1013b2e843868e76eaf72e40193', 'XdX6Y4pgA', NULL, NULL, 0, 0, '', '23.129.64.194', 1, 0, '', '', '2020-09-16 05:23:21'),
(103, 1, 0, 1, 'Kale', 'Sanford', 'lindale0902@att.net', '14833027550', '', '7d602fe3e608fb4e9056305e38a9850602b07cf4', 'Aj8EK4beY', NULL, NULL, 0, 0, '', '185.220.101.200', 1, 0, '', '', '2020-09-26 08:07:00'),
(104, 1, 0, 1, 'Dandre', 'Batz', 'shuhurat123@gmail.com', '18842363307', '', '4211fd420c346385ed2b87121b87c685a9d324e6', 'D2EyGVXAk', NULL, NULL, 0, 0, '', '85.248.227.164', 1, 0, '', '', '2020-09-30 14:49:12'),
(105, 1, 0, 1, 'Ethel', 'Bins', 'kmartin@foxandbank.com', '19002165566', '', '03f0f877b0bea25df56455527bd20c57f770419d', 'GS8HmubmR', NULL, NULL, 0, 0, '', '185.220.101.194', 1, 0, '', '', '2020-09-30 15:11:52'),
(106, 1, 0, 1, 'Kiel', 'Homenick', 'palacios.sebastian@gmail.com', '18940843384', '', 'ee5fda0027aa1e320cfd85ffd56b7f2b789cd0f8', 'nkq4ETItx', NULL, NULL, 0, 0, '', '195.154.179.3', 1, 0, '', '', '2020-10-05 00:10:05'),
(107, 1, 0, 1, 'Erwin', 'Doyle', 'brjonesy@gmail.com', '13363452316', '', '547240aedddcdba4e6b80947acfdc0b32d894f28', '47rK4D3nG', NULL, NULL, 0, 0, '', '179.43.167.229', 1, 0, '', '', '2020-10-05 21:02:49'),
(108, 1, 0, 1, 'Lucienne', 'Smith', 'wacasterfamily@gmail.com', '16986860526', '', 'dd2fe16f813e4274dc8e0697f74d69b2c285ef3a', 'kreKFxydW', NULL, NULL, 0, 0, '', '185.220.100.252', 1, 0, '', '', '2020-10-05 22:35:59'),
(109, 1, 0, 1, 'Madelyn', 'Nitzsche', 'ashleyraedawn@yahoo.com', '18466365843', '', 'd113189e12f2d8ae37fa36fa89ebb5689b3f5f15', 'wNnX485p2', NULL, NULL, 0, 0, '', '59.115.116.82', 1, 0, '', '', '2020-10-07 04:06:49'),
(110, 1, 0, 1, 'fNAwzyvXxqQjBT', 'kSsCqUKlwviAoV', 'tokikobanke@gmail.com', '6636714663', '', '89661f45f568aa222542495717ee9d43f27d22ee', 'JPKyNbNjJ', NULL, NULL, 0, 0, '', '103.93.202.10', 1, 0, '', '', '2020-10-07 15:09:19'),
(111, 1, 0, 1, 'Leonora', 'Marvin', 'kcgray24@gmail.com', '10940609462', '', '482025c54e317b0aca07cb0d01c1e7f2f8702778', '8M9ffIFhv', NULL, NULL, 0, 0, '', '185.220.100.249', 1, 0, '', '', '2020-10-08 10:04:25'),
(112, 1, 0, 1, 'Lily', 'Weber', 'sabine.gschloessl@web.de', '14241626972', '', '017c1b3209ffc651931673612e3f61e3cdd84953', 'knnTeDbOW', NULL, NULL, 0, 0, '', '162.247.74.202', 1, 0, '', '', '2020-10-12 03:13:24'),
(113, 1, 0, 1, 'Squierzfn', 'svusalmevngwdyoGP', 'akamenetsk@yahoo.com', '81541934285', '', '140ddc81a621681631d9bf40c10f62c7872e164b', 'flnaztYws', NULL, NULL, 0, 0, '', '125.123.125.5', 1, 0, '', '', '2020-10-14 03:21:56'),
(114, 1, 0, 1, 'Humminbirdqbj', 'xvusaymekmdvzeqGP', 'rblacklock@hotmail.com', '86118731439', '', '90f589e6835aa7c5593b80e6e8dc87ea90afd989', 'Ywuozqqdm', NULL, NULL, 0, 0, '', '178.62.53.252', 1, 0, '', '', '2020-10-14 08:37:15'),
(115, 1, 0, 1, 'Ana', 'Cartwright', 'mbarna0523@me.com', '16579906857', '', '312b85f3d094d3b8ba0ba2e4038648454f036275', 'n3WSHNc9G', NULL, NULL, 0, 0, '', '185.220.102.241', 1, 0, '', '', '2020-10-14 20:56:09'),
(116, 1, 0, 1, 'Incipioynf', 'xwusalmeamdyxatGP', 'cfmarsh@gmail.com', '89635363814', '', '323a40d344353efed1485eed6d452947e56279f3', 'q5DEoeiv7', NULL, NULL, 0, 0, '', '125.123.124.23', 1, 0, '', '', '2020-10-15 00:26:31'),
(117, 1, 0, 1, 'Irrigationosc', 'xvusafmexmtazvjGP', 'bmgibbs@suddenlink.net', '82511223953', '', '0eccd552dc310af79c39969d47e1ad9b66fe3215', '1pViC3vLH', NULL, NULL, 0, 0, '', '125.123.66.151', 1, 0, '', '', '2020-10-16 04:16:34'),
(118, 1, 0, 1, 'Visionktr', 'zvusalmeqmewcxsGP', 'mundru@outlook.com', '83872756749', '', 'ae582feaaad2eaaf10e8beb3b09a1b901ea9f154', 'EHQThNx7b', NULL, NULL, 0, 0, '', '178.62.53.252', 1, 0, '', '', '2020-10-16 05:33:20'),
(119, 1, 0, 1, 'Clamcasezas', 'swusaymevtrdzlyGP', 'swittwer81@gmail.com', '84255669595', '', 'b44fd1ffd9bee5da9f9dea547b4b91e476a88eb6', 'Nv9cf75mf', NULL, NULL, 0, 0, '', '125.123.71.145', 1, 0, '', '', '2020-10-16 06:12:08'),
(120, 1, 0, 1, 'Rigidewb', 'szusafmeztczxjfGP', 'astjulian@outlook.com', '85585952269', '', '4d893a8232c5c386f8537b308b442fd62660cfa2', 'HoSrWSkUM', NULL, NULL, 0, 0, '', '117.69.13.22', 1, 0, '', '', '2020-10-16 14:03:40'),
(121, 1, 0, 1, 'Epiphonejpe', 'xzusalmeomlnxsxGP', 'cheers@earlymountain.com', '84633193498', '', '5a4101d28cf1d5f50753baa09816a200c3fac39a', 'cbTcXNbjJ', NULL, NULL, 0, 0, '', '45.55.236.139', 1, 0, '', '', '2020-10-16 20:38:54'),
(122, 1, 0, 1, 'Cutterycm', 'szusalmevtwuzmjGP', 'jesskmom@hotmail.com', '87483834372', '', '6205f255bacf05201b67891c0c547121191dbbc1', 'USXTdQ5PZ', NULL, NULL, 0, 0, '', '104.238.111.150', 1, 0, '', '', '2020-10-16 22:27:37'),
(123, 1, 0, 1, 'Marshallaeu', 'svusalmeemrgcanGP', 'lisa@oldwestiron.com', '86687172244', '', '39a0f58c035862d21d033eab4a24bf79b2d6a38e', 'qeEqN7Gh1', NULL, NULL, 0, 0, '', '36.26.231.108', 1, 0, '', '', '2020-10-17 01:21:16'),
(124, 1, 0, 1, 'WILDKATdtb', 'swusalmeatmbxuqGP', 'enriquecalixtro@msn.com', '84497645712', '', '7d8409aa18c776bdd9d02056256b3f95fc9e2f8e', 'OFshdhkKT', NULL, NULL, 0, 0, '', '173.236.176.119', 1, 0, '', '', '2020-10-17 09:05:43'),
(125, 1, 0, 1, 'Jeremy', 'Gorczany', 'aaron_manning_45@hotmail.co.uk', '17306042115', '', 'e6bea28f23daeee5d2ab4afdd30a9d1c85fc56f7', 'o7VTXF8RH', NULL, NULL, 0, 0, '', '31.220.2.223', 1, 0, '', '', '2020-10-17 17:20:43'),
(126, 1, 0, 1, 'Samantha', 'Towne', 'dcorry@triad.rr.com', '18804259307', '', '9f422cb612eda18f83b262b6a28734cda5e886e4', 'yUJ6TyPHR', NULL, NULL, 0, 0, '', '104.244.73.193', 1, 0, '', '', '2020-10-17 22:23:40'),
(127, 1, 0, 1, 'Telecastermat', 'zzusalmeltdwzvcGP', 'alipsky@rehabuilders.com', '87746272616', '', '956d777702247ee721d1334985e70e913d8bc4a1', 'g2eLI0ewi', NULL, NULL, 0, 0, '', '128.199.76.67', 1, 0, '', '', '2020-10-17 22:54:06'),
(128, 1, 0, 1, 'Cutterkhi', 'swusaymeamarxqsGP', 'jknox11@vols.utk.edu', '87376599168', '', '5763b61a63bd5731747ca75a69386d70a656a9a6', 'GTIRiQ4Ep', NULL, NULL, 0, 0, '', '113.128.10.133', 1, 0, '', '', '2020-10-18 06:44:47'),
(129, 1, 0, 1, 'Epiphonejsr', 'svusalmehmrkclwGP', 'cldudley32@comcast.net', '82652876442', '', 'a7e186a50b65323f487392dd1b44c2c5fa3477e8', 'LnUr0Cgzp', NULL, NULL, 0, 0, '', '110.243.10.19', 1, 0, '', '', '2020-10-18 11:24:20'),
(130, 1, 0, 1, 'Annotationsryv', 'zvusaymeannvdkgGP', 'juju_jewel@yahoo.com', '84524878268', '', '84c6c335917c6326478b481bea498f4f6bcebcc8', 'cP2wMvBac', NULL, NULL, 0, 0, '', '107.170.42.147', 1, 0, '', '', '2020-10-18 23:27:59'),
(131, 1, 0, 1, 'lcDmkOyHLQUxiIMj', 'nqYCtExjQlFue', 'whattracerch@gmail.com', '6930274018', '', 'e18a122ed2f3357a56ff60207346f70739dac58a', 'XFjOQAPCs', NULL, NULL, 0, 0, '', '188.191.146.25', 1, 0, '', '', '2020-10-20 07:19:52'),
(132, 1, 0, 0, 'tom', 'harry', 'tom@email.com', '8888', '', '9bfe142b8c31828fdde8a252d75d5ef3', '', NULL, NULL, 0, 18, '', '', 1, 0, '', '', '2020-10-22 05:03:51'),
(133, 1, 0, 0, 'tom', 'harry', 'tom1@email.com', '88881', '', '9bfe142b8c31828fdde8a252d75d5ef3', '', NULL, NULL, 0, 18, '', '', 1, 0, '', '', '2020-10-22 05:05:51'),
(134, 1, 0, 0, 'tom', 'harry', '4040@email.com', '4040', '', 'ca4b33532855080dfa79cf8a925d146d', '', NULL, NULL, 0, 19, '', '', 1, 0, '', '', '2020-10-22 05:10:48'),
(135, 1, 0, 1, 'Lilly', 'Langworth', 'pamnieskes@yahoo.com', '10115365978', '', 'a92ea4478f69d85866268fb7367ef4f91d3638a0', 'O8MA6YQsZ', NULL, NULL, 0, 0, '', '51.195.91.153', 1, 0, '', '', '2020-10-22 17:01:36'),
(136, 1, 0, 0, 'aaaa', 'aaa', 's700@gmail.com', '111', '', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 0, 20, '', '', 1, 0, '', '', '2020-10-23 04:54:52'),
(137, 1, 0, 0, 'aaa', 'aaa', 'aaa@ss.com', '123', '', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 0, 21, '', '', 1, 0, '', '', '2020-10-23 04:58:15'),
(138, 1, 0, 0, 'bbb', 'bbb', 'suu@sss.com', '404040', '', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 0, 22, '', '', 1, 0, '', '', '2020-10-24 08:13:16'),
(139, 1, 0, 1, 'Saurav kumar', 'Vidyarthi', 'ksaurav456.sk@gmail.com', '9525559304', '', '84dcfe6581eacba58aef2a8ebc2bc6dff6f861a6', 'TYM9E5BBY', NULL, NULL, 0, 0, '', '157.42.104.135', 1, 0, '', '', '2020-10-26 11:39:24'),
(140, 1, 0, 1, 'Feederuij', 'zvusaymednwdxnhGP', 'emilyzhu992@gmail.com', '84445379896', '', '0cbfebead7cbb06d86430bd9f24cc238e2f2110d', 'aHWKnPmGA', NULL, NULL, 0, 0, '', '117.69.33.35', 1, 0, '', '', '2020-10-26 23:48:14'),
(141, 1, 0, 1, 'Salvador', 'Langworth', 'heavenonerth520@gmail.com', '13604557495', '', 'f603f63fa7392778c8079e0ea2e28d4c5cd80376', 'QqUFfBdSO', NULL, NULL, 0, 0, '', '89.34.27.37', 1, 0, '', '', '2020-10-28 18:51:16'),
(142, 1, 0, 1, 'Van', 'Predovic', 'markpuckett1@yahoo.com', '11665185843', '', 'd8a4347d6ffd974fa376e4a09923bd102cb1aa36', '4Rq0XAPh9', NULL, NULL, 0, 0, '', '45.154.255.67', 1, 0, '', '', '2020-10-29 05:33:19'),
(143, 1, 0, 1, 'Dysonjzm', 'szusafmeitrccjuGP', 'info@gipsondesign.com', '82261814446', '', '5e98749ca583dbea73131295ab184caf106b24f4', '4MQ5rlvr0', NULL, NULL, 0, 0, '', '125.123.66.151', 1, 0, '', '', '2020-11-03 21:23:36'),
(144, 1, 0, 1, 'Feederkgq', 'svusafmelmpqcbpGP', 'jacutaia@ymail.com', '86372658795', '', '22059e76c0b084cd210b0907c63129c24854f9db', 'dtN6bS1ra', NULL, NULL, 0, 0, '', '120.34.231.22', 1, 0, '', '', '2020-11-03 22:43:40'),
(145, 1, 0, 1, 'Pouringxbh', 'swusalme2ttndgeGP', 'annette@rinconcountry.com', '82453314777', '', '6420526c8d2a651705c9214a5940aeb6639c459f', 'K0lvjZKlh', NULL, NULL, 0, 0, '', '58.19.81.95', 1, 0, '', '', '2020-11-04 13:07:39'),
(146, 1, 0, 1, 'Carpetoru', 'xzusalmejnnhdonGP', 'cirissa.luna@gmail.com', '84595266362', '', 'd62bf0c11d2a666012203f306b1eac0e08d1baf3', 'voGC19tQL', NULL, NULL, 0, 0, '', '119.28.54.231', 1, 0, '', '', '2020-11-04 23:11:37'),
(147, 1, 0, 1, 'Irving', 'Swift', 'annsmith@nccginc.com', '17993121846', '', 'bdeba17e61a8c87a821cb531a99b2543fe11dab8', 'dIIzE7aMZ', NULL, NULL, 0, 0, '', '144.172.118.3', 1, 0, '', '', '2020-11-05 00:59:25'),
(148, 1, 0, 1, 'Winona', 'Beier', 'resalee4u@gmail.com', '14853656564', '', '44839536997ccf65d8152bb6b43df72f1ff5cc82', 'LM7Y2dulS', NULL, NULL, 0, 0, '', '51.75.144.43', 1, 0, '', '', '2020-11-05 20:51:33'),
(149, 1, 0, 1, 'Jevon', 'Bartell', 'faithmariealexander@yahoo.com', '15546291611', '', 'c121f1eec79228df37e5aa3d59372d6e60d24944', 'fxTA8QgNi', NULL, NULL, 0, 0, '', '91.219.236.31', 1, 0, '', '', '2020-11-07 12:22:08'),
(150, 1, 0, 1, 'Foamvqb', 'zzusaymefnjechnGP', 'lorri.whiteside@gmail.com', '88142794936', '', '4e0bfd7c5ccf0ca15be9c2ba433f34c30bd4b652', 'MLXjKVm7O', NULL, NULL, 0, 0, '', '166.62.85.184', 1, 0, '', '', '2020-11-17 02:57:12'),
(151, 1, 0, 1, 'Flashpaqypw', 'xvusafmecnssdrpGP', 'continental8604@yahoo.com', '89131663915', '', '275735b4d8b956bccb503d0b4fa5054e203dd3a0', 'pco0pPdjd', NULL, NULL, 0, 0, '', '37.1.221.96', 1, 0, '', '', '2020-11-19 23:11:48'),
(152, 1, 0, 1, 'Telecasterrzz', 'zvusafmemtdmdkuGP', 'dihliebl@gmx.de', '86223558147', '', 'a0d64b5cb3994bfcfad8dfb70b402202858b47c8', 'zzvqhee1F', NULL, NULL, 0, 0, '', '37.1.221.96', 1, 0, '', '', '2020-11-19 23:33:44'),
(153, 1, 0, 1, 'Krishna', 'M', 'krishna9943859206@gmail.com', '09943859206', '', '231ba3eeaf89fc4669484b8bbee3c0f478d31a42', 'lq2S6zjJJ', NULL, NULL, 0, 23, '', '106.215.141.66', 1, 0, '', '', '2020-11-20 00:02:38'),
(154, 1, 0, 1, 'Beateruoq', 'xzusaymertjgd2xGP', 'rbaker246@cox.net', '87745244398', '', 'ad4a8d98cf191758a183d1b77a7fa22e34fd5807', 'nIAPm0IrL', NULL, NULL, 0, 0, '', '37.1.221.96', 1, 0, '', '', '2020-11-20 07:09:11'),
(155, 1, 0, 1, 'Randal', 'Rowe', 'cmdofficail7@gmail.com', '11984946326', '', 'dec518157e74a0ea87369af2fdfe5cdf83861d68', '4D2RSgUG1', NULL, NULL, 0, 0, '', '185.220.101.132', 1, 0, '', '', '2020-11-21 01:50:08'),
(156, 1, 0, 1, 'Ferne', 'Kassulke', 'karenrouse@yahoo.com', '11619536039', '', 'db749478aea4266b69bb9ab5f933e9ed9fe172a9', 'lc6Bx7lWD', NULL, NULL, 0, 0, '', '199.249.230.118', 1, 0, '', '', '2020-11-23 16:29:51'),
(157, 1, 0, 1, 'Ludie', 'Kuhlman', '280064818@qq.com', '13623080462', '', '3e807dee1d92b4247548c5f1d1e42dee49353121', 'OAAMTJhyt', NULL, NULL, 0, 0, '', '51.79.53.145', 1, 0, '', '', '2020-11-25 01:40:18'),
(158, 1, 0, 1, 'EOTechtga', 'xzusafmeomnoccqGP', 'amyferrero@hotmail.com', '88921856582', '', 'd0d39ca4d796cf16ac42f8005a412b468368fbfd', 'KAd0h6xxe', NULL, NULL, 0, 0, '', '103.83.110.21', 1, 0, '', '', '2020-11-27 21:01:22'),
(159, 1, 0, 1, 'Lily', 'Botsford', 'jasonrit@yahoo.com', '13504407876', '', '4ecace478ca6e57e84226923efedb98c2598e0e9', '3pvDGlfFL', NULL, NULL, 0, 0, '', '142.44.139.12', 1, 0, '', '', '2020-12-01 17:02:00'),
(160, 1, 0, 1, 'Greg', 'Beatty', 'sacmichelle@yahoo.com', '16618059423', '', '6df957f1f667e546933ab377911bbc1127daf1be', '6JXuYyD7E', NULL, NULL, 0, 0, '', '104.244.73.43', 1, 0, '', '', '2020-12-01 19:58:26'),
(161, 1, 0, 0, 'sam', 'sam', 'sukulll@gmail.com', '777777777', '', '332532dcfaa1cbf61e2a266bd723612c', '', NULL, NULL, 0, 24, '', '', 1, 0, '', '', '2020-12-03 08:15:04'),
(162, 1, 0, 1, 'Manuel', 'Ward', 'benakowuah@yahoo.co.uk', '10068836337', '', '99e9d4a6b0741f525a3949353c9e8dcea332d745', 'ArX5PCaeU', NULL, NULL, 0, 0, '', '195.206.105.217', 1, 0, '', '', '2020-12-04 09:50:34'),
(163, 1, 0, 1, 'HydraGop', 'HydraGopUN', 'frist.hydra.rumwer@mail.ru', '85271583497', '', 'ca819485060017aa6855268d848c800efc5f49aa', 'mERSi1ZjA', NULL, NULL, 0, 0, '', '176.194.59.131', 1, 0, '', '', '2020-12-04 17:57:58'),
(164, 1, 0, 1, 'bBidVSPurCRa', 'SMtOGpBULH', 'exclussilri693@gmail.com', '8365376757', '', 'a14e4b96cff93f6227cffaf601ab70bdd34a2516', 'KvzAfzCDd', NULL, NULL, 0, 0, '', '209.17.114.78', 1, 0, '', '', '2020-12-04 22:34:35'),
(165, 1, 0, 1, 'Clamcaseimz', 'szusaymejndqzbmGP', 'rschwartz@cowboytoyota.com', '88989836778', '', 'd86bd91c7129a1ef02966993b437665e03eb0c57', 'AwM43CPoq', NULL, NULL, 0, 0, '', '120.38.241.110', 1, 0, '', '', '2020-12-07 19:10:38'),
(166, 1, 0, 1, 'Era', 'Eichmann', 'biodunadayo@gmail.com', '12468012354', '', '3d03c62969fa15f6ec72bb3af2a58c223e044ae2', 'AKbup5rhs', NULL, NULL, 0, 0, '', '51.77.148.119', 1, 0, '', '', '2020-12-08 13:38:14'),
(167, 1, 0, 1, 'David', 'Ortiz', 'caddyfrk92@yahoo.com', '13732258286', '', '83ed25c0522e5692d35d11182baed693a6ea4c2a', 'mTFKjVMof', NULL, NULL, 0, 0, '', '185.220.101.215', 1, 0, '', '', '2020-12-10 08:04:01'),
(168, 1, 0, 1, 'Jerrod', 'Ullrich', 'cookbenj1148@gmail.com', '14993940231', '', 'a96818beb0116ea83a4ead4ac5b222460b8d43d8', 'De2k7zDQa', NULL, NULL, 0, 0, '', '51.89.164.89', 1, 0, '', '', '2020-12-11 09:48:04'),
(169, 1, 0, 1, 'Elva', 'Kuhic', 'gge@newpharma.be', '10624541977', '', 'ac46149cc11b9535ff8423fb1a9031ea96a95d67', 'M3L1ChjBX', NULL, NULL, 0, 0, '', '185.220.101.143', 1, 0, '', '', '2020-12-14 11:26:36'),
(170, 1, 0, 1, 'Burnice', 'Cremin', 'giselle.ortegaaa@gmail.com', '15161812745', '', '28def6da7cfc946c0412ccc965b62eb6a455e8c9', 'aDnCF4MPT', NULL, NULL, 0, 0, '', '130.149.80.199', 1, 0, '', '', '2020-12-14 23:07:04'),
(171, 1, 0, 1, 'Alvina', 'Schmeler', 'rebschultz@gmail.com', '12536801833', '', '85aec1e6401257a45eb0697745c9e1bce29ba2ed', 'EuMqpQQ5g', NULL, NULL, 0, 0, '', '185.220.100.243', 1, 0, '', '', '2020-12-15 19:51:47'),
(172, 1, 0, 1, 'Ashly', 'Mohr', 'jjlhirondelle@hotmail.com', '13351623405', '', '7e2652b8506cff6a6d71f218f6f6471cbe02db70', 'mgLqBe53v', NULL, NULL, 0, 0, '', '109.70.100.51', 1, 0, '', '', '2020-12-17 02:06:17'),
(173, 1, 0, 1, 'Nixon ', 'P M', 'jns.exports@gmail.com', '9444467526', '', 'd5d347e3b89062479978b987b9f780b3285399d8', 'X8MElPfnv', NULL, NULL, 0, 25, '', '117.193.179.151', 1, 0, '', '', '2020-12-19 14:17:51'),
(174, 1, 0, 1, 'ZUkMwRJYXOChPEoi', 'aoFKBQDJNk', 'wader2219@gmail.com', '3837946692', '', 'ca7234cccec4092d39299f5af677dea7a4199f75', 'H0L3D9qxl', NULL, NULL, 0, 0, '', '45.236.148.86', 1, 0, '', '', '2020-12-20 07:46:26'),
(175, 1, 0, 1, 'Herta', 'Shanahan', 'jason.claffey@aol.com', '10740629714', '', 'e756f5c005d6b98448680cb57fe7e8d40e47daab', 'k0lxLFhBx', NULL, NULL, 0, 0, '', '51.38.82.114', 1, 0, '', '', '2020-12-21 22:24:29'),
(176, 1, 0, 1, 'Curtis', 'Gaylord', 'jwalton971@aol.com', '19688882631', '', 'c5d53fb52e1853aa6fd995f38913dbb04ee4d5fb', 'kjGakmAFT', NULL, NULL, 0, 0, '', '109.70.100.54', 1, 0, '', '', '2020-12-23 15:33:05'),
(177, 1, 0, 1, 'Nina', 'Konopelski', 'christan8@gmail.com', '16138440615', '', 'f348547ab46b8d2e389b96ca844552d10d34cc78', 'AhMITyzCL', NULL, NULL, 0, 0, '', '185.100.87.244', 1, 0, '', '', '2020-12-28 09:43:39'),
(178, 1, 0, 1, 'Bertram', 'Hane', 'leannhilton@hotmail.com', '12517338705', '', '293858ddb8f6235ffe6c04bc07fdfb206643f14e', 'EromG5qWP', NULL, NULL, 0, 0, '', '199.249.230.100', 1, 0, '', '', '2021-01-02 11:07:53'),
(179, 1, 0, 1, 'D\'angelo', 'Hackett', 'nancygordon1@gmail.com', '11061597179', '', 'de405ff8eb8a837620f8d4eed9c59dba51a57dbe', 'wEm6HIves', NULL, NULL, 0, 0, '', '104.244.73.193', 1, 0, '', '', '2021-01-04 05:01:58'),
(180, 1, 0, 1, 'PFhQYWBuRkny', 'eFYUMAtOfjnxIQs', 'jshepherd349@gmail.com', '2252422782', '', 'e767c7a6ca3fa1f42ab13a1f5199c9cdfbcc2af4', 'VJTQGy0Qm', NULL, NULL, 0, 0, '', '94.199.22.231', 1, 0, '', '', '2021-01-04 21:01:53'),
(181, 1, 0, 1, 'Jude', 'Lemke', 'wesley.chen@advantech.de', '19445043773', '', '3b5b1f7a8952e2a905be428b2c35956ed38a35c8', 'XsBCixSCJ', NULL, NULL, 0, 0, '', '185.220.102.250', 1, 0, '', '', '2021-01-06 21:00:14'),
(182, 1, 0, 1, 'Bhagaban', 'acharya', 'bhagaban.acharya1990@gmail.com', '8106815640', '', '50a0ec026deaf822b116768b8625fdb76b5d0827', 'RrFCkC43Q', NULL, NULL, 0, 0, '', '106.200.159.173', 1, 0, '', '', '2021-01-07 13:08:48'),
(183, 1, 0, 0, '111', '111', 'sukumar.inapp@gmail.com111', '878', '', 'dd8eb9f23fbd362da0e3f4e70b878c16', '', NULL, NULL, 0, 26, '', '', 1, 0, '', '', '2021-01-09 11:35:57'),
(184, 1, 0, 1, 'Judson', 'Murphy', 'lisaberrisford44@gmail.com', '16059089003', '', 'edf7c05387d0e9b10ce58ece784bee706e751667', 'DtD42EvW6', NULL, NULL, 0, 0, '', '151.80.148.162', 1, 0, '', '', '2021-01-24 02:08:56'),
(185, 1, 0, 1, 'Kimberly', 'Brown', 'latashia.dempster@hotmail.com', '16772548709', '', 'bd14787638b5e38ce5f4fec5157e8c5313fb8095', '5VsMBlLUj', NULL, NULL, 0, 0, '', '185.191.124.150', 1, 0, '', '', '2021-01-24 20:26:54'),
(186, 1, 0, 1, 'Chyna', 'D\'Amore', 'jhirsch@innercitylaw.org', '15219596415', '', '99fbc78c88e32094b6ee62a1ea3c175c67ce832d', 'LzOR9FtAm', NULL, NULL, 0, 0, '', '81.17.16.146', 1, 0, '', '', '2021-02-02 04:32:38'),
(187, 1, 0, 1, 'gRNcnDqru', 'EAVeuOBQUijSyI', 'julianzif12@gmail.com', '2297904156', '', '1141a2386549c2bd4ab5ddf0ee90c7fa967f01ff', 'oKNNzQqkA', NULL, NULL, 0, 0, '', '181.115.221.158', 1, 0, '', '', '2021-02-03 04:00:09'),
(188, 1, 0, 1, 'Tanil', 'Raju', 'tanilraju1@gmail.com', '9944337124', '', 'c76016ef2ec06743b63f0e3dbfda0305bbe0b666', '5zDkBePHa', NULL, NULL, 0, 0, '', '117.246.199.113', 1, 0, '', '', '2021-02-04 08:16:07'),
(189, 1, 0, 1, 'Ashton', 'Herzog', 'oksanaavhustyn@yahoo.com', '18202023860', '', '5675deeee616e39eb325a2af02ed2025cedde753', 'cLhUkqduC', NULL, NULL, 0, 0, '', '51.79.53.134', 1, 0, '', '', '2021-02-08 03:32:36'),
(190, 1, 0, 1, 'Jace', 'Bartoletti', 'karenfelske@gmail.com', '11525947807', '', '51db14e2a2bf04652912d831ccdf3492d4b936c0', 'BAY68TfQH', NULL, NULL, 0, 0, '', '135.148.32.179', 1, 0, '', '', '2021-02-09 07:24:25'),
(191, 1, 0, 1, 'Eli', 'Stiedemann', 'Quentin.Schuppe39@yahoo.com', '16872579028', '', '82ed2bba397f04b621672ebe52015ee6e822aed9', 'RzujNWT6X', NULL, NULL, 0, 0, '', '104.244.76.13', 1, 0, '', '', '2021-02-09 16:56:40'),
(192, 1, 0, 1, 'Raymundo', 'Barrows', 'manonlegroux@hotmail.com', '14075654927', '', '5bbf93224be0f799e15fc6ab32cb50e71624e037', 'SACZ1zaTO', NULL, NULL, 0, 0, '', '135.148.32.175', 1, 0, '', '', '2021-02-10 23:48:15'),
(193, 1, 0, 1, 'Jaeden', 'Monahan', 'richiehplumbing@aol.com', '12354943413', '', '54b4a9a552d4cbf8992b3b46181e78cb2f02e0df', '3r9Gq529L', NULL, NULL, 0, 0, '', '185.220.101.216', 1, 0, '', '', '2021-02-11 01:06:09'),
(194, 1, 0, 1, 'mXyTonUPrFAbp', 'pqRGDfNH', 'dooleylzl39@gmail.com', '9586590006', '', '102f72796ddb751dd2214d348c36791e4ee0c490', 'xJNcqPHMS', NULL, NULL, 0, 0, '', '116.90.228.140', 1, 0, '', '', '2021-02-15 21:51:05'),
(195, 1, 0, 1, 'Dewitt', 'Bernhard', 'eablackstone@yahoo.com', '14402999326', '', 'be8b0efdbf8921db065fb46f1800ab3702b86fa4', 'V4uPzJD6C', NULL, NULL, 0, 0, '', '51.178.86.137', 1, 0, '', '', '2021-02-16 06:57:07'),
(196, 1, 0, 1, 'Aarthi', 'Ravikumar ', 'aarthiravikumar91@gmail.com', '9443374056', '', '2322494111d1b70bfe1c8e3804dec4b0b6f2eaef', 'yYYSXT3k7', NULL, NULL, 0, 0, '', '157.49.231.39', 1, 0, '', '', '2021-02-17 17:24:56'),
(197, 1, 0, 1, 'Nikita', 'Rolfson', 'steph36481@hotmail.com', '12764227313', '', 'f9d87df5a2ab7a425158ea333ace3bbb32254ab6', 'EX3RzS3pD', NULL, NULL, 0, 0, '', '23.129.64.216', 1, 0, '', '', '2021-02-20 13:37:27'),
(198, 1, 0, 1, 'Swetha ', 'N', 'devswetha93@gemail.com', '9742519259', '', '15dfad76316ad772f7829359fc817c68b5207893', '0Bu8ntRh4', NULL, NULL, 1, 27, '', '1.39.134.200', 1, 0, '', '', '2021-02-22 16:19:46'),
(199, 1, 0, 1, 'Toy', 'Weissnat', 'carmacost@comcast.net', '19146022699', '', '0f6739ea836631c6ab0f6cbc08b392d9b94b33da', 'o3YxtT0yO', NULL, NULL, 0, 0, '', '185.100.85.101', 1, 0, '', '', '2021-02-23 09:04:24'),
(200, 1, 0, 1, 'Noe', 'Lubowitz', 'vdeyoung@visionlogisticsinc.com', '19875806546', '', '6a74078329eb3d8b5ab5e53f9807996c573f85c3', 'qYzlENEd5', NULL, NULL, 0, 0, '', '199.195.250.77', 1, 0, '', '', '2021-02-24 09:41:24'),
(201, 1, 0, 1, 'Dayana', 'Cruickshank', 'drmaindorf@att.net', '12581136371', '', '109f5b2d5effa6b56159ccf8e572d9a28b78a605', '741Fg4s5G', NULL, NULL, 0, 0, '', '185.220.101.7', 1, 0, '', '', '2021-03-03 21:08:54'),
(202, 1, 0, 1, 'Karli', 'Donnelly', 'saphy91@hotmail.co.uk', '18619984404', '', 'b04a69765d23b7e7e8ba826a9fa5bf9cd60aaefe', 'KKaOyGBu4', NULL, NULL, 0, 0, '', '135.148.33.129', 1, 0, '', '', '2021-03-10 22:57:03'),
(203, 1, 0, 1, 'Madge', 'Von', 'mseline@sbcglobal.net', '15192841928', '', 'f0982276fb6ecb3535073b3b008306df6f6b1aba', 'MJuwl02v4', NULL, NULL, 0, 0, '', '193.218.118.125', 1, 0, '', '', '2021-03-13 22:38:44'),
(204, 1, 0, 1, 'Arturo', 'Hickle', 'teodelarocha@gmail.com', '14906720858', '', '88a6a8ab301a0cd26b98a795a965a25ce5292b72', 'E0hk2gWCI', NULL, NULL, 0, 0, '', '104.149.137.86', 1, 0, '', '', '2021-03-20 03:42:10'),
(205, 1, 0, 1, 'Natish', 'Kumar', 'kumar.natish2305@gmail.com', '7625816255', '', 'cdb7cdb50e432b2b3273c6c1d7d4c68026d96e93', 'PqNZvjYOx', NULL, NULL, 0, 28, '', '106.204.195.49', 1, 0, '', '7pmhLFK2KM9ozU5mU50rPIWKMgWB7Nvkf5gaSMio', '2021-03-21 22:37:26'),
(206, 1, 0, 1, 'River', 'White', 'livn4hersavior@aol.com', '10871838140', '', '1bb4ff904813232c7f64f55cf37e86058d17d557', 'MH3aXmFNY', NULL, NULL, 0, 0, '', '45.148.10.54', 1, 0, '', '', '2021-03-24 19:57:38'),
(207, 1, 0, 1, 'Rajni', 'Rajni', 'info.asglobalsolution@gmail.com', '7837683638', '', '8640e685b14724e8dcd714274176d36392fa7f55', 'fDinXy2ps', NULL, NULL, 0, 29, '', '106.196.94.158', 1, 0, '', '', '2021-03-26 00:11:09'),
(208, 1, 0, 1, 'Candida', 'Wunsch', 'nick@elegantthemes.com', '14851864880', '', '9dac636450f3db50c8e60305c468ef2c037a548b', 'FDdqqXyNI', NULL, NULL, 0, 0, '', '104.244.74.55', 1, 0, '', '', '2021-03-26 17:41:37'),
(209, 1, 0, 1, 'Ramya', 'Kadari', 'ramyasweeti85@gmail.com', '07675921866', '', '61168eef83e4f0bd8ec0981cdde61d1f047e95a7', '6EcpPEvU8', NULL, NULL, 0, 30, '', '106.195.68.62', 1, 0, '', '', '2021-03-26 23:30:56'),
(210, 1, 0, 1, 'Robertopah', 'RobertopahZZ', 'oksanasuxanova@mail.com', '89475853547', '', '6650f2c7ee08fc6f0d580e13b9ade814efd691b4', '52GMuaTeM', NULL, NULL, 0, 0, '', '92.204.170.186', 1, 0, '', '', '2021-03-27 22:17:25'),
(211, 1, 0, 1, 'Robert', 'Abernathy', 'gloshea7@yahoo.com', '18070754651', '', 'd771603ce27a6c33af6b43e1db04eec3d4a3b0ce', 'K9x9yADze', NULL, NULL, 0, 0, '', '193.239.232.102', 1, 0, '', '', '2021-03-30 21:21:44'),
(212, 1, 0, 1, 'Leanna', 'Smitham', 'chris.bingley@gmail.com', '14396919055', '', 'c11c8dec27594b466fba25da331eef89caacb79c', 'L9htNo7k5', NULL, NULL, 0, 0, '', '185.220.101.139', 1, 0, '', '', '2021-04-04 00:41:48'),
(213, 1, 0, 1, 'TJPrDlGKtdUYsHAk', 'nGByQCUc', 'eraterstzo@gmail.com', '6832089374', '', '6aa64ae9701147bb189dd282f009ebd96691c693', '0f6R7quDW', NULL, NULL, 0, 0, '', '160.119.158.76', 1, 0, '', '', '2021-04-05 00:10:47'),
(214, 1, 0, 1, 'Nandan', 'Bhatkal', 'nandan.bhatkal@gmail.com', '9945844397', '', '9c69135ed5f496129f87fa0e4adc3e7df616d7c4', '6Vv7xJd9p', NULL, NULL, 0, 31, '', '49.207.218.24', 1, 0, '', '', '2021-04-15 11:48:08'),
(215, 1, 0, 1, 'HpQAbRlViYjCN', 'XOywakjCv', 'bectivengsw@gmail.com', '9524733187', '', 'b3b4b2416522039641490adf3c86aa7c73b9316b', 'I0t2483fA', NULL, NULL, 0, 0, '', '102.141.116.33', 1, 0, '', '3zFNtdAYVLmQvJdKENnu4zkq06mBT5bl0sVHuQsp', '2021-04-16 10:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_affiliate`
--

INSERT INTO `oc_customer_affiliate` (`customer_id`, `company`, `website`, `tracking`, `commission`, `tax`, `payment`, `cheque`, `paypal`, `bank_name`, `bank_branch_number`, `bank_swift_code`, `bank_account_name`, `bank_account_number`, `custom_field`, `status`, `date_added`) VALUES
(82, 'GTP', 'http://galaxytechnologypark.com/', '1234567890', '5.00', '', 'cheque', 'C Kannan', '', '', '', '', '', '', '', 1, '2020-10-24 15:03:15'),
(188, 'EaSy', 'Easystore.life', 'YLVJ2XuNHf7BiILXQhKnbQyLGBCSObbytHqsddFepiB4XBrneYJqlRn6sUZUv977', '5.00', '', 'cheque', 'TANIL Raju', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '2.49.110.5', '2020-02-18 13:55:39'),
(12, 20, '167.114.92.52', '2020-04-17 13:19:49'),
(3, 4, '185.220.101.2', '2020-03-31 06:55:43'),
(4, 5, '223.182.196.13', '2020-04-02 16:33:40'),
(11, 19, '112.133.237.32', '2020-04-15 23:55:34'),
(13, 21, '46.166.139.111', '2020-04-23 23:15:45'),
(10, 18, '157.49.160.115', '2020-04-15 23:33:54'),
(14, 22, '104.244.76.56', '2020-04-27 21:08:57'),
(15, 23, '112.133.237.22', '2020-04-28 11:26:08'),
(16, 24, '112.133.237.22', '2020-04-28 11:50:33'),
(17, 25, '112.133.237.22', '2020-04-28 12:15:25'),
(18, 26, '112.133.237.22', '2020-04-28 12:25:02'),
(19, 26, '112.133.237.21', '2020-04-28 13:42:42'),
(20, 27, '185.121.69.14', '2020-04-28 18:32:11'),
(21, 28, '106.198.38.23', '2020-05-02 19:37:27'),
(22, 26, '112.133.248.125', '2020-05-02 20:40:43'),
(23, 29, '112.133.248.125', '2020-05-02 22:32:12'),
(24, 30, '185.220.101.212', '2020-05-06 18:53:35'),
(25, 31, '104.244.73.193', '2020-05-09 19:08:06'),
(26, 24, '112.133.236.46', '2020-05-09 20:09:59'),
(27, 26, '112.133.236.46', '2020-05-09 20:17:22'),
(28, 32, '112.133.236.46', '2020-05-09 22:13:36'),
(29, 33, '51.75.52.118', '2020-05-10 15:38:40'),
(30, 28, '112.133.236.32', '2020-05-10 16:39:59'),
(31, 34, '62.102.148.68', '2020-05-13 12:28:14'),
(32, 35, '195.154.207.112', '2020-05-15 13:37:21'),
(33, 36, '51.38.233.93', '2020-05-15 19:29:57'),
(34, 37, '212.47.229.4', '2020-05-21 07:26:34'),
(35, 38, '185.220.101.156', '2020-05-25 09:27:06'),
(36, 39, '27.122.59.100', '2020-05-30 03:55:52'),
(37, 40, '23.129.64.193', '2020-06-01 03:12:44'),
(38, 41, '46.19.141.86', '2020-06-01 12:58:31'),
(39, 42, '95.211.230.211', '2020-06-05 08:09:23'),
(40, 43, '167.114.92.50', '2020-06-06 07:37:22'),
(41, 44, '89.31.57.5', '2020-06-07 01:03:31'),
(42, 45, '199.249.230.100', '2020-06-08 08:38:36'),
(43, 46, '185.100.87.41', '2020-06-08 14:28:59'),
(44, 47, '185.220.101.197', '2020-06-10 19:57:02'),
(45, 48, '212.21.66.6', '2020-06-15 20:33:58'),
(46, 49, '185.220.101.129', '2020-06-18 14:15:14'),
(47, 50, '193.70.12.219', '2020-06-19 15:00:40'),
(48, 51, '199.249.230.119', '2020-06-22 04:23:11'),
(49, 52, '185.220.100.246', '2020-06-22 20:43:29'),
(50, 53, '185.107.83.71', '2020-06-25 16:25:25'),
(51, 54, '51.75.144.43', '2020-06-27 05:04:32'),
(52, 67, '112.133.236.61', '2020-07-29 10:14:57'),
(53, 80, '94.177.164.168', '2020-08-18 13:04:39'),
(54, 81, '217.182.139.85', '2020-08-20 19:15:12'),
(55, 82, '112.133.236.70', '2020-08-20 22:15:11'),
(56, 83, '144.217.166.65', '2020-08-23 05:27:34'),
(57, 84, '122.166.197.63', '2020-08-24 14:09:21'),
(58, 28, '122.166.197.63', '2020-08-24 17:15:33'),
(59, 85, '185.220.101.15', '2020-08-27 18:56:49'),
(60, 86, '217.170.206.146', '2020-08-28 02:31:33'),
(61, 87, '185.100.85.101', '2020-08-30 09:58:17'),
(62, 88, '83.169.216.141', '2020-08-31 08:42:37'),
(63, 89, '51.15.235.211', '2020-08-31 15:12:16'),
(64, 90, '89.34.27.43', '2020-08-31 19:37:56'),
(65, 91, '51.75.144.43', '2020-09-01 12:38:26'),
(66, 92, '185.220.100.240', '2020-09-02 11:17:29'),
(67, 93, '185.220.101.202', '2020-09-04 15:30:54'),
(68, 94, '81.171.29.146', '2020-09-07 11:57:10'),
(69, 95, '188.214.104.146', '2020-09-08 23:22:40'),
(70, 96, '109.70.100.48', '2020-09-09 13:47:43'),
(71, 97, '89.34.27.48', '2020-09-09 21:09:08'),
(72, 98, '185.248.160.21', '2020-09-10 07:51:20'),
(73, 99, '178.17.171.124', '2020-09-11 19:36:42'),
(74, 100, '185.220.100.249', '2020-09-14 01:11:01'),
(75, 101, '185.220.100.245', '2020-09-15 21:57:24'),
(76, 102, '23.129.64.194', '2020-09-16 05:23:26'),
(77, 103, '185.220.101.200', '2020-09-26 08:07:05'),
(78, 104, '85.248.227.164', '2020-09-30 14:49:17'),
(79, 105, '185.220.101.194', '2020-09-30 15:11:57'),
(80, 106, '195.154.179.3', '2020-10-05 00:10:10'),
(81, 107, '179.43.167.229', '2020-10-05 21:02:54'),
(82, 108, '185.220.100.252', '2020-10-05 22:36:04'),
(83, 109, '59.115.116.82', '2020-10-07 04:06:56'),
(84, 110, '103.93.202.10', '2020-10-07 15:09:24'),
(85, 111, '185.220.100.249', '2020-10-08 10:04:30'),
(86, 112, '162.247.74.202', '2020-10-12 03:13:28'),
(87, 113, '125.123.125.5', '2020-10-14 03:22:03'),
(88, 114, '178.62.53.252', '2020-10-14 08:37:21'),
(89, 115, '185.220.102.241', '2020-10-14 20:56:13'),
(90, 116, '125.123.124.23', '2020-10-15 00:26:39'),
(91, 117, '125.123.66.151', '2020-10-16 04:16:42'),
(92, 118, '178.62.53.252', '2020-10-16 05:33:25'),
(93, 119, '125.123.71.145', '2020-10-16 06:12:21'),
(94, 120, '117.69.13.22', '2020-10-16 14:03:47'),
(95, 121, '45.55.236.139', '2020-10-16 20:39:00'),
(96, 122, '104.238.111.150', '2020-10-16 22:27:42'),
(97, 123, '36.26.231.108', '2020-10-17 01:21:23'),
(98, 124, '173.236.176.119', '2020-10-17 09:05:50'),
(99, 125, '31.220.2.223', '2020-10-17 17:20:48'),
(100, 126, '104.244.73.193', '2020-10-17 22:23:45'),
(101, 127, '128.199.76.67', '2020-10-17 22:54:11'),
(102, 128, '113.128.10.133', '2020-10-18 06:44:55'),
(103, 129, '110.243.10.19', '2020-10-18 11:24:27'),
(104, 130, '107.170.42.147', '2020-10-18 23:28:05'),
(105, 131, '188.191.146.25', '2020-10-20 07:19:56'),
(106, 135, '51.195.91.153', '2020-10-22 17:01:42'),
(107, 82, '112.133.236.18', '2020-10-24 15:07:05'),
(108, 139, '157.42.115.251', '2020-10-26 11:39:28'),
(109, 139, '157.42.110.51', '2020-10-26 11:39:35'),
(110, 139, '157.42.107.248', '2020-10-26 11:40:01'),
(111, 139, '157.42.101.255', '2020-10-26 11:40:07'),
(112, 139, '157.42.117.73', '2020-10-26 11:40:56'),
(113, 139, '157.42.104.135', '2020-10-26 11:41:07'),
(114, 140, '117.69.33.35', '2020-10-26 23:48:21'),
(115, 141, '89.34.27.37', '2020-10-28 18:51:22'),
(116, 142, '45.154.255.67', '2020-10-29 05:33:24'),
(117, 143, '125.123.66.151', '2020-11-03 21:23:51'),
(118, 144, '120.34.231.22', '2020-11-03 22:43:52'),
(119, 145, '58.19.81.95', '2020-11-04 13:07:50'),
(120, 146, '119.28.54.231', '2020-11-04 23:11:43'),
(121, 147, '144.172.118.3', '2020-11-05 00:59:30'),
(122, 148, '51.75.144.43', '2020-11-05 20:51:41'),
(123, 149, '91.219.236.31', '2020-11-07 12:22:13'),
(124, 150, '166.62.85.184', '2020-11-17 02:57:23'),
(125, 151, '37.1.221.96', '2020-11-19 23:11:53'),
(126, 152, '37.1.221.96', '2020-11-19 23:33:49'),
(127, 153, '106.215.141.66', '2020-11-20 00:02:42'),
(128, 153, '106.215.204.90', '2020-11-20 00:02:42'),
(129, 154, '37.1.221.96', '2020-11-20 07:09:16'),
(130, 155, '185.220.101.132', '2020-11-21 01:50:13'),
(131, 156, '199.249.230.118', '2020-11-23 16:29:55'),
(132, 157, '51.79.53.145', '2020-11-25 01:40:23'),
(133, 159, '142.44.139.12', '2020-12-01 17:02:05'),
(134, 160, '104.244.73.43', '2020-12-01 19:58:33'),
(135, 162, '195.206.105.217', '2020-12-04 09:50:38'),
(136, 163, '176.194.39.36', '2020-12-04 17:58:03'),
(137, 164, '209.17.114.78', '2020-12-04 22:34:40'),
(138, 165, '120.38.241.110', '2020-12-07 19:10:56'),
(139, 166, '51.77.148.119', '2020-12-08 13:38:19'),
(140, 167, '185.220.101.215', '2020-12-10 08:04:06'),
(141, 163, '176.194.59.131', '2020-12-10 13:02:06'),
(142, 168, '51.89.164.89', '2020-12-11 09:48:08'),
(143, 169, '185.220.101.143', '2020-12-14 11:26:41'),
(144, 170, '130.149.80.199', '2020-12-14 23:07:08'),
(145, 171, '185.220.100.243', '2020-12-15 19:51:52'),
(146, 172, '109.70.100.51', '2020-12-17 02:06:22'),
(147, 173, '117.193.179.151', '2020-12-19 14:17:55'),
(148, 174, '45.236.148.86', '2020-12-20 07:46:31'),
(149, 175, '51.38.82.114', '2020-12-21 22:24:34'),
(150, 176, '109.70.100.54', '2020-12-23 15:33:09'),
(151, 177, '185.100.87.244', '2020-12-28 09:43:44'),
(152, 178, '199.249.230.100', '2021-01-02 11:07:58'),
(153, 179, '104.244.73.193', '2021-01-04 05:02:03'),
(154, 180, '94.199.22.231', '2021-01-04 21:01:57'),
(155, 181, '185.220.102.250', '2021-01-06 21:00:18'),
(156, 182, '106.200.159.173', '2021-01-07 13:08:52'),
(157, 184, '151.80.148.162', '2021-01-24 02:09:01'),
(158, 185, '185.191.124.150', '2021-01-24 20:26:59'),
(159, 186, '81.17.16.146', '2021-02-02 04:32:43'),
(160, 187, '181.115.221.158', '2021-02-03 04:00:14'),
(161, 188, '117.246.199.113', '2021-02-04 08:16:11'),
(162, 189, '51.79.53.134', '2021-02-08 03:32:41'),
(163, 190, '135.148.32.179', '2021-02-09 07:24:31'),
(164, 191, '104.244.76.13', '2021-02-09 16:56:44'),
(165, 192, '135.148.32.175', '2021-02-10 23:48:20'),
(166, 193, '185.220.101.216', '2021-02-11 01:06:14'),
(167, 194, '116.90.228.140', '2021-02-15 21:51:09'),
(168, 195, '51.178.86.137', '2021-02-16 06:57:11'),
(169, 196, '157.49.231.39', '2021-02-17 17:24:59'),
(170, 197, '23.129.64.216', '2021-02-20 13:37:31'),
(171, 198, '1.39.134.200', '2021-02-22 16:19:50'),
(172, 199, '185.100.85.101', '2021-02-23 09:04:28'),
(173, 200, '199.195.250.77', '2021-02-24 09:41:28'),
(174, 201, '185.220.101.7', '2021-03-03 21:08:58'),
(175, 202, '135.148.33.129', '2021-03-10 22:57:08'),
(176, 203, '193.218.118.125', '2021-03-13 22:38:49'),
(177, 204, '104.149.137.86', '2021-03-20 03:42:15'),
(178, 205, '106.204.195.49', '2021-03-21 22:37:29'),
(179, 206, '45.148.10.54', '2021-03-24 19:57:43'),
(180, 207, '106.204.230.164', '2021-03-26 00:11:13'),
(181, 208, '104.244.74.55', '2021-03-26 17:41:41'),
(182, 207, '223.185.50.146', '2021-03-26 20:13:29'),
(183, 209, '106.195.68.62', '2021-03-26 23:31:00'),
(184, 210, '92.204.170.186', '2021-03-27 22:17:29'),
(185, 211, '193.239.232.102', '2021-03-30 21:21:49'),
(186, 207, '106.196.94.130', '2021-03-30 22:09:31'),
(187, 212, '185.220.101.139', '2021-04-04 00:41:53'),
(188, 207, '106.196.94.158', '2021-04-04 22:39:28'),
(189, 213, '160.119.158.76', '2021-04-05 00:10:53'),
(190, 214, '49.207.218.24', '2021-04-15 11:48:12'),
(191, 215, '102.141.116.33', '2021-04-16 10:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(2, 'admin', '112.133.237.62', 1, '2020-04-15 06:29:39', '2020-04-15 06:29:39'),
(3, '', '77.83.184.230', 5, '2020-04-16 02:32:18', '2020-04-16 02:32:20'),
(4, '\'', '77.83.184.230', 2, '2020-04-16 02:32:18', '2020-04-16 02:32:38'),
(5, '&quot;', '77.83.184.230', 2, '2020-04-16 02:32:19', '2020-04-16 02:32:39'),
(8, '9047736317', '112.133.236.32', 3, '2020-05-10 11:06:52', '2020-05-10 11:09:35'),
(9, 'universejino@gmail.com', '112.133.236.32', 5, '2020-05-10 11:07:51', '2020-05-10 11:08:27'),
(10, 'gtp.kannan@gmail.com', '112.133.236.32', 1, '2020-05-10 11:22:16', '2020-05-10 11:22:16'),
(12, 'markbaker3753@gmail.com', '94.177.164.168', 2, '2020-08-18 07:36:42', '2020-08-18 07:36:47'),
(13, 'olhakoni@yandex.com', '109.252.138.201', 2, '2020-09-08 20:57:55', '2020-09-11 05:33:10'),
(14, 'david.hrom@yandex.com', '109.252.138.201', 1, '2020-09-13 04:17:17', '2020-09-13 04:17:17'),
(15, 'david.hrom@yandex.com', '109.252.138.97', 1, '2020-09-15 19:09:50', '2020-09-15 19:09:50'),
(16, 'twrrahul00@gmail.com', '42.111.99.67', 1, '2020-09-17 11:36:42', '2020-09-17 11:36:42'),
(17, 'a1ex.fok@yandex.com', '83.149.37.199', 1, '2020-09-20 01:33:28', '2020-09-20 01:33:28'),
(18, 'a1ex.fok@yandex.com', '31.173.101.149', 6, '2020-09-20 23:38:23', '2020-09-25 16:04:26'),
(20, 'a1ex.fok@yandex.com', '31.173.101.187', 1, '2020-10-09 23:50:21', '2020-10-09 23:50:21'),
(21, 'onlineshopeez', '112.133.236.63', 1, '2020-10-13 05:40:58', '2020-10-13 05:40:58'),
(22, 'a1ex.fok@yandex.com', '178.176.113.27', 1, '2020-10-14 04:50:20', '2020-10-14 04:50:20'),
(23, 'support@bigbreaks.com', '132.154.173.164', 1, '2020-10-16 12:43:28', '2020-10-16 12:43:28'),
(24, 'a1ex.fok@yandex.com', '31.173.101.70', 2, '2020-10-17 09:44:29', '2020-10-17 20:15:12'),
(26, 'a1ex.fok@yandex.com', '31.173.103.2', 4, '2020-10-20 21:13:12', '2020-10-26 17:36:25'),
(27, 'noreply@garden31.ru', '51.77.59.223', 4, '2020-10-22 23:07:58', '2020-10-22 23:08:29'),
(28, '9443587282', '112.133.236.18', 3, '2020-10-24 09:31:36', '2020-10-24 09:33:31'),
(29, 'carli.bejarano@mail.ru', '94.103.80.12', 1, '2020-10-25 14:39:31', '2020-10-25 14:39:31'),
(31, 'a1ex.fok@yandex.com', '31.173.100.255', 1, '2020-10-28 15:59:55', '2020-10-28 15:59:55'),
(32, 'a1ex.fok@yandex.com', '83.149.37.42', 3, '2020-11-01 05:50:11', '2020-11-03 10:10:39'),
(33, 'm1xailkopylov@yandex.com', '31.173.100.254', 1, '2020-11-06 11:15:23', '2020-11-06 11:15:23'),
(34, 'trutn3vihor@yandex.com', '31.173.103.221', 1, '2020-11-16 11:44:15', '2020-11-16 11:44:15'),
(35, 'larahfilipova@yandex.com', '83.169.216.249', 1, '2020-11-18 02:55:58', '2020-11-18 02:55:58'),
(36, 'konstantinformin@yandex.com', '91.76.238.177', 1, '2020-11-20 19:39:17', '2020-11-20 19:39:17'),
(37, 'nabiulinmarathe@yandex.com', '83.149.37.188', 2, '2020-11-24 17:51:08', '2020-11-24 21:06:17'),
(38, 'arhipcialkovski@yandex.com', '83.149.37.188', 2, '2020-11-26 06:41:48', '2020-11-28 14:50:15'),
(40, 'exclussilri693@gmail.com', '209.17.114.78', 2, '2020-12-04 17:07:13', '2020-12-04 17:07:14'),
(41, 'yurasvinarev@yandex.com', '109.252.55.99', 4, '2020-12-05 06:42:54', '2020-12-13 03:25:47'),
(42, 'vitaliezarechny@yandex.com', '109.252.55.99', 1, '2020-12-16 11:38:04', '2020-12-16 11:38:04'),
(43, 'valentinators@yandex.com', '109.252.55.99', 1, '2020-12-19 03:32:27', '2020-12-19 03:32:27'),
(45, 'vladimirgokin@yandex.com', '83.149.37.71', 1, '2020-12-23 07:00:45', '2020-12-23 07:00:45'),
(46, 'soniabastrykina@yandex.com', '83.149.37.71', 1, '2020-12-26 13:37:58', '2020-12-26 13:37:58'),
(50, 'madhumathikgh@gmail.com', '223.237.202.56', 3, '2021-03-02 06:30:33', '2021-03-02 06:30:45'),
(51, '', '223.237.202.56', 1, '2021-03-02 06:30:54', '2021-03-02 06:30:54'),
(52, 'yours.divyashree@gmail.com', '27.59.74.184', 1, '2021-03-12 06:09:26', '2021-03-12 06:09:26'),
(53, 'okeanpestov1992@mail.ru', '109.234.37.227', 2, '2021-03-16 17:07:46', '2021-03-17 00:01:38'),
(54, 'jayheisavetheworld@gmail.com', '75.119.133.130', 5, '2021-03-16 17:27:24', '2021-03-16 17:29:31'),
(55, 'cvenkatesh905@gmail.com', '223.185.117.33', 2, '2021-03-19 11:22:50', '2021-03-19 11:22:53'),
(56, 'kumar.natosh2305@gmail.com', '106.204.230.164', 1, '2021-03-25 18:38:00', '2021-03-25 18:38:00'),
(57, 'kumar.natish2305@gmail.com', '106.204.230.164', 4, '2021-03-25 18:39:54', '2021-03-25 18:52:01'),
(58, 'info.asglobalsolutio n@', '223.185.50.146', 2, '2021-03-26 14:43:16', '2021-03-26 14:43:16'),
(59, 'bennageo.mar4723475@gmail.com', '75.119.133.130', 4, '2021-04-02 12:02:51', '2021-04-02 12:02:55'),
(60, 'naginisridhar@yahoo.com', '157.51.142.102', 1, '2021-04-04 05:48:20', '2021-04-04 05:48:20'),
(62, 'evgenevna5qdk@mail.ru', '109.234.37.227', 1, '2021-04-13 17:41:30', '2021-04-13 17:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `approve` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(44, 'module', 'bestseller'),
(46, 'module', 'special'),
(47, 'module', 'latest');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'plus-minus-oc3.ocmod.zip', '2020-03-26 22:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_googleshopping_product`
--

INSERT INTO `oc_googleshopping_product` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(1, 51, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 52, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 53, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 54, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 55, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 56, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 57, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 58, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 59, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 60, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 61, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 62, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 63, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 64, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 65, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 66, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 67, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 68, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 69, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 70, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 71, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 72, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 73, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 74, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 75, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 76, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 77, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, 78, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 79, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, 80, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(31, 81, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(32, 82, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(33, 83, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(34, 84, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(35, 85, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(36, 86, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(37, 87, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(38, 88, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(39, 89, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(40, 90, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(41, 91, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(42, 92, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(43, 93, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(44, 94, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(45, 95, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(46, 96, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(47, 97, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(48, 98, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(49, 99, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(50, 100, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(51, 101, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(52, 102, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(53, 103, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(54, 104, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(55, 105, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(56, 106, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(57, 107, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(58, 108, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(59, 109, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(60, 110, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(61, 111, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(62, 112, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(63, 113, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(64, 114, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(65, 115, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(66, 116, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(67, 117, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(68, 118, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(69, 119, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(70, 120, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(71, 121, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(72, 122, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(73, 123, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(74, 124, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(75, 125, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(76, 126, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(77, 127, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(78, 128, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(79, 129, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(80, 130, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(81, 131, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(82, 132, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(83, 133, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(84, 134, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(85, 135, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(86, 136, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(87, 137, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(88, 138, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(89, 139, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(90, 140, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(91, 141, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, 142, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, 143, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(94, 144, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(95, 145, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(96, 146, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(97, 147, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(98, 148, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(99, 149, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(100, 150, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(101, 151, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(102, 152, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(103, 153, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(104, 154, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(105, 155, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(106, 156, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(107, 157, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(108, 158, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(109, 159, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(110, 160, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(111, 161, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(112, 162, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(113, 163, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(114, 164, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(115, 165, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(116, 166, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, 167, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(118, 168, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(119, 169, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(120, 170, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(121, 171, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(122, 172, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(123, 173, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(124, 174, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(125, 175, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(126, 176, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(127, 177, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(128, 178, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(129, 179, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(130, 180, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(131, 181, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(132, 182, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(133, 183, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(134, 184, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(135, 185, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(136, 186, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(137, 187, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(138, 188, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(139, 189, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(140, 190, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(141, 191, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(142, 192, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(143, 193, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(144, 194, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(145, 195, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(146, 196, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(147, 197, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(148, 198, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(149, 199, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(150, 200, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(151, 201, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(152, 202, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(153, 203, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(154, 204, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(155, 205, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(156, 206, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(157, 207, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(158, 208, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(159, 209, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(160, 210, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(161, 211, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(162, 212, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, 213, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(164, 214, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(165, 215, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, 216, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(167, 217, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(168, 218, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(169, 219, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(170, 220, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(171, 221, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(172, 222, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(173, 223, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(174, 224, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(175, 225, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(176, 226, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(177, 227, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(178, 228, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(179, 229, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(180, 230, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(181, 231, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(182, 232, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(183, 233, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(184, 234, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(185, 235, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(186, 236, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(187, 237, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(188, 238, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(189, 239, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(190, 240, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(191, 241, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(192, 242, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(193, 243, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(194, 244, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(195, 245, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(196, 246, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(197, 247, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(198, 248, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(199, 249, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(200, 250, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(201, 251, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(202, 252, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(203, 253, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(204, 254, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(205, 255, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(206, 256, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(207, 257, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(208, 258, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(209, 259, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(210, 260, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(211, 261, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(212, 262, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(213, 263, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(214, 264, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(215, 265, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(216, 266, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(217, 267, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(218, 268, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(219, 269, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(220, 270, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(221, 271, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(231, 281, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(230, 280, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(229, 279, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(228, 278, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(227, 277, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(232, 282, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(233, 283, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(234, 284, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(235, 285, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(236, 286, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(237, 287, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(238, 288, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(239, 289, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(240, 290, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(241, 291, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(242, 292, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(243, 293, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(244, 294, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(245, 295, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(246, 296, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(247, 297, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(248, 298, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(249, 299, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(250, 300, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(251, 301, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(252, 302, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(253, 303, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(254, 304, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(255, 305, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(256, 306, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(257, 307, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(258, 308, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(259, 309, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(260, 310, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(265, 315, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(262, 312, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(263, 313, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(264, 314, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(266, 316, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(267, 317, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(268, 318, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(269, 319, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(270, 320, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(271, 321, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(272, 322, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(273, 323, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(274, 324, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(275, 325, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(276, 326, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(277, 327, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(283, 333, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(282, 332, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(280, 330, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(281, 331, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(284, 334, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(285, 335, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(286, 336, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(287, 337, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(288, 338, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(289, 339, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(290, 340, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(291, 341, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(292, 342, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(293, 343, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(294, 344, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(295, 345, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(296, 346, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(297, 347, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(298, 348, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(299, 349, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(300, 350, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(301, 351, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(302, 352, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(303, 353, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(304, 354, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(305, 355, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(306, 356, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(307, 357, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(308, 358, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(309, 359, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(310, 360, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(311, 361, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(312, 362, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(313, 363, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(314, 364, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(315, 365, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(316, 366, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(317, 367, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(318, 368, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(319, 369, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(320, 370, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(321, 371, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(322, 372, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(323, 373, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(324, 374, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(325, 375, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(326, 376, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(327, 377, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(328, 378, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(329, 379, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(330, 380, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(331, 381, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(332, 382, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(333, 383, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(334, 384, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(335, 385, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(336, 386, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(337, 387, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(338, 388, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(339, 389, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(340, 390, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(341, 391, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(342, 392, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(343, 393, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(344, 394, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(345, 395, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(346, 396, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(347, 397, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(348, 398, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(349, 399, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(350, 400, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(351, 401, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(352, 402, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(353, 403, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(354, 404, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(355, 405, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(356, 406, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(357, 407, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(358, 408, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(359, 409, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(360, 410, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(361, 411, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(362, 412, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(363, 413, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(364, 414, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(365, 415, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(366, 416, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(367, 417, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(368, 418, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(369, 419, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(370, 420, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(371, 421, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(372, 422, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(373, 423, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(374, 424, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(375, 425, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(376, 426, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(377, 427, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(378, 428, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(379, 429, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(380, 430, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(381, 431, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(382, 432, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(383, 433, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(384, 434, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(385, 435, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(386, 436, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(387, 437, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(388, 438, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(389, 439, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(390, 440, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(391, 441, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(392, 442, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(393, 443, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(394, 444, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(395, 445, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(396, 446, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `oc_googleshopping_product` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(397, 447, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(398, 448, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(399, 449, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(400, 450, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(401, 451, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(402, 452, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(403, 453, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(404, 454, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(405, 455, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(406, 456, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(407, 457, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(408, 458, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(409, 459, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(410, 460, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(411, 461, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(412, 462, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(413, 463, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(414, 464, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(415, 465, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(416, 466, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(417, 467, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(418, 468, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(419, 469, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(420, 470, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(421, 471, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(422, 472, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(423, 473, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(424, 474, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(425, 475, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(426, 476, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(427, 477, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(428, 478, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(429, 479, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(430, 480, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(431, 481, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(432, 482, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(433, 483, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(434, 484, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(435, 485, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(436, 486, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(437, 487, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(438, 488, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(439, 489, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(440, 490, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(441, 491, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(442, 492, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(443, 493, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(444, 494, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(445, 495, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(446, 496, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(447, 497, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(448, 498, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(449, 499, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(450, 500, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(451, 501, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(452, 502, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(453, 503, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(454, 504, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(455, 505, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(456, 506, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(457, 507, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(458, 508, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(459, 509, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(460, 510, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(461, 511, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(462, 512, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(463, 513, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(464, 514, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(465, 515, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(466, 516, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(467, 517, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(468, 518, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(469, 519, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(470, 520, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(471, 521, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(472, 522, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(473, 523, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(474, 524, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(475, 525, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(476, 526, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(477, 527, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(478, 528, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(479, 529, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(480, 530, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(481, 531, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(482, 532, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(483, 533, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(484, 534, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(485, 535, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(486, 536, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(487, 537, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(488, 538, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(489, 539, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(491, 541, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(492, 542, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(493, 543, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(494, 544, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(495, 545, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(496, 546, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(497, 547, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(498, 548, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(499, 549, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(500, 550, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(501, 551, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(502, 552, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(503, 553, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(506, 556, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(505, 555, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(507, 557, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(508, 558, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(509, 559, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(510, 560, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(511, 561, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(512, 562, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(513, 563, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(514, 564, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(515, 565, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(516, 566, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(517, 567, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(518, 568, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(519, 569, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(520, 570, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(521, 571, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(522, 572, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(523, 573, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(524, 574, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(525, 575, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(526, 576, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(527, 577, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(528, 578, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(529, 579, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(530, 580, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(531, 581, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(532, 582, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(533, 583, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(534, 584, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(535, 585, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(536, 586, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(537, 587, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(538, 588, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(539, 589, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(540, 590, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(541, 591, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(542, 592, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(543, 593, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(544, 594, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(545, 595, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(546, 596, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(547, 597, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(548, 598, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(549, 599, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(550, 600, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(551, 601, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(552, 602, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(553, 603, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(554, 604, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(555, 605, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(556, 606, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(557, 607, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(558, 608, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(559, 609, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(560, 610, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(561, 611, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(562, 612, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(563, 613, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(564, 614, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(565, 615, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(566, 616, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(567, 617, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(568, 618, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(569, 619, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(570, 620, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(571, 621, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(572, 622, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(573, 623, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(574, 624, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(575, 625, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL,