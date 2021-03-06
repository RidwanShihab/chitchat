-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 08:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctormd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `user_id`, `status`, `time_stamp`, `fname`) VALUES
(1, 0, 'kutte', '2021-12-11 18:25:00', 'tuhin'),
(2, 0, 'abar elo j sondha', '2021-12-11 19:20:47', ''),
(3, 0, 'sudhu dujone', '2021-12-11 19:23:28', 'rid'),
(4, 0, 'helo', '2021-12-11 19:33:30', 'Sadaf'),
(5, 0, 'are', '2021-12-11 19:33:58', 'Shihab'),
(6, 0, 'hi sadaf', '2021-12-11 19:36:50', 'Shihab'),
(7, 0, 'hi shihab', '2021-12-11 19:37:02', 'Sadaf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Email` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `userType` varchar(100) NOT NULL,
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Email`, `Username`, `Password`, `userType`, `ID`) VALUES
('Shihab@gmail.com', 'Shihab', '123', 'user', 1),
('Mumu@gmail.com', 'Mumu', '123', 'doc', 2),
('Sadaf@gmail.com', 'Sadaf', '123', '', 4),
('ridwanshihab14466@gmail.com', 'sadas', 'ads', '', 9),
('j.af@gmail.com', 'sadass', 'asd', '', 10),
('j.af@gmail.com', 'sadass', 'asd', '', 11),
('j.adasadf@gmail.com', 'sadass', 'asd', '', 12),
('a@g.vom', 'sadassasdsa', 'asdda', '', 13),
('a@g.voma', 'sadassasdsa', 'asdda', '', 14),
('a@g.voma', 'sadassasdsa', 'asdda', '', 15),
('rid@g.com', 'dasd', 'asd', '', 16),
('a@g.voma', 'asdsa', 'ads', '', 17),
('a@g.voms', 'ads', 'asd', '', 18),
('bababa@g.com', 'aaa', 'www', '', 19),
('a@g.vomaaaa', 'ddd', 'sssd', '', 20),
('tuhin@g.com', 'asdad', 'sss', '', 21),
('t2@g.com', 'baba', 'dasd', '', 22),
('rid@g.com', 'rid', '1234', '', 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
