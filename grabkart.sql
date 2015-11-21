-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2015 at 11:27 AM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `GrabKart`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE IF NOT EXISTS `product_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `image` text,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `sold_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `name`, `image`, `price`, `quantity`, `is_visible`, `sold_by`) VALUES
(1, 'Moto G (3rd Generation)', 'http://img6a.flixcart.com/image/mobile/w/t/n/motorola-moto-g-3rd-generation-ap3560ae7k8-400x400-imae9h4h8gkbpq56.jpeg', 12999, 10, 1, 1),
(2, 'Xiaomi Mi 4 (White, 16GB)', 'http://ecx.images-amazon.com/images/I/91l7dutVDjL._SL1500_.jpg', 14999, 100, 1, 7),
(3, 'Micromax 42" 4K LED TV', 'http://img5a.flixcart.com/image/television/p/c/h/micromax-42c0050uhd-400x400-imae5gc2kezryw3n.jpeg', 34990, 1, 1, 5),
(4, 'Micromax 49" Ultra HD LED TV', 'http://img5a.flixcart.com/image/television/p/c/h/micromax-42c0050uhd-400x400-imae5gc2kezryw3n.jpeg', 52590, 10, 0, 5),
(5, 'OnePlus One', 'http://img5a.flixcart.com/image/mobile/y/z/h/one-plus-one-na-400x400-imae8gd6phygdszv.jpeg', 21501, 20, 1, 6),
(6, 'Apple iPhone 6 Plus (Gold, 16 GB)', 'http://img6a.flixcart.com/image/mobile/4/q/n/apple-iphone-6-plus-400x400-imaeymdqx2g2wtjn.jpeg', 56477, 1, 2, 7),
(7, 'OnePlus 2', 'http://ecx.images-amazon.com/images/I/818fbX6mQkL._SL1500_.jpg', 24999, 1000, 1, 7),
(8, 'Wildcraft Stinger Green Backpack', 'http://n4.sdlcdn.com/imgs/a/i/q/Wildcraft-Stinger-Green-Backpack-SDL370725615-1-34d01.jpg', 1370, 25, 1, 4),
(9, 'LG 84LA9800 213.36 cm (84) 4K ', 'http://n2.sdlcdn.com/imgs/a/l/b/LG-84-inches-84LA9800-Ultra-SDL891116083-1-7bff1.jpg', 1376123, 5, 1, 7),
(10, 'Solar :: Lawn Garden Light Lamp Waterproof', 'http://i.ebayimg.com/00/s/MTAwMVgxMDAx/z/vkwAAOSw9N1Vw7eu/$_12.JPG', 1354638, 10, 1, 4),
(11, 'Kindle Paperwhite, 6" High-Res Display (300 ppi) ', 'http://ecx.images-amazon.com/images/I/71kKcVfSGhL._SL1000_.jpg', 10999, 100000, 1, 7),
(12, 'Western Digital My Passport Ultra 2TB USB 3.0 Secure Portable External Hard Drive', 'http://ecx.images-amazon.com/images/I/71GD3cJp-tL._SL1500_.jpg', 6700, 10, 1, 7),
(13, 'Bose SoundTouch 120 738478-1100 Home Theater System (Black)', 'http://ecx.images-amazon.com/images/I/715HBb5CCHL._SL1500_.jpg', 110138, 10, 0, 6),
(14, 'Teewe 2', 'http://ecx.images-amazon.com/images/I/81TriJx0STL._SL1500_.jpg', 2099, 5, 1, 1),
(15, '[AT] Encarta Yellow Backpack', 'http://n1.sdlcdn.com/imgs/a/8/q/American-Tourister-Encarta-Yellow-Backpack-SDL947068190-1-d406c.jpg', 1043, 40, 1, 4),
(16, '[AT] Stream Alfa Spinner Magenta 4 Wheel Trolley 79 Cm [Large]', 'http://n1.sdlcdn.com/imgs/a/m/d/American-tourister-Stream-Alfa-Spinner-SDL865768416-1-bd3a7.JPG', 7710, 10, 1, 4),
(17, 'MAGGI  2 minute noodles (pack of 12)', 'http://i3.sdlcdn.com/img/Flash-Sale/maggi_diwali_1.png?v4', 114, 10000, 1, 8),
(18, 'Apple MacBook Air MJVE2HN A Notebook', 'http://n2.sdlcdn.com/imgs/a/w/0/Apple-MacBook-Air-MJVE2HN-A-SDL619830203-1-d1b74.jpg', NULL, 50, 1, 6),
(19, 'Wooden Wall Shelves (Set of Four) ', 'http://n4.sdlcdn.com/imgs/a/1/3/372B-b3b14.jpg', 1799, 10, 1, 8),
(20, 'Octagon Wall Shelves', 'http://n4.sdlcdn.com/imgs/a/1/3/12345-92f8f.jpg', 1700, 4, 1, 4),
(21, 'Combo of Mouse and Keyboard', 'https://static.groupon.co.in/48/38/1439891463848.jpg', 300, 1, 1, 4),
(22, 'Lakme Absolute Gloss Addict Lip Color, Pink Passion, 4ml', 'http://ecx.images-amazon.com/images/I/51n7wm5XCmL._SL1000_.jpg', 461, 10, 1, 7),
(23, 'Canon 5D Mark III — 22.3MP Digital SLR ', 'http://ecx.images-amazon.com/images/I/51sN1SNVt9L.jpg', 208183, 0, 0, 4),
(24, 'Xbox One Console with Kinect ', 'http://ecx.images-amazon.com/images/I/61QuR%2Byp29L._SL1000_.jpg', 45990, 100, 1, 1),
(25, 'Ubiquiti UniFi AP Enterprise WiFi System Long Range', 'http://ecx.images-amazon.com/images/I/61MZOrBV4zL._SL1500_.jpg', 20699, 10, 1, 7),
(26, 'Alfa AWUS036H Upgraded to 1000mW 1W 802.11b/g High Gain USB Wireless', 'http://ecx.images-amazon.com/images/I/61Fb3MjRQlL._SL1500_.jpg', 4402, 30, 1, 4),
(27, 'Samsung 850 EVO 250GB 2.5-Inch SATA III Internal SSD (MZ-75E250B/AM)', 'http://ecx.images-amazon.com/images/I/810D-GQoNZL._SL1500_.jpg', 7500, 100, 1, 1),
(28, 'Dork, The adventures of Robin Einstein Varghese', 'http://ecx.images-amazon.com/images/I/51ZD9boAcdL._SX321_BO1,204,203,200_.jpg', 99, 999, 1, 7),
(29, 'Grand Theft Auto V (PC)', 'http://ecx.images-amazon.com/images/I/813nKi%2BElmL._SL1500_.jpg', 3157, 1000, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `type`) VALUES
(1, 'WS Retail', 'e10adc3949ba59abbe56e057f20f883e', 'seller'),
(2, 'Nikila', 'c4ca4238a0b923820dcc509a6f75849b', 'buyer'),
(3, 'Max K', 'd3d9446802a44259755d38e6d163e820', 'buyer'),
(4, 'Tarak', 'f6c2fda430a85b6c04930ffcb97b14e6', 'seller'),
(5, 'Micromax', '026af9dcdc2badc9451dbdd21204c776', 'seller'),
(6, 'Cromaretail', 'cfcd208495d565ef66e7dff9f98764da', 'seller'),
(7, 'Amazon', '11a98374ebec8e0c7a54751d2161804d', 'seller'),
(8, 'Snapdeal', '053b9260269146ec901fbbdfd30ffde5', 'seller');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

