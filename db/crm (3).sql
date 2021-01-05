-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 07:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendace`
--

CREATE TABLE `attendace` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendace`
--

INSERT INTO `attendace` (`id`, `emp_id`, `status`, `date`) VALUES
(948, 1, ' A', '2020-12-01'),
(949, 1, ' HD', '2020-12-02'),
(950, 1, 'P', '2020-12-07'),
(951, 1, 'P', '2020-12-12'),
(952, 1, 'P', '2020-12-15'),
(953, 1, 'P', '2020-12-21'),
(954, 1, 'P', '2020-12-09'),
(955, 2, ' P', '2020-12-04'),
(956, 2, 'P', '2020-12-29'),
(957, 2, 'P', '2020-12-05'),
(958, 2, 'P', '2020-12-13'),
(959, 2, 'P', '2020-12-16'),
(960, 2, 'P', '2020-12-21'),
(961, 2, 'P', '2020-12-20'),
(964, 3, ' P', '2020-12-01'),
(965, 3, 'P', '2020-12-02'),
(966, 3, 'P', '2020-12-03'),
(967, 3, 'P', '2020-12-04'),
(968, 3, 'P', '2020-12-05'),
(969, 3, 'P', '2020-12-06'),
(970, 3, 'P', '2020-12-07'),
(972, 3, 'P', '2020-12-09'),
(973, 3, 'P', '2020-12-10'),
(974, 3, 'P', '2020-12-11'),
(975, 3, 'P', '2020-12-12'),
(976, 3, 'P', '2020-12-21'),
(977, 3, 'P', '2020-12-20'),
(978, 3, 'P', '2020-12-29'),
(986, 1, 'P', '2020-12-20'),
(987, 1, 'P', '2020-12-20'),
(988, 1, 'P', '2020-12-20'),
(989, 1, 'P', '2020-12-20'),
(990, 2, ' O', '2020-12-03'),
(995, 1, 'P', '2020-12-04'),
(996, 1, ' L', '2020-12-04'),
(997, 3, ' HD', '2020-12-26'),
(998, 3, 'P', '2020-12-26'),
(999, 3, 'P', '2020-12-26'),
(1000, 3, 'P', '2020-12-26'),
(1001, 3, 'P', '2020-12-26'),
(1007, 1, 'P', '2020-12-10'),
(1034, 1, 'HD', '2020-12-08'),
(1056, 5, ' A', '2020-12-01'),
(1067, 5, 'P', '2020-12-02'),
(1068, 5, 'HD', '2020-12-05'),
(1069, 5, 'P', '2020-12-10'),
(1070, 5, 'P', '2020-12-14'),
(1071, 5, 'P', '2020-12-20'),
(1072, 5, 'P', '2020-12-21'),
(1073, 5, 'P', '2020-12-24'),
(1074, 5, 'P', '0000-00-00'),
(1075, 5, 'P', '2020-12-28'),
(1076, 5, 'P', '2020-12-29'),
(1077, 4, ' P', '2020-12-01'),
(1078, 4, 'P', '2020-12-20'),
(1090, 5, 'L', '2020-12-01'),
(1094, 1, ' O', '2020-12-05'),
(1095, 1, ' P', '2020-12-05'),
(1104, 6, 'P', '2020-12-01'),
(1105, 6, 'P', '2020-12-03'),
(1106, 6, 'P', '2020-12-10'),
(1107, 6, 'P', '2020-12-14'),
(1108, 6, 'P', '2020-12-20'),
(1109, 6, 'P', '2020-12-29'),
(1110, 7, 'P', '2020-12-10'),
(1111, 7, 'HD', '2020-12-08'),
(1112, 7, 'P', '2020-12-20'),
(1113, 7, 'P', '2020-12-25'),
(1114, 7, ' HD', '2020-12-29'),
(1115, 9, 'PL', '2020-12-29'),
(1117, 10, 'P', '2020-12-01'),
(1118, 10, 'P', '2020-12-29'),
(1119, 10, 'PL', '2020-12-05'),
(1120, 10, ' O', '2020-12-10'),
(1121, 11, 'P', '2020-12-11'),
(1122, 11, ' HD', '2020-12-15'),
(1123, 11, 'HD', '2020-12-20'),
(1124, 11, 'P', '2020-12-29'),
(1126, 1, ' PL', '2020-12-29'),
(1127, 2, 'PL', '2020-11-29'),
(1128, 4, 'P', '2020-12-29'),
(1130, 4, 'P', '2020-12-02'),
(1131, 7, 'P', '2020-11-29'),
(1132, 4, 'P', '2020-12-02'),
(1133, 4, 'P', '2020-12-02'),
(1134, 1, 'PL', '2020-11-05'),
(1135, 1, ' P', '2020-11-02'),
(1136, 1, 'P', '2020-11-20'),
(1137, 1, ' O', '2020-11-05'),
(1138, 1, 'P', '2020-11-20'),
(1139, 1, ' HD', '2020-11-01'),
(1140, 1, 'P', '2020-11-10'),
(1141, 1, 'HD', '2020-11-08'),
(1142, 1, 'P', '2020-12-07'),
(1143, 1, 'P', '2020-11-12'),
(1144, 1, 'P', '2020-11-15'),
(1145, 1, 'P', '2020-11-21'),
(1146, 1, 'P', '2020-11-20'),
(1147, 1, 'P', '2020-11-09'),
(1148, 1, 'P', '2020-11-20'),
(1149, 1, 'P', '2020-11-04'),
(1150, 1, 'P', '2020-11-04'),
(1151, 1, ' L', '2020-11-29'),
(1152, 2, 'P', '2020-12-07'),
(1153, 9, 'P', '2020-11-29'),
(1154, 10, 'P', '2020-11-29'),
(1155, 11, 'P', '2020-11-29'),
(1156, 3, 'P', '2020-11-29'),
(1157, 4, 'P', '2020-11-29'),
(1158, 5, 'P', '2020-11-29'),
(1159, 6, 'P', '2020-11-29'),
(1160, 7, 'P', '2020-11-29'),
(1162, 3, 'L', '2020-11-08'),
(1163, 5, 'PL', '2020-11-03'),
(1164, 4, 'P', '2020-11-04'),
(1165, 2, 'P', '2020-11-05'),
(1167, 5, 'P', '2020-11-11'),
(1168, 1, 'P', '2020-11-23'),
(1171, 1, 'P', '2020-12-03'),
(1174, 2, 'P', '2020-12-02'),
(1175, 1, 'PL', '2020-12-06'),
(1177, 11, 'T', '2020-12-28'),
(1178, 5, 'T', '2020-12-03'),
(1208, 4, 'PL', '2020-12-03'),
(1211, 1, 'L', '2020-12-14'),
(1212, 3, 'PL', '2020-12-08'),
(1219, 2, 'P', '2020-12-01'),
(1224, 1, ' P', '2020-12-31'),
(1225, 9, 'HD', '2020-12-04'),
(1230, 1, 'P', '2020-12-13'),
(1305, 5, 'P', '2021-01-02'),
(1311, 1, 'HD', '2021-01-01'),
(1312, 1, 'HD', '2021-01-01'),
(1313, 1, 'HD', '2021-01-01'),
(1314, 5, 'L', '2021-01-05'),
(1315, 5, 'L', '2021-01-10'),
(1316, 5, 'L', '2021-01-12'),
(1317, 5, 'P', '2021-01-14'),
(1318, 5, 'HD', '2021-01-15'),
(1319, 1, 'HD', '2021-01-19'),
(1320, 1, 'HD', '2021-01-20'),
(1321, 5, ' P', '2020-12-31'),
(1322, 2, 'HD', '2021-01-01'),
(1323, 2, 'HD', '2021-01-02'),
(1324, 2, 'HD', '2021-01-03'),
(1326, 2, 'L', '2021-01-05'),
(1327, 2, 'L', '2021-01-10'),
(1328, 2, 'L', '2021-01-11'),
(1329, 2, 'L', '2021-01-12'),
(1330, 2, 'L', '2021-01-14'),
(1331, 2, 'L', '2021-01-17'),
(1332, 2, 'P', '2021-01-20'),
(1345, 2, 'P', '2021-01-07'),
(1346, 2, 'P', '2021-01-07'),
(1347, 2, 'P', '2021-01-07'),
(1348, 2, 'P', '2021-01-07'),
(1349, 1, 'L', '2021-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `chat_member`
--

CREATE TABLE `chat_member` (
  `id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_member`
--

INSERT INTO `chat_member` (`id`, `g_id`, `u_id`) VALUES
(1, 49, 1),
(2, 49, 2),
(3, 49, 30),
(4, 50, 2),
(5, 50, 30),
(6, 50, 31),
(7, 50, 33),
(8, 50, 39),
(9, 50, 40),
(10, 51, 30),
(11, 51, 37),
(12, 51, 40),
(13, 49, 31),
(14, 49, 32),
(15, 49, 34),
(16, 49, 42);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` char(10) CHARACTER SET utf8 NOT NULL,
  `last_name` char(10) CHARACTER SET utf8 NOT NULL,
  `phone` char(10) CHARACTER SET utf8 NOT NULL,
  `alt_num` char(10) CHARACTER SET utf8 NOT NULL,
  `email` char(10) CHARACTER SET utf8 NOT NULL,
  `DOB` char(10) CHARACTER SET utf8 NOT NULL,
  `SSN` char(10) CHARACTER SET utf8 NOT NULL,
  `Driving_license` char(10) CHARACTER SET utf8 NOT NULL,
  `Driving_license_Expired` char(10) CHARACTER SET utf8 NOT NULL,
  `Driving_License_State` char(10) CHARACTER SET utf8 NOT NULL,
  `account` varchar(30) DEFAULT NULL,
  `street` char(10) CHARACTER SET utf8 NOT NULL,
  `city` char(10) CHARACTER SET utf8 NOT NULL,
  `state` char(10) CHARACTER SET utf8 NOT NULL,
  `zip_code` char(10) CHARACTER SET utf8 NOT NULL,
  `Date` char(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `user_id`, `first_name`, `last_name`, `phone`, `alt_num`, `email`, `DOB`, `SSN`, `Driving_license`, `Driving_license_Expired`, `Driving_License_State`, `account`, `street`, `city`, `state`, `zip_code`, `Date`) VALUES
(1, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 2, 'hatim', 'gsdf', 'sdf', 'sdfsd', 'zee@zee.co', '11-05-2020', '3123123', '12312', '123123', '12312', '', '12312', '12323', '12312', '12312', '11-04-2020'),
(6, 2, 'hatim', 'gsdf', 'sdf', 'sdfsd', 'zee@zee.co', '11-05-2020', '3123123', '12312', '123123', '12312', '', '12312', '12323', '12312', '12312', '11-04-2020'),
(7, 2, 'hatim', 'gsdf', 'sdf', 'sdfsd', 'zee@zee.co', '11-05-2020', '3123123', '12312', '123123', '12312', '', '12312', '12323', '12312', '12312', '11-04-2020'),
(8, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 0, 'hatim', 'gsdf', 'sdf', 'sdfsd', 'user1@gmai', '12-12-2020', '3123123', '12312', '123123', '12312', '', '12312', '12323', '12312', '12312', '11-05-2020'),
(12, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 1, 'hatim', 'gsdf', 'sdf', 'sdfsd', 'zee@zee.co', '11-04-2020', '3123123', '12312', '123123', '12312', '', '12312', '12323', '12312', '12312', '11-05-2020'),
(16, 1, 'eefasder e', 'rf dfvfv d', 'erg rg r', 'g rg rg dr', 'ggdf@gmail', '12-01-2020', 'tg df', ' ergerg er', ' erfgergg', ' erg erg e', '', ' er erg', ' er grf', ' efgdfgrt', ' er gerg', '11-05-2020'),
(17, 1, 'eefasder e', 'rf dfvfv d', 'erg rg r', 'g rg rg dr', 'ggdf@gmail', '12-10-2020', 'tg df', ' ergerg er', ' erfgergg', ' erg erg e', '', ' er erg', ' er grf', ' efgdfgrt', ' er gerg', '11-05-2020'),
(18, 1, 'eefasder e', 'rf dfvfv d', 'erg rg r', 'g rg rg dr', 'ggdf@gmail', '11-05-2020', 'tg df', ' ergerg er', ' erfgergg', ' erg erg e', '', ' er erg', ' er grf', ' efgdfgrt', ' er gerg', '11-05-2020'),
(19, 1, 'eefasder e', 'rf dfvfv d', 'qwe@gmail.', 'g rg rg dr', 'ggdf@gmail', '11-06-2020', '', '', '', '', '', ' er erg', ' er grf', ' efgdfgrt', ' er gerg', '11-05-2020'),
(20, 1, 'eefasder e', 'rf dfvfv d', 'erg rg r', 'g rg rg dr', 'ggdf@gmail', '11-24-2020', 'tg df', ' ergerg er', ' erfgergg', ' erg erg e', '', ' er erg', ' er grf', ' efgdfgrt', ' er gerg', '11-05-2020'),
(21, 1, 'eefasder e', 'rf dfvfv d', 'erg rg r', 'g rg rg dr', 'ggdf@gmail', '11-05-2020', 'tg df', ' ergerg er', ' erfgergg', ' erg erg e', '', ' er erg', ' er grf', ' efgdfgrt', ' er gerg', '11-05-2020'),
(22, 1, 'eefasder e', 'rf dfvfv d', 'erg rg r', 'g rg rg dr', 'ggdf@gmail', '11-11-2020', 'tg df', ' ergerg er', ' erfgergg', ' erg erg e', '', ' er erg', ' er grf', ' efgdfgrt', ' er gerg', '11-05-2020'),
(23, 1, 'Benjamin', 'Kelly', '4239300945', '4239300945', 'angiereece', '05-20-1976', '233210438', '', '', '', '', '117 Howard', 'Butler', 'TN', '37640', '11-11-2020'),
(24, 1, 'Taya', 'Wilks', '2317582914', '2317582914', 'tayamwilks', '11-19-2000', '382 25 098', '', '', '', '', '12989 Ferr', 'Charlevo', 'MI', '49720', '11-11-2020'),
(25, 1, 'Benjamin', 'Kelly', '4239300945', '4239300945', 'ggdf@gmail', '11-02-2020', '7765233123', '', '', '', '', '117 Howard', 'Charlevo', 'MI', '37640', '11-13-2020'),
(26, 2, 'Benjamin', 'Kelly', '4239300945', '4239300945', 'ggdf@gmail', '11-25-2020', '', '', '', '', '', '117 Howard', 'Butler', 'MI', '37640', '11-14-2020'),
(27, 2, 'eefasder e', 'rf dfvfv d', 'erg rg r', 'g rg rg dr', 'ggdf@gmail', '11-25-2020', '', '', '', '', '', ' er erg', ' er grf', ' efgdfgrt', ' er gerg', '11-14-2020'),
(28, 9, 'hatim', 'noor', '2418373467', '0384741864', 'fast@gmail', '12-23-2020', '3e43425376', '', '76345', '', '', 'sadder', 'karachi', 'sindh', '71000', '12-01-2020');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `date`) VALUES
(1, 'qwert', '2020-11-13 19:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Dep_id` int(11) NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `earn`
-- (See below for the actual view)
--
CREATE TABLE `earn` (
`status` varchar(50)
,`number` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `employess`
--

CREATE TABLE `employess` (
  `id` int(11) NOT NULL,
  `First_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Last_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `UserID` int(11) NOT NULL,
  `Dep_id` int(11) NOT NULL,
  `des_id` int(11) NOT NULL,
  `Dependability` int(11) NOT NULL,
  `Created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Shift_Start` varchar(100) DEFAULT NULL,
  `Shift_Off` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employess`
--

INSERT INTO `employess` (`id`, `First_Name`, `Title`, `Last_Name`, `UserID`, `Dep_id`, `des_id`, `Dependability`, `Created_date`, `Shift_Start`, `Shift_Off`) VALUES
(1, 'hatim', 'Mr', 'noor', 2, 4, 6, 10000, '2021-01-02 14:55:36', '09:30:00am', '06:30:00pm'),
(2, 'zeeshan', 'Mr', 'emmanuel', 1, 4, 5, 0, '2021-01-02 14:55:36', '09:30:00am', '06:30:00pm'),
(3, 'danish', 'Mr', 'sherazi', 7, 1, 1, 0, '2021-01-02 17:10:04', '12:20:00pm', '09:20:00pm'),
(4, 'Taya', 'Mr', 'Kelly', 2, 4, 5, 0, '2021-01-02 14:55:36', '09:30:00am', '06:30:00pm'),
(5, 'mazzyy', 'Mz', 'soomro', 7, 1, 1, 0, '2021-01-04 11:25:30', '05:25:00am', '02:25:00pm'),
(6, 'soomro', 'Mr', 'emmanuel', 1, 4, 5, 0, '2021-01-02 14:55:36', '09:30:00am', '06:30:00pm'),
(7, 'shayan', 'Mr', 'Kelly', 2, 4, 5, 0, '2021-01-02 14:55:36', '09:30:00am', '06:30:00pm'),
(9, 'roy', 'Mr', 'noor', 2, 4, 6, 10000, '2021-01-02 14:55:36', '09:30:00am', '06:30:00pm'),
(10, 'brandil', 'Mr', 'sherazi', 7, 1, 1, 0, '2021-01-02 17:10:04', '12:20:00pm', '09:20:00pm'),
(11, 'zee', 'Mr', 'emmanuel', 1, 4, 5, 0, '2021-01-02 14:55:36', '09:30:00am', '06:30:00pm');

-- --------------------------------------------------------

--
-- Table structure for table `employess_emergency_contact`
--

CREATE TABLE `employess_emergency_contact` (
  `id` int(11) NOT NULL,
  `emp_Det_id` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Alt_num` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Relationship` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

CREATE TABLE `emp_details` (
  `id` int(11) NOT NULL,
  `emp_ID` int(11) NOT NULL,
  `Father_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Mobile_num` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Alt_num` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Address` longtext NOT NULL,
  `Gender` varchar(50) CHARACTER SET utf8 NOT NULL,
  `SSN` varchar(50) CHARACTER SET utf8 NOT NULL,
  `DOB` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Marital_Status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `DOJ` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Bank_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Bank_Account_Tile` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Bank_Account` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE `group_chat` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`id`, `name`, `created_by`, `created_by_id`) VALUES
(49, 'chatX', 'mazzyy', 29),
(50, 'TeamA', 'mazzyy', 29),
(51, 'MOJO JOJO', 'mazzyy', 29);

-- --------------------------------------------------------

--
-- Table structure for table `group_messages`
--

CREATE TABLE `group_messages` (
  `id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `id` int(11) NOT NULL,
  `cu_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `Lead_Status` varchar(50) DEFAULT NULL,
  `Remarks` varchar(50) DEFAULT NULL,
  `count` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead`
--

INSERT INTO `lead` (`id`, `cu_id`, `u_id`, `Lead_Status`, `Remarks`, `count`) VALUES
(1, 23, 12, 'Active', '', 1),
(2, 23, 12, 'Active', '', 1),
(3, 25, 1, 'Active', '', 1),
(4, 6, 1, 'Active', '', 1),
(5, 23, 1, 'Active', '', 1),
(6, 20, 130, 'Active', '', 1),
(7, 26, 130, 'Active', '', 1),
(8, 22, 132, 'Active', '', 1),
(9, 22, 132, 'Active', '', 1),
(10, 22, 132, 'Active', '', 1),
(11, 22, 132, 'Active', '', 1),
(12, 22, 132, 'Active', '', 1),
(13, 22, 132, 'Active', '', 1),
(14, 22, 132, 'Active', '', 1),
(15, 18, 1, 'Active', '', 1),
(16, 23, 1, 'active', NULL, 1),
(17, 18, 1, 'Active', '', 1),
(18, 24, 2, 'Active', '', 1),
(19, 22, 2, 'Active', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_comment`
--

CREATE TABLE `lead_comment` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `updated_user` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead_comment`
--

INSERT INTO `lead_comment` (`id`, `lead_id`, `comment`, `updated_user`, `date_time`) VALUES
(1, 0, '12wcd4r e4t 5uty', 'u_namse', '2020-11-23 14:05:34'),
(2, 19, '12wcd4r e4t 5uty', 'hatim', '2020-11-23 14:14:33'),
(3, 19, '', 'hatim', '2020-11-24 18:41:21'),
(4, 19, '', 'hatim', '2020-11-24 18:46:28'),
(5, 19, '', 'hatim', '2020-11-24 18:53:56'),
(6, 19, 'ok we have install', 'hatim', '2020-12-01 13:32:02'),
(7, 19, '', 'hatim', '2020-12-01 13:34:10'),
(8, 19, '', 'hatim', '2020-12-01 13:34:25'),
(9, 19, '', 'hatim', '2020-12-01 13:34:44'),
(10, 19, '', 'hatim', '2020-12-01 13:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `lead_files`
--

CREATE TABLE `lead_files` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `files` varchar(50) DEFAULT NULL,
  `files_types` varchar(50) DEFAULT NULL,
  `upload_on` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead_files`
--

INSERT INTO `lead_files` (`id`, `lead_id`, `files`, `files_types`, `upload_on`) VALUES
(1, 19, '1603389538618.JPEG', 'image/jpeg', NULL),
(2, 19, 'attendance.PNG', 'image/png', NULL),
(3, 19, 'Capture.PNG', 'image/png', NULL),
(4, 19, 'Capturegfdhf.PNG', 'image/png', NULL),
(5, 19, 'Capturehnjh.PNG', 'image/png', NULL),
(6, 19, 'Capturejkl;.PNG', 'image/png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lead_source`
--

CREATE TABLE `lead_source` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead_source`
--

INSERT INTO `lead_source` (`id`, `name`, `date`) VALUES
(1, 'so1', '2020-11-13 21:38:42'),
(2, 'so2', '2020-11-13 21:38:48'),
(3, 'sc1', '2020-11-13 21:38:53'),
(4, 'sc2', '2020-11-13 21:39:01'),
(5, 'sc3', '2020-11-13 21:39:07'),
(6, 'tso', '2020-11-13 21:39:23'),
(7, 'tso', '2020-11-13 21:39:45'),
(8, 'ali', '2020-12-11 16:06:13'),
(9, 'ali', '2020-12-11 16:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `lead_status`
--

CREATE TABLE `lead_status` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead_status`
--

INSERT INTO `lead_status` (`id`, `name`, `date`) VALUES
(1, 'Awaiting-install', '2020-11-09 18:25:59'),
(2, 'Cancelled', '2020-11-09 18:26:08'),
(3, 'Call-Back', '2020-11-09 18:26:16'),
(4, 'Charge-Back', '2020-11-09 18:26:25'),
(5, 'Outstanding-Balance', '2020-11-09 18:26:32'),
(6, 'Prepayment', '2020-11-09 18:26:40'),
(7, 'Installed', '2020-11-09 18:26:47'),
(8, 'Pending', '2020-11-09 18:26:54'),
(9, 'Deposit', '2020-11-09 18:27:01'),
(10, 'Sale Declined', '2020-11-09 18:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `le_Sub` varchar(50) DEFAULT NULL,
  `lev_type` varchar(50) DEFAULT NULL,
  `lev_to` varchar(50) DEFAULT NULL,
  `lev_from` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leave_remarks`
--

CREATE TABLE `leave_remarks` (
  `id` int(11) NOT NULL,
  `lev_id` int(11) NOT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `stauts` varchar(50) NOT NULL,
  `approved` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `msg` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `to_id` int(11) NOT NULL,
  `att` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `u_id`, `msg`, `date`, `to_id`, `att`) VALUES
(204, 29, 'hi', '2020-12-27 22:07:00', 2, NULL),
(205, 30, 'hay', '2020-12-27 22:07:04', 29, NULL),
(206, 29, '1', '2020-12-27 22:37:00', 1, NULL),
(207, 29, 'hi', '2020-12-27 22:37:28', 1, NULL),
(208, 29, 'hi', '2020-12-27 22:38:03', 30, NULL),
(209, 30, 'hy', '2020-12-27 22:38:12', 29, NULL),
(210, 29, '1', '2020-12-27 22:44:02', 30, NULL),
(211, 29, '1', '2020-12-27 22:46:43', 30, NULL),
(212, 29, '1', '2020-12-27 22:48:30', 30, NULL),
(213, 29, '1', '2020-12-27 22:50:31', 30, NULL),
(214, 29, '123', '2020-12-27 22:52:00', 30, NULL),
(215, 29, '1', '2020-12-27 22:53:46', 30, NULL),
(216, 30, '3', '2020-12-27 22:55:46', 29, NULL),
(217, 29, '1', '2020-12-27 23:12:21', 30, NULL),
(218, 29, '1', '2020-12-27 23:18:43', 30, NULL),
(219, 29, 'hi', '2020-12-27 23:18:49', 30, NULL),
(220, 29, '1', '2020-12-27 23:20:03', 30, NULL),
(221, 29, '1', '2020-12-27 23:23:47', 30, NULL),
(222, 29, 'oo', '2020-12-27 23:27:45', 30, NULL),
(223, 29, '123aaa', '2020-12-27 23:28:41', 30, NULL),
(224, 29, 'jani', '2020-12-27 23:31:20', 30, NULL),
(225, 29, 'qwe', '2020-12-27 23:31:42', 30, NULL),
(226, 2, 'hi', '2020-12-27 23:32:11', 29, NULL),
(227, 29, '1', '2020-12-27 23:33:40', 30, NULL),
(228, 29, 'b', '2020-12-27 23:34:06', 30, NULL),
(229, 29, '2', '2020-12-27 23:34:33', 30, NULL),
(230, 29, '7', '2020-12-27 23:35:24', 2, NULL),
(231, 29, '1', '2020-12-27 23:39:21', 2, NULL),
(232, 29, 'hi', '2020-12-27 23:39:58', 2, NULL),
(233, 29, '1', '2020-12-27 23:41:08', 30, NULL),
(234, 30, 'asdas', '2020-12-27 23:41:12', 29, NULL),
(235, 29, 'zxczx', '2020-12-27 23:41:15', 30, NULL),
(236, 30, 'Lol', '2020-12-28 00:44:27', 2, NULL),
(237, 29, '?', '2020-12-28 00:44:58', 30, NULL),
(238, 30, '000', '2020-12-28 00:45:56', 2, NULL),
(239, 29, 'mjhhk', '2020-12-28 00:46:04', 30, NULL),
(240, 29, 'jkljkl', '2020-12-28 00:46:31', 1, NULL),
(241, 30, 'Love u', '2020-12-28 00:46:49', 2, NULL),
(242, 30, 'Lolll', '2020-12-28 00:52:01', 2, NULL),
(243, 30, 'Yoyo', '2020-12-28 00:53:53', 2, NULL),
(244, 30, '😂', '2020-12-28 00:54:02', 2, NULL),
(245, 30, '😎', '2020-12-28 00:54:48', 2, NULL),
(246, 30, 'T', '2020-12-28 00:54:48', 2, NULL),
(247, 30, '🖕🏿', '2020-12-28 00:55:18', 2, NULL),
(248, 29, '', '2020-12-28 23:08:56', 33, NULL),
(249, 29, 'hi', '2020-12-28 23:09:17', 33, NULL),
(250, 29, '', '2020-12-28 23:09:36', 33, NULL),
(251, 29, '', '2020-12-28 23:09:44', 33, NULL),
(252, 29, '', '2020-12-28 23:09:44', 33, NULL),
(253, 29, '', '2020-12-28 23:09:45', 33, NULL),
(254, 29, 'hi', '2020-12-28 23:09:51', 33, NULL),
(255, 29, '', '2020-12-28 23:10:20', 33, NULL),
(256, 29, '', '2020-12-28 23:15:04', 33, NULL),
(257, 29, 'sasd', '2020-12-28 23:16:47', 33, NULL),
(258, 29, '', '2020-12-28 23:16:51', 33, NULL),
(259, 29, '', '2020-12-28 23:37:52', 33, NULL),
(260, 29, '', '2020-12-28 23:39:03', 33, NULL),
(261, 29, '', '2020-12-28 23:39:59', 33, NULL),
(262, 29, '', '2020-12-28 23:42:12', 33, NULL),
(263, 29, '', '2020-12-28 23:42:52', 33, NULL),
(264, 29, '', '2020-12-28 23:44:24', 33, NULL),
(265, 29, '', '2020-12-28 23:50:37', 33, NULL),
(266, 29, '', '2020-12-28 23:51:34', 33, NULL),
(267, 29, '', '2020-12-29 00:01:22', 33, NULL),
(268, 29, '', '2020-12-29 00:42:01', 33, NULL),
(269, 29, '', '2020-12-29 00:42:28', 33, NULL),
(270, 29, '', '2020-12-29 00:43:31', 33, NULL),
(271, 29, '', '2020-12-29 00:48:38', 33, NULL),
(272, 29, '1', '2020-12-29 01:04:12', 30, NULL),
(273, 29, 'hi', '2020-12-29 01:04:16', 30, NULL),
(274, 29, 'hi', '2020-12-30 01:26:14', 0, NULL),
(275, 29, '1', '2020-12-30 01:30:21', 1, NULL),
(276, 29, 'bro', '2020-12-30 01:30:32', 1, NULL),
(277, 29, 'bro', '2020-12-30 01:31:23', 3, NULL),
(278, 29, 'h1', '2020-12-30 01:34:53', 3, NULL),
(279, 29, 'asdas', '2020-12-30 01:37:09', 0, NULL),
(280, 29, 'xx', '2020-12-30 01:38:05', 0, NULL),
(281, 29, ':D', '2020-12-30 01:39:09', 0, NULL),
(282, 29, ':D', '2020-12-30 01:39:16', 0, NULL),
(283, 29, 'sun', '2020-12-30 01:39:34', 0, NULL),
(284, 29, 'asdas', '2020-12-30 01:39:37', 0, NULL),
(285, 29, '123', '2020-12-30 01:40:02', 0, NULL),
(286, 29, 'adda', '2020-12-30 01:41:28', 0, NULL),
(287, 29, 'yo', '2020-12-30 01:42:06', 3, NULL),
(288, 29, 'han', '2020-12-30 01:42:15', 3, NULL),
(289, 29, 'lol', '2020-12-30 01:47:31', 3, NULL),
(290, 29, 'testing 123', '2020-12-30 01:47:58', 0, NULL),
(291, 29, '123', '2020-12-30 01:49:56', 1, NULL),
(292, 29, 'dasdas', '2020-12-30 01:50:12', 0, NULL),
(293, 29, 'asd', '2020-12-30 01:50:33', 0, NULL),
(294, 29, 'user', '2020-12-30 02:02:37', 0, NULL),
(295, 29, 'x', '2020-12-30 02:04:24', 0, NULL),
(296, 29, 'x', '2020-12-30 02:05:10', 33, NULL),
(297, 29, 'groupxasdas', '2020-12-30 02:05:34', 0, NULL),
(298, 29, 'asd', '2020-12-30 02:05:59', 1, NULL),
(299, 29, 'sun', '2020-12-30 02:06:07', 1, NULL),
(300, 29, 'sun', '2020-12-30 02:06:12', 32, NULL),
(301, 29, 'asd', '2020-12-30 02:07:14', 32, NULL),
(302, 29, 'hi', '2020-12-30 02:07:46', 32, NULL),
(303, 29, 'attendanceprint.php?year=2020&mth=12&btn-fetch=181', '2021-01-03 20:51:06', 2, NULL),
(304, 2, 'https://github.com/mazzyy/CRM/invitations', '2021-01-04 02:14:39', 2, NULL),
(305, 2, 'done', '2021-01-04 02:14:48', 29, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `lead_Id` int(11) NOT NULL,
  `current_provider` varchar(50) NOT NULL,
  `Lead_Source` varchar(50) NOT NULL,
  `Assigned_To` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Vendor_Name` varchar(50) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `lead_Id`, `current_provider`, `Lead_Source`, `Assigned_To`, `Description`, `Vendor_Name`, `Date`) VALUES
(1, 2, 'Current_pro', '0', 'Assigned_To', 'Description', NULL, '2020-11-16 12:38:22'),
(2, 3, 'COX', '0', '234verr34', 't 5fger erf erg we', NULL, '2020-11-16 13:04:11'),
(3, 0, 'Exede', '0', '234verr34', 't 5fger erf erg we', NULL, '2020-11-16 13:07:28'),
(4, 4, 'Windstream', '0', '234verr34', 't 5fger erf erg we', NULL, '2020-11-16 13:20:49'),
(5, 5, 'COX', 'so2', '234verr34', 't 5fger erf erg we', NULL, '2020-11-16 13:26:22'),
(6, 6, 'Century Link', '', '', '', NULL, '2020-11-16 17:52:06'),
(7, 7, 'Windstream', '', '', '', NULL, '2020-11-16 18:34:26'),
(8, 8, 'COX', 'sc1', '234verr34', 't 5fger erf erg we', NULL, '2020-11-17 15:55:41'),
(9, 9, 'COX', 'sc1', '234verr34', 't 5fger erf erg we', NULL, '2020-11-17 16:02:55'),
(10, 10, 'COX', 'sc1', '234verr34', 't 5fger erf erg we', NULL, '2020-11-17 16:04:09'),
(11, 11, 'COX', 'sc1', '234verr34', 't 5fger erf erg we', NULL, '2020-11-17 16:07:28'),
(12, 12, 'COX', 'sc1', '234verr34', 't 5fger erf erg we', NULL, '2020-11-17 16:08:54'),
(13, 13, 'COX', 'sc1', '234verr34', 't 5fger erf erg we', NULL, '2020-11-17 16:09:00'),
(14, 14, 'COX', 'sc1', '234verr34', 't 5fger erf erg we', NULL, '2020-11-17 16:09:01'),
(15, 15, 'Frontier', 'tso', '234verr34', 't 5fger erf erg we', NULL, '2020-11-17 18:44:12'),
(16, 17, 'Frontier', 'tso', '234verr34', 't 5fger erf erg we', NULL, '2020-11-17 18:48:28'),
(17, 18, 'Hughes Net', 'sc1', '234verr34', 't 5fger erf erg we', NULL, '2020-11-19 12:10:00'),
(18, 19, 'Direct TV', 'tso', '234verr34', 't 5fger erf erg we', NULL, '2020-11-19 14:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `pay_roll`
--

CREATE TABLE `pay_roll` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `lev_id` int(11) NOT NULL,
  `paid_leave` varchar(50) NOT NULL,
  `bonus` varchar(50) NOT NULL,
  `Arrears` varchar(50) NOT NULL,
  `Penalties` varchar(50) NOT NULL,
  `deductions` varchar(50) NOT NULL,
  `net_Salary` varchar(50) NOT NULL,
  `commission` varchar(50) NOT NULL,
  `cash_Advance` varchar(50) NOT NULL,
  `gross_Salary` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`, `date`) VALUES
(1, 'At&T', '2020-11-06 23:01:09'),
(2, 'COX', '2020-11-06 23:01:19'),
(3, 'Direct TV', '2020-11-06 23:01:28'),
(4, 'Exede', '2020-11-06 23:01:35'),
(5, 'None', '2020-11-06 23:01:42'),
(6, 'Xfinity', '2020-11-06 23:01:50'),
(7, 'Windstream', '2020-11-06 23:01:57'),
(8, 'Spectrum', '2020-11-06 23:02:12'),
(9, 'Frontier', '2020-11-06 23:02:22'),
(10, 'Hughes Net', '2020-11-06 23:02:40'),
(11, 'Century Link', '2020-11-06 23:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `public_chat`
--

CREATE TABLE `public_chat` (
  `pc_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `public_chat`
--

INSERT INTO `public_chat` (`pc_id`, `u_id`, `message`, `datetime`) VALUES
(1, 1, '545', '2020-11-11 18:24:04'),
(2, 1, 'jj', '2020-11-11 18:24:20'),
(3, 2, 'hatim', '2020-11-13 13:30:55'),
(4, 2, 'hatim', '2020-11-13 13:31:03'),
(5, 2, 'hatim', '2020-11-13 13:38:42'),
(6, 2, 'ytut', '2020-11-13 14:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `date`) VALUES
(1, 'TV', '2020-11-06 00:11:01'),
(2, 'INTERNET', '2020-11-06 00:11:56'),
(3, 'HOME PHONE', '2020-11-06 00:12:48'),
(4, 'HOME SECURITY', '2020-11-06 00:13:29'),
(5, 'MOBILITY', '2020-11-06 00:14:03'),
(6, 'TV STREAM', '2020-11-06 00:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `service_offered`
--

CREATE TABLE `service_offered` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `provi_name` varchar(50) NOT NULL,
  `serv_name` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `sale_date` varchar(50) DEFAULT NULL,
  `opp_date` varchar(20) DEFAULT NULL,
  `opp_time` varchar(20) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `confirmation_num` varchar(30) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_offered`
--

INSERT INTO `service_offered` (`id`, `lead_id`, `order_id`, `provi_name`, `serv_name`, `status`, `sale_date`, `opp_date`, `opp_time`, `account`, `confirmation_num`, `date`) VALUES
(1, 12, 12, 'Frontier', 'HOME PHONE', 'Awaiting-install', '2020-11-18', '2020-11-18', '12:12pm', '1231312312', '', '2020-11-17 16:08:54'),
(2, 13, 13, 'Frontier', 'HOME PHONE', 'Awaiting-install', '2020-11-18', '2020-11-18', '12:12pm', '1231312312', '', '2020-11-17 16:09:00'),
(3, 14, 14, 'Frontier', 'HOME PHONE', 'Awaiting-install', '2020-11-18', '2020-11-18', '12:12pm', '1231312312', '', '2020-11-17 16:09:01'),
(4, 15, 0, 'Hughes Net', 'TV', 'Installed', '2020-11-05', '2020-11-04', '12:12pm', '1231312312', '', '2020-11-17 18:44:13'),
(5, 17, 16, 'Hughes Net', 'TV', 'Installed', '2020-11-05', '2020-11-04', '12:12pm', '1231312312', '', '2020-11-17 18:48:28'),
(6, 18, 17, 'Century Link', 'HOME PHONE', 'Awaiting-install', '2020-11-20', '2020-11-20', '12:12pm', '1231312312', '', '2020-11-19 12:10:00'),
(7, 19, 18, 'Century Link', '             HOME PHONE             ', '  Prepayment  ', '  ', ' ', '12:12pm', '             1231312312             ', '             1231312312  ', '2020-11-19 14:56:19'),
(8, 19, 18, 'Spectrum', '             HOME PHONE             ', '   Awaiting-install   ', '  ', ' ', '12:14pm', '             1231312312             ', '             1231312312  ', '2020-11-19 14:56:19'),
(9, 0, 0, 'Windstream', 'HOME PHONE', 'Prepayment', '2020-11-24', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:29:53'),
(10, 1231312312, 19, 'Windstream', 'HOME PHONE', 'Prepayment', '2020-11-24', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:31:19'),
(11, 1231312312, 19, 'Windstream', 'HOME PHONE', 'Prepayment', '2020-11-24', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:31:22'),
(12, 1231312312, 19, 'Century Link', 'HOME PHONE', 'Prepayment', '2020-11-24', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:31:24'),
(13, 1231312312, 19, 'At&T', 'HOME PHONE', 'Prepayment', '2020-11-24', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:31:26'),
(14, 1, 1, 'Hughes Net', 'HOME PHONE', 'Awaiting-install', '2020-11-03', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:37:17'),
(15, 1, 1, 'Hughes Net', 'HOME PHONE', 'Awaiting-install', '2020-11-03', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:37:48'),
(16, 1, 1, 'Hughes Net', 'HOME PHONE', 'Awaiting-install', '2020-11-03', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:37:49'),
(17, 1, 1, 'Hughes Net', 'HOME PHONE', 'Awaiting-install', '2020-11-03', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:37:49'),
(18, 1, 1, 'Hughes Net', 'HOME PHONE', 'Awaiting-install', '2020-11-03', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:38:35'),
(19, 1, 1, 'Hughes Net', 'HOME PHONE', 'Awaiting-install', '2020-11-03', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:38:36'),
(20, 1, 1, 'Hughes Net', 'HOME PHONE', 'Awaiting-install', '2020-11-03', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:38:36'),
(21, 1, 1, 'Hughes Net', 'HOME PHONE', 'Awaiting-install', '2020-11-03', '2020-11-27', '12:12pm', '1231312312', '', '2020-11-20 16:38:36'),
(22, 19, 18, 'Windstream', '          HOME PHONE          ', '    Installed    ', '  ', ' ', '12:12pm', '          1231312312          ', '          ', '2020-11-20 16:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `attnd_id` int(11) NOT NULL,
  `time_in` varchar(50) NOT NULL,
  `time_out` varchar(50) DEFAULT NULL,
  `hours` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `attnd_id`, `time_in`, `time_out`, `hours`) VALUES
(16, 954, '12:41:37pm', '12:41:37am', '00:00:12'),
(17, 953, '12:41:37pm', '12:41:37am', '00:00:09'),
(18, 953, '12:41:37pm', '12:41:37am', '00:00:12'),
(19, 952, '12:41:37pm', '12:41:37am', '00:00:12'),
(20, 951, '12:41:37pm', '12:41:37am', '00:00:12'),
(21, 950, '12:41:37pm', '12:41:37am', '00:00:12'),
(22, 949, '12:41:37pm', '12:41:37am', '00:00:12'),
(23, 948, '12:41:37pm', '12:41:37am', '00:00:09'),
(24, 966, '12:41:37pm', '12:41:37am', '00:00:09'),
(25, 967, '12:41:37pm', '12:41:37am', '00:00:12'),
(26, 968, '12:41:37pm', '12:41:37am', '00:00:12'),
(27, 969, '12:41:37pm', '12:41:37am', '00:00:12'),
(28, 970, '12:41:37pm', '12:41:37am', '00:00:12'),
(29, 971, '12:41:37pm', '12:41:37am', '00:00:09'),
(30, 972, '12:41:37pm', '12:41:37am', '00:00:12'),
(31, 973, '12:41:37pm', '12:41:37am', '00:00:12'),
(32, 964, '12:41:37pm', '12:41:37am', '00:00:12'),
(33, 965, '12:41:37pm', '12:41:37am', '00:00:12'),
(34, 974, '12:41:37pm', '12:41:37am', '00:00:12'),
(35, 975, '12:41:37pm', '12:41:37am', '00:00:12'),
(36, 976, '12:41:37pm', '12:41:37am', '00:00:09'),
(37, 960, '12:41:37pm', '12:41:37am', '00:00:12'),
(38, 961, '12:41:37pm', '12:41:37am', '00:00:12'),
(39, 955, '12:41:37pm', '12:41:37am', '00:00:12'),
(40, 956, '12:41:37pm', '12:41:37am', '00:00:12'),
(41, 958, '12:41:37pm', '12:41:37am', '00:00:12'),
(42, 957, '12:41:37pm', '12:41:37am', '00:00:12'),
(43, 959, '12:41:37pm', '12:41:37am', '00:00:09'),
(44, 977, '12:41:37pm', '12:41:37am', '00:00:12'),
(45, 978, '12:41:37pm', '12:41:37am', '00:00:12'),
(72, 1028, '10:27:14am', '10:27:16am', '00:00:02'),
(73, 1029, '10:28:00am', '10:28:04am', '00:00:04'),
(74, 1030, '10:32:38am', '10:32:44am', '00:00:06'),
(75, 1031, '10:35:04am', '10:35:06am', '00:00:02'),
(76, 1032, '10:35:48am', '10:35:59am', '00:00:11'),
(77, 1033, '10:41:31am', '10:41:33am', '00:00:02'),
(80, 1173, '06:16:59am', '06:17:01am', '00:00:02'),
(81, 1179, '06:59:09am', NULL, NULL),
(82, 1180, '07:00:50am', '07:32:53am', '00:32:03'),
(83, 1181, '07:32:52am', '07:32:53am', '00:32:03'),
(86, 1184, '07:40:25am', '07:40:29am', '00:00:04'),
(87, 1186, '09:32:18am', NULL, NULL),
(88, 1187, '10:27:30am', '10:27:50am', '00:00:20'),
(96, 1195, '11:28:34am', '11:28:38am', '00:00:04'),
(97, 1196, '11:29:06am', NULL, NULL),
(98, 1197, '11:31:15am', NULL, NULL),
(99, 1198, '11:35:14am', NULL, NULL),
(100, 1199, '11:35:19am', NULL, NULL),
(101, 1200, '11:37:21am', '11:37:33am', '00:00:12'),
(102, 1201, '11:37:25am', '11:37:33am', '00:00:12'),
(103, 1202, '11:38:00am', NULL, NULL),
(104, 1203, '11:38:06am', NULL, NULL),
(105, 1204, '11:40:48am', NULL, NULL),
(106, 1205, '11:40:55am', NULL, NULL),
(107, 1206, '12:00:20pm', '12:01:09pm', '00:00:49'),
(108, 1207, '12:00:26pm', '12:01:09pm', '00:00:49'),
(110, 1211, '01:31:55pm', '01:32:02pm', '00:00:07'),
(111, 1216, '01:59:35pm', '01:59:38pm', '00:00:03'),
(112, 1217, '02:01:31pm', '02:01:33pm', '00:00:02'),
(116, 1235, '08:47:18am', '08:47:20am', '00:00:02'),
(124, 1243, '09:48:44am', '09:48:45am', '00:00:01'),
(125, 1244, '09:51:27am', '09:51:33am', '00:00:06'),
(126, 1245, '09:55:57am', '09:55:57am', '00:00:00'),
(127, 1246, '09:57:04am', '09:57:05am', '00:00:01'),
(128, 1247, '10:00:47am', '10:00:49am', '00:00:02'),
(130, 1249, '10:13:56am', '10:13:57am', '00:00:01'),
(134, 1253, '10:18:53am', '10:19:04am', '00:00:11'),
(135, 1254, '10:22:55am', '10:22:56am', '00:00:01'),
(136, 1255, '10:24:11am', NULL, NULL),
(137, 1256, '10:32:45am', NULL, NULL),
(138, 1257, '10:33:25am', '10:33:32am', '00:00:07'),
(139, 1258, '10:35:04am', '10:35:10am', '00:00:06'),
(140, 1259, '10:36:14am', NULL, NULL),
(141, 1260, '10:36:44am', '10:36:47am', '00:00:03'),
(144, 1263, '10:44:51am', '10:44:52am', '00:00:01'),
(145, 1264, '10:45:33am', '10:45:43am', '00:00:10'),
(146, 1265, '10:50:33am', NULL, NULL),
(147, 1266, '10:51:29am', '10:51:33am', '00:00:04'),
(148, 1267, '10:51:42am', NULL, NULL),
(149, 1268, '10:54:04am', NULL, NULL),
(150, 1269, '10:54:28am', NULL, NULL),
(151, 1270, '10:55:19am', '10:55:39am', '00:00:20'),
(152, 1271, '11:03:38am', NULL, NULL),
(153, 1272, '11:04:29am', NULL, NULL),
(154, 1273, '11:05:07am', NULL, NULL),
(155, 1274, '11:07:45am', NULL, NULL),
(156, 1275, '11:09:32am', '11:09:39am', '00:00:07'),
(157, 1276, '11:09:42am', NULL, NULL),
(158, 1277, '11:24:35am', NULL, NULL),
(159, 1278, '11:25:03am', NULL, NULL),
(160, 1279, '11:27:00am', NULL, NULL),
(161, 1280, '11:27:05am', NULL, NULL),
(162, 1281, '11:28:24am', NULL, NULL),
(163, 1282, '11:35:42am', NULL, NULL),
(164, 1283, '11:36:09am', NULL, NULL),
(165, 1284, '11:36:36am', NULL, NULL),
(166, 1285, '11:36:59am', NULL, NULL),
(167, 1286, '11:38:39am', NULL, NULL),
(168, 1287, '11:38:56am', NULL, NULL),
(169, 1288, '11:40:00am', NULL, NULL),
(170, 1289, '11:44:14am', NULL, NULL),
(171, 1290, '11:46:43am', NULL, NULL),
(172, 1291, '11:47:37am', NULL, NULL),
(173, 1292, '11:48:55am', NULL, NULL),
(174, 1293, '11:49:21am', NULL, NULL),
(175, 1294, '11:49:35am', NULL, NULL),
(176, 1295, '11:50:23am', '11:50:58am', '00:00:35'),
(177, 1296, '11:50:48am', '11:50:58am', '00:00:35'),
(178, 1297, '11:51:16am', NULL, NULL),
(179, 1298, '11:51:38am', NULL, NULL),
(180, 1299, '11:51:42am', NULL, NULL),
(181, 1300, '11:59:58am', '12:00:19pm', '00:00:21'),
(182, 1301, '12:03:31pm', NULL, NULL),
(183, 1302, '12:04:11pm', NULL, NULL),
(184, 1303, '12:07:36pm', '12:08:18pm', '00:00:42'),
(189, 1308, '06:27:41am', '06:27:43am', '00:00:02'),
(190, 1309, '09:00:47am', '09:00:48am', '00:00:01'),
(191, 1310, '09:06:59am', NULL, NULL),
(192, 1314, '09:06:59am', '010:06:59am', '01:00:01'),
(193, 1315, '09:00:47am', '11:00:48am', '02:00:01'),
(194, 1316, '06:27:41am', '06:27:43am', '00:00:02'),
(195, 1317, '12:07:36pm', '12:08:18pm', '00:00:42'),
(196, 1318, '12:04:11pm', NULL, NULL),
(197, 1319, '12:03:31pm', NULL, NULL),
(198, 1320, '11:59:58am', '12:00:19pm', '00:00:21'),
(199, 1299, '11:51:42am', NULL, NULL),
(200, 1321, '11:51:42am', NULL, NULL),
(201, 1322, '11:59:58am', '12:00:19pm', '00:00:21'),
(202, 1323, '12:03:31pm', NULL, NULL),
(203, 1324, '12:04:11pm', NULL, NULL),
(204, 1325, '12:07:36pm', '12:08:18pm', '00:00:42'),
(205, 1326, '06:27:41am', '06:27:43am', '00:00:02'),
(206, 1327, '09:00:47am', '11:00:48am', '02:00:01'),
(207, 1328, '09:06:59am', '010:06:59am', '01:00:01'),
(214, 1336, '12:13:10pm', '12:16:45pm', '00:03:35'),
(215, 1337, '12:16:41pm', '12:16:45pm', '00:03:35'),
(216, 1338, '12:17:59pm', NULL, NULL),
(217, 1339, '12:18:39pm', NULL, NULL),
(218, 1340, '', '12:20:44pm', '838:59:59'),
(223, 1349, '12:31:12pm', '12:31:13pm', '00:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dep_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dep_id`, `name`, `date`) VALUES
(1, 'Admin', '2020-11-06 15:42:00'),
(2, 'Agent', '2020-11-06 15:42:00'),
(3, 'Back Office', '2020-11-06 17:55:07'),
(4, 'IT', '2020-11-06 17:55:07'),
(5, 'HR', '2020-11-06 17:55:21'),
(6, 'Employee', '2020-11-06 17:55:21'),
(7, 'dummy', '2020-12-03 11:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `des_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`des_id`, `name`, `dep_id`, `date`) VALUES
(1, 'Office Administrator', 1, '2020-11-06 15:43:24'),
(2, 'Operation Manager', 1, '2020-11-06 15:43:24'),
(3, 'Support', 3, '2020-11-06 17:56:38'),
(4, 'Sales executive ', 2, '2020-11-06 17:58:38'),
(5, 'Networking', 4, '2020-11-06 17:57:45'),
(6, 'web developer', 4, '2020-11-06 17:58:03'),
(7, 'jhhjj', 1, '2020-11-14 14:51:40'),
(8, 'CIK', 2, '2020-12-02 17:34:04'),
(9, 'USA-telecom ', 2, '2020-12-02 17:37:38'),
(10, 'CIK', 1, '2020-12-03 11:08:17'),
(11, 'USA-telecom ', 4, '2020-12-03 11:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `name`, `status`, `dateTime`) VALUES
(1, 'admin', 'active', '2020-11-04 14:55:23'),
(2, 'agent', 'active', '2020-11-04 14:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `u_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_pass` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `u_status` varchar(10) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `login_status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`u_id`, `emp_id`, `u_name`, `u_pass`, `role_id`, `u_status`, `date_time`, `login_status`) VALUES
(1, 2, 'zeeshan', '12345', 1, 'active', '2020-12-07 18:17:22', 0),
(2, 1, 'hatim', '123', 1, 'active', '2020-12-21 15:04:26', 1),
(29, 5, 'mazzyy', '123', 1, 'active', '2020-12-21 15:19:55', 1),
(30, 9, 'roy', '123', 1, 'active', '2020-12-22 14:07:13', 1),
(31, 2, 'waseem', '12345', 1, 'active', '2020-12-07 18:17:22', 0),
(32, 1, 'badami', '123', 1, 'active', '2020-12-21 15:04:26', 1),
(33, 5, 'musawar', '123', 1, 'active', '2020-12-21 15:19:55', 1),
(34, 9, 'rahiel', '123', 1, 'active', '2020-12-22 14:07:13', 1),
(35, 2, 'Mansoor', '12345', 1, 'active', '2020-12-07 18:17:22', 0),
(36, 2, 'Mubeen', '12345', 1, 'active', '2020-12-07 18:17:22', 0),
(37, 1, 'hasmi', '123', 1, 'active', '2020-12-21 15:04:26', 1),
(38, 5, 'Danyal', '123', 1, 'active', '2020-12-21 15:19:55', 1),
(39, 9, 'norina', '123', 1, 'active', '2020-12-22 14:07:13', 1),
(40, 1, 'Asma', '123', 1, 'active', '2020-12-21 15:04:26', 1),
(41, 5, 'mahnoor', '123', 1, 'active', '2020-12-21 15:19:55', 1),
(42, 9, 'Saad', '123', 1, 'active', '2020-12-22 14:07:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `Date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `emp_id`, `user_name`, `password`, `status`, `Date`) VALUES
(1, 1, 'hatim', '123', 'ok', '11-5-2020'),
(2, 2, 'musawar', '123', 'ok', '11-5-2020');

-- --------------------------------------------------------

--
-- Structure for view `earn`
--
DROP TABLE IF EXISTS `earn`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `earn`  AS SELECT `attendace`.`status` AS `status`, count(0) AS `number` FROM `attendace` WHERE `attendace`.`emp_id` = 1 AND year(`attendace`.`date`) = 2021 AND month(`attendace`.`date`) = 1 GROUP BY `attendace`.`status` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendace`
--
ALTER TABLE `attendace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendace_ibfk_1` (`emp_id`);

--
-- Indexes for table `chat_member`
--
ALTER TABLE `chat_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_member_ibfk_1` (`g_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employess`
--
ALTER TABLE `employess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Dep_id` (`Dep_id`),
  ADD KEY `des_id` (`des_id`);

--
-- Indexes for table `employess_emergency_contact`
--
ALTER TABLE `employess_emergency_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_details`
--
ALTER TABLE `emp_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_messages`
--
ALTER TABLE `group_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `g_id` (`g_id`),
  ADD KEY `group_messages_ibfk_2` (`u_id`);

--
-- Indexes for table `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_comment`
--
ALTER TABLE `lead_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_files`
--
ALTER TABLE `lead_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_source`
--
ALTER TABLE `lead_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_status`
--
ALTER TABLE `lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_remarks`
--
ALTER TABLE `leave_remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_roll`
--
ALTER TABLE `pay_roll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_chat`
--
ALTER TABLE `public_chat`
  ADD PRIMARY KEY (`pc_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_offered`
--
ALTER TABLE `service_offered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`des_id`),
  ADD KEY `dep_id` (`dep_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendace`
--
ALTER TABLE `attendace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1350;

--
-- AUTO_INCREMENT for table `chat_member`
--
ALTER TABLE `chat_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employess`
--
ALTER TABLE `employess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employess_emergency_contact`
--
ALTER TABLE `employess_emergency_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_details`
--
ALTER TABLE `emp_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `group_messages`
--
ALTER TABLE `group_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lead`
--
ALTER TABLE `lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `lead_comment`
--
ALTER TABLE `lead_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lead_files`
--
ALTER TABLE `lead_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lead_source`
--
ALTER TABLE `lead_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lead_status`
--
ALTER TABLE `lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `leave_remarks`
--
ALTER TABLE `leave_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pay_roll`
--
ALTER TABLE `pay_roll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `public_chat`
--
ALTER TABLE `public_chat`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_offered`
--
ALTER TABLE `service_offered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `des_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendace`
--
ALTER TABLE `attendace`
  ADD CONSTRAINT `attendace_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employess` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chat_member`
--
ALTER TABLE `chat_member`
  ADD CONSTRAINT `chat_member_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `group_chat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_member_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `tbl_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employess`
--
ALTER TABLE `employess`
  ADD CONSTRAINT `employess_ibfk_2` FOREIGN KEY (`Dep_id`) REFERENCES `tbl_department` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employess_ibfk_3` FOREIGN KEY (`des_id`) REFERENCES `tbl_designation` (`des_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `group_messages`
--
ALTER TABLE `group_messages`
  ADD CONSTRAINT `group_messages_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `group_chat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_messages_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `tbl_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `public_chat`
--
ALTER TABLE `public_chat`
  ADD CONSTRAINT `public_chat_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `public_chat` (`pc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD CONSTRAINT `tbl_designation_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `tbl_department` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`role_id`),
  ADD CONSTRAINT `tbl_users_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employess` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
