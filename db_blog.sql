-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2017 at 08:36 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Java'),
(2, 'PHP'),
(3, 'HTML'),
(4, 'CSS'),
(5, 'MySql'),
(6, 'education'),
(9, 'OOP'),
(10, 'Python'),
(11, 'educations'),
(13, 'OOP JAVA'),
(14, 'HTML'),
(16, 'Tanzil Huda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'Tanzil', 'Huda', 'tanzil30@gmail.com', 'ad', 1, '2017-11-13 09:46:21'),
(2, 'Tanzil', 'Huda', 'tanzil30@gmail.com', 'ad', 1, '2017-11-13 10:22:55'),
(4, 'Tanzil', 'Huda', 'tanzil30@gmail.com', 'ad', 1, '2017-11-13 10:24:33'),
(7, 'bulu', 'suraiya', 'suat@c.com', '$query = &quot;SELECT * FROM tbl_contact where status =\'0\' order by id desc&quot;;\r\n						$msg = $db-&gt;select($query);', 1, '2017-11-13 14:07:10'),
(8, 'Mukul', 'kamal', 'mukul@gmail.com', 'this is test box for tett', 0, '2017-11-13 19:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright Tanzil Huda ok');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'page', '<p>page</p>'),
(3, 'Lorem Ismum', '<p><span><img src=\"https://www.google.com/url?sa=i&amp;rct=j&amp;q=&amp;esrc=s&amp;source=imgres&amp;cd=&amp;cad=rja&amp;uact=8&amp;ved=0ahUKEwjVrOb15LnXAhUDMo8KHdtfCxAQjRwIBw&amp;url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FButterfly&amp;psig=AOvVaw22AAm8shByqxO7648ZZsBj&amp;ust=1510601948546353\" alt=\"\" />There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet </span></p>\r\n<p><span><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Fesoj_-_Papilio_machaon_%28by%29.jpg/800px-Fesoj_-_Papilio_machaon_%28by%29.jpg\" alt=\"by\" width=\"800\" height=\"800\" /></span></p>\r\n<p><span>tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>'),
(5, 'admin page updated ok', '<p>yes this is admin page</p>\r\n<p>\" updated</p>\r\n<p>\"</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`) VALUES
(1, 1, 'Our post title here -JAVA', '<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'post1.jpg', 'Tanzil', 'Java, Programming,', '2017-10-30 06:26:20'),
(2, 2, 'Our title here -PHP', '<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'post2.png', 'Huda', 'PHP', '2017-10-30 06:26:20'),
(4, 4, 'CSS Post', '<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'post2.png', 'Tanzil', 'css, programming', '2017-10-30 06:28:58'),
(5, 1, 'JAVA Category Data', '<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'post1.jpg', 'Huda', 'Java, cat,', '2017-10-30 06:33:59'),
(6, 2, 'PHP category Data', '<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'post2.png', 'Admin', 'PHP, category,', '2017-10-30 06:33:59'),
(7, 4, 'PHP category Data', '<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'post2.png', 'Admin', 'css, category,', '2017-10-30 06:33:59'),
(8, 5, 'PHP category Data', '<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>\r\n<p>Some text will be go here. Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.Some text will be go here.</p>', 'post2.png', 'Admin', 'MySql, category,', '2017-10-30 06:33:59'),
(9, 1, 'Java post is here', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', 'tanzu', 'java', '2017-11-08 13:09:11'),
(10, 1, 'Java post is here', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', 'tanzu', 'java', '2017-11-08 13:10:58'),
(11, 16, 'à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à§‡à¦° à¦­à§‡à¦¤à¦°à§‡à¦° à¦¦à¦°à§à¦¶à¦¨', '<p><span>à¦¡à§à¦¬&rsquo; à¦à¦¬à¦‚ &lsquo;à¦¢à¦¾à¦•à¦¾ à¦…à§à¦¯à¦¾à¦Ÿà¦¾à¦•&rsquo; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¯à¦–à¦¨ à¦¬à§œ à¦ªà¦°à§à¦¦à¦¾à§Ÿ à¦Ÿà¦¾à¦¨à¦›à§‡, à¦¤à¦–à¦¨ à¦­à¦¾à¦¬à¦›à¦¿, à¦¶à§‡à¦· à¦•à¦¬à§‡ à¦ªà§à¦°à§‡à¦•à§à¦·à¦¾à¦—à§ƒà¦¹à§‡ à¦—à¦¿à§Ÿà§‡à¦›à¦¿à¦²à¦¾à¦®? à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¹à¦²à§‡ à¦¯à¦¾à¦“à§Ÿà¦¾à¦° à¦¸à§à¦®à§ƒà¦¤à¦¿ à¦­à¦¿à¦¸à¦¿à¦†à¦°, à¦­à¦¿à¦¸à¦¿à¦ªà¦¿, à¦¸à¦¿à¦¡à¦¿à¦°à¦®, à¦†à¦‡à¦«à§‹à¦¨ à¦¯à§à¦—à§‡à¦° à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦•à¦¾à¦›à§‡ à¦®à¦²à¦¿à¦¨ à¦¹à§Ÿà§‡ à¦¯à¦¾à¦šà§à¦›à§‡à¥¤ à¦†à¦®à¦°à¦¾ à¦›à¦¿à¦²à¦¾à¦® à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¦à§‡à¦–à§‡ à¦¬à§œ à¦¹à¦“à§Ÿà¦¾à¦¦à§‡à¦° à¦¦à¦²à§‡à¥¤ à¦¹à¦¾à¦¤à§‡à¦° à¦®à§à¦ à§‹à§Ÿ à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¦à§‡à¦–à¦²à§‡à¦“ à¦¬à§œ à¦ªà¦°à§à¦¦à¦¾à¦° à¦¶à¦¿à¦¹à¦°à¦£ à¦­à§à¦²à¦¤à§‡ à¦ªà¦¾à¦°à¦¿ à¦¨à¦¾à¥¤ à¦®à¦¾à¦à§‡ à¦®à¦¾à¦à§‡à¦‡ à¦Ÿà¦¾à¦¨à§‡ à¦¹à¦²à¦—à§à¦²à§‹à¥¤ à¦à¦–à¦¨ à¦¸à§‡à¦—à§à¦²à§‹ à¦¸à¦¿à¦¨à§‡à¦ªà§à¦²à§‡à¦•à§à¦¸à¥¤ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦¨à¦¿à¦°à§€à¦•à§à¦·à¦¾à¦§à¦°à§à¦®à§€ à¦›à¦¬à¦¿ à¦¹à¦šà§à¦›à§‡à¥¤ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à§‡à¦° à¦¸à¦‚à¦œà§à¦žà¦¾ à¦“ à¦ªà§à¦°à¦•à¦°à¦£ à¦¬à¦¦à¦²à¦¾à¦šà§à¦›à§‡à¥¤ à¦¸à¦¤à§à¦¯à¦œà¦¿à¦¤à§‡à¦° à¦§à§à¦°à§à¦ªà¦¦à§€ à¦†à¦™à§à¦—à¦¿à¦• à¦¥à§‡à¦•à§‡ à¦¬à§‡à¦°à¦¿à§Ÿà§‡ à¦†à¦¸à¦›à§‡à¦¨ à¦«à¦¾à¦°à§à¦•à§€ à¦“ à¦›à¦¬à¦¿à§Ÿà¦¾à¦² à¦—à§‹à¦·à§à¦ à§€à¥¤ à¦ªà¦¾à¦²à¦¾à¦¬à¦¦à¦² à¦¸à¦°à§à¦¬à¦¤à§à¦°à¦‡à¥¤ à¦œà§€à¦¬à¦¨à§‡ à¦“ à¦ªà¦°à§à¦¦à¦¾à§Ÿà¥¤</span></p>', 'upload/d99ae0fec0.jpg', 'Dipon', 'banglanews24.com, tanzil, dipon', '2017-11-13 17:45:36'),
(12, 16, 'à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à§‡à¦° à¦­à§‡à¦¤à¦°à§‡à¦° à¦¦à¦°à§à¦¶à¦¨', '<p><span>à¦¡à§à¦¬&rsquo; à¦à¦¬à¦‚ &lsquo;à¦¢à¦¾à¦•à¦¾ à¦…à§à¦¯à¦¾à¦Ÿà¦¾à¦•&rsquo; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¯à¦–à¦¨ à¦¬à§œ à¦ªà¦°à§à¦¦à¦¾à§Ÿ à¦Ÿà¦¾à¦¨à¦›à§‡, à¦¤à¦–à¦¨ à¦­à¦¾à¦¬à¦›à¦¿, à¦¶à§‡à¦· à¦•à¦¬à§‡ à¦ªà§à¦°à§‡à¦•à§à¦·à¦¾à¦—à§ƒà¦¹à§‡ à¦—à¦¿à§Ÿà§‡à¦›à¦¿à¦²à¦¾à¦®? à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¹à¦²à§‡ à¦¯à¦¾à¦“à§Ÿà¦¾à¦° à¦¸à§à¦®à§ƒà¦¤à¦¿ à¦­à¦¿à¦¸à¦¿à¦†à¦°, à¦­à¦¿à¦¸à¦¿à¦ªà¦¿, à¦¸à¦¿à¦¡à¦¿à¦°à¦®, à¦†à¦‡à¦«à§‹à¦¨ à¦¯à§à¦—à§‡à¦° à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦•à¦¾à¦›à§‡ à¦®à¦²à¦¿à¦¨ à¦¹à§Ÿà§‡ à¦¯à¦¾à¦šà§à¦›à§‡à¥¤ à¦†à¦®à¦°à¦¾ à¦›à¦¿à¦²à¦¾à¦® à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¦à§‡à¦–à§‡ à¦¬à§œ à¦¹à¦“à§Ÿà¦¾à¦¦à§‡à¦° à¦¦à¦²à§‡à¥¤ à¦¹à¦¾à¦¤à§‡à¦° à¦®à§à¦ à§‹à§Ÿ à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¦à§‡à¦–à¦²à§‡à¦“ à¦¬à§œ à¦ªà¦°à§à¦¦à¦¾à¦° à¦¶à¦¿à¦¹à¦°à¦£ à¦­à§à¦²à¦¤à§‡ à¦ªà¦¾à¦°à¦¿ à¦¨à¦¾à¥¤ à¦®à¦¾à¦à§‡ à¦®à¦¾à¦à§‡à¦‡ à¦Ÿà¦¾à¦¨à§‡ à¦¹à¦²à¦—à§à¦²à§‹à¥¤ à¦à¦–à¦¨ à¦¸à§‡à¦—à§à¦²à§‹ à¦¸à¦¿à¦¨à§‡à¦ªà§à¦²à§‡à¦•à§à¦¸à¥¤ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦¨à¦¿à¦°à§€à¦•à§à¦·à¦¾à¦§à¦°à§à¦®à§€ à¦›à¦¬à¦¿ à¦¹à¦šà§à¦›à§‡à¥¤ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à§‡à¦° à¦¸à¦‚à¦œà§à¦žà¦¾ à¦“ à¦ªà§à¦°à¦•à¦°à¦£ à¦¬à¦¦à¦²à¦¾à¦šà§à¦›à§‡à¥¤ à¦¸à¦¤à§à¦¯à¦œà¦¿à¦¤à§‡à¦° à¦§à§à¦°à§à¦ªà¦¦à§€ à¦†à¦™à§à¦—à¦¿à¦• à¦¥à§‡à¦•à§‡ à¦¬à§‡à¦°à¦¿à§Ÿà§‡ à¦†à¦¸à¦›à§‡à¦¨ à¦«à¦¾à¦°à§à¦•à§€ à¦“ à¦›à¦¬à¦¿à§Ÿà¦¾à¦² à¦—à§‹à¦·à§à¦ à§€à¥¤ à¦ªà¦¾à¦²à¦¾à¦¬à¦¦à¦² à¦¸à¦°à§à¦¬à¦¤à§à¦°à¦‡à¥¤ à¦œà§€à¦¬à¦¨à§‡ à¦“ à¦ªà¦°à§à¦¦à¦¾à§Ÿà¥¤</span></p>', 'upload/ec239aa04e.jpg', 'Dipon', 'banglanews24.com, tanzil, dipon', '2017-11-13 18:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://facebook.com/tanzilhuda', 'https://twitter.com/tanzil30', 'https://linkedin.com/ln/tanzilhuda', 'https://google.com/tanzil30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Tanzil Huda ok', 'admin', '202cb962ac59075b964b07152d234b70', 'tanzil30@gmail.com', '<p>I am Tanzil Huda from Bangladesh .&nbsp;also a freelancer</p>', 0),
(2, '', 'author', '81dc9bdb52d04dc20036dbd8313ed055', '', '', 1),
(3, '', 'author', '81dc9bdb52d04dc20036dbd8313ed055', '', '', 1),
(6, '', 'author', '202cb962ac59075b964b07152d234b70', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(0, 'Tanzil\'s Blog', 'Welcome to my First Raw PHP Website', 'upload/ logo .png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
