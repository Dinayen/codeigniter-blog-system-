-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2019 at 07:11 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table ci_blog.categories: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `ci_blog`.`categories`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comments_id`, `post_id`, `name`, `email`, `body`, `date_added`) VALUES
(1, 1, 'Dinayen Stephanie Kernyuy', 'stacys@gmail.com', 'This is an amazing post', '2019-09-07 05:15:28'),
(2, 1, 'Julia', 'julia@gmail.com', 'Awesome', '2019-09-07 13:35:27'),
(3, 9, 'Dinayen', 'stacys@gmail.com', 'Really Awsome', '2019-09-07 16:03:13'),
(4, 9, 'Dinayen', 'stacys@gmail.com', 'Test comment', '2019-09-07 18:44:23'),
(5, 10, 'Stacy', 'stacys@gmail.com', 'Lovely post', '2019-09-08 03:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` int(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `phone`, `message`, `date_added`) VALUES
(1, 'Dinayen', 0, '654139600', 'I am facing challenges in accessing my account details', '2019-09-09 15:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `image`, `date_added`) VALUES
(4, 1, 1, 'Post Four', 'Post-Four', '<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world</p>\r\n<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world</p>', 'Canon EOS 5D Mark III039.JPG', '2019-09-07 15:26:27'),
(5, 1, 1, 'Codeigniter', 'Codeigniter', '<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>\r\n<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>\r\n<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>', 'Canon EOS 5D Mark II128.JPG', '2019-09-07 15:30:21'),
(6, 2, 1, 'PHP', 'PHP', '<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>', 'Canon EOS 5D Mark III101.JPG', '2019-09-07 15:32:09'),
(7, 3, 1, 'Latest Happenings Around', 'Latest-Happenings-Around', '<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>\r\n<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>\r\n<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>', 'Canon EOS 5D Mark III169.JPG', '2019-09-07 15:33:24'),
(8, 2, 1, 'Happy New Year', 'Happy-New-Year', '<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>\r\n<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>', 'Canon EOS 5D Mark IV136.JPG', '2019-09-07 15:34:07'),
(9, 3, 1, 'Edu', 'Edu', '<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>\r\n<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>', 'Canon EOS 5D Mark III089.JPG', '2019-09-07 15:34:54'),
(10, 3, 1, 'Laravel', 'Laravel', '<p>One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.One of the biggest shipping companies around, our container ships and bulk carriers are seen in ports all over the world.</p>', 'Canon EOS 6D085.JPG', '2019-09-08 03:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`reply_id`, `comment_id`, `post_id`, `names`, `email`, `reply`, `date_added`) VALUES
(5, 3, 9, 'Dinayen', 'stacys@gmail.com', 'kjkjkj', '2019-09-07 17:31:45'),
(9, 5, 10, 'Dinayen', 'dina@gmail.com', 'Thanks Sweetheart', '2019-09-08 03:47:33'),
(10, 5, 10, 'Cyndy', 'cyndy@gmail.com', 'You are highly welcome', '2019-09-08 04:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcod` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcod`, `email`, `username`, `password`, `date_registered`) VALUES
(1, 'Dinayen', '9889890', 'stacys@gmail.com', 'Stephanie', 'e8fab42752f318b2b2beb039a57dedcd', '2019-09-07 04:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `visitor_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`visitor_id`, `ip_address`, `date_added`) VALUES
(1, '::1', '2019-09-07 04:49:50'),
(2, '::1', '2019-09-07 08:25:56'),
(3, '::1', '2019-09-07 08:39:45'),
(4, '::1', '2019-09-07 16:01:31'),
(5, '::1', '2019-09-07 17:55:44'),
(6, '::1', '2019-09-09 06:34:39'),
(7, '::1', '2019-09-09 06:34:47'),
(8, '::1', '2019-09-09 06:39:37'),
(9, '::1', '2019-09-09 06:42:55'),
(10, '::1', '2019-09-09 06:44:17'),
(11, '::1', '2019-09-09 06:44:55'),
(12, '::1', '2019-09-09 06:45:17'),
(13, '::1', '2019-09-09 06:45:47'),
(14, '::1', '2019-09-09 06:46:31'),
(15, '::1', '2019-09-09 06:46:53'),
(16, '::1', '2019-09-09 06:47:09'),
(17, '::1', '2019-09-09 06:47:29'),
(18, '::1', '2019-09-09 06:47:32'),
(19, '::1', '2019-09-09 06:47:44'),
(20, '::1', '2019-09-09 06:49:18'),
(21, '::1', '2019-09-09 06:50:47'),
(22, '::1', '2019-09-09 06:51:24'),
(23, '::1', '2019-09-09 06:55:57'),
(24, '::1', '2019-09-09 06:56:24'),
(25, '::1', '2019-09-09 06:57:52'),
(26, '::1', '2019-09-09 06:58:22'),
(27, '::1', '2019-09-09 06:58:33'),
(28, '::1', '2019-09-09 06:59:08'),
(29, '::1', '2019-09-09 06:59:25'),
(30, '::1', '2019-09-09 06:59:49'),
(31, '::1', '2019-09-09 07:00:03'),
(32, '::1', '2019-09-09 07:00:04'),
(33, '::1', '2019-09-09 07:00:19'),
(34, '::1', '2019-09-09 07:00:32'),
(35, '::1', '2019-09-09 07:00:55'),
(36, '::1', '2019-09-09 07:01:25'),
(37, '::1', '2019-09-09 07:01:55'),
(38, '::1', '2019-09-09 07:02:12'),
(39, '::1', '2019-09-09 07:02:58'),
(40, '::1', '2019-09-09 07:03:19'),
(41, '::1', '2019-09-09 07:03:55'),
(42, '::1', '2019-09-09 07:06:06'),
(43, '::1', '2019-09-09 07:06:37'),
(44, '::1', '2019-09-09 07:07:05'),
(45, '::1', '2019-09-09 07:07:44'),
(46, '::1', '2019-09-09 07:08:12'),
(47, '::1', '2019-09-09 07:08:28'),
(48, '::1', '2019-09-09 07:09:14'),
(49, '::1', '2019-09-09 07:09:33'),
(50, '::1', '2019-09-09 07:10:16'),
(51, '::1', '2019-09-09 07:10:31'),
(52, '::1', '2019-09-09 07:10:47'),
(53, '::1', '2019-09-09 07:12:25'),
(54, '::1', '2019-09-09 07:14:13'),
(55, '::1', '2019-09-09 07:14:14'),
(56, '::1', '2019-09-09 07:14:17'),
(57, '::1', '2019-09-09 07:17:09'),
(58, '::1', '2019-09-09 07:18:46'),
(59, '::1', '2019-09-09 07:23:14'),
(60, '::1', '2019-09-09 07:24:32'),
(61, '::1', '2019-09-09 07:24:34'),
(62, '::1', '2019-09-09 07:25:48'),
(63, '::1', '2019-09-09 07:25:50'),
(64, '::1', '2019-09-09 07:26:32'),
(65, '::1', '2019-09-09 07:32:37'),
(66, '::1', '2019-09-09 07:33:55'),
(67, '::1', '2019-09-09 07:42:19'),
(68, '::1', '2019-09-09 07:46:15'),
(69, '::1', '2019-09-09 07:46:33'),
(70, '::1', '2019-09-09 07:48:21'),
(71, '::1', '2019-09-09 07:54:37'),
(72, '::1', '2019-09-09 07:56:45'),
(73, '::1', '2019-09-09 07:57:36'),
(74, '::1', '2019-09-09 07:57:57'),
(75, '::1', '2019-09-09 07:58:09'),
(76, '::1', '2019-09-09 07:58:27'),
(77, '::1', '2019-09-09 07:59:03'),
(78, '::1', '2019-09-09 07:59:18'),
(79, '::1', '2019-09-09 08:00:35'),
(80, '::1', '2019-09-09 08:02:13'),
(81, '::1', '2019-09-09 08:02:26'),
(82, '::1', '2019-09-09 08:03:01'),
(83, '::1', '2019-09-09 08:03:16'),
(84, '::1', '2019-09-09 08:03:31'),
(85, '::1', '2019-09-09 08:04:59'),
(86, '::1', '2019-09-09 08:05:29'),
(87, '::1', '2019-09-09 08:06:17'),
(88, '::1', '2019-09-09 08:07:29'),
(89, '::1', '2019-09-09 08:07:57'),
(90, '::1', '2019-09-09 08:09:10'),
(91, '::1', '2019-09-09 08:09:28'),
(92, '::1', '2019-09-09 08:10:00'),
(93, '::1', '2019-09-09 08:10:23'),
(94, '::1', '2019-09-09 08:10:32'),
(95, '::1', '2019-09-09 08:11:27'),
(96, '::1', '2019-09-09 08:11:37'),
(97, '::1', '2019-09-09 08:11:52'),
(98, '::1', '2019-09-09 08:17:01'),
(99, '::1', '2019-09-09 08:17:03'),
(100, '::1', '2019-09-09 08:17:15'),
(101, '::1', '2019-09-09 08:18:31'),
(102, '::1', '2019-09-09 08:21:10'),
(103, '::1', '2019-09-09 08:21:44'),
(104, '::1', '2019-09-09 08:21:55'),
(105, '::1', '2019-09-09 08:22:28'),
(106, '::1', '2019-09-09 08:23:06'),
(107, '::1', '2019-09-09 08:23:37'),
(108, '::1', '2019-09-09 08:24:24'),
(109, '::1', '2019-09-09 08:24:26'),
(110, '::1', '2019-09-09 08:24:38'),
(111, '::1', '2019-09-09 08:25:23'),
(112, '::1', '2019-09-09 08:25:59'),
(113, '::1', '2019-09-09 08:26:28'),
(114, '::1', '2019-09-09 08:26:30'),
(115, '::1', '2019-09-09 08:26:43'),
(116, '::1', '2019-09-09 08:27:08'),
(117, '::1', '2019-09-09 08:27:10'),
(118, '::1', '2019-09-09 08:27:23'),
(119, '::1', '2019-09-09 08:27:46'),
(120, '::1', '2019-09-09 08:28:26'),
(121, '::1', '2019-09-09 08:28:45'),
(122, '::1', '2019-09-09 08:28:58'),
(123, '::1', '2019-09-09 09:32:02'),
(124, '::1', '2019-09-09 10:25:40'),
(125, '::1', '2019-09-09 15:27:18'),
(126, '::1', '2019-09-09 15:27:44'),
(127, '::1', '2019-09-09 15:30:41'),
(128, '::1', '2019-09-09 15:45:28'),
(129, '::1', '2019-09-09 15:47:24'),
(130, '::1', '2019-09-09 15:48:41'),
(131, '::1', '2019-09-09 15:49:12'),
(132, '::1', '2019-09-09 15:51:43'),
(133, '::1', '2019-09-09 15:52:23'),
(134, '::1', '2019-09-09 15:52:25'),
(135, '::1', '2019-09-09 15:52:31'),
(136, '::1', '2019-09-09 15:52:56'),
(137, '::1', '2019-09-09 15:53:02'),
(138, '::1', '2019-09-09 15:53:17'),
(139, '::1', '2019-09-09 15:53:45'),
(140, '::1', '2019-09-09 16:39:53'),
(141, '::1', '2019-09-09 16:49:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
