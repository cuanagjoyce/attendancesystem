-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 06:43 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegiate_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(100) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, 'Section 1- Gwapo'),
(2, 'Section 2 - Pangit');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(100) NOT NULL,
  `course_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, 'BSIT'),
(2, 'BSVulcanizing');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_id` int(100) NOT NULL,
  `instructor_firstname` varchar(50) NOT NULL,
  `instructor_lastname` varchar(50) NOT NULL,
  `instructor_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `instructor_firstname`, `instructor_lastname`, `instructor_contact`) VALUES
(1, 'John', 'Doe', '1390128312'),
(2, 'Maria ', 'Makiling', '1923813');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_student_details`
--

CREATE TABLE `instructor_student_details` (
  `instructor_student_id` int(11) NOT NULL,
  `student_course_class_semester_id` int(11) NOT NULL,
  `instructor_subject_schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instructor_student_details`
--

INSERT INTO `instructor_student_details` (`instructor_student_id`, `student_course_class_semester_id`, `instructor_subject_schedule_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `instructor_subject_schedule_details`
--

CREATE TABLE `instructor_subject_schedule_details` (
  `instructor_subject_schedule_id` int(100) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `subject_schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instructor_subject_schedule_details`
--

INSERT INTO `instructor_subject_schedule_details` (`instructor_subject_schedule_id`, `instructor_id`, `subject_schedule_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 1),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `overall_details`
--

CREATE TABLE `overall_details` (
  `overall_id` int(100) NOT NULL,
  `instructor_student_id` int(100) NOT NULL,
  `status_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `overall_details`
--

INSERT INTO `overall_details` (`overall_id`, `instructor_student_id`, `status_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(100) NOT NULL,
  `schedule_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `schedule_time`) VALUES
(1, '9:00am - 12:00pm'),
(2, '1:30pm - 4:30pm');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(100) NOT NULL,
  `term` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `term`) VALUES
(1, '1st Semester'),
(2, '2nd Semester');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(100) NOT NULL,
  `current_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `current_status`) VALUES
(1, 'Absent'),
(2, 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(100) NOT NULL,
  `student_firstname` varchar(50) NOT NULL,
  `student_lastname` varchar(50) NOT NULL,
  `student_address` varchar(50) NOT NULL,
  `student_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_firstname`, `student_lastname`, `student_address`, `student_contact`) VALUES
(1, 'Jayson', 'Damiotan', 'Mars', '0912039103123'),
(2, 'Joyce', 'Cuanag', 'BRGY. PANGIT', '123981039213');

-- --------------------------------------------------------

--
-- Table structure for table `student_course_class_semester_details`
--

CREATE TABLE `student_course_class_semester_details` (
  `student_course_class_semester_id` int(100) NOT NULL,
  `student_course_id` int(100) NOT NULL,
  `semester_id` int(100) NOT NULL,
  `class_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_course_class_semester_details`
--

INSERT INTO `student_course_class_semester_details` (`student_course_class_semester_id`, `student_course_id`, `semester_id`, `class_id`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_course_details`
--

CREATE TABLE `student_course_details` (
  `student_course_id` int(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_course_details`
--

INSERT INTO `student_course_details` (`student_course_id`, `student_id`, `course_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(100) NOT NULL,
  `subject_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`) VALUES
(1, 'MATH'),
(2, 'ENGLISH');

-- --------------------------------------------------------

--
-- Table structure for table `subject_schedule`
--

CREATE TABLE `subject_schedule` (
  `subject_schedule_id` int(100) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_schedule`
--

INSERT INTO `subject_schedule` (`subject_schedule_id`, `subject_id`, `schedule_id`) VALUES
(1, 1, 1),
(2, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_id`);

--
-- Indexes for table `instructor_student_details`
--
ALTER TABLE `instructor_student_details`
  ADD PRIMARY KEY (`instructor_student_id`);

--
-- Indexes for table `instructor_subject_schedule_details`
--
ALTER TABLE `instructor_subject_schedule_details`
  ADD PRIMARY KEY (`instructor_subject_schedule_id`);

--
-- Indexes for table `overall_details`
--
ALTER TABLE `overall_details`
  ADD PRIMARY KEY (`overall_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_course_class_semester_details`
--
ALTER TABLE `student_course_class_semester_details`
  ADD PRIMARY KEY (`student_course_class_semester_id`);

--
-- Indexes for table `student_course_details`
--
ALTER TABLE `student_course_details`
  ADD PRIMARY KEY (`student_course_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `subject_schedule`
--
ALTER TABLE `subject_schedule`
  ADD PRIMARY KEY (`subject_schedule_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `instructor_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instructor_student_details`
--
ALTER TABLE `instructor_student_details`
  MODIFY `instructor_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instructor_subject_schedule_details`
--
ALTER TABLE `instructor_subject_schedule_details`
  MODIFY `instructor_subject_schedule_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `overall_details`
--
ALTER TABLE `overall_details`
  MODIFY `overall_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_course_class_semester_details`
--
ALTER TABLE `student_course_class_semester_details`
  MODIFY `student_course_class_semester_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_course_details`
--
ALTER TABLE `student_course_details`
  MODIFY `student_course_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject_schedule`
--
ALTER TABLE `subject_schedule`
  MODIFY `subject_schedule_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
