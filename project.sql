-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 03:43 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_ID`, `username`, `name`, `department`, `phone`, `email`, `password`) VALUES
(1, 'alvinyogie2000', 'Alvin Yogie', 'Design', '+6281345987876', 'alvinyogie@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(11, 'setiawanjunior2000', 'Setiawan Junior', 'Finance', '+6282189658967', 'setiawanjunior@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(12, 'ms2000', 'Michael Salim', 'Marketing', '+6243278945434', 'michaelsalim@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'admin', 'admin', 'testing', 'testing', 'testing', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `task_id` int(200) NOT NULL,
  `task_name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_posted` date NOT NULL,
  `due_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`task_id`, `task_name`, `description`, `name`, `date_posted`, `due_date`, `status`) VALUES
(2, 'Test', 'adasd', 'adidas', '2021-05-03', '2021-05-12', 'COMPLETE'),
(3, 'Report Submission', 'Submit financial report ASAP!', 'setiawanjunior2000', '2021-05-03', '2021-05-22', 'PENDING'),
(4, 'Payment', 'Monthly salary distribution.', 'ms2000', '2021-05-03', '2021-05-07', 'PENDING');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_ID`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `task_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
