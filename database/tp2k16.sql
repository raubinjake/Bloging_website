-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 02, 2021 at 03:38 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp2k16`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(150) NOT NULL,
  `article_body` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `article_title`, `article_body`, `user_id`) VALUES
(1, 'Demo Article ', 'testing', 1),
(2, 'Demo testing', 'dfdsfdsf', 1),
(9, 'This is my first Articles About Cricket', 'Ravi Shastri, the head coach of India\'s men\'s cricket team, received the first dose of the COVID-19 vaccine in Ahmedabad on Tuesday. \"Got the first dose of COVID-19 vaccine. Thank you to the amazing medical professionals & scientists for empowering India against the pandemic,\" Shastri tweeted along with a photo of him getting the vaccination shot. \"Extremely impressed with the professionalism shown by Kantaben & her team at Apollo, Ahmedabad in dealing with COVID-19 vaccination,\" the former India all-rounder added.\r\n\r\nGot the first dose of COVID-19 vaccine. Thank you to the amazing medical professionals & scientists for empowering India against the pandemic.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`) VALUES
(1, 'suneja', '123', 'ajay', 'suneja', 'ajay.suneja1993@gmail.com'),
(4, 'raubinjake', '123456', 'Raubin', 'Jake', 'robin@gmail.com'),
(5, 'sensatish', '123456', 'Satish', 'Sen', 'satish@gmail.com'),
(6, 'mohangulati', '123456', 'Mohan', 'Gulati', 'gulati@gamil.com'),
(7, 'Arun', '123456', 'Arun', 'Yadav', 'yadav@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
