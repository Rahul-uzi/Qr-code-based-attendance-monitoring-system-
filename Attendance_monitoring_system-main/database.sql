-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2025 at 07:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(50) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `admin_name`, `password`, `email`, `phone`) VALUES
('admin1', 'Arvind Sharma', 'adminpass1', 'arvind.sharma@exampl', '9123456789'),
('admin2', 'Meera Iyer', 'adminpass2', 'meera.iyer@example.c', '9234567890'),
('admin3', 'Will Smith', 'password1', 'smithw@gmail.com', '9550634682'),
('admin4', 'John Wick', 'password2', 'wjohn@gmail.com', '8192083447');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` enum('Present','Absent','Late') NOT NULL,
  `class_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `class_id`, `student_id`, `status`, `class_date`) VALUES
(2, 1, 1, 'Present', '2023-05-30'),
(3, 2, 2, 'Absent', '2025-02-15'),
(4, 2, 3, 'Present', '2025-02-15'),
(8, 1, 4, 'Present', '2023-05-30'),
(9, 4, 6, 'Absent', '2023-05-31'),
(10, 4, 7, 'Present', '2023-05-31'),
(11, 4, 10, 'Present', '2023-05-31'),
(12, 4, 11, 'Present', '2023-05-31'),
(13, 4, 12, 'Absent', '2023-05-31'),
(14, 4, 13, 'Present', '2023-05-31'),
(15, 4, 14, 'Absent', '2023-05-31'),
(16, 4, 15, 'Absent', '2023-05-31'),
(17, 4, 16, 'Absent', '2023-05-31'),
(18, 4, 17, 'Absent', '2023-05-31'),
(23, 3, 1, 'Present', '2023-05-30'),
(24, 3, 2, 'Present', '2023-05-30'),
(25, 3, 3, 'Present', '2023-05-30'),
(26, 3, 18, 'Present', '2023-05-30'),
(99, 33, 6, 'Absent', '2025-03-19'),
(100, 33, 7, 'Present', '2025-03-19'),
(101, 33, 10, 'Present', '2025-03-19'),
(102, 33, 11, 'Present', '2025-03-19'),
(103, 33, 12, 'Present', '2025-03-19'),
(104, 33, 13, 'Absent', '2025-03-19'),
(105, 33, 14, 'Absent', '2025-03-19'),
(106, 33, 15, 'Present', '2025-03-19'),
(107, 33, 16, 'Present', '2025-03-19'),
(108, 33, 17, 'Absent', '2025-03-19'),
(109, 34, 1, 'Present', '2025-03-13'),
(110, 34, 2, 'Present', '2025-03-13'),
(111, 34, 3, 'Absent', '2025-03-13'),
(112, 34, 18, 'Present', '2025-03-13'),
(113, 35, 1, 'Present', '2025-03-31'),
(114, 35, 2, 'Present', '2025-03-31'),
(115, 35, 3, 'Present', '2025-03-31'),
(116, 35, 18, 'Absent', '2025-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `teacher_username` varchar(50) NOT NULL,
  `class_sec` varchar(10) NOT NULL,
  `class_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`, `teacher_username`, `class_sec`, `class_date`) VALUES
(1, 'Machine Learning', 'rverma', 'CSE1', '2023-05-31'),
(2, 'Java', 'spatil', 'BCA', '2023-05-31'),
(3, 'C++', 'aghosh', 'BCA', '2023-05-30'),
(4, 'Machine Learning', 'aghosh', 'CSE2', '2023-05-31'),
(5, 'C++', 'par12', 'BCA', '2023-05-30'),
(33, '.NET', 'spatil', 'CSE2', '2025-03-19'),
(34, 'java', 'rdhiman', 'BCA', '2025-03-13'),
(35, 'Project', 'aghosh', 'BCA', '2025-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `class_sec` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `class_sec`, `email`, `phone`) VALUES
(1, 'Amit Kumar', 'BCA', 'amit.kumar@example.com', '9812345678'),
(2, 'Priya Sharma', 'BCA', 'priya.sharma@example.com', '9823456780'),
(3, 'Rajesh Gupta', 'BCA', 'rajesh.gupta@example.com', '9834567891'),
(4, 'John Doe', 'CSE1', 'john@gmail.com', '8866443210'),
(5, 'Jane Smith', 'CSE1', 'smithj@gmail.com', '9313302392'),
(6, 'Mark Johnson', 'CSE2', 'johnm@gmail.com', '9314123452'),
(7, 'Emily Davis', 'CSE2', 'davis@gmail.com', '9233351521'),
(8, 'Jacob White', 'CSE1', 'dean58@example.net', '8453046892'),
(9, 'Taylor Jackson', 'CSE1', 'kristin79@example.net', '(242)991-2'),
(10, 'Joshua Morris', 'CSE2', 'camposbreanna@example.org', '(313)267-3'),
(11, 'Jasmin Parker', 'CSE2', 'christopher44@example.org', '(509)934-1'),
(12, 'Marc Chang', 'CSE2', 'amygibbs@example.net', '(555)978-8'),
(13, 'Kimberly Haynes', 'CSE2', 'meganspencer@example.org', '6345273853'),
(14, 'Dr. Robert Jacobson', 'CSE2', 'brownkristin@example.org', '7123675439'),
(15, 'Anthony Miller', 'CSE2', 'rebekahsalazar@example.com', '9465024458'),
(16, 'Laura Stewart', 'CSE2', 'paul54@example.net', '749-718-11'),
(17, 'Jacqueline York', 'CSE2', 'belldenise@example.com', '7482582946'),
(18, 'Megan', 'BCA', 'yyjgfdhjajh12@gmail.com', '9867334892');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `username` varchar(50) NOT NULL,
  `teacher_name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`username`, `teacher_name`, `password`, `email`, `phone`) VALUES
('aghosh', 'Ananya Ghosh', 'pass789', 'ananya.ghosh@example.com', '9765432109'),
('devRam', 'Ram', 'gfdjghk', 'tryyydf@fjhdhj.com', '436536367'),
('DevRam45', 'Ram', 'pass12', 'usertestdata@test.com', '1234567899'),
('htyt122', 'hry', 'pass134567890', 'testnobody@home.com', '123456788'),
('par12', 'Prasant', 'pass889', 'parashant@gmail.com', '1111111111'),
('rdhiman', 'Rahul', 'pass12345', 'tester@gmail.com', '4325894572'),
('rverma', 'Rohan Verma', 'pass123', 'rohan.verma@example.com', '9876543210'),
('spatil', 'Sneha Patil', 'pass456', 'sneha.patil@example.com', '9823456798'),
('teacher1', 'Jenny', 'password1', 'jenny@gmail.com', '9183885580'),
('teacher2', 'Mary', 'password2', 'marys@gmail.com', '9801802223');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `classes_ibfk_1` (`teacher_username`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`teacher_username`) REFERENCES `teachers` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
