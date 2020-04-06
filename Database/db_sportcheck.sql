-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 06, 2020 at 01:42 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportcheck`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `c_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`c_id`, `category`) VALUES
(1, 'Shoes'),
(2, 'Jacket'),
(3, 'Hoodies'),
(4, 'Pants'),
(5, 'Socks'),
(6, 'Underwear'),
(7, 'Swimwear');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `p_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `images` varchar(100) NOT NULL,
  `colours` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`p_id`, `name`, `price`, `images`, `colours`) VALUES
(1, 'Helly Hansen Women\'s Aurora 3L Shell Life Pocket Jacket', '699.99', 'Helly.webp', ' SCUBA BLUE, NAVY, FESTIVAL FUSCHIA'),
(2, 'Champion Men\'s Powerblend Fleece Pullover Hoodie', '59.99', 'Champion-Hoodie.webp', ' BLACK, NAVY, TEAM RED SCARLET'),
(3, 'FILA Women\'s Mitsu Jogger Pants', '44.97', 'FILA-pants.webp', 'PEACOAT'),
(4, 'Saxx Men\'s Vibe Boxer Modern Fit', '33.99', 'saxx-underwear.webp', 'CANADIANA'),
(5, 'Woods Men\'s Athelney Winter Boots', '149.99', 'man-boots.webp', 'BLACK'),
(6, 'Ripzone Women\'s Artemisa Bandeau Bikini Top', '24.99', 'Womens-Artemisa-Bandeau-Bikini-Top.webp', 'BLACK, GREEN DARK'),
(7, 'Sherpa Outdoor Women\'s Sharada 2.5L Shell Jacket', '47.97', 'rainjacket.webp', 'SHARADA BLAU,SHARADA DUNKEL ROT'),
(8, 'Sanuk Women\'s Pick Pocket Fleece Casual Shoes', '74.99', 'lightgrey-shoes.webp', 'Light Grey'),
(9, 'Under Armour Women\'s Pure Stretch Sheer Thong', '13.99', 'pink-thong.webp', 'PEACH HORIZON,WHITE'),
(10, 'Nike Women\'s Dri-FIT Cushion Quarter Socks', '13.50', 'nike-woman-socks.webp', 'BLACK-913,WHITE'),
(11, 'Gravity Men\'s Flannel Lounge Pants', '24.99', 'gravity-pants.webp', 'DIRECTOIRE BUFFALO'),
(12, 'Nike Men\'s Revolution 5 Running Shoes', '65.99', 'gymred.webp', 'GYM RED,WHITE BLACK, WHITE BLACKGYM RED'),
(13, 'Calvin Klein Modern Cotton Thong', '23.99', 'CK-pink.webp', 'PEACH'),
(14, 'Speedo Endurance Jammer Men\'s Swim Trunks', '51.99', 'black-swim-trunk.webp', 'BLACK'),
(15, 'Nike Girls\' Kawa Slide Sandals', '24.00', 'girl-slippers.webp', 'COSMIC FUCHSIA'),
(16, 'adidas Originals Women\'s Vocal Crop Hoodie', '89.99', 'red-hoodie.webp', 'SHIFT ORANGE'),
(17, 'ASICS Women\'s Gel Excite 6 Running Shoes', '109.99', 'asics-running-shoes.webp', 'Ice Mint, White'),
(18, 'adidas Men\'s 3-Stripe Terry 10 Shorts', '47.99', 'grey-trunk.webp', 'MEDIUM GREY'),
(19, 'Spyder Temerity Women\'s Insulated Pants', '184.88', 'skipants.webp', 'FROZEN BLING PRIN'),
(20, 'Nike Women\'s Air Shorts', '31.50', 'nike-woman-short.webp', 'Black'),
(21, 'Columbia Men\'s Cleveland Crest Hooded Softshell Jacket', '89.97', 'columbia-blue.webp', 'BLACK,AZUL'),
(22, 'Nike Sportswear Women\'s Reversible Windrunner Down Jacket', '138.75', 'nike-woman-casual.webp', 'BLACK, CUBE/MIDNIGHT TURQ/WHITE, BLEACHED CORAL/CEDAR/WHITE'),
(23, 'The North Face Toddler 2-5 Reversible Breezeway Lightweight Jacket', '89.99', 'toddler-jacket.webp', 'FIERY RED'),
(24, 'Nike Sportswear Women\'s Heritage 1/2 Zip Hoodie', '60.00', 'cute-hoodie.webp', 'DARK GREY,LIGHT REDWOOD '),
(25, 'Under Armour Men\'s Sportstyle Rival Fleece Logo Pullover Hoodie', '27.50', 'red-man-hoodie.webp', 'MARTIAN RED/BLACK'),
(26, 'Under Armour Women\'s Waffle Hoodie - Level Purple', '59.99', 'purple-hoodie.webp', ' LEVEL PURPLE'),
(27, 'Lenz Unisex Heat 5.0 Merino Toe Cap Slim Fit Socks', '389.99', 'leggings-black-red-socks.webp', 'BLACK/RED/GREY'),
(28, 'Nike Men’s Elite Basketball Crew Sock', '13.50', 'basketball-christamas-socks.webp', 'Christmas Red'),
(29, 'Stance Women\'s Minnie Claus Crew Socks', '27.99', 'woman-mini-socks.webp', 'NOVELTY'),
(30, 'adidas Adi Soccer Socks', '17.99', 'addias-white-socks.webp', 'WHITE'),
(31, 'BN3TH Breathe Classic Boxer Brief Underwear ', '34.99', 'flower-boxer.webp', ' ARRANGEMENT'),
(32, 'Under Armour Pure Stretch Thong Underwear', '29.99', 'woman-sexy-thong.png', 'PINK FOG/LEVEL PURPLE'),
(33, 'Saxx Platinum Boxer Brief Underwear with Fly - Novelty', '36.99', 'saxx-hawaiian.webp', 'BLACK HAWAIIAN NOIR'),
(34, 'Speedo Endurance Jammer Men\'s Swim Trunks', '51.99', 'long-swim-trunk.webp', 'BLACK'),
(35, 'Ripzone Women\'s Jungle Aretha Triangle Bikini Top', '24.99', 'Jungle-Aretha-Triangle-Bikini.webp', 'GREEN LIGHT'),
(40, 'yoon', '5000000000', '326c795c69404c6a7d196ebfe726f328.JPG', 'white red diamond'),
(41, 'fanshawe', '-50000', '63e300e3b982ef3b56274f422ac652ef.jpg', 'red'),
(42, 'Soyoon Lee', '50000000000000', 'e9d39d0fded06ebce291b4ae926ebafa.png', 'blaccck');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pro_cate`
--

