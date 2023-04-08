-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 02:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '12345', '2022-01-31 16:21:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `bucket_number` int(11) NOT NULL,
  `seats_for_MCA` int(11) DEFAULT NULL,
  `seats_for_IMTECH_A` int(11) DEFAULT NULL,
  `seats_for_IMTECH_B` int(11) DEFAULT NULL,
  `seats_for_IMTECH_C` int(11) DEFAULT NULL,
  `seats_for_MTECH_AI` int(11) DEFAULT NULL,
  `seats_for_MTECH_CS` int(11) DEFAULT NULL,
  `seats_for_MTECH_IT` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `bucket_number`, `seats_for_MCA`, `seats_for_IMTECH_A`, `seats_for_IMTECH_B`, `seats_for_IMTECH_C`, `seats_for_MTECH_AI`, `seats_for_MTECH_CS`, `seats_for_MTECH_IT`, `creationDate`, `updationDate`) VALUES
(1, 'PHP01', 'PHP', '5', 10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10 17:23:28', NULL),
(2, 'C001', 'C++', '12', 25, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11 00:52:46', '11-02-2022 06:23:06 AM');

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(1, '10806121', '822894', 1, 1, 2, 3, 1, '2022-02-11 00:59:33'),
(2, '10806121', '822894', 1, 1, 1, 2, 2, '2022-02-11 01:01:07'),
(3, '12356', '181793', 1, 1, 2, 3, 2, '2023-04-02 10:05:59'),
(5, '12356', '181793', 1, 1, 1, 2, 1, '2023-04-02 10:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `courses_allocated`
--

CREATE TABLE `courses_allocated` (
  `courses_allocated_id` int(11) NOT NULL,
  `course_code` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `student_reg_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'IT', '2022-02-10 17:23:04'),
(2, 'HR', '2022-02-10 17:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(1, '1', '2022-02-11 00:59:02'),
(2, '2', '2022-02-11 00:59:02'),
(3, '3', '2022-02-11 00:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newstitle` varchar(255) DEFAULT NULL,
  `newsDescription` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstitle`, `newsDescription`, `postingDate`) VALUES
(2, 'Test News', 'This is for testing. This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.', '2022-02-10 17:36:50'),
(3, 'New Course Started C#', 'This is sample text for testing.', '2022-02-11 00:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(1, '1', '2022-02-10 17:22:49', NULL),
(2, '2', '2022-02-10 17:22:55', NULL),
(3, '3', '2022-02-11 00:51:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2022', '2022-02-10 17:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE `stream` (
  `stream_id` int(11) NOT NULL,
  `stream_name` varchar(50) NOT NULL,
  `optional_core_count` int(20) NOT NULL,
  `elective_count` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`stream_id`, `stream_name`, `optional_core_count`, `elective_count`) VALUES
(1, 'MCA', 2, 3),
(2, 'MTECH_AI', 2, 3),
(3, 'MTECH_CS', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `courses_allocated_id` int(11) NOT NULL COMMENT 'course codes',
  `enrolment_status` tinyint(1) NOT NULL,
  `E1` int(11) DEFAULT NULL,
  `E2` int(11) DEFAULT NULL,
  `E3` int(11) DEFAULT NULL,
  `E4` int(11) DEFAULT NULL,
  `E5` int(11) DEFAULT NULL,
  `E6` int(11) DEFAULT NULL,
  `E7` int(11) DEFAULT NULL,
  `E8` int(11) DEFAULT NULL,
  `E9` int(11) DEFAULT NULL,
  `E10` int(11) DEFAULT NULL,
  `E11` int(11) DEFAULT NULL,
  `E12` int(11) DEFAULT NULL,
  `E13` int(11) DEFAULT NULL,
  `E14` int(11) DEFAULT NULL,
  `E15` int(11) DEFAULT NULL,
  `E16` int(11) DEFAULT NULL,
  `E17` int(11) DEFAULT NULL,
  `E18` int(11) DEFAULT NULL,
  `E19` int(11) DEFAULT NULL,
  `optional_core_choices` varchar(50) DEFAULT NULL,
  `password_status` tinyint(1) NOT NULL DEFAULT 0,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `stream_id`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `courses_allocated_id`, `enrolment_status`, `E1`, `E2`, `E3`, `E4`, `E5`, `E6`, `E7`, `E8`, `E9`, `E10`, `E11`, `E12`, `E13`, `E14`, `E15`, `E16`, `E17`, `E18`, `E19`, `optional_core_choices`, `password_status`, `creationdate`, `updationDate`) VALUES
('10806121', 3, '', '12345', 'Anuj kumar', '822894', NULL, NULL, NULL, '7.10', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-02-11 00:53:31', '02-04-2023 03:19:14 PM'),
('11233', 1, NULL, 'asdfsd', 'seee', '651773', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-04-02 10:12:45', NULL),
('12356', 2, NULL, '123456', 'ayushi', '181793', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-02 09:58:10', '02-04-2023 04:22:17 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:55:07', NULL, 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:57:00', NULL, 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:57:22', '11-02-2022 06:31:26 AM', 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2023-03-31 19:12:45', NULL, 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2023-04-02 09:21:13', '02-04-2023 02:55:53 PM', 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2023-04-02 09:36:15', NULL, 1),
(7, '10806121', 0x3a3a3100000000000000000000000000, '2023-04-02 09:37:49', '02-04-2023 03:10:25 PM', 1),
(8, '10806121', 0x3a3a3100000000000000000000000000, '2023-04-02 09:41:29', '02-04-2023 03:13:21 PM', 1),
(9, '10806121', 0x3a3a3100000000000000000000000000, '2023-04-02 09:49:02', '02-04-2023 03:20:10 PM', 1),
(10, '10806121', 0x3a3a3100000000000000000000000000, '2023-04-02 09:50:15', '02-04-2023 03:27:21 PM', 1),
(11, '10806121', 0x3a3a3100000000000000000000000000, '2023-04-02 09:58:47', '02-04-2023 03:32:00 PM', 1),
(12, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:02:41', '02-04-2023 03:33:04 PM', 1),
(13, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:03:13', '02-04-2023 03:35:10 PM', 1),
(14, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:05:23', '02-04-2023 03:41:56 PM', 1),
(15, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:19:40', NULL, 1),
(16, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:20:05', NULL, 1),
(17, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:23:31', '02-04-2023 04:01:41 PM', 1),
(18, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:31:50', '02-04-2023 04:05:45 PM', 1),
(19, '10806121', 0x3a3a3100000000000000000000000000, '2023-04-02 10:46:35', '02-04-2023 04:21:57 PM', 1),
(20, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:52:06', '02-04-2023 04:22:21 PM', 1),
(21, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:52:43', '02-04-2023 04:23:57 PM', 1),
(22, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 10:59:53', '02-04-2023 04:31:06 PM', 1),
(23, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 11:01:13', '02-04-2023 05:11:23 PM', 1),
(24, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 11:41:30', '02-04-2023 05:11:37 PM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_allocated`
--
ALTER TABLE `courses_allocated`
  ADD PRIMARY KEY (`courses_allocated_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`stream_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`),
  ADD KEY `stream_id` (`stream_id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses_allocated`
--
ALTER TABLE `courses_allocated`
  MODIFY `courses_allocated_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stream`
--
ALTER TABLE `stream`
  MODIFY `stream_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`stream_id`) REFERENCES `stream` (`stream_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
