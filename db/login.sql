-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 07:57 AM
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
-- Database: `blood`
--
CREATE DATABASE IF NOT EXISTS `blood` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blood`;

-- --------------------------------------------------------

--
-- Table structure for table `red`
--

CREATE TABLE `red` (
  `name` text NOT NULL,
  `email` varchar(16) NOT NULL,
  `password` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `blood_management_system`
--
CREATE DATABASE IF NOT EXISTS `blood_management_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blood_management_system`;

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `Blood_id` varchar(44) DEFAULT NULL,
  `Donor_id` varchar(33) DEFAULT NULL,
  `Blood_Quantity` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blood_patient`
--

CREATE TABLE `blood_patient` (
  `Patient_id` varchar(55) DEFAULT NULL,
  `Blood_id` varchar(53) DEFAULT NULL,
  `Blood_date` varchar(66) DEFAULT NULL,
  `Blood_Quantity` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_patient`
--

INSERT INTO `blood_patient` (`Patient_id`, `Blood_id`, `Blood_date`, `Blood_Quantity`) VALUES
('2', '3', '6/5/2021', '4');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_Number` varchar(22) DEFAULT NULL,
  `Branch_Name` varchar(55) DEFAULT NULL,
  `Branch_Code` varchar(44) DEFAULT NULL,
  `Branch_Location` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_Number`, `Branch_Name`, `Branch_Code`, `Branch_Location`) VALUES
('2', 'dhq children Hospital', '1133', 'xang_bazar');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `Donor_id` varchar(22) NOT NULL,
  `Donor_First_Name` varchar(22) DEFAULT NULL,
  `Donor_last_Name` varchar(22) DEFAULT NULL,
  `Donor_Address` varchar(33) DEFAULT NULL,
  `Donor_Blood_type` varchar(22) DEFAULT NULL,
  `Donor_Age` int(11) DEFAULT NULL,
  `Donor_Gender` varchar(22) DEFAULT NULL,
  `Donor_contact_number` varchar(77) DEFAULT NULL,
  `Donor_Email` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_id` varchar(28) DEFAULT NULL,
  `Patient_First_Name` varchar(33) DEFAULT NULL,
  `Patient_Last_Name` varchar(33) DEFAULT NULL,
  `Patient_Blood_type` varchar(44) DEFAULT NULL,
  `Patient_Ward_Number` varchar(33) DEFAULT NULL,
  `Patient_Bed_Number` varchar(55) DEFAULT NULL,
  `Patient_contact_number` varchar(44) DEFAULT NULL,
  `Patient_Gender` varchar(22) DEFAULT NULL,
  `Patient_Age` int(11) DEFAULT NULL,
  `Branch_Name` varchar(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_id`, `Patient_First_Name`, `Patient_Last_Name`, `Patient_Blood_type`, `Patient_Ward_Number`, `Patient_Bed_Number`, `Patient_contact_number`, `Patient_Gender`, `Patient_Age`, `Branch_Name`) VALUES
('1', 'Babar', 'khan', 'B+', '4', '112', '03440077654', 'male', 44, 'dhq lower hospital'),
('1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`Donor_id`);
--
-- Database: `contact`
--
CREATE DATABASE IF NOT EXISTS `contact` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `contact`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(13) NOT NULL,
  `fldName` varchar(16) NOT NULL,
  `fldEmail` varchar(13) NOT NULL,
  `fldPhone` varchar(22) NOT NULL,
  `fldMessage` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);
--
-- Database: `course`
--
CREATE DATABASE IF NOT EXISTS `course` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `course`;

-- --------------------------------------------------------

--
-- Table structure for table `cenglish`
--

CREATE TABLE `cenglish` (
  `csc` varchar(55) NOT NULL,
  `physics` varchar(45) NOT NULL,
  `chemistry` varchar(65) NOT NULL,
  `std` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `donor`
--
CREATE DATABASE IF NOT EXISTS `donor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `donor`;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `address` text NOT NULL,
  `email_address` varchar(11) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` text NOT NULL,
  `blood_type` varchar(11) NOT NULL,
  `cnic_number` int(11) NOT NULL,
  `date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `first_name`, `last_name`, `address`, `email_address`, `phone_number`, `age`, `gender`, `blood_type`, `cnic_number`, `date`) VALUES
(1, 'ali', 'khan', 'seen', 'ahmad@345gm', 2147483647, 24, 'male', 'AB+', 2147483647, '7/6/20201');
--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `cloths`
--

CREATE TABLE `cloths` (
  `cloth_id` varchar(22) DEFAULT NULL,
  `cloth_name` varchar(33) DEFAULT NULL,
  `cloth_size` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `login_register_pure_coding`
--
CREATE DATABASE IF NOT EXISTS `login_register_pure_coding` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login_register_pure_coding`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(14, 'HAROON', 'tanvir.chuinj@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f'),
(16, 'khan', 'ahmad@gmail.com', '61243c7b9a4022cb3f8dc3106767ed12'),
(18, 'aziz', 'aziz@gmail.com', 'b85dc795ba17cb243ab156f8c52124e1'),
(20, 'shahid', 'shahid@gmail.com', 'f3224d90c778d5e456b49c75f85dd668'),
(21, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(22, 'khalid', 'khalid@gmail.com', '794761a765ceca759536a1bf39100142'),
(23, 'Babar Ahmad', 'babar@gmail.com', '56f46611dfa80d0eead602cbb3f6dcee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Database: `obms`
--
CREATE DATABASE IF NOT EXISTS `obms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `obms`;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(13) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `address` varchar(8) NOT NULL,
  `email_address` varchar(16) NOT NULL,
  `phone_number` int(13) NOT NULL,
  `age` int(16) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `blood_type` varchar(6) NOT NULL,
  `cnic_number` int(15) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `first_name`, `last_name`, `address`, `email_address`, `phone_number`, `age`, `gender`, `blood_type`, `cnic_number`, `date`) VALUES
(0, '', '', '', '', 0, 0, '', '', 0, ''),
(0, '', '', '', '', 0, 0, '', '', 0, '');
--
-- Database: `obmsc`
--
CREATE DATABASE IF NOT EXISTS `obmsc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `obmsc`;

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
-- Table structure for table `blood_cat`
--

CREATE TABLE `blood_cat` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(10) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_cat`
--

INSERT INTO `blood_cat` (`cat_id`, `cat_name`, `quantity`) VALUES
(1, 'A+', 0),
(2, 'AB+', 50),
(3, 'A-', 0),
(4, 'AB-', 89),
(5, 'O+', 200),
(6, 'O-', 380),
(7, 'B-', 180),
(8, 'B+', 500);

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
  `blood_type` int(10) DEFAULT NULL,
  `cnic_number` varchar(33) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `first_name`, `last_name`, `address`, `email`, `phone_number`, `age`, `gender`, `blood_type`, `cnic_number`, `date`) VALUES
(16, 'zuhor', 'uddin', 'seen', '', '03446577876', 22, 'male  ', 1, '15201-5564432-8  ', '2021-08-19'),
(58, 'Abdul', 'khan', 'seenlasht', 'babar@gmail.com', '03467651266', 22, 'male', 1, '15202-4156774-6', '2021-09-23'),
(59, 'Abdul', 'khan', 'seenlasht', 'babar@gmail.com', '03467651266', 22, 'male', 2, '15202-4156774-6', '2021-09-23'),
(62, 'Fahima', 'Bibi', 'seen', 'fahima@gmail.com', '03446543225', 33, 'female', 6, '15201-7166324-1', '2021-10-05'),
(63, 'khaliq ', 'Ahmad', 'dangarikand', 'khaliq@gmail.com', '03456787654', 33, 'MALE', 7, '15202-4155314-6', '2021-10-10'),
(64, 'Abdul', 'Nawaz', 'seen', 'babar@gmail.com', '3008933375', 44, 'male ', 2, '15202-4156774-6', '2021-11-10'),
(65, 'Asif', 'Nawaz', 'seen', 'asif_nawaz_7@yahoo.com', '03008933375', 44, 'MALE', 5, '15201-546754-4', '2021-11-29'),
(67, 'khalid', 'ahmad', 'denin lasht', 'tanvir.chuinj@gmail.co', '03008933375', 22, 'MALE', 6, '15201-5564432-8', '2021-12-22'),
(68, 'Abdul', 'Nawaz', 'Torkhow', 'babar@gmail.com', '03440077654', 44, 'MALE', 5, '15202-4156774-6', '2021-12-22');

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
(4, 'Mateen', 'baber@gmai.com', 'that is good', 'good work'),
(6, 'khan', 'mateen@gmail.com', 'that is good', 'good project dear\r\n'),
(8, 'khalid ahmad', 'khalidahmadkhan@gmail.com', 'this is a goood project in  a chitral.', 'good work mr babar and khalid and aziz ullah'),
(9, 'haroon rashid', 'rashid@gmail.com ', 'this is a goood project in  a chitral.', 'good work dear'),
(10, 'babar', 'babar@gmail.com ', 'this is a goood project in  a chitral.', 'good work dear Babar Ahmad'),
(12, 'Fahima Bibi', 'fahima@gmail.com', 'Dear Babar Good Projectt', 'one of the good Work my Dear........\r\n'),
(13, 'muhammad Ruf', 'rashid11@gmail.com', 'this is a goood project in  a chitral.', 'dear babar good work'),
(14, 'murtaza khan', 'murtaza.453@gmail.com ', 'good work dear all project developer', 'how to apply a white blood. for registration..'),
(16, 'hamza', 'tanvir.chuinj@gmail.com', 'good work', 'good job'),
(18, 'khan', 'asif_nawaz_7@yahoo.com', 'this is a goood project in  a chitral.', 'hujkk');

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
  `blood_type` int(10) DEFAULT NULL,
  `age` int(177) DEFAULT NULL,
  `gender` varchar(33) DEFAULT NULL,
  `date` varchar(44) DEFAULT NULL,
  `blood_pint` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `first_name`, `last_name`, `branch_name`, `ward_name`, `bed_number`, `phone_number`, `blood_type`, `age`, `gender`, `date`, `blood_pint`) VALUES
(15, 'Abdul', 'Mateen', 'dhq lower', 'male ', '22', '03440077654', 8, 0, 'AB-', '2021/08/25', '2 pints'),
(43, 'Asif', 'Nawaz', 'dhq xagbazar', 'femal 2', '12', '03440077654', 1, 44, 'male', '2021/11/08', '5'),
(44, 'Asif', 'Nawaz', 'dhq lower', '4', '22', '03440077654', 2, 44, 'male ', '2021/11/09', '200'),
(45, 'Asif', 'Nawaz', 'dhq lower', '4', '22', '03440077654', 6, 44, 'male ', '2021/11/09', '20'),
(46, 'Asif', 'Nawaz', 'dhq lower', '4', '22', '03440077654', 5, 44, 'male ', '2021/11/09', '20'),
(47, 'Abdul', 'khan', 'dhq lower', 'male 3', '22', '03008933375', 7, 44, 'MALE', '2021/11/16', '20'),
(48, 'Asif', 'Nawaz', 'dhq lower', 'male 3', '22', '03008933375', 5, 44, 'fmrla', '2021/11/29', '100'),
(49, 'Abdul', 'Nawaz', 'dhq lower', 'male 3', '22', '03440077654', 2, 44, 'MALE', '2021/12/12', '450'),
(50, 'Asif', 'ahmad', 'dhq lower', 'male 3', '2', '03446543225', 4, 44, 'MALE', '2021/12/17', '211'),
(51, 'Afshan', 'Bibi', 'dhq xagbazar', 'femal', '12', '03440077654', 6, 55, 'femal', '2021/12/22', '300'),
(52, 'Asif', 'khan', 'dhq xagbazar', 'male ', '4', '03446543225', 1, 44, 'MALE', '2021/12/22', '100');

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
-- Table structure for table `wbc_patient`
--