CREATE TABLE `tbl_pro_cate` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pro_cate`
--

INSERT INTO `tbl_pro_cate` (`id`, `p_id`, `c_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 4),
(4, 4, 6),
(5, 5, 1),
(6, 6, 7),
(7, 7, 2),
(8, 8, 1),
(9, 9, 6),
(10, 10, 5),
(11, 11, 4),
(12, 12, 1),
(13, 13, 6),
(14, 14, 7),
(15, 15, 1),
(16, 16, 3),
(17, 17, 1),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 2),
(22, 22, 2),
(23, 23, 2),
(24, 24, 3),
(25, 25, 3),
(26, 26, 3),
(27, 27, 5),
(28, 28, 5),
(29, 29, 5),
(30, 30, 5),
(31, 31, 6),
(32, 32, 6),
(33, 33, 7),
(34, 34, 7),
(35, 35, 7),
(36, 36, 1),
(37, 37, 1),
(38, 38, 3),
(39, 39, 7),
(40, 40, 7),
(41, 41, 1),
(42, 42, 2),
(43, 42, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`) VALUES
(1, 'yoon', 'yoon', 'yoon', 'yoon', '2020-03-31 23:49:26', '::1'),
(3, 'pan', 'pan', 'pan', 'pan@ca', '2020-04-01 00:00:50', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_pro_cate`
--
ALTER TABLE `tbl_pro_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_pro_cate`
--
ALTER TABLE `tbl_pro_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
