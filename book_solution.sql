-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 08:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_solution`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `bookName` varchar(55) NOT NULL,
  `bookImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `category_id`, `bookName`, `bookImg`) VALUES
(1, 1, 'Bangla', 'images/bangla.png'),
(2, 1, 'English', 'images/English.png'),
(3, 1, 'ICT', 'images/ICT.png'),
(4, 2, 'Physics', 'images/Physics.png'),
(5, 2, 'Chemistry', 'images/Chemistry.png'),
(6, 2, 'Biology', 'images/Biology.png'),
(7, 3, 'Accounting', 'images/Accounting.png'),
(8, 3, 'Marketing', 'images/Marketing.png'),
(9, 4, 'History', 'images/History.png'),
(10, 4, 'Geography', 'images/Geography.png'),
(11, 1, 'Islam', 'images/Islam.png'),
(12, 4, 'Economics', 'img/Economics');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`) VALUES
(1, 'General'),
(2, 'Science'),
(3, 'Commerce'),
(4, 'Arts');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `lessonName` varchar(55) NOT NULL,
  `mcqPdf` varchar(255) NOT NULL,
  `readingPdf` varchar(255) NOT NULL,
  `bookName_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `lessonName`, `mcqPdf`, `readingPdf`, `bookName_id`) VALUES
(1, 'Akida', '/pdf/akidamcq.pdf', '/pdf/akidamcq.pdf', 11),
(2, 'Bangla Kobita', 'm/BanglaKobita.pdf', 'r/BanglaKobita.pdf', 1),
(3, 'Science Fiction', 'm/Science Fiction', 'r/Science Fiction', 4),
(4, 'Islamic History', 'm/Islamic History', 'r/Islamic History', 11),
(5, 'English Today', 'm/English Today', 'r/English Today', 2),
(7, 'Physics Boi', 'm/Physics Boi', 'r/Physics Boi', 4),
(8, 'chemistry boi', 'm/chemistry boi', 'r/chemistry boi', 5),
(9, 'Geo boi', 'm/Geo boi', 'r/Geo boi', 10),
(10, 'ICT Boi', 'm/ICT Boi', 'r/ICT Boi', 3),
(11, 'biology boi', 'm/biology boi', 'r/biology boi', 6),
(12, 'accounting boi', 'm/accounting boi', 'r/accounting boi', 7),
(13, 'marketing boi', 'm/marketing boi', 'r/marketing boi', 8),
(14, 'history boi', 'm/history boi', 'r/history boi', 9);

-- --------------------------------------------------------

--
-- Table structure for table `linkurl`
--

CREATE TABLE `linkurl` (
  `id` int(11) NOT NULL,
  `linkName` varchar(25) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `linkurl`
--

INSERT INTO `linkurl` (`id`, `linkName`, `url`) VALUES
(1, 'Facebook', 'https://facebook.com/tourxoffical'),
(2, 'Youtube', 'https://youtube.com/c/tourx'),
(3, 'Website', 'https://tourx.com.bd');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'mirza', 'mirza@tourx.com.bd', 'tourx.com.bd', 'Developer'),
(2, 'admin', 'admin@booksolution.com', 'admin', 'Admin'),
(4, 'Inner Join(3)', 'Category,book,lesson', 'SELECT category.categoryName, book.bookName , lesson.lessonName,lesson.mcqPdf,lesson.readingPdf from book inner join lesson on book.id = lesson.bookName_id\r\ninner join category on book.category_id =category.id;', 'Show'),
(5, 'Inner join(2)', 'book ,lesson', 'SELECT book.bookName , lesson.lessonName,lesson.mcqPdf,lesson.readingPdf from book INNER JOIN lesson on book.id = lesson.bookName_id;\r\n', 'show'),
(6, 'inner(3)', 'category book lesson', '///3 inner join \r\nSELECT *from book inner join lesson on book.id = lesson.bookName_id\r\ninner join category on book.category_id =category.id;', 'show');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `bookName_id` (`bookName_id`);

--
-- Indexes for table `linkurl`
--
ALTER TABLE `linkurl`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `linkurl`
--
ALTER TABLE `linkurl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`bookName_id`) REFERENCES `book` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
