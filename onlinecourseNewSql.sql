-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 08:23 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '12345', '2022-01-31 16:21:18', '0000-00-00 00:00:00'),
(2, 'AP', '121212', '2023-04-03 16:05:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` varchar(255) NOT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `bucket_number` int(11) NOT NULL,
  `seats_for_MCA` int(11) DEFAULT NULL,
  `seats_for_IMTECH_3-4` int(11) DEFAULT NULL,
  `seats_for_IMTECH_5-6` int(11) DEFAULT NULL,
  `seats_for_IMTECH_7-8` int(11) DEFAULT NULL,
  `seats_for_MTECH_AI` int(11) DEFAULT NULL,
  `seats_for_MTECH_CS` int(11) DEFAULT NULL,
  `seats_for_MTECH_IT` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `courseName`, `courseUnit`, `noofSeats`, `bucket_number`, `seats_for_MCA`, `seats_for_IMTECH_3-4`, `seats_for_IMTECH_5-6`, `seats_for_IMTECH_7-8`, `seats_for_MTECH_AI`, `seats_for_MTECH_CS`, `seats_for_MTECH_IT`, `creationDate`, `updationDate`) VALUES
('ACN – V Radha*', 'ACN', NULL, NULL, 0, 0, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('AdvAlgo-RPL', 'Advance Algo', NULL, NULL, 0, 0, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('Biometrics – MVNK *', 'Biometrics', NULL, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '2023-04-11 10:44:17', NULL),
('CC – RW', 'Cloud Computing', NULL, NULL, 0, 8, NULL, 5, 5, 5, 50, 0, '2023-04-11 10:44:17', NULL),
('CIP – CB', 'CIP', NULL, NULL, 0, 5, NULL, 5, 15, 10, 15, 5, '2023-04-11 10:44:17', NULL),
('course_code', 'course_name', NULL, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '2023-04-11 10:44:16', NULL),
('Data Comp – VCV', 'Data Compression', NULL, NULL, 0, 50, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('DDPC-SNS', 'DDPC', NULL, NULL, 0, 0, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('DL – AN', 'DL', NULL, NULL, 0, 0, NULL, 0, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('EHCF – DP', 'EHFC', NULL, NULL, 0, 0, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('IoT – NKS', 'Internet of Things', NULL, NULL, 0, 10, NULL, 0, 15, 5, 15, 5, '2023-04-11 10:44:17', NULL),
('Meta Heuristics – AS', 'Meta Heuristics', NULL, NULL, 0, 0, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('ML – VN', 'Machine Learning', NULL, NULL, 0, 0, NULL, 0, 0, 50, 0, 0, '2023-04-11 10:44:17', NULL),
('NWSec – WN', 'Network Security', NULL, NULL, 0, 0, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('SM – CRR', 'SM', NULL, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '2023-04-11 10:44:17', NULL),
('SNA – SDB', 'SNA', NULL, NULL, 0, 0, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('SocSys-HM', 'Social System', NULL, NULL, 0, 50, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL),
('SP-MNM', 'SP', NULL, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '2023-04-11 10:44:17', NULL),
('SysSec-BMM*', 'System Security', NULL, NULL, 0, 0, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:16', NULL),
('Virtualization- PSK *', 'Virtualization', NULL, NULL, 0, 0, NULL, 50, 50, 50, 50, 50, '2023-04-11 10:44:17', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `course_code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `student_reg_no` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'IT', '2022-02-10 17:23:04'),
(2, 'HR', '2022-02-10 17:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `elective_preference`
--

CREATE TABLE `elective_preference` (
  `elective_preference_id` int(11) NOT NULL,
  `student_reg_no` varchar(255) NOT NULL,
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
  `E19` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstitle`, `newsDescription`, `postingDate`) VALUES
(2, 'Test News', 'This is for testing. This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.', '2022-02-10 17:36:50'),
(3, 'New Course Started C#', 'This is sample text for testing.', '2022-02-11 00:54:38'),
(4, 'Deadline', 'Today is the last date to register for OC', '2023-04-06 10:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(1, '8', '2022-02-10 17:22:49', NULL),
(2, '4', '2022-02-10 17:22:55', NULL),
(3, '3', '2022-02-11 00:51:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `optional_core_count` int(20) NOT NULL COMMENT 'value cannot be greater than 3',
  `elective_count` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`stream_id`, `stream_name`, `optional_core_count`, `elective_count`) VALUES
(1, 'MCA', 2, 3),
(2, 'MTECH_AI', 2, 3),
(3, 'MTECH_CS', 2, 3),
(4, 'MTECH_IT', 3, 3),
(5, 'IMTECH 3-4', 2, 3),
(6, 'IMTECH 5-6', 2, 3),
(7, 'IMTECH 7-8', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentRegno` varchar(255) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa/gate_score` decimal(10,2) DEFAULT NULL,
  `courses_allocated_id` int(11) NOT NULL COMMENT 'course codes',
  `enrolment_status` tinyint(1) NOT NULL,
  `optional_core_choice_1` varchar(50) DEFAULT NULL,
  `optional_core_choice_2` int(50) DEFAULT NULL,
  `optional_core_choice_3` int(50) DEFAULT NULL,
  `password_status` tinyint(1) NOT NULL DEFAULT 0,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentRegno`, `stream_id`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa/gate_score`, `courses_allocated_id`, `enrolment_status`, `optional_core_choice_1`, `optional_core_choice_2`, `optional_core_choice_3`, `password_status`, `creationdate`, `updationDate`) VALUES
('12356', 2, '', '123456', 'ayushi', '181793', NULL, NULL, NULL, '0.00', 0, 0, NULL, NULL, NULL, 1, '2023-04-02 09:58:10', '02-04-2023 04:22:17 PM'),
('16MCME02', 7, NULL, 'LmByR', 'yaswanth chouturi', NULL, NULL, NULL, '8', '393.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME01', 7, NULL, '4569', 'Shruti Patchigolla', NULL, NULL, NULL, '8', '504.00', 0, 0, NULL, NULL, NULL, 1, '2023-04-11 10:36:10', '11-04-2023 04:19:14 PM'),
('18MCME02', 7, NULL, 'AkEoA', 'Amruta Jandhyala', NULL, NULL, NULL, '8', '500.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME03', 7, NULL, 'PdWfG', 'Arun Kumar Dharavath', NULL, NULL, NULL, '8', '496.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME04', 7, NULL, 'CaDuR', 'Gayathri G', NULL, NULL, NULL, '8', '477.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME07', 7, NULL, 'ZyGfE', 'Preethi Kajjayam', NULL, NULL, NULL, '8', '473.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME09', 7, NULL, 'GiSuX', 'Challa Subramanyam', NULL, NULL, NULL, '8', '473.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME10', 7, NULL, 'OzEiX', 'K. Parikshit Rao', NULL, NULL, NULL, '8', '469.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME11', 7, NULL, 'LeQwY', 'P Sai Teja', NULL, NULL, NULL, '8', '462.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME13', 7, NULL, 'SlNpS', 'A.Pavan kumar', NULL, NULL, NULL, '8', '459.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME14', 7, NULL, 'JsGtB', 'Harshitha Bingi', NULL, NULL, NULL, '8', '445.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME15', 7, NULL, 'SoJpE', 'Mallu Rakesh Reddy', NULL, NULL, NULL, '8', '439.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME16', 7, NULL, 'KnEqH', 'Rohan', NULL, NULL, NULL, '8', '429.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME17', 7, NULL, 'YzLpQ', 'V. Sai Koushik', NULL, NULL, NULL, '8', '427.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME18', 7, NULL, 'KqSiE', 'K. Roopa Yashaswini', NULL, NULL, NULL, '8', '415.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME19', 7, NULL, 'WiQyY', 'Chinthakindi Tarun', NULL, NULL, NULL, '8', '415.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME21', 7, NULL, 'WsIhU', 'Piyush Parwani', NULL, NULL, NULL, '8', '415.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME22', 7, NULL, 'LtRpA', 'Yasaswini Tiramdas', NULL, NULL, NULL, '8', '414.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME23', 7, NULL, 'HaIpW', 'Sucharitha Isukapalli', NULL, NULL, NULL, '8', '412.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('18MCME24', 7, NULL, 'HfOyX', 'Nitin Sai Bommi', NULL, NULL, NULL, '8', '397.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI01', 2, NULL, 'VfPtF', 'Ravi Teja Gundimeda', NULL, NULL, NULL, '4', '392.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI02', 2, NULL, 'SjAiE', 'Gorla Vivek Yadav', NULL, NULL, NULL, '4', '464.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI03', 2, NULL, 'YnLgI', 'Mahitha Kodali', NULL, NULL, NULL, '4', '308.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI04', 2, NULL, 'DkYiD', 'Yashwanth Marrapu', NULL, NULL, NULL, '4', '363.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI05', 2, NULL, 'TdAqO', 'Ch Saiman Naidu', NULL, NULL, NULL, '4', '548.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI06', 2, NULL, 'IpMvF', 'Pramod Kumar Dwivedi', NULL, NULL, NULL, '4', '415.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI07', 2, NULL, 'NnViG', 'Jagjeet Suryawanshi', NULL, NULL, NULL, '4', '321.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI08', 2, NULL, 'KtGqG', 'SAYAN DAS', NULL, NULL, NULL, '4', '469.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI09', 2, NULL, 'KwAeY', 'Sai Sanjana Madaram', NULL, NULL, NULL, '4', '481.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI10', 2, NULL, 'UfTzW', 'Manzoor Murtaza', NULL, NULL, NULL, '4', '285.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI11', 2, NULL, 'TsAyN', 'AMARJEET KUMAR', NULL, NULL, NULL, '4', '370.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI14', 2, NULL, 'XmOsW', 'Rajesh Thalla', NULL, NULL, NULL, '4', '562.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI15', 2, NULL, 'SyRhS', 'Kayala Jeevan Prakash', NULL, NULL, NULL, '4', '397.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI16', 2, NULL, 'IhNbO', 'R P Yashasvi', NULL, NULL, NULL, '4', '608.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI18', 2, NULL, 'LxGlC', 'Dipyaman Mukhopadhyay', NULL, NULL, NULL, '4', '606.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI20', 2, NULL, 'OgAfQ', 'Drishty gupta', NULL, NULL, NULL, '4', '548.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI21', 2, NULL, 'YnAvI', 'KRISHNA CHANDRA YADAV', NULL, NULL, NULL, '4', '459.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI22', 2, NULL, 'IcGlE', 'Vikas Koleti', NULL, NULL, NULL, '4', '408.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI23', 2, NULL, 'YdXdK', 'M Pranayraj', NULL, NULL, NULL, '4', '437.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL),
('21MCMI25', 2, NULL, 'KvJvC', 'Pralhad Kolambkar', NULL, NULL, NULL, '4', '565.00', 0, 0, NULL, NULL, NULL, 0, '2023-04-11 10:36:10', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(24, '12356', 0x3a3a3100000000000000000000000000, '2023-04-02 11:41:30', '02-04-2023 05:11:37 PM', 1),
(25, '21mcmc12', 0x3a3a3100000000000000000000000000, '2023-04-03 16:34:30', '03-04-2023 10:04:55 PM', 1),
(26, '21mcmc12', 0x3a3a3100000000000000000000000000, '2023-04-03 16:35:24', '03-04-2023 10:07:22 PM', 1),
(27, '21mcmc12', 0x3a3a3100000000000000000000000000, '2023-04-05 17:17:11', '05-04-2023 10:49:45 PM', 1),
(28, '21mcmc12', 0x3a3a3100000000000000000000000000, '2023-04-06 05:56:17', NULL, 1),
(29, '21mcmc12', 0x3a3a3100000000000000000000000000, '2023-04-06 10:26:52', '06-04-2023 03:57:57 PM', 1),
(30, '21mcmc12', 0x3a3a3100000000000000000000000000, '2023-04-06 10:47:49', '06-04-2023 04:18:34 PM', 1),
(31, '12356', 0x3a3a3100000000000000000000000000, '2023-04-08 20:10:27', NULL, 1),
(32, '12356', 0x3a3a3100000000000000000000000000, '2023-04-10 08:01:57', '10-04-2023 02:14:33 PM', 1),
(33, '12356', 0x3a3a3100000000000000000000000000, '2023-04-10 08:44:38', '10-04-2023 02:51:59 PM', 1),
(34, '12356', 0x3a3a3100000000000000000000000000, '2023-04-10 09:22:04', NULL, 1),
(35, '12356', 0x3a3a3100000000000000000000000000, '2023-04-10 15:40:42', NULL, 1),
(36, '16MCME02', 0x3a3a3100000000000000000000000000, '2023-04-11 06:20:46', NULL, 1),
(37, '18MCME01', 0x3a3a3100000000000000000000000000, '2023-04-11 10:48:48', NULL, 1);

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
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_allocated`
--
ALTER TABLE `courses_allocated`
  ADD PRIMARY KEY (`courses_allocated_id`),
  ADD KEY `student_reg_no` (`student_reg_no`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elective_preference`
--
ALTER TABLE `elective_preference`
  ADD PRIMARY KEY (`elective_preference_id`);

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
  ADD PRIMARY KEY (`studentRegno`),
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
-- AUTO_INCREMENT for table `elective_preference`
--
ALTER TABLE `elective_preference`
  MODIFY `elective_preference_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `stream_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses_allocated`
--
ALTER TABLE `courses_allocated`
  ADD CONSTRAINT `courses_allocated_ibfk_1` FOREIGN KEY (`student_reg_no`) REFERENCES `students` (`studentRegno`),
  ADD CONSTRAINT `courses_allocated_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`stream_id`) REFERENCES `stream` (`stream_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
