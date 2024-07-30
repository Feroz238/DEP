-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 08:09 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obmsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `blood_id` int(11) DEFAULT NULL,
  `donor_id` int(11) DEFAULT NULL,
  `blood_quantity` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blood_patient`
--

CREATE TABLE `blood_patient` (
  `patient_id` int(11) DEFAULT NULL,
  `blood_id` varchar(6) DEFAULT NULL,
  `blood_date` datetime DEFAULT NULL,
  `blood_quantity` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_name` varchar(44) DEFAULT NULL,
  `branch_code` int(11) DEFAULT NULL,
  `branch_location` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(166) NOT NULL,
  `first_name` varchar(11) DEFAULT NULL,
  `last_name` varchar(11) DEFAULT NULL,
  `address` varchar(11) DEFAULT NULL,
  `email` varchar(22) DEFAULT NULL,
  `phone_number` varchar(44) DEFAULT NULL,
  `age` int(177) DEFAULT NULL,
  `gender` varchar(33) DEFAULT NULL,
  `blood_type` varchar(22) DEFAULT NULL,
  `cnic_number` varchar(33) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `first_name`, `last_name`, `address`, `email`, `phone_number`, `age`, `gender`, `blood_type`, `cnic_number`, `date`) VALUES
(16, 'Abdul', 'Mateen', 'Torkhow', 'mateen@gmail.com', '03008933375', 33, 'male', 'AB-', '15202-4156774-6', '2021-08-19'),
(17, 'shoaib ', 'wali khan', 'chumor kon', 'shoaibvali.009@gmail.c', '03465774069', 24, 'male', 'AB+', '15201-7166324-1', '2021-08-23'),
(18, 'Muhammad ', 'yahya ', 'seen', 'yahya@gmail.com', '0324 9901 935', 22, 'male', 'B+', '15201-5564432-8', '2021-08-23'),
(19, 'khalid', 'ahmad', 'denin lasht', 'khalidahmadkhan@gmail.', '03018189412', 22, 'male', 'AB-', '15201-5665755-7', '2021-08-24'),
(20, 'Muhammad ', 'khaliq', 'seen', 'khaliq@gmail.com', '0322-5577-543', 22, 'male', 'AB-', '15201-5564432-8', '2021-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `message_text`
--

CREATE TABLE `message_text` (
  `id` int(166) NOT NULL,
  `name` varchar(33) DEFAULT NULL,
  `email` varchar(33) DEFAULT NULL,
  `idea` varchar(100) DEFAULT NULL,
  `messsage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_text`
--

INSERT INTO `message_text` (`id`, `name`, `email`, `idea`, `messsage`) VALUES
(1, 'babar', 'baber@gmai.com', 'this it', 'gff'),
(2, 'ali', 'asif_nawaz_7@yahoo.com', 'that is good', 'unique project'),
(3, 'hamza', 'baber@gmai.com', 'this is the best', 'good project for a lerning'),
(4, 'Mateen', 'baber@gmai.com', 'that is good', 'good work'),
(5, 'hamza', 'tanvir.chuinj@gmail.com', 'this it', 'ghhjjkklll'),
(6, 'khan', 'mateen@gmail.com', 'that is good', 'good project dear\r\n'),
(7, 'haroon', 'haroon@gmail.com', 'that is good', 'very good project for web development'),
(8, 'khalid ahmad', 'khalidahmadkhan@gmail.com', 'this is a goood project in  a chitral.', 'good work mr babar and khalid and aziz ullah');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(177) NOT NULL,
  `first_name` varchar(11) DEFAULT NULL,
  `last_name` varchar(11) DEFAULT NULL,
  `branch_name` varchar(33) DEFAULT NULL,
  `ward_name` varchar(33) DEFAULT NULL,
  `bed_number` varchar(11) DEFAULT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  `blood_type` varchar(22) DEFAULT NULL,
  `age` int(66) DEFAULT NULL,
  `gender` varchar(33) DEFAULT NULL,
  `date` varchar(44) DEFAULT NULL,
  `blood_pint` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `first_name`, `last_name`, `branch_name`, `ward_name`, `bed_number`, `phone_number`, `blood_type`, `age`, `gender`, `date`, `blood_pint`) VALUES
(11, 'Asif', 'khan', 'dhq lower', 'male 3', '22', '03440077654', '33', 77, 'AB+', '2021/08/19', '2 pints'),
(12, '', '', '', '', '', '', '', 0, '', '2021/08/19', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `white_blood`
--

CREATE TABLE `white_blood` (
  `blood_type` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `white_blood_donor`
--

CREATE TABLE `white_blood_donor` (
  `id` int(166) NOT NULL,
  `name` varchar(22) DEFAULT NULL,
  `father_name` varchar(22) DEFAULT NULL,
  `address` varchar(22) DEFAULT NULL,
  `email` varchar(22) DEFAULT NULL,
  `phone_number` varchar(66) DEFAULT NULL,
  `f_phone_number` varchar(66) DEFAULT NULL,
  `age` int(88) DEFAULT NULL,
  `gender` varchar(22) DEFAULT NULL,
  `blood_type` varchar(11) DEFAULT NULL,
  `cnic_number` varchar(55) DEFAULT NULL,
  `f_cnic_number` varchar(55) DEFAULT NULL,
  `date` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `white_blood_donor`
--

INSERT INTO `white_blood_donor` (`id`, `name`, `father_name`, `address`, `email`, `phone_number`, `f_phone_number`, `age`, `gender`, `blood_type`, `cnic_number`, `f_cnic_number`, `date`) VALUES
(3, 'babar', 'ali', 'seen', 'baber@gmai.com', '03440077654', '03023344567', 33, 'male', 'lymphocytes', '15202-4156774-6', '15201-4357667-2', '2021/08/19');

-- --------------------------------------------------------

--
-- Table structure for table `white_blood_patient`
--

CREATE TABLE `white_blood_patient` (
  `id` int(167) NOT NULL,
  `name` varchar(22) DEFAULT NULL,
  `father_name` varchar(33) DEFAULT NULL,
  `branch_name` varchar(66) DEFAULT NULL,
  `ward_name` varchar(22) DEFAULT NULL,
  `bed_number` int(66) DEFAULT NULL,
  `phone_number` varchar(199) DEFAULT NULL,
  `f_phone_number` varchar(188) DEFAULT NULL,
  `blood_type` varchar(66) DEFAULT NULL,
  `age` int(66) DEFAULT NULL,
  `gender` varchar(22) DEFAULT NULL,
  `date` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_text`
--
ALTER TABLE `message_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `white_blood_donor`
--
ALTER TABLE `white_blood_donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `white_blood_patient`
--
ALTER TABLE `white_blood_patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(166) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `message_text`
--
ALTER TABLE `message_text`
  MODIFY `id` int(166) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(177) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `white_blood_donor`
--
ALTER TABLE `white_blood_donor`
  MODIFY `id` int(166) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `white_blood_patient`
--
ALTER TABLE `white_blood_patient`
  MODIFY `id` int(167) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
