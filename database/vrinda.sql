-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2025 at 06:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vrinda`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `available` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `available`) VALUES
(1, 'Harry Potter', 'J.K. Rowling', 1),
(2, 'The Hobbit', 'J.R.R. Tolkien', 0),
(3, 'The Catcher in the Rye', 'J.D. Salinger', 1),
(4, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1),
(5, 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 1),
(6, 'Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 0),
(7, 'The Hobbit', 'J.R.R. Tolkien', 1),
(8, 'The Lord of the Rings: The Fellowship of the Ring', 'J.R.R. Tolkien', 1),
(9, 'The Lord of the Rings: The Two Towers', 'J.R.R. Tolkien', 0),
(10, 'The Lord of the Rings: The Return of the King', 'J.R.R. Tolkien', 1),
(11, 'The Catcher in the Rye', 'J.D. Salinger', 1),
(12, 'To Kill a Mockingbird', 'Harper Lee', 1),
(13, '1984', 'George Orwell', 0),
(14, 'Animal Farm', 'George Orwell', 1),
(15, 'Brave New World', 'Aldous Huxley', 1),
(16, 'Fahrenheit 451', 'Ray Bradbury', 1),
(17, 'Moby-Dick', 'Herman Melville', 0),
(18, 'Pride and Prejudice', 'Jane Austen', 1),
(19, 'Wuthering Heights', 'Emily Brontë', 1),
(20, 'Jane Eyre', 'Charlotte Brontë', 1),
(21, 'Great Expectations', 'Charles Dickens', 1),
(22, 'Crime and Punishment', 'Fyodor Dostoevsky', 1),
(23, 'War and Peace', 'Leo Tolstoy', 0),
(24, 'The Great Gatsby', 'F. Scott Fitzgerald', 1),
(25, 'Dracula', 'Bram Stoker', 1),
(26, 'Frankenstein', 'Mary Shelley', 1),
(27, 'The Alchemist', 'Paulo Coelho', 1),
(28, 'The Da Vinci Code', 'Dan Brown', 0),
(29, 'Angels & Demons', 'Dan Brown', 1),
(30, 'The Lost Symbol', 'Dan Brown', 1),
(31, 'Inferno', 'Dan Brown', 0),
(32, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 1),
(33, 'The Girl Who Played with Fire', 'Stieg Larsson', 1),
(34, 'The Girl Who Kicked the Hornet\'s Nest', 'Stieg Larsson', 1),
(35, 'A Game of Thrones', 'George R.R. Martin', 1),
(36, 'A Clash of Kings', 'George R.R. Martin', 0),
(37, 'A Storm of Swords', 'George R.R. Martin', 1),
(38, 'A Feast for Crows', 'George R.R. Martin', 1),
(39, 'A Dance with Dragons', 'George R.R. Martin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `BUS_ID` int(11) NOT NULL,
  `BUS_NUMBER` varchar(50) DEFAULT NULL,
  `ROUTE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`BUS_ID`, `BUS_NUMBER`, `ROUTE_ID`) VALUES
(3, '6159', 5),
(4, '5358', 6),
(5, '5745', 7);

-- --------------------------------------------------------

--
-- Table structure for table `bus_status`
--

CREATE TABLE `bus_status` (
  `STATUS_ID` int(11) NOT NULL,
  `LATITUDE` decimal(9,6) DEFAULT NULL,
  `LONGITUDE` decimal(9,6) DEFAULT NULL,
  `BUS_NUMBER` int(11) DEFAULT NULL,
  `TIMESTAMP` datetime DEFAULT NULL,
  `STATUS` enum('RUNNING','STARTING','STOPPED') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_status`
--

INSERT INTO `bus_status` (`STATUS_ID`, `LATITUDE`, `LONGITUDE`, `BUS_NUMBER`, `TIMESTAMP`, `STATUS`) VALUES
(1, 79.435710, 28.476730, 3, NULL, 'STOPPED'),
(2, 28.351883, 79.400630, 4, NULL, 'STOPPED'),
(3, 79.435710, 28.476730, 5, NULL, 'STOPPED');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `available` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `image`, `available`) VALUES
(1, 'Pizza', 'pizza.jpg', 1),
(2, 'Burger', 'burger.jpg', 0),
(3, 'Pasta', 'pasta.jpg', 1),
(4, 'Fries', 'fries.jpg', 0),
(5, 'Salad', 'salad.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `DRIVER_ID` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `BUS_NUMBER` int(11) DEFAULT NULL,
  `PHONE_NUMBER` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DRIVER_ID`, `NAME`, `PASSWORD`, `BUS_NUMBER`, `PHONE_NUMBER`) VALUES
