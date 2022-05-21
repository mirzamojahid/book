-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 08:10 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `bookName_id` (`bookName_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`bookName_id`) REFERENCES `book` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
