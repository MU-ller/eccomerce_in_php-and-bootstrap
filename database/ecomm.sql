-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 11:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(10, 25, 36, 1),
(11, 22, 37, 1),
(12, 22, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'axions', 'axions'),
(2, 'house', 'house'),
(3, 'cars', 'cars'),
(4, 'shoping', 'shoping');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `faborite`
--

CREATE TABLE `faborite` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `axion_type` varchar(40) NOT NULL,
  `axion_amount` varchar(20) NOT NULL,
  `axion_price` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `use_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `amount`, `price`, `photo`, `date_view`, `counter`, `updated_at`) VALUES
(30, 1, 'Abay Bank ', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> Abay Bank</strong></p>\r\n\r\n<p>Ethiopia&rsquo;s mighty river, the Great Abay, is a dramatic spectacle and a symbol of natural strength and grandeur. It is not only a magnificent sight to visit, but also a river with immense potential for our country&rsquo;s development.</p>\r\n', 'abay-bank', 0, 5000000, 'abay-bank.jpg', '2022-09-17', 3, '2022-09-17 08:59:17'),
(31, 1, 'Bunna Bank', '<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bunna Bank</strong></p>\r\n\r\n<p><strong>The Bank officially commenced its operation on October 10, 2009 with subscribed &amp; paid up capital of Birr 308 million and Birr 156 million, respectively</strong>. Moreover, the Bank has more than 11,200 shareholders, which makes it one of the strong and public based private Banks in Ethiopia.</p>\r\n', 'bunna-bank', 0, 60000000, 'bunna-bank.jpg', '2022-09-17', 5, '2022-09-17 08:59:17'),
(32, 1, 'Abisinia Bank', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> Abyssinia</strong> <strong>Bank</strong></p>\r\n\r\n<p>In an era where commercial banking services were in an inchoate stage and striding towards transforming different sectors of the economy, Bank of Abyssinia&rsquo;s founders believed in the need for a bank that gives comprehensive commercial banking services. Thus, the Bank of Abyssinia (BoA) was open for business in 1996 with enthused initiation and determination.</p>\r\n', 'abisinia-bank', 0, 50000000, 'abisinia-bank_1663406674.png', '0000-00-00', 0, '2022-09-17 09:23:01'),
(34, 1, 'Tseday Bank', '<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Tsedey Bank</strong></h1>\r\n\r\n<p>Tsedey Bank is one of the microfinances that grew into a bank in recent years. It was formerly the Amhara Credit and Savings Institution. Amhara Credit and Savings Institution was established as Ethiopia&rsquo;s first financial institution under the Microfinance Act of 1989, and it has now obtained a license from the National Bank of Ethiopia .</p>\r\n', 'tseday-bank', 0, 600000000, 'tseday-bank_1663408157.jpg', '0000-00-00', 0, '2022-09-17 09:48:09'),
(35, 1, 'Amhara Bank', '<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; About Amhara Bank</h1>\r\n\r\n<p>Amhara Bank aims to use the enabling conditions to provide an excellent service that appeals to the ever-diversifying and growing needs of customers that are demanding more from banks in the form of personalized and competitive banking services.</p>\r\n', 'amhara-bank', 0, 700000000000, 'amhara-bank.jpg', '2022-09-19', 2, '2022-09-17 09:52:01'),
(36, 1, 'Awash Bank', '<p>&nbsp;</p>\r\n\r\n<h1><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Awash Bank</strong></h1>\r\n\r\n<p><strong>Awash Bank</strong> was established by 486 founding shareholders with a paid-up capital of Birr 24.2 million and started banking operations on Feb. 13, 1995.The number of shareholders and its paid-up capital increased to over 5400 and Birr 10.3 billion, respectively. Our total assets reached Birr 173 billion with over 730 branches found across the country, Awash Bank continues to be leading private commercial Bank in Ethiopia.</p>\r\n', 'awash-bank', 0, 40000000000, 'awash-bank.png', '2022-09-19', 8, '2022-09-17 09:55:55'),
(37, 1, 'Zemen Bank', '<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zemen Bank</h3>\r\n\r\n<h3>Zemen Bank S.C. is all about giving customers choices and convenience. For us, banking is not limited to just branches and we see it as &quot;something you do, not somewhere you go.&quot;</h3>\r\n', 'zemen-bank', 400000, 450000, 'zemen-bank.png', '2022-09-19', 1, '2022-09-19 13:17:33'),
(38, 3, 'Car', '<p>The focus here is on vehicles we spent a week with at our bases in Detroit, Miami, and Cleveland, rather than those we had fleeting experiences with in far-flung destinations. That means there&rsquo;s nothing here but cars you can buy, right now, at this very moment. And boy, have we driven some cars. Here are some trends from this year&rsquo;s slate of reviews:</p>\r\n', 'car', 1, 10000000, 'car.jpg', '2022-09-20', 1, '2022-09-20 09:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'abebaw@abay.com', '$2y$10$AaQczG7OZZyeJC4vhJXDTOsM.OXXKAtt4MSr630TF/6emYaUkAH.2', 1, 'Muluneh', 'Meri', '', '', 'muller.jpg', 1, '', '', '2018-05-01'),
(22, 'muller@gmail.com', '$2y$10$K3dUPOdxrwfJrq3V28JiyeKZLm9SwezMwDMmwQUX19CAhj/JOOSTi', 0, 'Muluneh', 'Meri', 'addis abeba', '09090909', 'muller.jpg', 1, 'y7TINPkFEhZA', '', '2022-09-19'),
(23, 'alex@alex.com', '$2y$10$a969dRr4JeazXd4uxeciAe4jTiczUMP3pZVXcx5aQGs6WR3/WGz9K', 0, 'alemu', 'kebede', '', '', '', 1, 'HeNPJDjqGzUo', '', '2022-09-19'),
(24, 'a@a.com', '$2y$10$pbjeHMhTHqiW1m9O/vEw6ekvoPfLN5BrglWadaWL4Ha.y0Y6Km3zu', 0, 'Muluneh', 'a', '', '', '', 1, 'cHRviAB6tJFk', '', '2022-09-19'),
(25, 'ak@abe.com', '$2y$10$i1Ovds3Bdn65Fa.GeJ.1veBFgvt8JkKpsDd6sfCI6hBpAYnEXW4QK', 0, 'abebe', 'kebe', 'addis', '0903909039', 'muller.jpg', 1, 'HPZutWrkyFLl', '', '2022-09-19'),
(26, 'abbe@abe', '$2y$10$SnntXuzQCpmewlanC6mLCO/wFoIdTgPfWIV8noxLV3wX3AzDHn3dO', 0, 'abebeb', 'kebede', 'addis', '099090909', 'muller.jpg', 1, 'XrVORF475lSJ', '', '2022-09-20'),
(27, 'atsede@atse.com', '$2y$10$zchCOvQJjO8pEErNhBkUheLPQdC0AGi/hJsQ4ATcQDln9i3tx2lM6', 0, 'atsede', 'molla', 'amanuel', '09090909', 'tseday.jpg', 1, 'MVv1Tp9DiZnN', '', '2022-09-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faborite`
--
ALTER TABLE `faborite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `use_id` (`use_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `faborite`
--
ALTER TABLE `faborite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`use_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
