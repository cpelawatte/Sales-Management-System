-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 05, 2024 at 06:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mritsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-04-02 16:21:18', '03-05-2024 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Sarees\r\n', 'Lankan Sarees', '2024-04-18 19:17:37', NULL),
(2, 'Frocks', 'Your comfy Go-to', '2024-04-18 19:17:37', ''),
(3, 'Skirts', 'For your every outfit', '2024-04-18 19:17:37', ''),
(4, 'Shirts', 'Mens Shirts', '2024-04-18 19:17:37', ''),
(5, 'Scarfs', 'One scarf- multiple ways\r\n', '2024-04-17 19:17:37', ''),
(6, 'Blouse', 'For all your styles\r\n', '2024-04-16 19:17:37', ''),
(7, 'Lungi', 'For all your styles\r\n', '2024-04-16 19:17:37', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 2, '2024-05-22 06:01:35', 'Debit / Credit card', 'Delivered'),
(2, 1, '16', 2, '2024-05-22 06:01:35', 'Debit / Credit card', NULL),
(3, 4, '15', 1, '2024-05-23 13:31:52', 'COD', 'in Process'),
(4, 5, '15', 1, '2024-06-05 01:04:45', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'Item is packed. Ready for dispatched.', '2024-05-22 06:32:29'),
(2, 1, 'Delivered', 'Product is delivered to the customer.', '2024-05-22 06:32:53'),
(3, 3, 'in Process', 'Product is packed. Dispactched soon', '2024-05-23 13:50:53'),
(4, 3, 'in Process', 'Product is in transit.\r\n', '2024-05-23 13:51:13'),
(5, 4, 'in Process', 'Item is packed', '2024-06-05 01:05:26'),
(6, 4, 'in Process', 'In Transit', '2024-06-05 01:05:34'),
(7, 4, 'Delivered', 'Delivered to the customer', '2024-06-05 01:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'Handloom Cotton Saree', 6900, 0, 'Blended with the lankan touch', 'handloom.jpeg\n\n', 350, 'In Stock', '2024-04-21 16:54:35', ''),
(2, 1, 1, 'Handloom Rayon Saree', 12500, 0, 'Blended with two colors with the handmade touch', 'ttt.jpeg', 500, 'In Stock', '2024-04-21 16:54:35', ''),
(3, 1, 2, 'Batik One color Voil Saree', 6500, 0, ' Beauty of the Lankan color textures', 'tt.jpg', 350, 'In Stock', '2024-04-21 16:54:35', ''),
(4, 1, 2, 'Batik Two Color voil saree ', 8999, 0, 'Blended with three colors of the lankan purest Batiks dies', 'Bscarfs.jpeg', 350, 'In Stock', '2024-04-21 16:54:35', ''),
(5, 1, 2, 'Batik Three Color Saree  ', 10999, 0, 'Blended with the finest of the combinations', 'silkbatikthreecolor.jpeg', 350, 'In Stock', '2024-04-21 16:54:35', ''),
(6, 1, 3, 'Batik Silk Two Color Saree', 32000, 0, 'Blended with the purest silks with the finest materials', 'threecolorsilkbatik.jpeg', 500, 'In Stock', '2024-04-21 16:54:35', ''),
(7, 1, 3, 'Batik silk  Three Color Saree', 42500, 0, 'Blended with the finest colors of the lankan culture', 'threecolorsilkbatik.jpeg', 200, 'In Stock', '2024-04-21 16:54:35', ''),
(8, 2, 4, 'Handloom Cotton Frock', 5500, 0, 'Hand wooven cotton finesse', 'rayonfrock.jpeg', 500, 'In Stock', '2024-04-21 16:54:35', ''),
(9, 2, 4, 'Handloom Rayon Frock', 6900, 0, 'Handloom Silk with the Finest of the wool', 'embroderCotton.jpeg', 500, 'In Stock', '2024-04-21 16:54:35', ''),
(10, 2, 5, 'Batik Silk Two Color Frock', 10000, 0, 'Silk Material with the finest colors', 'silkFrockTwoColor.jpeg', 300, 'In Stock', '2024-04-21 16:54:35', ''),
(11, 2, 5, 'Silk batik three colour Frocks', 11999, 0, 'Blended with the colors of the Lankan culture', 'threecolorsilk.jpeg\r\n', 500, 'In Stock', '2024-04-21 16:54:35', ''),
(12, 3, 6, 'Cotton Wraparound', 5000, 0, 'Voil material Wraparound skirt', 'BWraparound.jpeg', 500, 'In Stock', '2024-04-21 16:54:35', ''),
(13, 3, 7, 'Silk Batik wraparound', 8600, 0, 'Pure silk batik wraparound skirts', 'silkwrapskirt.jpeg', 500, 'In Stock', '2024-04-21 16:54:35', ''),
(14, 4, 8, 'Cotton Shirt short sleeve', 3000, 250, 'Lankan Endeavor to elevate your style\r\n', 'shortsleeveshirt.jpeg', 350, 'In Stock', '2024-04-21 16:54:35', ''),
(15, 4, 8, 'Cotton Long Sleeve Shirt', 4200, 0, 'Blended with the purest cotton materials', 'BLongSleeve.jpeg', 500, 'In Stock', '2024-04-21 16:54:35', ''),
(16, 4, 9, 'Silk Short Sleeve shirt', 5100, 0, 'Silkiest of the silk- Short sleeve shirt', 'shortsleeveshirt.jpeg', 350, 'In Stock', '2024-04-21 16:54:35', ''),
(17, 4, 9, 'Silk long sleeve shirts', 6500, 0, 'Silkiest of the silk - Long sleeve shirt', 'BLongSleeve.jpeg', 500, 'In Stock', '2024-04-21 16:54:35', ''),
(18, 5, 10, 'Silk Scrafs', 4800, 0, 'One Scarf - Muliple Outcomes', 'printedScraf.jpeg', 350, 'In Stock', '2024-04-21 16:54:35', ''),
(19, 5, 11, 'Cotton Rayon Scarfs', 4100, 0, 'Rayon Silk Scarf', 'rayonscarf.jpeg', 350, 'In Stock', '2024-04-21 16:54:35', ''),
(20, 6, 12, 'Silk Blouse', 5000, 0, 'Up your wardrobe with our latest release', 'silkblouse.jpeg', 500, 'In Stock', '2024-06-05 01:08:37', NULL),
(21, 6, 13, 'Cotton Blouse', 3000, 0, 'Up your wardrobe with our latest release', 'silkbatikTop.jpeg\r\n', 500, 'In Stock', '2024-06-05 01:08:37', NULL),
(22, 7, 14, 'Silk Lungi', 5000, 0, 'Up your wardrobe with our latest release', 'Blungi.jpeg\r\n', 500, 'In Stock', '2024-06-05 01:08:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Handloom Sarees', '2024-01-20 16:24:52', NULL),
(2, 1, 'Batik Voil Sarees', '2024-01-20 16:24:52', ''),
(3, 1, 'Batik Silk Sarees', '2024-01-20 16:24:52', ''),
(4, 2, 'Handloom Frocks', '2024-01-20 16:24:52', ''),
(5, 2, 'Batik Frocks', '2024-01-20 16:24:52', ''),
(6, 3, 'Voil Wraparound', '2024-01-20 16:24:52', ''),
(7, 3, 'Silk Wraparound', '2024-01-20 16:24:52', ''),
(8, 4, 'Handloom Shirts', '2024-01-20 16:24:52', ''),
(9, 4, 'Silk Shirts', '2024-01-20 16:24:52', ''),
(10, 5, 'Silk Scarfs', '2024-01-20 16:24:52', ''),
(11, 5, 'Cotton Scarfs', '2024-01-20 16:24:52', ''),
(12, 6, 'Silk blouse', '2024-06-05 01:07:31', NULL),
(13, 6, 'Cotton blouse', '2024-06-05 01:07:31', NULL),
(14, 7, 'Silk Lungi', '2024-06-05 01:07:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.k@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-22 06:01:21', '22-05-2024 11:34:34 AM', 1),
(2, 'johndeo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-23 13:30:40', NULL, 1),
(3, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-05 01:03:33', '05-06-2024 06:39:31 AM', 1),
(4, 'treshanfelix@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-05 04:27:53', '05-10-2024 01:18:26 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.k@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2024-04-21 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2024-04-21 19:30:50', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2024-04-21 19:30:50', ''),
(4, 'John Doe', 'johndeo@gmail.com', 4564566554, 'f925916e2754e5e03f75dd58a5733251', 'A 12323 XYZ Apartment ', 'Delhi', 'New Delhi', 110092, 'A 12323 XYZ Apartment ', 'Delhi', 'New Delhi', 110092, '2024-05-23 13:30:34', NULL),
(5, 'Amit kumar', 'amit12@gmail.com', 1414253625, 'f925916e2754e5e03f75dd58a5733251', 'A 123 XYZ Apartment', 'Delhi', 'new Delhi', 110023, 'A 123 XYZ Apartment', 'Delhi', 'new Delhi', 110023, '2024-06-05 01:03:24', NULL),
(6, 'Treshan felix', 'treshanfelix@gmail.com', 770488141, '2c09fb88f4a97a587bde86f01ff4a26f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-05 04:27:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