CREATE TABLE `wbc_patient` (
  `id` int(166) NOT NULL,
  `name` varchar(16) NOT NULL,
  `father_name` varchar(66) NOT NULL,
  `branch_name` varchar(77) NOT NULL,
  `ward_name` varchar(55) NOT NULL,
  `bed_number` varchar(13) NOT NULL,
  `phone_number` varchar(66) NOT NULL,
  `f_phone_nubmer` varchar(55) NOT NULL,
  `blood_type` varchar(55) NOT NULL,
  `age` int(99) NOT NULL,
  `gender` varchar(55) NOT NULL,
  `date` datetime(4) NOT NULL
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
(3, 'babar', 'ali', 'seen', 'baber@gmai.com', '03440077654', '03023344567', 33, 'male', 'lymphocytes', '15202-4156774-6', '15201-4357667-2', '2021/08/19'),
(6, 'umar', 'ali', 'seenlasht', 'umar@gmail.com', '03008933375', '03023344567', 33, 'male', 'monocytes', '15202-4156774-6', '15201-7755432-1', '2021/08/29'),
(8, 'Fida ur rahman', 'Nabi uddin', 'seen ', 'fida@gmail.com', '03225567765', '03116655443', 22, 'male', 'neutrophils', '15202-7744332-7', '15202-9876543-3', '2021/09/03'),
(10, 'Mateen', 'alin khan', 'Torkhow', 'mateen@gmail.com', '03446543225', '03116655443', 22, 'male', 'monocytes', '15201-54336754-4', '15201-7755432-1', '2021/09/07');

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
-- Dumping data for table `white_blood_patient`
--

INSERT INTO `white_blood_patient` (`id`, `name`, `father_name`, `branch_name`, `ward_name`, `bed_number`, `phone_number`, `f_phone_number`, `blood_type`, `age`, `gender`, `date`) VALUES
(1, 'babar', 'mehboob', 'dhq lower', 'male ', 4, '03440077654', '03023344567', 'AB+', 44, 'male ', '2021/09/05'),
(5, 'shahid azam', 'muhammad Tahir', 'dhq lower', 'male  ', 4, '0321555667', '0345678899', 'lymphocytes', 66, 'male   ', '2021/09/05'),
(7, 'muhammad Ruf', 'muhammad Tahir', 'dhq lower', 'private Romm 3 ', 1, '03446543225', '03023344567', 'basophils', 44, 'male  ', '2021/09/05'),
(8, 'Fahima Bibi', 'Fazli Khaliq', 'dhq xagbazar', 'female 4', 22, '03008933375', '03116655443', 'lymphocytes', 66, 'female  ', '2021/09/07'),
(9, 'muhammd murtaza', 'murttaza Ali', 'dhq lower', 'private Room ', 1, '03213344786', '03021345432', 'Eocosipistic', 55, 'male  ', '2021/09/10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_cat`
--
ALTER TABLE `blood_cat`
  ADD PRIMARY KEY (`cat_id`);

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
-- Indexes for table `wbc_patient`
--
ALTER TABLE `wbc_patient`
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
-- AUTO_INCREMENT for table `blood_cat`
--
ALTER TABLE `blood_cat`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(166) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `message_text`
--
ALTER TABLE `message_text`
  MODIFY `id` int(166) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(177) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wbc_patient`
--
ALTER TABLE `wbc_patient`
  MODIFY `id` int(166) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `white_blood_donor`
--
ALTER TABLE `white_blood_donor`
  MODIFY `id` int(166) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `white_blood_patient`
--
ALTER TABLE `white_blood_patient`
  MODIFY `id` int(167) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"obmsc\",\"table\":\"blood_cat\"},{\"db\":\"lms\",\"table\":\"std\"},{\"db\":\"login_register_pure_coding\",\"table\":\"users\"},{\"db\":\"obmsc\",\"table\":\"donor\"},{\"db\":\"obmsc\",\"table\":\"patient\"},{\"db\":\"obmsc\",\"table\":\"blood\"},{\"db\":\"obmsc\",\"table\":\"white_blood_patient\"},{\"db\":\"obmsc\",\"table\":\"white_blood_donor\"},{\"db\":\"obmsc\",\"table\":\"wbc_patient\"},{\"db\":\"obmsc\",\"table\":\"message_text\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'obmsc', 'blood_cat', '{\"sorted_col\":\"`cat_id` DESC\"}', '2021-11-09 05:24:45'),
('root', 'obmsc', 'donor', '{\"sorted_col\":\"`id` DESC\"}', '2021-09-21 05:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-12-22 06:47:13', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":289}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-07 21:27:44', '2021-05-07 21:27:44', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/shop', 'yes'),
(2, 'home', 'http://localhost/shop', 'yes'),
(3, 'blogname', 'Lets Shop', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'asifalics87@gnail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storecommerce', 'yes'),
(41, 'stylesheet', 'storecommerce', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1635974859', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '1', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:20:\"above-banner-section\";a:0:{}s:24:\"express-off-canvas-panel\";a:0:{}s:25:\"frontpage-content-widgets\";a:0:{}s:20:\"shop-sidebar-widgets\";a:0:{}s:28:\"footer-first-widgets-section\";a:0:{}s:29:\"footer-second-widgets-section\";a:0:{}s:28:\"footer-third-widgets-section\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1620426468;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1620466069;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1620509266;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620509305;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620509318;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.6.3\";s:7:\"version\";s:5:\"5.6.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.4\";s:7:\"version\";s:5:\"5.5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.5\";s:7:\"version\";s:5:\"5.4.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3.7-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.7-rollback-0.zip\";}s:7:\"current\";s:5:\"5.3.7\";s:7:\"version\";s:5:\"5.3.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1620422872;s:15:\"version_checked\";s:3:\"5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1620422979;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(117, 'auto_updater.lock', '1620422873', 'no'),
(119, '_site_transient_timeout_theme_roots', '1620424760', 'no'),
(120, '_site_transient_theme_roots', 'a:5:{s:13:\"storecommerce\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(122, 'core_updater.lock', '1620422883', 'no'),
(123, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620422957;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1620422964;s:7:\"checked\";a:5:{s:13:\"storecommerce\";s:5:\"1.2.2\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:4:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.4.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_timeout_browser_430c8bfe8bf1cc772d8a7ec27f27106c', '1621027714', 'no'),
(126, '_site_transient_browser_430c8bfe8bf1cc772d8a7ec27f27106c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.128\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, '_site_transient_timeout_php_check_8c0181da100b1c7d1f637c18117d0149', '1621027717', 'no'),
(128, '_site_transient_php_check_8c0181da100b1c7d1f637c18117d0149', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(130, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1620466169', 'no'),
(131, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Demo + Discussion group: Creating and Registering Block Patterns\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/277669527/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-05-11 11:00:00\";s:8:\"end_date\";s:19:\"2021-05-11 12:00:00\";s:20:\"start_unix_timestamp\";i:1620756000;s:18:\"end_unix_timestamp\";i:1620759600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:30:\"WordCamp Northeast Ohio Region\";s:3:\"url\";s:30:\"https://neo.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-21 00:00:00\";s:8:\"end_date\";s:19:\"2021-05-23 00:00:00\";s:20:\"start_unix_timestamp\";i:1621569600;s:18:\"end_unix_timestamp\";i:1621742400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.2617873;s:9:\"longitude\";d:-81.1637245;}}}}', 'no'),
(132, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1620466128', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(133, '_transient_feed_9bbd59226dc36b9b26cd43f15694c5c3', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"News –  – WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 May 2021 15:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.8-alpha-50824\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: April 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2021/05/the-month-in-wordpress-april-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 May 2021 15:00:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10253\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:293:\"As WordPress grows, both in usage as a CMS and in participation as a community, it’s important for us to shed the idea that software creation is only about what literally can be done to code or what literally can be done to core or what literally can be done to the CMS.  That was [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Hari Shanker R\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11460:\"\n<blockquote class=\"wp-block-quote\"><p>As WordPress grows, both in usage as a CMS and in participation as a community, it’s important for us to shed the idea that software creation is only about what literally can be done to code or what literally can be done to core or what literally can be done to the CMS. </p></blockquote>\n\n\n\n<p class=\"has-drop-cap\">That was <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a> on the “<a href=\"https://wordpress.org/news/2021/04/your-opinion-is-our-opportunity/\">Your Opinion is Our Opportunity</a>” episode of the <a href=\"https://wordpress.org/news/podcast/\">WP Briefing Podcast</a>, speaking about the importance of co-development and testing for the continued growth and maintenance of WordPress. This month’s updates align closely with these ideas. Read on and see for yourself.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.7.1 is launched</h2>\n\n\n\n<p>WordPress security and maintenance release &#8211; <a href=\"https://wordpress.org/news/2021/04/wordpress-5-7-1-security-and-maintenance-release/\">5.7.1</a> came out in April. The release fixes two major security issues and includes 26 bug fixes. You can update to the latest version directly from your WordPress dashboard or by <a href=\"https://wordpress.org/download/\">downloading</a> it from WordPress.org.</p>\n\n\n\n<p>Want to contribute to WordPress 5.8? Check out the <a href=\"https://make.wordpress.org/core/5-8/\">5.8 Development Cycle</a>. To contribute to core, head over to <a href=\"https://core.trac.wordpress.org/\">Trac</a>, and<a href=\"https://core.trac.wordpress.org/report/6\"> pick a 5.8 ticket</a> –– more info in the <a href=\"https://make.wordpress.org/core/handbook/\">Core Contributor Handbook</a>. Don’t forget to join the WordPress <a href=\"https://wordpress.slack.com/archives/C02RQBWTW\">#core</a> channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress Slack</a> and follow the <a href=\"https://make.wordpress.org/core/\">Core Team blog</a>. The Core Team hosts weekly chats on Wednesdays at <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?hour=5&amp;min=00&amp;sec=0\">5 AM</a> and <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?hour=20&amp;min=00&amp;sec=0\">8 PM</a> UTC.&nbsp;</p>\n\n\n\n<h2>Gutenberg Version 10.3, 10.4, and 10.5 are out</h2>\n\n\n\n<p>Contributor teams released Gutenberg <a href=\"https://make.wordpress.org/core/2021/04/02/whats-new-in-gutenberg-10-3-31-march/\">version 10.3</a> on April 2, <a href=\"https://make.wordpress.org/core/2021/04/14/whats-new-in-gutenberg-10-4-14-april/\">version 10.4</a> on April 14, and <a href=\"https://make.wordpress.org/core/2021/04/30/whats-new-in-gutenberg-10-5-28-april/\">version 10.5</a> on April 30! <a href=\"https://make.wordpress.org/core/2021/04/02/whats-new-in-gutenberg-10-3-31-march/\">Version 10.3</a> improves the block toolbar and the navigation editor, whereas <a href=\"https://make.wordpress.org/core/2021/04/14/whats-new-in-gutenberg-10-4-14-april/\">version 10.4</a> adds block widgets to the customizer and improvements to the site editor list view. In <a href=\"https://make.wordpress.org/core/2021/04/30/whats-new-in-gutenberg-10-5-28-april/\">version 10.5</a>, you will find a set of new block patterns and enhancements to the template editing mode, along with the ability to embed PDFs.&nbsp;</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core Team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the <a href=\"https://wordpress.slack.com/archives/C02QB2JS7\">#core-editor</a> channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress Slack</a>. The “<a href=\"https://make.wordpress.org/core/2021/03/08/whats-next-in-gutenberg-march-2021/\">What’s next in Gutenberg</a>” post offers more details on the latest updates. If you are unfamiliar with the Gutenberg plugin, <a href=\"https://wordpress.org/news/2021/04/become-an-early-adopter-with-the-gutenberg-plugin/\">learn more in this post</a>.</p>\n\n\n\n<h2>Full Site Editing updates</h2>\n\n\n\n<p>Following the <a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">Full Site Editing (FSE) feature demo</a> hosted by <a href=\"https://profiles.wordpress.org/matveb/\">Mattias Ventura</a>, the project leadership decided that WordPress 5.8 will only include some FSE features, such as a template editor for pages/blank templates, a widget editor screen, and the theme.json mechanism. Other features like the Global Styles interface and Site Editor (managing all templates) will be made available later. The team has <a href=\"https://make.wordpress.org/core/2021/04/20/full-site-editing-go-no-go-next-steps/\">started working on the next steps</a> in shipping these chosen FSE features with version 5.8.</p>\n\n\n\n<p>New to FSE? Check out <a href=\"https://wordpress.org/news/2021/04/curious-about-full-site-editing/\">this blog post</a> for a high-level overview of the project. You can help test FSE by participating in the <a href=\"https://make.wordpress.org/test/2021/04/14/fse-program-testing-call-5-query-quest/\">latest FSE Outreach Program testing call </a>–– leave your feedback by May 5th. Want to participate in future testing calls? Stay updated by following the <a href=\"https://make.wordpress.org/test/2021/04/22/upcoming-fse-outreach-program-schedule/\">FSE outreach schedule</a>. You can also <a href=\"https://make.wordpress.org/test/2021/04/28/fse-program-bring-your-questions-round-two/\">submit your questions</a> around FSE right now.</p>\n\n\n\n<h2>WordCamp Europe 2021 is on the calendar</h2>\n\n\n\n<p>One of the most exciting WordPress events,&nbsp; <a href=\"https://europe.wordcamp.org/2021/\">WordCamp Europe 2021</a>, will be held online on June 7-9, 2021! Event organizers have opened up calls for <a href=\"https://europe.wordcamp.org/2021/call-for-sponsors/\">sponsors</a> and <a href=\"https://europe.wordcamp.org/2021/call-for-media-partners-and-supporters/\">media partners</a>. Free tickets for the event will be available soon — <a href=\"https://europe.wordcamp.org/2021/#subscribe-email\">sign up for email updates</a> to be notified when they are out!</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading</h2>\n\n\n\n<ul><li>WordPress now powers <a href=\"https://w3techs.com/technologies/details/cm-wordpress\">41% of the web</a>!</li><li><a href=\"https://make.wordpress.org/updates/2021/04/15/quarterly-updates-q1-2021/\">Q1 2021 updates from the WordPress project</a> have been published.</li><li>The Core Team discussed a <a href=\"https://make.wordpress.org/core/2021/04/18/proposal-treat-floc-as-a-security-concern/\">proposal</a> to treat Federated Learning of Cohorts (FLoC), a Google Chrome feature, as a security concern. The team <a href=\"https://make.wordpress.org/core/2021/04/18/proposal-treat-floc-as-a-security-concern/#comment-41207\">eventually decided</a> to track the status of the FLoC trial/implementation in a <a href=\"https://core.trac.wordpress.org/ticket/53069\">Trac ticket</a> and monitor periodically. </li><li>The Core Team will <a href=\"https://make.wordpress.org/core/2021/04/22/ie-11-support-phase-out-plan/\">remove Internet Explorer 11 support in WordPress version 5.8</a>. </li><li>The Community Team has opened up a <a href=\"https://make.wordpress.org/community/2021/04/26/discussing-the-path-to-in-person-wordcamps/\">discussion on the path to in-person WordCamps</a> and is requesting feedback from community members.</li><li>The Community Team is also <a href=\"https://make.wordpress.org/community/2021/04/19/discussion-companies-who-run-competitive-ads-against-wordpress-and-apply-to-sponsor-wordcamps/\">requesting feedback</a> on whether companies who run competitive ads against WordPress can apply to sponsor WordCamps. </li><li><a href=\"https://centroamerica.wordcamp.org/2021/\">WordCamp Centroamérica 2021</a> and <a href=\"https://greece.wordcamp.org/2021/\">WordCamp Greece 2021</a> were held successfully in April. Videos of WordCamp Centroamérica are now available <a href=\"https://wordpress.tv/event/wordcamp-centroamerica-2021/\">on WordPress.tv</a>! While you are at it, don&#8217;t miss this<a href=\"https://central.wordcamp.org/news/2021/04/29/making-a-great-online-conference-experience-at-wordcamp-prague/#\"> excellent recap of WordCamp Prague 2021</a> on the WordCamp Central blog.</li><li>Contributor teams are actively working on building the <a href=\"https://wordpress.org/patterns/\">Block Pattern Directory</a>. You can read about work updates on this project from the <a href=\"https://make.wordpress.org/meta/2021/04/28/block-pattern-directory-update/\">Meta Team</a> and the <a href=\"https://make.wordpress.org/design/2021/03/30/wordpress-org-patterns-directory/\">Design Team</a>.</li><li>Check out the <a href=\"https://wordpress.org/news/2021/04/getting-started-with-the-figma-wordpress-design-library/\">blog post on getting started with the Figma WordPress Design Library</a>. You can use the library to create design prototypes for the WordPress UI in <a href=\"https://www.figma.com/\">Figma</a>.</li><li>The Polyglots Team is making significant progress on the <a href=\"https://make.wordpress.org/polyglots/2021/04/26/polyglots-training-working-group-update-3/\">Polyglots Training course</a>.</li><li>The Training Team has <a href=\"https://make.wordpress.org/training/2021/04/23/discussion-contributor-ladders-for-the-training-team-and-learn-wordpress/\">proposed a contributor ladder</a> as a resource for team contributors to understand ways to participate and find growth opportunities. </li><li>The <a href=\"https://github.com/WordPress/Requests\">Requests library</a> has moved to the WordPress GitHub organization and has a new release: <a href=\"https://github.com/WordPress/Requests/releases/tag/v1.8.0\">version 1.8.0</a>. </li><li>The Docs Team is<a href=\"https://make.wordpress.org/docs/2021/04/05/update-on-the-revision-of-documentation/\"> working on redesigning HelpHub</a> by reviewing its content and design.</li><li>The Themes Team has shared a proposal on <a href=\"https://make.wordpress.org/themes/2021/04/22/removing-blockers-for-block-themes/\">fixing upload issues for block themes</a>.</li><li><a href=\"https://wordpress.org/news/2021/04/people-of-wordpress-tyler-lau/\">Tyler Lau</a> from the U.S. was featured in April’s <a href=\"https://wordpress.org/news/category/heropress/\">People of WordPress</a>.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it using this form</em></a><em>.</em></p>\n\n\n\n<p><em>The following folks contributed to April’s Month in WordPress: <a href=\'https://profiles.wordpress.org/andreamiddleton/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>andreamiddleton</a> <a href=\'https://profiles.wordpress.org/cbringmann/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>cbringmann</a> <a href=\'https://profiles.wordpress.org/chaion07/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chaion07</a> <a href=\'https://profiles.wordpress.org/hlashbrooke/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>hlashbrooke</a> and <a href=\'https://profiles.wordpress.org/jrf/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jrf</a> </em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10253\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"Getting Started with the Figma WordPress Design Library\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wordpress.org/news/2021/04/getting-started-with-the-figma-wordpress-design-library/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 28 Apr 2021 17:52:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Uncategorized\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10173\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Get Started with the Figma WordPress Design Library! \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:26010:\"\n<p>Created by James Koster, (<a href=\'https://profiles.wordpress.org/jameskoster/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jameskoster</a>)</p>\n\n\n\n<p>As the name suggests, the WordPress Design Library is a library of WordPress design assets, enabling anyone to quickly create design prototypes for WordPress UI in Figma.</p>\n\n\n\n<p>These tools are useful for designers when creating new UI and for anyone looking to contribute ideas, enhancements, or even solutions to bug reports. Sometimes pictures really do speak a thousand words.</p>\n\n\n\n<p>In this post, we&#8217;ll talk about some key features of Figma before diving into a practical example that demonstrates some of the WordPress Design Library utilities.</p>\n\n\n\n<h2><strong>What Is Figma?</strong></h2>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/04/image8.png?resize=632%2C296&#038;ssl=1\" alt=\"\" class=\"wp-image-10174\" width=\"632\" height=\"296\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/04/image8.png?resize=1024%2C481&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/04/image8.png?resize=300%2C141&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/04/image8.png?resize=768%2C361&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/04/image8.png?resize=1536%2C722&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/04/image8.png?w=1770&amp;ssl=1 1770w, https://i2.wp.com/wordpress.org/news/files/2021/04/image8.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p><a rel=\"nofollow\" href=\"https://www.figma.com/\">Figma</a> is a collaborative design tool that members of the WordPress project&#8217;s design team have<a href=\"https://make.wordpress.org/design/2018/11/19/figma-for-wordpress/\"> been using</a> for several years to work on and share design concepts. It offers a variety of handy features such as: in-browser access, rich prototyping tools, component libraries, code inspectors, live embeds, inline commenting, plugins, and much much more.</p>\n\n\n\n<p>Perhaps best of all, it is totally free to sign up and start playing around. If you join the WordPress.org Figma organization (instructions below), you&#8217;ll gain access to the WordPress Design Library enabling you to design WordPress UI in no time.</p>\n\n\n\n<h2><strong>What Is the WordPress Design Library?</strong></h2>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>In Figma, you can share components and styles by publishing them, transforming your file into a library so that you can use instances of those components in other files.</p><p></p><p></p><cite><a rel=\"nofollow\" href=\"https://www.figma.com/best-practices/components-styles-and-shared-libraries/#:~:text=Libraries%3A%20In%20Figma%2C%20you%20can,instances%20of%20your%20components%20live.\">Figma.com</a></cite></blockquote>\n\n\n\n<p>It may be easiest to think of the WordPress Design Library as a visual representation of all the javascript components that compose UI in the WordPress codebase. As an end user of the library, you can use those components in a self-contained environment to create new interface designs. It&#8217;s kind of like a big LEGO box containing all the UI pieces (buttons, form inputs, etc.) that you can use to create and try out new designs.</p>\n\n\n\n<figure class=\"wp-block-jetpack-image-compare\"><div class=\"juxtapose\" data-mode=\"horizontal\"><img loading=\"lazy\" id=\"10175\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image13.png?resize=632%2C340&#038;ssl=1\" alt=\"\" width=\"632\" height=\"340\" class=\"image-compare__image-before\" data-recalc-dims=\"1\" /><img loading=\"lazy\" id=\"10176\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image6.png?resize=632%2C340&#038;ssl=1\" alt=\"\" width=\"632\" height=\"340\" class=\"image-compare__image-after\" data-recalc-dims=\"1\" /></div></figure>\n\n\n\n<p>Creating designs with these assets enables rapid ideation on new interfaces by removing mundane processes that one would ordinarily have to work through. Nobody wants to repeatedly double-check that the button they made perfectly matches the buttons rendered by the code! And on the flip-side of that coin, anyone sharing a design with others will generally endeavor to make specific elements (like buttons) match what exists in the code as closely as possible. The WordPress Design Library solves both these headaches and more.</p>\n\n\n\n<p>An additional benefit to these assets visually matching what exists in the codebase is that any designs you create with them will inherently make use of the latest WordPress design language and consequently <em>feel</em> like WordPress with almost no effort required. Passing such designs on to developers makes them easier to interpret and implement too.</p>\n\n\n\n<h2><strong>Figma Fundamentals</strong></h2>\n\n\n\n<p>Before getting into the practical section of this post, let&#8217;s quickly cover some of the fundamental features of Figma libraries. This will help prepare us for working with the WordPress Design Library.</p>\n\n\n\n<h3><strong>Components</strong></h3>\n\n\n\n<p>As we touched on above, the library consists of &#8220;components&#8221; that serve as visual counterparts to their code-based equivalents. That is to say, there is a Button component in Figma, <em>and</em> a matching Button component in the WordPress codebase.</p>\n\n\n\n<p>But what <em>is</em> a Figma component?</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Components are elements you can reuse across your designs. They help to create and manage consistent designs across projects.</p><p></p><cite><a rel=\"nofollow\" href=\"https://help.figma.com/hc/en-us/articles/360038662654-Guide-to-Components-in-Figma\">help.figma.com</a></cite></blockquote>\n\n\n\n<p>Let&#8217;s quickly explore some of the properties of Figma components to understand the ways they help when working on our next design.</p>\n\n\n\n<h3><strong>Variants</strong></h3>\n\n\n\n<p>Some Figma components offer variants. One example is Button(s) which all have the following states:</p>\n\n\n\n<ul><li>Resting</li><li>Hover</li><li>Focus</li><li>Disabled</li></ul>\n\n\n\n<p>These can be manipulated via the variants interface in Figma:</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"449\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image7-2.gif?resize=632%2C449&#038;ssl=1\" alt=\"\" class=\"wp-image-10179\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image7-2.gif?resize=1024%2C727&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2021/04/image7-2.gif?resize=300%2C213&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2021/04/image7-2.gif?resize=768%2C545&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>Other examples of components with variants are form inputs and menu items. Variants are a new feature in Figma, so we&#8217;ll be adding more over time.</p>\n\n\n\n<h3><strong>Overrides</strong></h3>\n\n\n\n<p>Although any components you insert are intrinsically linked to the master component in the library, it is possible to override some properties.</p>\n\n\n\n<p>While working with an instance of the Button component, you can change things like the label, or even the background color, while maintaining the link to the master component in the library. If you&#8217;re familiar with git workflows, this is kind of like creating a local branch. Any changes you make can easily be reset in a couple of clicks.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"527\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/04/image10.gif?resize=632%2C527&#038;ssl=1\" alt=\"\" class=\"wp-image-10180\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/04/image10.gif?resize=1024%2C854&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2021/04/image10.gif?resize=300%2C250&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2021/04/image10.gif?resize=768%2C641&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>Overrides made to your local instance will persist even when the master component is updated. So if your design calls for a button with a green background, you can apply that override safely with the knowledge that even if the master component is updated, your button can inherit those updates and remain green.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>We&#8217;ve only really scratched the surface of components here. So I would recommend the official <a rel=\"nofollow\" href=\"https://help.figma.com/hc/en-us/articles/360038662654-Guide-to-Components-in-Figma\">Figma documentation</a> for more advanced information.</p>\n\n\n\n<h3><strong>Figma Styles</strong></h3>\n\n\n\n<p>In addition to components, styles are also published as part of the WordPress Design Library. They have similar properties to components in that a master style exists in the library and can be utilized in your local Figma file. Just like Components, Styles will receive updates when changes to the library are published.</p>\n\n\n\n<p>Styles are used to define colors, typographical rules, and effects like drop-shadows present in the WordPress codebase. They enable you to apply things like text or background colors that will match other UI parts.</p>\n\n\n\n<p>Using Styles from the library, you ensure that your creations match existing UI elements, making it easier to implement.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"799\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image11.png?resize=632%2C799&#038;ssl=1\" alt=\"\" class=\"wp-image-10181\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image11.png?resize=810%2C1024&amp;ssl=1 810w, https://i1.wp.com/wordpress.org/news/files/2021/04/image11.png?resize=237%2C300&amp;ssl=1 237w, https://i1.wp.com/wordpress.org/news/files/2021/04/image11.png?resize=768%2C971&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2021/04/image11.png?w=1152&amp;ssl=1 1152w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>To learn more about styles in Figma, I recommend the <a rel=\"nofollow\" href=\"https://help.figma.com/hc/en-us/articles/360039238753-Styles-in-Figma\">official documentation</a>.</p>\n\n\n\n<h3><strong>Views and Stickers</strong></h3>\n\n\n\n<p>&#8220;Stickers&#8221; are simply arrangements of Components and Styles that have been combined to represent common UI elements. They are not good candidates for full componentization due to their frequent customization needs. Examples of Stickers include the Inspector sidebar and the block inserter:</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"770\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image16.png?resize=632%2C770&#038;ssl=1\" alt=\"\" class=\"wp-image-10182\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image16.png?resize=841%2C1024&amp;ssl=1 841w, https://i1.wp.com/wordpress.org/news/files/2021/04/image16.png?resize=246%2C300&amp;ssl=1 246w, https://i1.wp.com/wordpress.org/news/files/2021/04/image16.png?resize=768%2C935&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2021/04/image16.png?w=1113&amp;ssl=1 1113w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>Their utility is simple: find the sticker you need, peel (copy) it from the WordPress Design Library, and stick (paste) it into your local file before customizing as needed.</p>\n\n\n\n<p><em>Stickers</em> are not Figma features like Components and Styles, but any stickers you copy to a working file will stay up to date by virtue of their underlying assets.</p>\n\n\n\n<p><em>Views</em> are arrangements of components, styles, <em>and</em> stickers.</p>\n\n\n\n<h2><strong>Designing a Block Using the WordPress Design Library</strong></h2>\n\n\n\n<p>Okay, now that we have a handle on the basics of Figma libraries and their features and the utilities of the WordPress Design Library like Stickers and Views, let&#8217;s work through a practical example – designing the UI for a brand new block.</p>\n\n\n\n<h3><strong>Getting Started</strong></h3>\n\n\n\n<p>All you need to get started is a Figma account added to the WordPress.org Figma organization.</p>\n\n\n\n<p>Once you&#8217;ve signed up at<a href=\"https://www.figma.com/\"> Figma</a>, simply join the<a href=\"http://wordpress.slack.com/messages/design/\"> #Design</a> channel on the community Slack and request an invite. Include your Figma username, and a friendly community member will help get you set up in no time.</p>\n\n\n\n<p>Now the fun begins!</p>\n\n\n\n<p>To create a fresh new design file in Figma, visit the<a href=\"https://www.figma.com/files/project/1339415/Gutenberg?fuid=652576565531990233\"> Gutenberg project</a> and click the &#8220;+ New&#8221; button.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"395\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/04/image15.png?resize=632%2C395&#038;ssl=1\" alt=\"\" class=\"wp-image-10183\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/04/image15.png?resize=1024%2C640&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/04/image15.png?resize=300%2C187&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/04/image15.png?resize=768%2C480&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/04/image15.png?w=1469&amp;ssl=1 1469w, https://i2.wp.com/wordpress.org/news/files/2021/04/image15.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>Now let&#8217;s include the WordPress Design Library in our working file so that we have access to all the goodies we&#8217;ll need:</p>\n\n\n\n<ol><li>Open the &#8220;Assets&#8221; panel and click the little book icon to view the available Team Libraries.</li><li>In the modal, toggle the WordPress Design Library on. You can leave the others off for now.</li></ol>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"341\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image18.gif?resize=632%2C341&#038;ssl=1\" alt=\"\" class=\"wp-image-10184\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image18.gif?resize=1024%2C553&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2021/04/image18.gif?resize=300%2C162&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2021/04/image18.gif?resize=768%2C415&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2021/04/image18.gif?resize=1536%2C829&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2021/04/image18.gif?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>After closing the modal, you&#8217;ll notice a number of components become visible in the assets panel. To insert them, they can be dragged on to the canvas:</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"341\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image5.gif?resize=632%2C341&#038;ssl=1\" alt=\"\" class=\"wp-image-10185\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image5.gif?resize=1024%2C553&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2021/04/image5.gif?resize=300%2C162&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2021/04/image5.gif?resize=768%2C415&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2021/04/image5.gif?resize=1536%2C829&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2021/04/image5.gif?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>It&#8217;s kind of like inserting a block <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<h3><strong>Creating a Pizza Block <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f355.png\" alt=\"🍕\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></strong></h3>\n\n\n\n<p>I love to eat pizza, so for fun, I&#8217;m going to design a new block that simply allows the user to display a delicious pizza in their posts and pages. I want the block to include options for a total number of slices and different toppings.</p>\n\n\n\n<h3><strong>Work Out the Flow</strong></h3>\n\n\n\n<p>I always like to concentrate on individual flows when designing blocks. That is to say, the linear steps a user will take when working with that block. In this case, I want to create visualizations of the following steps/views in our Figma file:</p>\n\n\n\n<ol><li>Inserting the block from the Block Inserter</li><li>The Pizza Block placeholder state including options in the block, its Toolbar, and the Inspector</li><li>The configured Pizza Block settings</li><li>The end result – a delicious pizza sitting comfortably on the canvas</li></ol>\n\n\n\n<h3><strong>Sketch the New States</strong></h3>\n\n\n\n<p>Thanks to the WordPress Design Library, I&#8217;ll be using as many existing UI components as possible, but I still need a rough idea of how they will be composed in the new interfaces that my Pizza block will require. I normally find it helpful to sketch these out on paper.</p>\n\n\n\n<p>Here&#8217;s the placeholder state which users will see when they first insert the block. This should be all I need:</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"843\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image2.png?resize=632%2C843&#038;ssl=1\" alt=\"\" class=\"wp-image-10186\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image2.png?w=768&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2021/04/image2.png?resize=225%2C300&amp;ssl=1 225w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h3><strong>Prepare the Views and Stickers</strong></h3>\n\n\n\n<p>Helpfully, there are Views in the WordPress Design Library I can use for each of the steps in the flow outlined above.</p>\n\n\n\n<p>I open the library, navigate to the Views page, find the views I need, copy them, and paste into my working file.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"374\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/04/image3.gif?resize=632%2C374&#038;ssl=1\" alt=\"\" class=\"wp-image-10187\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/04/image3.gif?resize=1024%2C606&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/04/image3.gif?resize=300%2C178&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/04/image3.gif?resize=768%2C455&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/04/image3.gif?resize=1536%2C910&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/04/image3.gif?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>It is very important to <strong>copy</strong> (not cut) Views from the library so that they remain intact and other people can still access them. If you cut them, they&#8217;ll be gone forever, so please don&#8217;t do that <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>I&#8217;m also going to need a block placeholder sticker, so I navigate to the Stickers page, copy the one that most closely resembles my sketch from before, and paste it into my working file.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"374\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image12.gif?resize=632%2C374&#038;ssl=1\" alt=\"\" class=\"wp-image-10188\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image12.gif?resize=1024%2C606&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2021/04/image12.gif?resize=300%2C178&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2021/04/image12.gif?resize=768%2C455&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>As with views, please only <strong>copy</strong> stickers; do not cut them.</p>\n\n\n\n<h3><strong>Gather the Components</strong></h3>\n\n\n\n<p>Referring back to the placeholder state I sketched out on paper (it can be helpful to import this into your Figma file), I can see that I&#8217;m going to need some form elements to realize the design.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"446\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/04/image4.png?resize=632%2C446&#038;ssl=1\" alt=\"\" class=\"wp-image-10189\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/04/image4.png?resize=1024%2C722&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/04/image4.png?resize=300%2C211&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/04/image4.png?resize=768%2C541&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/04/image4.png?resize=1536%2C1083&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/04/image4.png?w=1999&amp;ssl=1 1999w, https://i2.wp.com/wordpress.org/news/files/2021/04/image4.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2021/04/image4.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>I navigate to the Assets panel, locate the components I need, and drag them into my file:</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://lh5.googleusercontent.com/UDyZdtZGo9N0e2qwgyIyz8V3xu9_zwGW9qBbBnozvwmXmVYURZ-ROLANtW7FafWYbQRnPQNWeRupk_9_1nzmKn8gRBlYDMKYR3QpwAubv8ZKAPMS_uV9VaYHsjfPItfqPiY0d1X5\" alt=\"\" /></figure>\n\n\n\n<p>Helpful tip: Once a component has been inserted, you can transform it into another component via its settings panel. Sometimes it is easier to copy/paste a component you already inserted and transform it this way, rather than opening the assets panel over and over.</p>\n\n\n\n<h3><strong>Arrange the Views, Stickers, and Components to Create a Coherent Design</strong></h3>\n\n\n\n<p>Now that we’ve gathered all the individual pieces we need, it&#8217;s simply a case of arranging them so that they resemble each of the steps of the flow we outlined before. This is done with simple drag and drop.</p>\n\n\n\n<p>If you&#8217;re familiar with software like Photoshop, Sketch, and others, this should feel very familiar.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://lh3.googleusercontent.com/DVeU3I9ajqRvMD_e5q6G5vctb4TGbgA9CsIR9xYZ3yPqtmPhbDP9cODTHH4KS-I8GB9R4UF2DV6SSsayKpy45AEDvvY2gLbMsCA0ivfsqGcm509OWeTOpaMuQcv7TFz6-xoiKFfo\" alt=\"\" /></figure>\n\n\n\n<p>Once everything is in place, our flow is complete:</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image14-1.png?ssl=1\"><img loading=\"lazy\" width=\"632\" height=\"97\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image14-1.png?resize=632%2C97&#038;ssl=1\" alt=\"\" class=\"wp-image-10238\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/image14-1.png?resize=1024%2C157&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2021/04/image14-1.png?resize=300%2C46&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2021/04/image14-1.png?resize=768%2C118&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2021/04/image14-1.png?resize=1536%2C235&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2021/04/image14-1.png?w=1999&amp;ssl=1 1999w, https://i1.wp.com/wordpress.org/news/files/2021/04/image14-1.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2021/04/image14-1.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></a></figure>\n\n\n\n<p>I still find it incredible that we&#8217;re able to do this in just a few short moments.</p>\n\n\n\n<h3><strong>Hook up the Prototype</strong></h3>\n\n\n\n<p>With each step of our flow created, the last piece of the puzzle is to connect them and form a clickable prototype.</p>\n\n\n\n<p>I switch to the Prototype panel and create click behaviors by selecting a layer, then dragging the white dot to the corresponding frame.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://lh5.googleusercontent.com/i0fLdjWZhRTNFCKvHLLEfUnFx5CIm7p014R1avEV02F_B4DrG1v6Cw-XqYBth9JVYylylM7_mkqcALWEWcUVf0dRhgixJRtmsRIDHyMIZyom2cPdetMAFixgsvsmrqT03Xevync7\" alt=\"\" /></figure>\n\n\n\n<p>There are a variety of behaviors that the Figma prototyping tools support, such as a hover, drag, and click. It is even possible to create smart animations. Perhaps that&#8217;s something we can explore in another tutorial, but for now, I will refer you to the <a rel=\"nofollow\" href=\"https://help.figma.com/hc/en-us/articles/360040314193-Guide-to-prototyping-in-Figma\">Figma documentation</a> for more advanced prototyping.</p>\n\n\n\n<p>Now that I&#8217;ve connected all the appropriate elements, I am able to take my prototype for a test drive by clicking the Play <img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/25b6.png\" alt=\"▶\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> icon:</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://lh3.googleusercontent.com/nBmEr4ohZ8RsjLM5wm4u8UY_zzTE0V1bXj-uoNV79WDibl5bgkZXY64ixl_BgNutg74fvxRZokUtLzWuWVlD46W4tAD_-Dcf-TclgIR9UoO73oCmNxmfcSEmUDgDG0e5WYFJ80tH\" alt=\"\" /></figure>\n\n\n\n<p>You can try it too; just click <a href=\"https://www.figma.com/proto/BmRYWzfrakFwsmIQa24xqx/Pizza-Block?page-id=0%3A1&amp;node-id=48%3A767&amp;viewport=1792%2C385%2C0.46477335691452026&amp;scaling=min-zoom\">here</a>.</p>\n\n\n\n<h2><strong>That&#8217;s All, Folks!</strong></h2>\n\n\n\n<p>I tried to keep this tutorial fairly simple and concise; even though we only really got to grips with the basics here, you can see the power of Figma and the WordPress Design Library when it comes to trying out new designs.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10173\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Curious About Full Site Editing?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2021/04/curious-about-full-site-editing/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Apr 2021 17:26:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10190\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:296:\"The second major release of the year is right around the corner. You might have heard a bit of buzz about full site editing around your WordPress circles, so this post will give you some big picture things to know as well as a few wayfinding links for anyone who wants to know more. For [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2792:\"\n<p>The second major release of the year is right around the corner. You might have heard a <a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">bit of buzz</a> about full site editing around your WordPress circles, so this post will give you some big picture things to know as well as a few wayfinding links for anyone who wants to know more.</p>\n\n\n\n<p><strong>For Site Owners and Operators</strong></p>\n\n\n\n<p>If you own and operate a WordPress site, updating to version 5.8 should be a seamless experience, just like any other update. All the conversation around full site editing is very exciting, but shouldn’t be alarming—<strong>everything in the next release that relates to full site editing is opt-in</strong>. To experiment freely with it, you need a theme that is built for it. Check the links at the end to see a few examples!</p>\n\n\n\n<p><strong>For Agencies and Theme/Plugin Developers</strong></p>\n\n\n\n<p>If you extend the functionality of the WordPress CMS for clients, updating to version 5.8 should also be seamless. As always, it’s smart to spot-check custom implementations in a staging environment or fully test when the release candidate is made available. Want to test your products and get everything client-ready? Check out any of the testing options below.</p>\n\n\n\n<p><strong>For Contributors and Volunteers</strong></p>\n\n\n\n<p>If you contribute time and expertise to the WordPress project, you can join us in the interesting work leading up to the WordPress 5.8 release and update your site with the deep satisfaction of a job well done. There is a lot that goes into every release—from design and development to documentation and translation; if you’ve got some time to spare, and want to help support the project that supports the tool that supports your site (whew!), check out the links below.</p>\n\n\n\n<h2>Resources</h2>\n\n\n\n<ul><li>A few block themes: <a href=\"https://wordpress.org/themes/tt1-blocks/\">TT1 Blocks</a>, <a href=\"https://wordpress.org/themes/hansen/\">Hansen</a>, <a href=\"https://wordpress.org/themes/block-based-bosco/\">Block-based Bosco</a>, <a href=\"https://wordpress.org/themes/q/\">Q</a></li><li>A few focus areas: <a href=\"https://make.wordpress.org/core/2021/04/20/full-site-editing-go-no-go-next-steps/\">Gutenberg plugin focuses</a></li><li>A few ways you can test: <a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg plugin</a>, <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">Beta testing plugin</a>, <a href=\"https://gutenbergtimes.com/need-a-zip-from-master/#nightly\">Gutenberg Times nightly build</a></li><li>A few pieces of documentation: <a href=\"https://developer.wordpress.org/block-editor/handbook/full-site-editing/\">Full Site Editing Overview</a></li></ul>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10190\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:58:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WP Briefing: Your Opinion is Our Opportunity\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2021/04/your-opinion-is-our-opportunity/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 26 Apr 2021 15:24:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"wp-briefing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=10171\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:148:\"In this episode, Josepha discusses the importance of co-development and testing for the continued growth and maintenance of the WordPress project. \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2021/04/WP-Briefing-007.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:0:\"\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:13068:\"\n<p>In this episode, Josepha discusses the importance of co-development and testing for the continued growth and maintenance of the WordPress project.&nbsp;</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to <a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2><strong>Credits</strong></h2>\n\n\n\n<ul><li>Editor:<a href=\"https://profiles.wordpress.org/dustinhartzler/\"> Dustin Hartzler</a></li><li>Logo:<a href=\"https://profiles.wordpress.org/beafialho/\"> Beatriz Fialho</a></li><li>Production:<a href=\"https://profiles.wordpress.org/mkaz/\"> </a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a></li><li>Song: Fearless First by Kevin MacLeod</li></ul>\n\n\n\n<h2>References</h2>\n\n\n\n<ul><li><a href=\"https://wordpress.org/news/2008/10/usability-testing-report-25-and-crazyhorse/\">2.5 Usability Testing Report&nbsp;</a></li><li><a href=\"https://europe.wordcamp.org/2021/\">WordCamp Europe 2021</a></li><li><a href=\"https://www.meetup.com/Pune-WordPress-Knowledge-Exchange/events/277520243/\">Pune Work Along (Self Study) Meetup</a></li><li><a href=\"https://fr.wordpress.org/2021/04/09/le-30-avril-2021-rejoignez-nous-pour-un-nouveau-wordpress-translation-day-fr/\">French Mini-Translation Day, April 30, 2021</a></li><li><a href=\"https://make.wordpress.org/core/2021/04/15/full-site-editing-go-no-go-april-14-2021/\">April 14, 2021, Full Site Editing Go/No-Go Demo Recap</a></li><li><a href=\"https://make.wordpress.org/core/2021/04/20/full-site-editing-go-no-go-next-steps/\">Full Site Editing Go/No-Go Next Steps</a></li><li><a href=\"https://make.wordpress.org/test/\">Test WordPress.org</a></li></ul>\n\n\n\n<h2>Transcript</h2>\n\n\n\n<span id=\"more-10171\"></span>\n\n\n\n<p>0:10</p>\n\n\n\n<p>Hello, everyone, and welcome to the WordPress briefing, the podcast where you can catch quick explanations of some of the ideas behind the WordPress open source project and the community around it, as well as get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go!</p>\n\n\n\n<p>0:39</p>\n\n\n\n<p>Prior to Gutenberg, our current multi-year project that is changing the way we see WordPress, another multi-year project changed the way we saw WordPress. Starting in 2008, substantial changes to the WordPress interface came in a series of major releases, starting with WordPress 2.5. That was before my time in the project; I&#8217;ve only ever worked with the current dashboard in WordPress. But, from what I&#8217;ve read, the user testing that would have gone into it was a huge undertaking and very well coordinated. Now, WordPress has not taken on that type of robust testing project since, but starting around 2014 or 2015, a community testing practice was started. I&#8217;ve shared these calls for testing frequently, both on Twitter and in this podcast. But you may not really know why I find the testing program so valuable. So today, I&#8217;m going to explore with you the concept of co-developers in open source.</p>\n\n\n\n<p>1:52</p>\n\n\n\n<p>Open source software, like WordPress, is built by the people who show up. There are a few obvious groups when you think of software, the developers, designers, technical writers, folks who monitor the forums, and really, all the teams you find in our WordPress project. Co-developers or co-creators, if you&#8217;ll join me in making our tent a little bigger, refers to the users of an open source product who actively engage and contribute to the work by using the software and sharing any bugs that they find.</p>\n\n\n\n<p>2:25</p>\n\n\n\n<p>I mentioned this group in the episode about how WordPress improves. Specifically in that episode, I underlined that if you consider users to be part of the collaborative process, as long as people use your product, those people will have opinions about your product’s needs. And today, I&#8217;m extending that thought a bit further to say that, as long as there are opinions, there are opportunities.</p>\n\n\n\n<p>2:51</p>\n\n\n\n<p>When you know what isn&#8217;t working, you can focus your attention on a solution, you can focus on making sure that you can make it work. The existence of co-creators is one of the great things about open source. No designer or developer or product owner has to know every sort of user to be able to get feedback from them. If they show up, test the software and get their thoughts written down, then you can start to see patterns and common pain points. It is also, unfortunately, one of the great difficulties of being an open source project. After all, if users don&#8217;t show up, or don&#8217;t test, or don&#8217;t write down their feedback, it&#8217;s impossible to know what worked for them and what didn&#8217;t. And on top of that, with such a large percentage of the web being supported by WordPress in this case, not every problem is part of a pattern. And not all patterns are part of the current priorities.</p>\n\n\n\n<p>3:54</p>\n\n\n\n<p>Looking beyond that double-edged sword. Let&#8217;s say that this idea of a co-creator makes sense to you. And more than that, you feel like it describes you. What does it mean for you to show up in WordPress? There are lots of good ways to offer this sort of feedback and contribute to those patterns that can help us see through the fog. So I have for you a mini list and, of course, a bunch of links in the show notes for you.&nbsp;</p>\n\n\n\n<p>So some good ways. First, you can participate in any of the dedicated calls for testing. They are short and frequently have a guide. I participate in them and generally find them fun. I say generally because sometimes I also find them frustrating. That&#8217;s really okay too; the frustrations helped me to identify that I found a problem. And if I can find a problem, then I have saved someone else from finding that problem in the future. The second thing you can do is file a bug report with information about what happened when you ran into a problem and how someone like me could make your bug happen on their site. Bug</p>\n\n\n\n<p>5:00</p>\n\n\n\n<p>Reporting is one of the things I&#8217;ve grown to really love in my time and open source; I did not love it. At first, I was really scared to do it. I mostly used to send videos of the bugs that I found to other people and ask them to file the bug reports for me. But then, of course, I never knew whether they got fixed or not. So I was scared to do it at first. But once I figured out what makes a “good report,” I felt like I was helping circle hidden treasure on a map or something. I realized also not everyone&#8217;s excited about finding hidden treasure on a map. But I play video games and finding hidden treasure on maps is, like, a thing.</p>\n\n\n\n<p>5:43</p>\n\n\n\n<p>A third really great way to contribute like this is that you can join any community meeting to learn more about what&#8217;s happening now and in the future, or just to see what makes WordPress work. As a heads up, these meetings go really fast. And they&#8217;re all in text. And there&#8217;s sometimes, but not all the time, a little bit of jargon that you have to head to your favorite search engine to find. But I sit in on about half of them myself and get a lot of really good information about things that I&#8217;ve been wondering about, things that looked broken, but actually are functioning exactly the way that they should. And I just didn&#8217;t want them to function that way. And more often than not, I found out that something that I thought was broken, was already identified and being fixed. Those are three great ways to show up and help give feedback that helps make WordPress better and more functional for more people.&nbsp;</p>\n\n\n\n<p>There are also a few other ways that we see people trying to share that feedback that don&#8217;t work quite as well. And I&#8217;m going to touch on a few of them just because it&#8217;s important to know, as you&#8217;re trying to figure out how to get started with this. The first one is just tweeting your frustrations, and I get it like that&#8217;s literally what Twitter is for.</p>\n\n\n\n<p>7:03</p>\n\n\n\n<p>But also it&#8217;s hard to create a block from “I am frustrated, behold my hateful rhetoric.” Not that any of you, my dear listeners, ever tweet hateful rhetoric. Still, that is really hard for anyone to figure out what was actually wrong in that moment. Another thing that is not the most functional way to give feedback is review brigading. The Internet rewards this kind of behavior, but I have found at least for WordPress, those false positives and false negatives can be really confusing for our new users. And the third way, that&#8217;s not our best way, and probably is the least best way, is just by giving up and not telling anyone what broke for you.</p>\n\n\n\n<p>7:45</p>\n\n\n\n<p>I know that I already said it&#8217;s not possible to fix everyone&#8217;s problems. But while it&#8217;s not possible to fix everyone&#8217;s problems the moment they get shared, it&#8217;s also truly impossible to fix any problems that no one knows exist. And so giving up and not sharing an issue so that we can identify it as part of a pattern of problems is probably the least effective way to help us help you get your problem solved.</p>\n\n\n\n<p>8:13</p>\n\n\n\n<p>This brings me back to the question of the value of WordPress users as co creators in the development process. As WordPress grows, both in usage as a CMS and in participation as a community, it&#8217;s important for us to shed the idea that software creation is only about what literally can be done to code or what literally can be done to core or what literally can be done to the CMS. It&#8217;s also important for us to constantly remind ourselves that the best outcomes are the result of collaboration with the people who use WordPress the most. I know that not every type of user we have is showing up to give us feedback about where WordPress doesn&#8217;t work for them. And I would love to see more feedback that helps us to figure out where our patterns are.</p>\n\n\n\n<p>9:03</p>\n\n\n\n<p>So the bottom line is this without user feedback that has some clarity of what was expected versus what happened, the work to make a good choice involves a whole lot of guessing. So since open source software is built by the people who show up, I hope this gives you an idea of how you can show up and help improve the tool that powers your sites.</p>\n\n\n\n<p>9:32</p>\n\n\n\n<p>That brings us to today&#8217;s community highlight every episode or so I share either a great story of WordPress success or a great story of a WordPress contributor who helped some folks along the way. Today&#8217;s <a href=\"https://twitter.com/trishacodes/status/1357382647274762244\">community highlight</a> comes from @trishacodes who shared one of her early to WordPress mentors. She says “@RianRietveld was such an encouragement and helped me find the courage to speak up.” I have had myself many conversations with <a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian</a>, and that rings true for me as well.&nbsp;</p>\n\n\n\n<p>10:00</p>\n\n\n\n<p>That brings us to the moment you&#8217;ve all been waiting for, the small list of big things. It&#8217;s actually kind of a medium list. Today, I&#8217;ve got four whole things to share with you all. The first thing on my list is that WordCamp Europe is coming, that will be June 7th through the 10th. It&#8217;s a multi-day online event. I will share in the show notes a link to the main website; there you can get an idea of what will happen, the schedule, and get your hands on some tickets so that you can get it in your calendar and prepare yourselves.&nbsp;</p>\n\n\n\n<p>The second thing I want to share is for all of our polyglots out there. The French team is planning a translation day coming up on April 30. I will share a link to that as well so that you can get an idea of what that takes if you&#8217;re feeling like you want to do some translation work. The third thing I want to share is that the Indian community in Pune actually started a new meetup series. It is a translation work along self-study &#8211; also for all of our polyglots out there. I would love to see as many people as are interested in both learning about how to do translations and certainly translating WordPress get registered for that. A final thing I want to share with you all is that if you are curious about what full site editing features will be included in the 5.8 release, that&#8217;s the WordPress release that&#8217;s coming out in the middle of July, you can check out my recap and recording of the demo that was held with Matt, Matias, and the rest of the team. There’s are also a number of other posts of next step ideas that I will share in the show notes as well.</p>\n\n\n\n<p>11:51</p>\n\n\n\n<p>That, my friends, is your small list of big things. Thank you for joining in today for the WordPress briefing. I&#8217;m your host, Josepha Haden Chomphosy. I&#8217;ll see you again in a couple of weeks!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10171\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Become an Early Adopter With the Gutenberg Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wordpress.org/news/2021/04/become-an-early-adopter-with-the-gutenberg-plugin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 21 Apr 2021 21:03:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:13:\"Uncategorized\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10164\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:372:\"Copy by Anne McCarthy (@annezazu) and Design by Mel Choyce-Dwan (@melchoyce) In WordPress circles (whether it’s your local meetup, a trusted publication, or your networking group), you may have heard terms like Core Editor, Gutenberg, and the Block Editor used interchangeably over the last four years. And if you’re following contributor work on the project [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4695:\"\n<p><strong><em>Copy by Anne McCarthy (<a href=\'https://profiles.wordpress.org/annezazu/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>annezazu</a>) and Design by Mel Choyce-Dwan (<a href=\'https://profiles.wordpress.org/melchoyce/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>melchoyce</a>)</em></strong></p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?resize=632%2C354&#038;ssl=1\" alt=\"\" class=\"wp-image-10165\" width=\"632\" height=\"354\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?resize=1024%2C575&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?resize=768%2C431&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/04/Frame-1.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p>In WordPress circles (whether it’s your local meetup, a trusted publication, or your networking group), you may have heard terms like Core Editor, Gutenberg, and the Block Editor used interchangeably over the last four years. And if you’re following contributor work on the project itself, you may also have heard some additional nuances—Gutenberg plugin, Gutenberg, or Block Editor.&nbsp;</p>\n\n\n\n<p>It can get a little confusing, so let’s take a look at four terms that will help you find your way:&nbsp;</p>\n\n\n\n<ul><li>WordPress &#8211; WordPress refers to the open source software but also to the community that surrounds it.&nbsp;</li><li>Gutenberg &#8211; Gutenberg is the code name for a multi-year project to update editing areas for the WordPress software.</li><li>Editor &#8211; The editor refers to a section of the software that allows you to update content on your site’s posts and pages.&nbsp;</li><li>Gutenberg Plugin &#8211; The Gutenberg plugin is where early work to update the editor is shared.</li></ul>\n\n\n\n<h2>The Gutenberg Plugin</h2>\n\n\n\n<p>Now that we’ve cleared up the definitions, let’s talk about the plugin. When might you use it? What would you use it for? You can think of it as an early access program or a “WordPress lab.” The plugin is updated every two weeks, which means that bugs that have been reported are often fixed and that what you see changes rapidly.&nbsp;</p>\n\n\n\n<p>The Gutenberg plugin also contains features that aren’t yet ready for their WordPress debut but are ready for curious users to test and provide feedback. This is a common practice that allows stable features to make it to your site in WordPress releases while allowing experimental features to be tested and refined. To get a sense of whether using the Gutenberg Plugin might be something you want to explore to get access to earlier features, check out the <a href=\"https://make.wordpress.org/core/tag/gutenberg-new/\">“What’s New” release posts </a>and the <a href=\"https://make.wordpress.org/core/tag/core-editor-improvement/\">Core Editor Improvement post series</a>. </p>\n\n\n\n<h2>Do I Need the Plugin to Use Gutenberg?</h2>\n\n\n\n<p>It depends on your comfort level! Generally speaking, it is not recommended to use the plugin on a site that has launched and is actively in use unless you’re very comfortable with the code side of WordPress. Fortunately, each WordPress release comes ready to go with <a href=\"https://developer.wordpress.org/block-editor/handbook/versions-in-wordpress/\">multiple versions of the Gutenberg plugin</a>.&nbsp;</p>\n\n\n\n<p>But if you are a keen beta tester who loves reporting feedback, or you feel comfortable navigating how to opt-in/out of the experimental aspects of the plugin, here are a few reasons you might want to dig into what the Gutenberg Plugin has to offer:</p>\n\n\n\n<ul><li>Test new features and give helpful feedback. For example, you can use the plugin to <a href=\"https://make.wordpress.org/test/handbook/full-site-editing-outreach-experiment/how-to-test-fse/\">help test Full Site Editing</a>.&nbsp;</li><li>Get early access to the latest &amp; greatest while navigating when to opt-in or out of experimental features.&nbsp;</li><li>Prepare for the future whether you’re a theme author, plugin developer, agency owner, etc.&nbsp;</li></ul>\n\n\n\n<p><em>Do you use the Gutenberg plugin and </em><a href=\"https://github.com/WordPress/gutenberg/issues\"><em>share feedback on GitHub</em></a><em>? Thank you! This kind of feedback is what helps ensure stability in what’s shipped in WordPress releases.&nbsp;</em></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10164\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 5.7.1 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2021/04/wordpress-5-7-1-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Apr 2021 03:05:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10144\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:365:\"WordPress 5.7.1 is now available! This security and maintenance release features 26 bug fixes in addition to two security fixes. Because this is a security release, it is recommended that you update your sites immediately. All versions since WordPress 4.7 have also been updated. WordPress 5.7.1 is a short-cycle security and maintenance release. The next [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Peter Wilson\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8461:\"\n<p>WordPress 5.7.1 is now available!</p>\n\n\n\n<p>This security and maintenance release features <a href=\"https://core.trac.wordpress.org/query?milestone=5.7.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">26 bug fixes</a> in addition to two security fixes. Because this is a <strong>security release</strong>, it is recommended that you update your sites immediately. All versions since WordPress 4.7 have also been updated.</p>\n\n\n\n<p>WordPress 5.7.1 is a short-cycle security and maintenance release. The next major release will be version 5.8.</p>\n\n\n\n<p>You can download WordPress 5.7.1 by downloading from WordPress.org, or visit your Dashboard → Updates and click Update Now.</p>\n\n\n\n<p>If you have sites that support automatic background updates, they’ve already started the update process.</p>\n\n\n\n<h3>Security Updates</h3>\n\n\n\n<p>Two security issues affect WordPress versions between 4.7 and 5.7. If you haven’t yet updated to 5.7, all WordPress versions since 4.7 have also been updated to fix the following security issues:</p>\n\n\n\n<ul><li>Thank you <a href=\"https://www.sonarsource.com/\">SonarSource</a> for reporting an XXE vulnerability within the media library affecting PHP 8.</li><li>Thanks <a href=\"https://mikaelkorpela.fi/\">Mikael Korpela</a> for reporting a data exposure vulnerability within the REST API.</li></ul>\n\n\n\n<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing the vulnerabilities</a>. This gave the security team time to fix the vulnerabilities before WordPress sites could be attacked.</p>\n\n\n\n<p>Props to <a href=\"https://profiles.wordpress.org/zieladam/\">Adam Zielinski</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">Ehtisham Siddiqui</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a> and the WordPress security team for their work on these issues.</p>\n\n\n\n<p>For more information, browse the <a href=\"https://core.trac.wordpress.org/query?milestone=5.7.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">full list of changes</a> on Trac, or check out the <a href=\"https://wordpress.org/support/wordpress-version/version-5-7-1/\">version 5.7.1 HelpHub documentation page</a>.</p>\n\n\n\n<h2>Thanks and props!</h2>\n\n\n\n<p>The 5.7.1 release was led by <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">@peterwilsoncc</a> and <a href=\"https://profiles.wordpress.org/audrasjb/\">@audrasjb</a>.</p>\n\n\n\n<p>In addition to the security researchers and release squad members mentioned above, thank you to everyone who helped make WordPress 5.7.1 happen:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/ninetyninew/\">99w</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/annalamprou/\">annalamprou</a>, <a href=\"https://profiles.wordpress.org/anotherdave/\">anotherdave</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/bobbingwide/\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/brechtvds/\">Brecht</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dkoo/\">dkoo</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dragongate/\">dragongate</a>, <a href=\"https://profiles.wordpress.org/eatsleepcode/\">eatsleepcode</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/kebbet/\">Erik</a>, <a href=\"https://profiles.wordpress.org/fabianpimminger/\">Fabian Pimminger</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/gab81/\">gab81</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/geoffrey1963/\">Geoffrey</a>, <a href=\"https://profiles.wordpress.org/mamaduka/\">George Mamadashvili</a>, <a href=\"https://profiles.wordpress.org/glendaviesnz/\">Glen Davies</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/grzim/\">grzim</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jaymanpandya/\">Jayman Pandya</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen A.</a>, <a href=\"https://profiles.wordpress.org/jonkastonka/\">Johan Jonk Stenström</a>, <a href=\"https://profiles.wordpress.org/goaroundagain/\">Johannes Kinast</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joseeyoast/\">Josee Wouters</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/k3nsai/\">k3nsai</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">Kerry Liu</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">Mikhail Kobzarev</a>, <a href=\"https://profiles.wordpress.org/mmuyskens/\">mmuyskens</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nicegamer7/\">nicegamer7</a>, <a href=\"https://profiles.wordpress.org/otshelnik-fm/\">Otshelnik-Fm</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pwallner/\">pwallner</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rinatkhaziev/\">Rinat Khaziev</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/rogertheriault/\">Roger Theriault</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/yakimun/\">Sergey Yakimov</a>, <a href=\"https://profiles.wordpress.org/sirstuey/\">SirStuey</a>, <a href=\"https://profiles.wordpress.org/stefanjoebstl/\">stefanjoebstl</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/sumitsingh/\">Sumit Singh</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/synchro/\">Synchro</a>, <a href=\"https://profiles.wordpress.org/terriann/\">Terri Ann</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a>, <a href=\"https://profiles.wordpress.org/toru/\">Toru Miki</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, and <a href=\"https://profiles.wordpress.org/vladytimy/\">Vlad T</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10144\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:63:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"People of WordPress: Tyler Lau\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wordpress.org/news/2021/04/people-of-wordpress-tyler-lau/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Apr 2021 13:47:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:16:\"ContributorStory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:17:\"WordPress journey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10102\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"In this People of WordPress contributor story, we chat with Tyler Lau from Kansas, US, on his journey with WordPress.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"webcommsat AbhaNonStopNewsUK\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:10363:\"\n<p><em>WordPress is open source software, maintained by a global network of contributors. There are many examples of how WordPress has changed people’s lives for the better. In this monthly series, we share some of the amazing stories that are lesser-known.</em></p>\n\n\n\n<h2><strong>Embrace Who You Are and Your Journey</strong></h2>\n\n\n\n<p>In this People of WordPress contributor story, we chat to Tyler Lau from the US on his relationship building work in marketing and his WordPress journey.</p>\n\n\n\n<p>Read on to discover his story which shows it is often what you have learned from negative experiences in your life that can make you a major asset to a product team.</p>\n\n\n\n<figure class=\"wp-block-image size-large is-resized\"><img loading=\"lazy\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-thumb.jpg?resize=632%2C464&#038;ssl=1\" alt=\"Tyler Lau stood in front of a colorful mural\" class=\"wp-image-10116\" width=\"632\" height=\"464\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-thumb.jpg?zoom=2&amp;resize=640%2C470&amp;ssl=1 1280w, https://i1.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-thumb.jpg?zoom=3&amp;resize=640%2C470&amp;ssl=1 1920w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h2><strong>An Entrepreneurial Mindset</strong></h2>\n\n\n\n<p>Tyler recalls he always had a knack for spotting a enterprise ideas. As an industrious seven-year-old, he was already finding ways to make sales during the school breaks.&nbsp;</p>\n\n\n\n<p>While many entrepreneurs have similar stories, Tyler’s path took many turns before he discovered and thrived in the WordPress community.</p>\n\n\n\n<p>He was drawn to both the software and the community that surrounds it from his search for personal and professional freedom. He ultimately was able to combine his various business interests and people skills into professional marketing work.</p>\n\n\n\n<h2><strong>Using your skills to uncover your journey</strong></h2>\n\n\n\n<figure class=\"wp-block-image size-large is-resized\"><img loading=\"lazy\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-2.jpg?resize=632%2C758&#038;ssl=1\" alt=\"Tyler Lau pictured sat on a chair using his mobile phone in his social media work\" class=\"wp-image-10118\" width=\"632\" height=\"758\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-2.jpg?zoom=2&amp;resize=640%2C768&amp;ssl=1 1280w, https://i0.wp.com/wordpress.org/news/files/2021/04/people-of-wp-tyler-2.jpg?zoom=3&amp;resize=640%2C768&amp;ssl=1 1920w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>Tyler’s current role is as a Marketing Relationship Builder, based in Kansas, USA. His responsibilities span across all digital properties and products, leveraging his broad set of business and people skills.</p>\n\n\n\n<p>These skills are amplified by his creativity and adaptability. Tyler says that one reason he is always looking for new projects is his Attention Deficit Hyperactivity Disorder (ADHD), a diagnosis he received in 2005.</p>\n\n\n\n<p>In an industry built by programmers and developers who often have a strong sense of focus, Tyler felt that someone with ADHD wouldn’t be seen as a natural fit. He found the WordPress community to be a place where everyone can find the right spot for their unique skills. Tyler’s skill is people, and this has translated into many opportunities and responsibilities in his work life. His skills have also helped him give back to the WordPress community as a speaker and volunteer, and through multiple contributor days.</p>\n\n\n\n<h2><strong>Relationship-building as a career</strong></h2>\n\n\n\n<p>Most of Tyler’s experience was in the restaurant industry, and his resume did not exactly point to a career in tech. But the service industry actually prepared him well for everything he has taken on since.</p>\n\n\n\n<p>When he is at work events, he meets people from across the world and builds connections with them. As an extrovert, he enjoys this and couldn’t imagine a job where he was isolated from getting to know others and relationship-building.</p>\n\n\n\n<p>Understanding people and being able to operate in any setting are key competencies. Social skills and tact are useful for community building in the WordPress space too, and in Tyler’s life at different times it has been necessary for survival. </p>\n\n\n\n<h2><strong>The true meaning of freedom</strong></h2>\n\n\n\n<p>In the WordPress community, the concept of freedom comes up often. WordPress is built on GPL, free software, and open-source values. Practically speaking, anyone can work remotely or be their own boss to gain more freedom in work and life.&nbsp;Tyler feels that he never fitted into a traditional work mould. With his strong focus on freedom, he found this resonated with the freedom and opportunities he believes WordPress provides him and thousands of others.</p>\n\n\n\n<p>Tyler describes how in 2013 his ‘inner opportunist’ got him into trouble. After dropping out of college following a brain aneurysm, he needed capital to fund his first startup.&nbsp;He shares that he found a quick but unlawful way to make money. Alongside this between shifts as a waiter, he worked on prototypes for his first product. The company was growing fast, and to protect his patents and take research and development to the next level, he had to work hard. Everything came to a halt when some of the actions he took resulted in being sent to prison.  </p>\n\n\n\n<p>He says that meeting other inmates reminded him that he was in a much better situation than most. He was educated, well-off, loved, and knew he had a future once he was released. He found that many inmates never graduated from high school and were computer illiterate. While inside, Tyler taught subjects like science, math, writing, reading, and social studies. He found that due to the lack of skills and support, many inmates would struggle upon release. He believes getting the mental health support and job training needed to thrive after prison is not easy for many.</p>\n\n\n\n<p>“<em>There’s more to freedom than just being on the outside. You also need a sense of agency and enfranchisement,</em>” says Tyler. He considered his sense of purpose and support network were plenty to keep him going and was ready to take on his next (legal) business challenge as soon as he could.</p>\n\n\n\n<h2>Going forward positively&nbsp;</h2>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"632\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/04/FF50DF21-38AA-4778-B465-C2DF0B441AD7.jpeg?resize=632%2C632&#038;ssl=1\" alt=\"Tyler Lau portrait picture\" class=\"wp-image-10139\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/04/FF50DF21-38AA-4778-B465-C2DF0B441AD7.jpeg?w=640&amp;ssl=1 640w, https://i0.wp.com/wordpress.org/news/files/2021/04/FF50DF21-38AA-4778-B465-C2DF0B441AD7.jpeg?resize=300%2C300&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2021/04/FF50DF21-38AA-4778-B465-C2DF0B441AD7.jpeg?resize=150%2C150&amp;ssl=1 150w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>The idea that your past doesn’t define you and you can choose to embrace it, is a key driver for Tyler.</p>\n\n\n\n<p>He describes himself as an outlier in many ways. He recalls how politics influenced his life from the day he was born. Tyler’s father is a semi-dissident Chinese visual anthropologist, his mother is an art professor who left her home country of Japan to break free from traditional Japanese gender roles. Tyler feels he inherited a lot of this fearlessness.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>“<em>I’ve never fitted in, and yet this is what makes me able to adapt to most situations and relate to just about anyone. I embrace my eclectic, dissonant past and see beauty in the person those experiences shaped me to be</em>,” says Tyler.&nbsp;</p></blockquote>\n\n\n\n<p>Now, he’s able to put those skills to good use in the WordPress community and beyond.&nbsp;</p>\n\n\n\n<p>He says: “<em>Regardless of your physical abilities, mental health struggles, upbringing, and even your run-ins with the law, no one is excluded from carving their place in the WordPress industry</em>”.<br></p>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Thank you to Tyler Lau (<a href=\'https://profiles.wordpress.org/tylermaximus/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>tylermaximus</a>) for sharing his #ContributorStory.</p>\n\n\n\n<p>Thanks to Larissa Murillo (<a href=\"https://profiles.wordpress.org/lmurillom/\">@lmurillom</a>), Surendra Thakor (<a href=\'https://profiles.wordpress.org/sthakor/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>sthakor</a>), Olga Gleckler (<a href=\'https://profiles.wordpress.org/oglekler/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>oglekler</a>), Meher Bala (<a href=\"https://profiles.wordpress.org/meher/\">@meher</a>), Yvette Sonneveld (<a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a>), Abha Thakor (<a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>), Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>), Chloé Bringmann (<a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>) and Topher DeRosia (<a href=\"https://profiles.wordpress.org/topher1kenobe/\">@topher1kenobe</a>) for working on the People of WordPress series.</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://lh3.googleusercontent.com/Y3odYTyvSfJbVxUxUWEgKxOprox2zxVwhk7_vdW-AIs4IlE-jK0Zt1itCj867x0dIAbIiK-VeuTLMZr6BjNEY0fkTf--4dT1hkLbnGtsPFNfyrVBYIN59IirTkNnqiQgqxk6E1MI\" alt=\"HeroPress logo\" /></figure>\n\n\n\n<p><em>This post is based on an article originally published on HeroPress.com, a community initiative created by&nbsp;</em><a href=\"https://profiles.wordpress.org/topher1kenobe/\"><em>Topher DeRosia</em></a><em>. It highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>\n\n\n\n<p><em>Meet more WordPress community members in our&nbsp;<a href=\"https://wordpress.org/news/category/heropress/\">People of WordPress</a>&nbsp;series.</em></p>\n\n\n\n<p><em>#ContributorStory #HeroPress</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10102\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:61:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WP Briefing: Who Is WordPress?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/news/2021/04/who-is-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Apr 2021 14:36:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"wp-briefing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=10099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:246:\"In this episode, Josepha explores the five groups within the WordPress ecosystem and provides a high-level example of how they interact and support one another. As always, stay tuned for the small list of big things and a contributor highlight.  \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2021/04/WP-Briefing-006.mp3\";s:6:\"length\";s:1:\"0\";s:4:\"type\";s:0:\"\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9292:\"\n<p>In this episode, Josepha explores the five groups within the WordPress ecosystem and provides a high-level example of how they interact and support one another. As always, stay tuned for the small list of big things and a contributor highlight.&nbsp;&nbsp;</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to <a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2><strong>Credits</strong></h2>\n\n\n\n<ul><li>Editor:<a href=\"https://profiles.wordpress.org/dustinhartzler/\"> Dustin Hartzler</a></li><li>Logo:<a href=\"https://profiles.wordpress.org/beafialho/\"> Beatriz Fialho</a></li><li>Production:<a href=\"https://profiles.wordpress.org/mkaz/\"> </a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a></li><li>Song: Fearless First by Kevin MacLeod</li></ul>\n\n\n\n<h2>References</h2>\n\n\n\n<ul><li>Get to know<a href=\"https://make.wordpress.org/\"> WordPress Teams</a></li><li><a href=\"https://wordpress.tv/2017/12/10/josepha-haden-beginners-guide-to-contributions/\">Five Steps of Volunteer Engagement </a></li><li><a href=\"https://twitter.com/CoachBirgit/status/1339516878495117313\">Community Highlight </a></li><li><a href=\"https://centroamerica.wordcamp.org/2021/\">WordCamp Centroamérica 2021 Online</a> (<a href=\"https://centroamerica.wordcamp.org/2021/sesiones/\">Schedule</a>)</li><li><a href=\"https://wordpress.org/news/2021/03/so-you-want-to-make-block-patterns/\">So you want to make block patterns?</a></li><li><a href=\"https://docs.google.com/spreadsheets/d/1h73xMwjSRkJJsn7ooiwXFeZpd0hxXh26pJ7qXzI5iUg/edit#gid=0\">Gutenberg Tutorial sign-up</a></li></ul>\n\n\n\n<h2>Transcript</h2>\n\n\n\n<span id=\"more-10099\"></span>\n\n\n\n<p>Hello, everyone, and welcome to the WordPress briefing, the podcast where you can catch quick explanations of some of the ideas behind the WordPress open source project and the community around it, as well as get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go!</p>\n\n\n\n<p>In the first episode of this podcast, I said that there&#8217;s a lot that goes into WordPress, that&#8217;s really hard to see. One of the hardest things to see about the WordPress project as you get started is the overall structure. There is quite a bit of documentation that can clarify the basics: the names of teams, what they work on, and where, and when they meet. The way that they influence and support each other can really feel like a bit of a mystery. So today, I&#8217;m going to break down the WordPress community into five big groups; I want you to keep a couple of things in mind.&nbsp;</p>\n\n\n\n<p>Firstly, these are high-level and based on my observations. Each of these groups can be further broken down into subgroups. So while you may not feel represented in this exact five, you are included if you were to dig a little bit deeper. The second thing to keep in mind is that the makeup of these groups is pretty fluid. Many community members find themselves in more than one group, but generally not far off. Some group two folks end up in group three, depending on the situation, people in group four can also end up in group five, and so on. As with so many things that I share, I&#8217;m not trying to insist that one size fits all. I&#8217;m not trying to put the WordPress community into a box. This is just a basic framework to understand how it all fits together. Alright, are you ready? I&#8217;m ready. Let&#8217;s do it!</p>\n\n\n\n<p>Okay, I have a broad definition of the community, which I have mentioned before. I believe that the community is anyone who has interacted with WordPress, whether they know it or not. So, I&#8217;ll start from way out there and work my way in that first group; we’re going to call our <strong>Visitors</strong>.&nbsp;</p>\n\n\n\n<p><strong>Visitors</strong> are people who arrive at a WordPress site to gain information or engage in an activity. Sometimes they know it&#8217;s a WordPress site, but most of the time, they don&#8217;t. The second group are <strong>Users</strong>, people who use WordPress as their CMS. So, that&#8217;s website builders, website designers, small businesses, content creators, and the list goes on and on. The third group I like to refer to is the <strong>Extenders</strong>. Those are people who extend WordPress through the creation of blocks, themes, plugins, and more. There are also people who teach WordPress to others through WordPress podcasts, and newsletters and tutorials. The fourth group I refer to as our <strong>Contributors</strong> is the people who contribute to the open source software and the infrastructure supporting it, but not necessarily the same people who contribute directly to their own product. And then there&#8217;s group five, <strong>Leaders</strong>. Those are people who help drive the vision and strategy for WordPress; the most notable member of that group is of course, Matt Mullenweg. And I&#8217;m also in that group.&nbsp;</p>\n\n\n\n<p>Each of these groups directly influenced the groups on either side. For example, a WordPress user is affected by both visitors and extenders. Imagine a content creator who shares their passion for photography through a WordPress site; this photographer may have visitors that need to purchase photos. In response, the user now has a need to make it possible for visitors to purchase photos on a site. So they go to what we consider the extenders, people who have built a plugin that supports that need. And as a result, that user can install that on their site. And they have have satisfied the need of the visitors to their site, the people who now can purchase photos.&nbsp;</p>\n\n\n\n<p>There are a lot of examples like this in the WordPress project. Every small pattern that you see is mirrored in the larger patterns across our ecosystem. And every large pattern you see in the ecosystem can be seen among our teams. It&#8217;s pretty cool to look at really. So, why should this matter to you? From a very practical standpoint, this matters for anyone who&#8217;s trying to learn more about contributing to the WordPress project. These five groups mirror very closely the five steps of volunteer engagement that we see across the ecosystem and from a more philosophical standpoint, it&#8217;s just kind of nice to know who your neighbors are. Without the influence and support of the groups around us, it can be hard to know whether we&#8217;re on the right track or not. So take a look to your left and look to your right, and get to know your partners in this project.</p>\n\n\n\n<p>That brings us now to our community highlight, the segment where I share a note about contributors who have helped others along the way, or WordPress success story. This week&#8217;s highlight is from @CoachBirgit, <a href=\"https://profiles.wordpress.org/coachbirgit/\">Birgit Olzem</a>, a longtime contributor and a friend of mine. Her success story goes like this.&nbsp;</p>\n\n\n\n<p>WordPress has allowed me as a mother of five to leave a toxic marriage for good.&nbsp;</p>\n\n\n\n<p>Later, the community picked me up when I became seriously ill.&nbsp;</p>\n\n\n\n<p>So I can say from the bottom of my heart, that working with WordPress has saved my life.</p>\n\n\n\n<p>And now our small list of big things. I&#8217;ve got three things for you this week. I think that they&#8217;re all very important. And I hope you check them all out. The first one is a reminder that word camp Central America is coming up on April 15 and 16th. If you have not registered for tickets, you still have time, I will share a link to the registration page and the schedule in the show notes below.&nbsp;</p>\n\n\n\n<p>The second thing on our small list of big things is that the Gutenberg 10.4 release is coming out later this week on April 14th. It&#8217;s an important release because it&#8217;s when we take a look at the current iteration of full site editing tools that we have, and decide if it&#8217;s ready to get into the WordPress 5.8 release. There&#8217;s a post that has a little more information about that which I will share in the show notes below as well. If you haven&#8217;t checked out the Gutenberg plugin lately, obviously I think it&#8217;s a good idea to do that in general, but definitely a good idea to check it out now.&nbsp;</p>\n\n\n\n<p>The third thing on our list today is a reminder to check out our most recent block pattern tutorial, I&#8217;ll share a link to that in the show notes. It&#8217;s this kind of tips and tricks, tutorial, the “show me how to do it,” kind of thing in the style of <a href=\"https://css-tricks.com/css-style-guides/\">CSS-Tricks</a>. If you or anyone that you know might be interested in sharing a similar style of tutorial, there&#8217;s a link to a form in that show notes as well so that you can share with us your name and the topic that you&#8217;re interested in. We&#8217;ll take a look and see if it&#8217;s something that we definitely need to make sure our users know how to do. So, that my friends is your small list of big things.&nbsp;</p>\n\n\n\n<p>Thank you for joining in today for the WordPress briefing. I&#8217;m your host, Josepha Haden Chomphosy. I&#8217;ll see you again in a couple of weeks!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10099\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"The Month in WordPress: March 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2021/04/the-month-in-wordpress-march-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 03 Apr 2021 16:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=10084\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:319:\"This way of iterating improves WordPress and ties back to one of my favorite open-source principles. The idea that with many eyes, all bugs are shallow. To me, that means that with enough people looking at a problem, someone is bound to be able to see the solution. These words from Josepha Haden Chomphosy on [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Hari Shanker R\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9821:\"\n<blockquote class=\"wp-block-quote\"><p>This way of iterating improves WordPress and ties back to one of my favorite open-source principles. The idea that with many eyes, all bugs are shallow. To me, that means that with enough people looking at a problem, someone is bound to be able to see the solution.</p></blockquote>\n\n\n\n<p class=\"has-drop-cap\">These words from <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a> on the <a href=\"https://wordpress.org/news/2021/03/how-wordpress-improves/\">How WordPress Improves</a> episode of the <a href=\"https://wordpress.org/news/podcast/\">WP Briefing Podcast</a> point to the factors that differentiate building software in an open-source environment. Our updates this month are closely tied to the philosophy behind those core principles of open source software.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.7 released</h2>\n\n\n\n<p>WordPress <a href=\"https://wordpress.org/news/2021/03/esperanza/\">version 5.7</a> “Esperanza,” came out on March 9. The release offers fresher admin colors, several improvements to the block editor, single-click HTTP to HTTPS migration, and a new Robots API. Read more about it in the <a href=\"https://wordpress.org/news/2021/03/esperanza/\">release post</a>, the <a href=\"https://make.wordpress.org/core/2021/02/23/wordpress-5-7-field-guide/\">field guide</a>, and the <a href=\"https://make.wordpress.org/community/2021/03/12/meetup-group-resources-talking-points-for-wordpress-5-7/\">talking points post for meetup groups</a>. The Core Team has also <a href=\"https://make.wordpress.org/core/2021/03/30/5-8-pre-planning/\">started work on WordPress 5.8 pre-planning</a>.</p>\n\n\n\n<p>Want to contribute to WordPress 5.8? Join the WordPress <a href=\"https://wordpress.slack.com/archives/C02RQBWTW\">#core</a> channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress Slack</a> and follow the <a href=\"https://make.wordpress.org/core/\">Core Team blog</a>. The Core Team hosts weekly chats on Wednesdays at <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?hour=5&amp;min=00&amp;sec=0\">5 AM</a> and <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?hour=20&amp;min=00&amp;sec=0\">8 PM</a> UTC.&nbsp;</p>\n\n\n\n<h2>Gutenberg Version 10.1 and 10.2 are out</h2>\n\n\n\n<p>Contributor teams released Gutenberg <a href=\"https://make.wordpress.org/core/2021/03/02/whats-new-in-gutenberg-10-1-3-march/\">Version 10.1</a> on March 3 and <a href=\"https://make.wordpress.org/core/2021/03/17/whats-new-in-gutenberg-10-2-17-march/\">Version 10.2</a> on March 17.</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2021/03/02/whats-new-in-gutenberg-10-1-3-march/\">Version 10.1</a> showcases significant improvements to reusable blocks, a clearer image toolbar, and spatial options for the social media block. <a href=\"https://make.wordpress.org/core/2021/03/17/whats-new-in-gutenberg-10-2-17-march/\">Version 10.2</a> offers block pattern options to display contents from the query block and removes writing prompts from empty paragraphs in the editor. It also adds width adjustment for spacer blocks in horizontal parent blocks and the ability to transform media and text blocks into columns.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core Team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the <a href=\"https://wordpress.slack.com/archives/C02QB2JS7\">#core-editor</a> channel in <a href=\"https://make.wordpress.org/chat/\">the Make WordPress Slack</a>. The “<a href=\"https://make.wordpress.org/core/2021/03/08/whats-next-in-gutenberg-march-2021/\">What’s next in Gutenberg</a>” post offers more details on the latest updates. Don’t miss the monthly Gutenberg tutorial on <a href=\"https://wordpress.org/news/2021/03/so-you-want-to-make-block-patterns/\">How to make block patterns</a>!</p>\n\n\n\n<h2>Full Site Editing updates</h2>\n\n\n\n<p>March saw a plethora of updates to the <a href=\"https://make.wordpress.org/core/tag/full-site-editing/\">Full Site Editing</a> project!</p>\n\n\n\n<ul><li><a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a> published a <a href=\"https://make.wordpress.org/updates/2021/03/12/full-site-editing-pre-merge-overview/\">Full Site Editing pre-merge overview</a>. She shares the project’s current status, go/no-go dates for core merge, communication plans, and challenges.&nbsp;</li><li>March saw two calls for testing as part of the <a href=\"https://make.wordpress.org/test/handbook/full-site-editing-outreach-experiment/\">Full Site Editing outreach program</a>. The first test of the month — <a href=\"https://make.wordpress.org/test/2021/03/09/fse-program-testing-call-3-create-a-fun-custom-404-%20page/\">creating a custom 404 page</a>,&nbsp; wrapped up successfully.&nbsp; Participate in the latest testing initiative — <a href=\"https://make.wordpress.org/test/2021/03/25/fse-program-testing-call-4-building-a-restaurant-themed-header/\">&nbsp;build a restaurant-themed website header</a> to help improve the future of WordPress! Deadline: April 8.&nbsp;</li><li>You can also find <a href=\"https://make.wordpress.org/core/2021/03/16/high-level-feedback-from-the-fse-program-march/\">high-level feedback on the FSE Program</a> in this March 2021 post.</li></ul>\n\n\n\n<h2>Proposal launched for a WordPress contributor handbook</h2>\n\n\n\n<p>A proposal has been kicked off on <a href=\"https://make.wordpress.org/updates/2021/03/16/proposal-a-wordpress-project-contributor-handbook/\">building a project-wide WordPress contributor handbook</a>. The handbook will have content around the WordPress project’s underlying philosophies and commitments, along with shared expectations on working together and building products. It will also contain modern open source best practices for WordPress.&nbsp;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading</h2>\n\n\n\n<ul><li>You can now schedule office hours with Matt Mullenweg and Josepha Haden as part of their <a href=\"https://make.wordpress.org/core/2021/03/12/q2-listening-hours-april-7th-2021/\">Q2 Quarterly listening hours initiative</a>. This quarter’s listening session is scheduled for April 7th, 2021, from <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20210407T2200\">22:00</a>&#8211;<a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20210408T0000\">24:00</a> UTC. Slots are still available — <a href=\"https://calendly.com/mmullenweg/team-lead-office-hours?month=2021-04&amp;date=2021-04-08\">sign up now</a>!&nbsp;</li><li>The Themes Team is working on <a href=\"https://make.wordpress.org/themes/2021/03/17/next-steps-on-themes-and-reviews/\">automating the theme review process</a>. The team has shared a detailed post on these changes and is requesting feedback.</li><li>The Core Team has <a href=\"https://make.wordpress.org/core/2021/03/05/dual-licensing-gutenberg-next-steps/\">kicked-off plans</a> on dual licensing Gutenberg under GPL and MPL.</li><li><a href=\"https://buddypress.org/2021/03/buddypress-7-2-1-security-release/\">Version 7.2.1</a> of BuddyPress (security release) is out! Update all your BuddyPresses!</li><li>The Docs Team shipped the <a href=\"https://make.wordpress.org/docs/2021/03/07/wordpress-documentation-style-guide-google-season-of-docs-2020-project-report-tacitonic/\">WordPress documentation style guide</a> as part of its Google Season of Docs 2020 effort. The team has also kicked off work on applying for <a href=\"https://href.li/?https://make.wordpress.org/docs/tag/season-of-docs-2021/\">Google Season of Docs 2021</a>!</li><li>The Polyglots Team is making <a href=\"https://make.wordpress.org/polyglots/2021/03/26/polyglots-training-working-group-update-2/\">significant progress on building their contributor training program</a>. The team is also requesting feedback on <a href=\"https://make.wordpress.org/polyglots/2021/03/30/request-for-feedback-polyglots-team-stats-dashboard/\">building their dashboard</a>.</li><li><a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a> shared an <a href=\"https://make.wordpress.org/updates/2021/03/19/experiment-coordinating-sponsored-contributor-teams/\">experiment to coordinate sponsored contributors</a> by adding them to a private Slack channel to offer them better support.</li><li>The Community Team announced its revamped <a href=\"https://make.wordpress.org/community/2021-wordpress-global-community-sponsorship-program/\">2021 Global Sponsorship Program</a>. The team also published a <a href=\"https://make.wordpress.org/community/2021/03/12/2021-financial-update-for-the-wordpress-community/\">financial update for WP Communities in 2021</a>.</li><li>The Core Team is moving ahead to <a href=\"https://make.wordpress.org/core/2021/03/04/discussion-dropping-support-for-ie11/\">drop support for Internet Explorer 11</a> for upcoming versions of WordPress.</li><li>The Design Team shared <a href=\"https://make.wordpress.org/design/2021/03/30/wordpress-org-patterns-directory/\">initial designs for the Block pattern directory</a>.</li><li>The <a href=\"https://make.wordpress.org/chat/\">Make WordPress Slack</a> workspace briefly went down on March 30 due to a Slack ToS issue, which was subsequently resolved. More details on <a href=\"https://make.wordpress.org/updates/2021/03/30/journal-entry-wordpress-slack-workspace-unavailability/\">this explainer post</a>.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it using this form</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"10084\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:68:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n					\n										\n					\n		\n		\n\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"So you want to make block patterns?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2021/03/so-you-want-to-make-block-patterns/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 30 Mar 2021 17:01:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"tutorials\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=9995\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Learn how to make block patterns!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:59:\"https://wordpress.org/news/files/2021/03/reusable-block.mp4\";s:6:\"length\";s:6:\"273436\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:58:\"https://wordpress.org/news/files/2021/03/waves-pattern.mp4\";s:6:\"length\";s:6:\"493389\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Beatriz Fialho\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:22433:\"\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"632\" height=\"356\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?resize=632%2C356&#038;ssl=1\" alt=\"\" class=\"wp-image-9998\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?resize=1024%2C576&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?resize=768%2C432&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?w=1441&amp;ssl=1 1441w, https://i2.wp.com/wordpress.org/news/files/2021/03/Block-Patterns.jpg?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p>If you&#8217;ve ever built something for the WordPress block editor — a theme or a plugin — you may have also heard about <strong>block patterns</strong>. </p>\n\n\n\n<p>Looking at the patterns that come bundled with WordPress, I thought it would be nice to dedicate to them a short post. They&#8217;re pretty nice, useful shortcuts when you know them, but there&#8217;s a good chance you may not know what they are or why you might want to use them.</p>\n\n\n\n<h2>What&#8217;s a block pattern?</h2>\n\n\n\n<p>Patterns are&nbsp;<strong>collections of pre-arranged blocks</strong>&nbsp;that can be combined and arranged in many ways making it easier to create beautiful content. They act as a head-start, leaving you to plug and play with your content as you see fit and be as simple as single blocks or as complex as a full-page layout.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"414\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=632%2C414&#038;ssl=1\" alt=\"\" class=\"wp-image-10021\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=1024%2C670&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=300%2C196&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=768%2C503&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=1536%2C1005&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?resize=2048%2C1340&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2021/03/block-library.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p>They live in a tab in the block library. You can click or drag and you&#8217;re able to preview them with your site&#8217;s styles.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"413\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=632%2C413&#038;ssl=1\" alt=\"\" class=\"wp-image-10022\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=1024%2C669&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=300%2C196&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=768%2C502&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=1536%2C1003&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?resize=2048%2C1338&amp;ssl=1 2048w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2021/03/block-pattern.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p>Basically, a block pattern is just a bunch of blocks put together in advance:</p>\n\n\n\n<pre class=\"wp-block-code\"><code>	&lt;!-- wp:group --&gt;\n&lt;div class=\"wp-block-group\"&gt;&lt;div class=\"wp-block-group__inner-container\"&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;\n&lt;hr class=\"wp-block-separator is-style-default\"/&gt;\n&lt;!-- /wp:separator --&gt;\n&lt;!-- wp:image {\"align\":\"center\",\"id\":553,\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} --&gt;\n&lt;div class=\"wp-block-image is-style-rounded\"&gt;&lt;figure class=\"aligncenter size-large is-resized\"&gt;&lt;img src=\"https://blockpatterndesigns.mystagingwebsite.com/wp-content/uploads/2021/02/StockSnap_HQR8BJFZID-1.jpg\" alt=\"\" class=\"wp-image-553\" width=\"150\" height=\"150\"/&gt;&lt;/figure&gt;&lt;/div&gt;\n&lt;!-- /wp:image --&gt;\n&lt;!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} --&gt;\n&lt;blockquote class=\"wp-block-quote has-text-align-center is-style-large\"&gt;&lt;p&gt;\"Contributing makes me feel like I\'m being useful to the planet.\"&lt;/p&gt;&lt;cite&gt;— Anna Wong, &lt;em&gt;Volunteer&lt;/em&gt;&lt;/cite&gt;&lt;/blockquote&gt;\n&lt;!-- /wp:quote --&gt;\n&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;\n&lt;hr class=\"wp-block-separator is-style-default\"/&gt;\n&lt;!-- /wp:separator --&gt;&lt;/div&gt;&lt;/div&gt;\n&lt;!-- /wp:group --&gt;</code></pre>\n\n\n\n<p>That&#8217;s also how you create them: just use the block editor to configure a smattering of blocks to your liking, and the hard part&#8217;s over.</p>\n\n\n\n<h2>How do I get them in the block library?</h2>\n\n\n\n<p>There&#8217;s <a href=\"https://developer.wordpress.org/block-editor/developers/block-api/block-patterns/\">more documentation in the handbook</a>, but what it boils down to is this:</p>\n\n\n\n<pre class=\"wp-block-code\"><code>&lt;?php \n/*\nPlugin Name: Quote Pattern Example Plugin\n*/\n\nregister_block_pattern(\n	\'my-plugin/my-quote-pattern\',\n	array(\n		\'title\'       =&gt; __( \'Quote with Avatar\', \'my-plugin\' ),\n		\'categories\'  =&gt; array( \'text\' ),\n		\'description\' =&gt; _x( \'A big quote with an avatar\".\', \'Block pattern description\', \'my-plugin\' ),\n		\'content\'     =&gt; \'&lt;!-- wp:group --&gt;&lt;div class=\"wp-block-group\"&gt;&lt;div class=\"wp-block-group__inner-container\"&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;!-- wp:image {\"align\":\"center\",\"id\":553,\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} --&gt;&lt;div class=\"wp-block-image is-style-rounded\"&gt;&lt;figure class=\"aligncenter size-large is-resized\"&gt;&lt;img src=\"https://blockpatterndesigns.mystagingwebsite.com/wp-content/uploads/2021/02/StockSnap_HQR8BJFZID-1.jpg\" alt=\"\" class=\"wp-image-553\" width=\"150\" height=\"150\"/&gt;&lt;/figure&gt;&lt;/div&gt;&lt;!-- /wp:image --&gt;&lt;!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} --&gt;&lt;blockquote class=\"wp-block-quote has-text-align-center is-style-large\"&gt;&lt;p&gt;\"Contributing makes me feel like I\\\'m being useful to the planet.\"&lt;/p&gt;&lt;cite&gt;— Anna Wong, &lt;em&gt;Volunteer&lt;/em&gt;&lt;/cite&gt;&lt;/blockquote&gt;&lt;!-- /wp:quote --&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;/div&gt;&lt;/div&gt;&lt;!-- /wp:group --&gt;\',\n	)\n);\n\n?&gt;</code></pre>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/13.0.1/72x72/1f446.png\" alt=\"👆\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> That&#8217;s a snippet of PHP, which means you can drop it in a WordPress plugin, or perhaps more simply, paste it into the <strong>functions.php</strong> file from your theme. Done:</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"430\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=632%2C430&#038;ssl=1\" alt=\"\" class=\"wp-image-10047\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=1024%2C696&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=300%2C204&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=768%2C522&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?resize=1536%2C1043&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?w=1908&amp;ssl=1 1908w, https://i2.wp.com/wordpress.org/news/files/2021/03/Quote.jpg?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p>For patterns that include images, it&#8217;s worth thinking about where those are stored. The <a href=\"https://wordpress.org/themes/tt1-blocks/\">TT1 Blocks theme</a> (which is a fancy name for &#8220;TwentyTwentyOne Blocks&#8221;) stores images in the theme library.</p>\n\n\n\n<h2>Now what?</h2>\n\n\n\n<p>The thing about a block pattern is, as soon as you insert it from the block library, it stops being <em>a cohesive unit</em> — now it&#8217;s just a smattering of blocks, detached from the pattern you created and meant to be customized to your liking. It&#8217;s a <em>shortcut</em>, not a <em>template</em>. That also means you don&#8217;t have to worry about switching themes or deactivating pattern plugins: the blocks you already inserted won&#8217;t go anywhere.</p>\n\n\n\n<p>That being said, if you like this one pattern so much you want to use it again and again, with no customization at all, you can make it into a <a href=\"https://wordpress.org/news/2021/02/gutenberg-tutorial-reusable-blocks/\">reusable block</a>:</p>\n\n\n\n<figure class=\"wp-block-video\"><video controls loop src=\"https://wordpress.org/news/files/2021/03/reusable-block.mp4\"></video></figure>\n\n\n\n<p>Reusable blocks are created, as the name implies, to be reused. The feature is a great way to store small bits of commonly used snippets that you can edit in one place to update in all. &#8220;<strong>Follow me on Twitter</strong>,&#8221; &#8220;<strong>Article series</strong>,<strong>&#8220;</strong> or <strong>&#8220;Subscribe to my podcast&#8221;</strong> are great examples of that.</p>\n\n\n\n<h2>What makes a good block pattern?</h2>\n\n\n\n<p>Patterns, as they ship today, are limited by the features available. If the block editor doesn&#8217;t allow you to customize letter-spacing, your block pattern can&#8217;t either. While the Global Styles project will expand what&#8217;s to blocks, in the meantime, we have to work with the available tools.</p>\n\n\n\n<p>Even then, with the most basic ingredients — color, photography, typography — it is possible to do a lot:</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://lh5.googleusercontent.com/W3RKCu5c7ONKnmuLdChmOhD40iZAFseq30i-qGwqFaq0dPTj_U5b1JXhhRR96-jRvJvKgC8BBZA4p_-EBYF-WoMRPoDLgCX8FG3RIWQhv6zX6-H7xBj4FZGGRm7cl_qdVgRy9G8q\" alt=\"\" /><figcaption>Three columns with images and text<br></figcaption></figure></div>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"397\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=632%2C397&#038;ssl=1\" alt=\"\" class=\"wp-image-10036\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=1024%2C644&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=300%2C189&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=768%2C483&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=1536%2C965&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?resize=2048%2C1287&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2021/03/Media-and-text-with-image-on-the-right-1.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /><figcaption>Media and text with image on the right</figcaption></figure></div>\n\n\n\n<p>I designed these patterns to potentially land in WordPress core, which all have a few properties in common:</p>\n\n\n\n<h3><strong>They share a theme.</strong></h3>\n\n\n\n<p>You can think of a pattern as a section of a website: it is meant to be part of a whole, and so it works best when it can exist in the context of other patterns that share the same theme. There are a few sharing a Nature theme in the patterns above, a few sharing an Art theme, and others sharing an Architecture theme. When seen together, it becomes easier to see how you might be able to piece together multiple pages of your site, one page at a time.</p>\n\n\n\n<figure class=\"wp-block-gallery columns-2\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img loading=\"lazy\" width=\"632\" height=\"406\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=632%2C406&#038;ssl=1\" alt=\"\" data-id=\"10033\" data-full-url=\"https://wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png\" data-link=\"https://wordpress.org/news/?attachment_id=10033\" class=\"wp-image-10033\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=1024%2C658&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=300%2C193&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=768%2C493&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=1536%2C987&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?resize=2048%2C1315&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2021/03/Large-header-with-text-and-a-button.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img loading=\"lazy\" width=\"632\" height=\"405\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=632%2C405&#038;ssl=1\" alt=\"\" data-id=\"10034\" data-full-url=\"https://wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png\" data-link=\"https://wordpress.org/news/?attachment_id=10034\" class=\"wp-image-10034\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=1024%2C657&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=300%2C193&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=768%2C493&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=1536%2C986&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?resize=2048%2C1314&amp;ssl=1 2048w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-with-image-on-the-right.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></li></ul></figure>\n\n\n\n<h3><strong>They share a minimalist color palette.</strong></h3>\n\n\n\n<p>By being parts of a whole, patterns will inevitably land in a context that uses different colors. With a reduced color palette, there&#8217;s both a better chance of fitting in and less to customize to make it just right.</p>\n\n\n\n<figure class=\"wp-block-gallery columns-2\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img loading=\"lazy\" width=\"632\" height=\"535\" src=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=632%2C535&#038;ssl=1\" alt=\"\" data-id=\"10042\" data-full-url=\"https://wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg\" data-link=\"https://wordpress.org/news/?attachment_id=10042\" class=\"wp-image-10042\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=1024%2C867&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=300%2C254&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=768%2C651&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?resize=1536%2C1301&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?w=1903&amp;ssl=1 1903w, https://i2.wp.com/wordpress.org/news/files/2021/03/Heading-and-a-paragraph.jpg?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img loading=\"lazy\" width=\"632\" height=\"271\" src=\"https://i0.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container.jpg?resize=632%2C271&#038;ssl=1\" alt=\"\" data-id=\"10043\" data-full-url=\"https://wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg\" data-link=\"https://wordpress.org/news/?attachment_id=10043\" class=\"wp-image-10043\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=1024%2C439&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=300%2C129&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=768%2C330&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=1536%2C659&amp;ssl=1 1536w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?resize=2048%2C879&amp;ssl=1 2048w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2021/03/Media-text-in-a-full-height-container-scaled.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></li></ul></figure>\n\n\n\n<h3><strong>The best patterns <strong>do things you might have not done otherwise</strong>.</strong></h3>\n\n\n\n<p>Whether that&#8217;s images offset to create a unique silhouette, or just using less visible features (like fixed positioning in the Cover block), it&#8217;s a way to surface creativity.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>Tip: You can use any block in your patterns, including blocks that came from a plugin. And if that block is in the block directory, it will prompt you to install it with one click if it&#8217;s missing from your self-hosted WordPress:</em></p></blockquote>\n\n\n\n<figure class=\"wp-block-video\"><video controls loop src=\"https://wordpress.org/news/files/2021/03/waves-pattern.mp4\"></video></figure>\n\n\n\n<h2>Here’s a plugin for you</h2>\n\n\n\n<pre class=\"wp-block-code\"><code>&lt;?php \n/*\nPlugin Name: Quote Pattern Example Plugin\n*/\n\nregister_block_pattern(\n	\'my-plugin/my-quote-pattern\',\n	array(\n		\'title\'       =&gt; __( \'Quote with Avatar\', \'my-plugin\' ),\n		\'categories\'  =&gt; array( \'text\' ),\n		\'description\' =&gt; _x( \'A big quote with an avatar\".\', \'Block pattern description\', \'my-plugin\' ),\n		\'content\'     =&gt; \'&lt;!-- wp:group --&gt;&lt;div class=\"wp-block-group\"&gt;&lt;div class=\"wp-block-group__inner-container\"&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;!-- wp:image {\"align\":\"center\",\"id\":553,\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} --&gt;&lt;div class=\"wp-block-image is-style-rounded\"&gt;&lt;figure class=\"aligncenter size-large is-resized\"&gt;&lt;img src=\"https://blockpatterndesigns.mystagingwebsite.com/wp-content/uploads/2021/02/StockSnap_HQR8BJFZID-1.jpg\" alt=\"\" class=\"wp-image-553\" width=\"150\" height=\"150\"/&gt;&lt;/figure&gt;&lt;/div&gt;&lt;!-- /wp:image --&gt;&lt;!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} --&gt;&lt;blockquote class=\"wp-block-quote has-text-align-center is-style-large\"&gt;&lt;p&gt;\"Contributing makes me feel like I\\\'m being useful to the planet.\"&lt;/p&gt;&lt;cite&gt;— Anna Wong, &lt;em&gt;Volunteer&lt;/em&gt;&lt;/cite&gt;&lt;/blockquote&gt;&lt;!-- /wp:quote --&gt;&lt;!-- wp:separator {\"className\":\"is-style-default\"} --&gt;&lt;hr class=\"wp-block-separator is-style-default\"/&gt;&lt;!-- /wp:separator --&gt;&lt;/div&gt;&lt;/div&gt;&lt;!-- /wp:group --&gt;\',\n	)\n);\n\n?&gt;</code></pre>\n\n\n\n<p>In case you want to make patterns, this example plugin features two of the patterns you saw above. Drop it in your plugins folder and they should show up in your block library.</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img loading=\"lazy\" width=\"632\" height=\"966\" src=\"https://i1.wp.com/wordpress.org/news/files/2021/03/Captura-de-ecra-2021-03-30-as-11.00.39.png?resize=632%2C966&#038;ssl=1\" alt=\"\" class=\"wp-image-10062\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2021/03/Captura-de-ecra-2021-03-30-as-11.00.39.png?resize=670%2C1024&amp;ssl=1 670w, https://i1.wp.com/wordpress.org/news/files/2021/03/Captura-de-ecra-2021-03-30-as-11.00.39.png?resize=196%2C300&amp;ssl=1 196w, https://i1.wp.com/wordpress.org/news/files/2021/03/Captura-de-ecra-2021-03-30-as-11.00.39.png?w=692&amp;ssl=1 692w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /><figcaption>Installed pattern under &#8220;Text&#8221; Category</figcaption></figure></div>\n\n\n\n<p>Feel free to tweak it, customize it, and make it yours. It’s GPL, after all!</p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<p><em>Thank you <a href=\'https://profiles.wordpress.org/joen/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>joen</a> for the help writing this post.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"9995\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Fri, 07 May 2021 21:28:29 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Tue, 04 May 2021 15:00:07 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20210507210108\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(134, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1620466128', 'no'),
(135, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1620422928', 'no'),
(136, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1620466138', 'no'),
(137, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2021/05/the-month-in-wordpress-april-2021/\'>The Month in WordPress: April 2021</a></li></ul></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10014 milliseconds with 97993 bytes received</p></div>', 'no'),
(138, 'current_theme', 'StoreCommerce', 'yes'),
(139, 'theme_mods_storecommerce', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(141, 'storecommerce_theme_installed_time', '1620422982', 'yes'),
(142, 'widget_product_posts_latest', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(143, 'widget_storecommerce_author_info', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(144, 'widget_storecommerce_store_call_to_action', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_storecommerce_store_features', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_storecommerce_store_offers', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'widget_storecommerce_social_contacts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-07 21:27:44', '2021-05-07 21:27:44', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-05-07 21:27:44', '2021-05-07 21:27:44', '', 0, 'http://localhost/shop/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-07 21:27:44', '2021-05-07 21:27:44', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/shop/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-07 21:27:44', '2021-05-07 21:27:44', '', 0, 'http://localhost/shop/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-07 21:27:44', '2021-05-07 21:27:44', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/shop.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-05-07 21:27:44', '2021-05-07 21:27:44', '', 0, 'http://localhost/shop/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-05-07 21:28:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-07 21:28:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=4', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"36ca61b5664ca9ccb0b299f0dc4c812e1286d3f5e7f02622215605fa621e3605\";a:4:{s:10:\"expiration\";i:1621632504;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\";s:5:\"login\";i:1620422904;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B8gxS0ViaIsE887xNzGKvjkOxZ/ugO0', 'admin', 'asifalics87@gnail.com', '', '2021-05-07 21:27:43', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `storecommerce`
--
CREATE DATABASE IF NOT EXISTS `storecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `storecommerce`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