(1, 'driver1', '1800', NULL, '7465928872');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `ROUTE_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`ROUTE_ID`, `DESCRIPTION`, `NAME`) VALUES
(5, 'SRMS-BHOJIPURA JUNCTION-ATAMANDA-DEORANIYA-RICHA-BAHERI', 'SRMS- BAHERI'),
(6, 'SRMS - Air Force - Izzatnagar - Mini Bypass - Bareilly City', 'SRMS TO BAREILLY CITY'),
(7, 'SRMS-IZZATNAGAR-DELAPEER-AIRFORCE-MAHANAGAR-SATELLITE', 'SRMS TO SATELLITE');

-- --------------------------------------------------------

--
-- Table structure for table `stop`
--

CREATE TABLE `stop` (
  `STOP_ID` int(11) NOT NULL,
  `BUS_NUMBER` int(11) DEFAULT NULL,
  `STOP_NAME` varchar(100) DEFAULT NULL,
  `LATITUDE` decimal(9,6) DEFAULT NULL,
  `LONGITUDE` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stop`
--

INSERT INTO `stop` (`STOP_ID`, `BUS_NUMBER`, `STOP_NAME`, `LATITUDE`, `LONGITUDE`) VALUES
(1, 3, 'BAHERI', 79.500000, 28.780000),
(2, 4, 'SATELLITE', 79.439140, 28.351450),
(3, 5, 'BAREILLY CITY', 79.405720, 28.355240),
(6, 5, 'MAHANAGAR', 79.463350, 28.390150),
(7, 3, 'ATTAMANDA', 79.463650, 28.564500),
(8, 3, 'RICHHA(MAKSUDANPUR)', 79.488400, 28.715120),
(9, 5, 'SUNCITY', 79.458510, 28.405770),
(10, 5, 'DALAPEER', 79.437180, 28.387520),
(12, 4, 'IZZATNAGAR', 79.420890, 28.388680),
(13, 4, 'MINI BYPASS', 79.382920, 28.378690);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_ID` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `BUS_NUMBER_ID` int(11) DEFAULT NULL,
  `STOP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`BUS_ID`),
  ADD KEY `STOP_DESC` (`ROUTE_ID`);

--
-- Indexes for table `bus_status`
--
ALTER TABLE `bus_status`
  ADD PRIMARY KEY (`STATUS_ID`),
  ADD KEY `BUS_NUMBER` (`BUS_NUMBER`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`DRIVER_ID`),
  ADD KEY `BUS_NUMBER` (`BUS_NUMBER`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`ROUTE_ID`);

--
-- Indexes for table `stop`
--
ALTER TABLE `stop`
  ADD PRIMARY KEY (`STOP_ID`),
  ADD KEY `BUS_NUMBER` (`BUS_NUMBER`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT_ID`),
  ADD KEY `BUS_NUMBER_ID` (`BUS_NUMBER_ID`),
  ADD KEY `STOP_ID` (`STOP_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `BUS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bus_status`
--
ALTER TABLE `bus_status`
  MODIFY `STATUS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `DRIVER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `ROUTE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stop`
--
ALTER TABLE `stop`
  MODIFY `STOP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`ROUTE_ID`) REFERENCES `route` (`ROUTE_ID`);

--
-- Constraints for table `bus_status`
--
ALTER TABLE `bus_status`
  ADD CONSTRAINT `bus_status_ibfk_1` FOREIGN KEY (`BUS_NUMBER`) REFERENCES `bus` (`BUS_ID`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`BUS_NUMBER`) REFERENCES `bus` (`BUS_ID`);

--
-- Constraints for table `stop`
--
ALTER TABLE `stop`
  ADD CONSTRAINT `stop_ibfk_1` FOREIGN KEY (`BUS_NUMBER`) REFERENCES `bus` (`BUS_ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`BUS_NUMBER_ID`) REFERENCES `bus` (`BUS_ID`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`STOP_ID`) REFERENCES `stop` (`STOP_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
