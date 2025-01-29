-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2024 at 08:17 PM
-- Server version: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jkatama_2_db`
--
CREATE DATABASE IF NOT EXISTS `jkatama_2_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jkatama_2_db`;

-- --------------------------------------------------------

--
-- Table structure for table `BOOKING`
--

DROP TABLE IF EXISTS `BOOKING`;
CREATE TABLE `BOOKING` (
  `BOOK_ID` char(8) NOT NULL,
  `CUSIN_ID` char(8) NOT NULL,
  `BOOK_TYPE` varchar(20) NOT NULL,
  `BOOK_DATETIME` datetime NOT NULL,
  `BOOK_VEH_TYPE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BOOKING`
--

INSERT INTO `BOOKING` (`BOOK_ID`, `CUSIN_ID`, `BOOK_TYPE`, `BOOK_DATETIME`, `BOOK_VEH_TYPE`) VALUES
('BK123456', 'CI123456', 'PICK_DROP', '2024-01-10 09:30:00', 'Sedan'),
('BK234567', 'CI234567', 'PICK_DROP', '2024-02-15 14:00:00', 'SUV'),
('BK345678', 'CI345678', 'PICK_DROP', '2024-03-20 11:00:00', 'Hatchback'),
('BK456789', 'CI456789', 'RENTAL', '2024-04-05 16:45:00', 'Coupe'),
('BK567890', 'CI567890', 'RENTAL', '2024-05-10 18:00:00', 'Van');

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
CREATE TABLE `CLIENT` (
  `CLIENT_ID` char(8) NOT NULL,
  `CLIENT_PERSON_CONTACT` char(8) NOT NULL,
  `CLIENT_NAME` varchar(20) DEFAULT NULL,
  `CLIENT_BRANCH` varchar(20) DEFAULT NULL,
  `CLIENT_SUBPLAN_CODE` char(4) NOT NULL,
  `CLIENT_EMP_ID` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CLIENT`
--

INSERT INTO `CLIENT` (`CLIENT_ID`, `CLIENT_PERSON_CONTACT`, `CLIENT_NAME`, `CLIENT_BRANCH`, `CLIENT_SUBPLAN_CODE`, `CLIENT_EMP_ID`) VALUES
('CL123456', 'CI123456', 'John Enterprises', 'Main Branch', 'SP01', 'EM123456'),
('CL234567', 'CI234567', 'Jane Ltd.', 'Sub Branch', 'SP02', 'EM234567'),
('CL345678', 'CI345678', 'Alice Corp.', 'Main Branch', 'SP03', 'EM345678'),
('CL456789', 'CI456789', 'Bob Ltd.', 'Sub Branch', 'SP04', 'EM456789'),
('CL567890', 'CI567890', 'Charlie Co.', 'Main Branch', 'SP05', 'EM567890');

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER_ENTITY`
--

DROP TABLE IF EXISTS `CUSTOMER_ENTITY`;
CREATE TABLE `CUSTOMER_ENTITY` (
  `CUSEN_ID` char(8) NOT NULL,
  `CUSIN_ID` char(8) NOT NULL,
  `CUSEN_NAME` varchar(20) NOT NULL,
  `CUSEN_BRANCH` varchar(20) DEFAULT NULL,
  `CUSEN_PERSON_CONTACT` char(8) DEFAULT NULL,
  `CUSEN_MOBILENO` char(10) NOT NULL,
  `CUSEN_GSTNO` char(15) NOT NULL,
  `CUSEN_ADDRESS` varchar(20) DEFAULT NULL,
  `CUSEN_CITY` varchar(20) DEFAULT NULL,
  `CUSEN_ZIPCODE` char(6) DEFAULT NULL,
  `CUSEN_STATE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CUSTOMER_ENTITY`
--

INSERT INTO `CUSTOMER_ENTITY` (`CUSEN_ID`, `CUSIN_ID`, `CUSEN_NAME`, `CUSEN_BRANCH`, `CUSEN_PERSON_CONTACT`, `CUSEN_MOBILENO`, `CUSEN_GSTNO`, `CUSEN_ADDRESS`, `CUSEN_CITY`, `CUSEN_ZIPCODE`, `CUSEN_STATE`) VALUES
('CE123456', 'CI123456', 'John Enterprises', 'Main Branch', 'John', '9876543210', '11GSTNO1234X9X9', '123 Street, City', 'City A', '123456', 'State A'),
('CE234567', 'CI234567', 'Jane Ltd.', 'Sub Branch', 'Jane', '9876543211', '23GSTNO2345X9X9', '456 Avenue, Town', 'City B', '123457', 'State B'),
('CE345678', 'CI345678', 'Alice Corp.', 'Main Branch', 'Alice', '9876543212', '34GSTNO3456X8X9', '789 Road, Village', 'City C', '123458', 'State C'),
('CE456789', 'CI456789', 'Bob Ltd.', 'Sub Branch', 'Bob', '9876543213', '54GSTNO4567X8X9', '101 Lane, District', 'City D', '123459', 'State D'),
('CE567890', 'CI567890', 'Charlie Co.', 'Main Branch', 'Charlie', '9876543214', '24GSTNO5678X9X0', '202 Park, Region', 'City E', '123460', 'State E');

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER_INDIVIDUAL`
--

DROP TABLE IF EXISTS `CUSTOMER_INDIVIDUAL`;
CREATE TABLE `CUSTOMER_INDIVIDUAL` (
  `CUSIN_ID` char(8) NOT NULL,
  `CUSIN_FNAME` varchar(20) NOT NULL,
  `CUSIN_LNAME` varchar(20) NOT NULL,
  `CUSIN_MOBILENO` char(10) NOT NULL,
  `CUSIN_EMAILID` varchar(50) NOT NULL,
  `CUSIN_GENDER` char(1) DEFAULT NULL,
  `CUSIN_ADDRESS` varchar(50) NOT NULL,
  `CUSIN_CITY` varchar(20) DEFAULT NULL,
  `CUSIN_STATE` varchar(20) DEFAULT NULL,
  `CUSIN_ZIPCODE` char(6) DEFAULT NULL,
  `CUSIN_DRIVE_LICNO` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CUSTOMER_INDIVIDUAL`
--

INSERT INTO `CUSTOMER_INDIVIDUAL` (`CUSIN_ID`, `CUSIN_FNAME`, `CUSIN_LNAME`, `CUSIN_MOBILENO`, `CUSIN_EMAILID`, `CUSIN_GENDER`, `CUSIN_ADDRESS`, `CUSIN_CITY`, `CUSIN_STATE`, `CUSIN_ZIPCODE`, `CUSIN_DRIVE_LICNO`) VALUES
('CI123456', 'John', 'Doe', '9876543210', 'john.doe@example.com', 'M', '123 Street, City', 'City A', 'State A', '123456', 'DL1234567'),
('CI234567', 'Jane', 'Smith', '9876543211', 'jane.smith@example.com', 'F', '456 Avenue, Town', 'City B', 'State B', '123457', 'DL2345678'),
('CI345678', 'Alice', 'Brown', '9876543212', 'alice.brown@example.com', 'F', '789 Road, Village', 'City C', 'State C', '123458', 'DL3456789'),
('CI456789', 'Bob', 'White', '9876543213', 'bob.white@example.com', 'M', '101 Lane, District', 'City D', 'State D', '123459', 'DL4567890'),
('CI567890', 'Charlie', 'Green', '9876543214', 'charlie.green@example.com', 'M', '202 Park, Region', 'City E', 'State E', '123460', 'DL5678901');

-- --------------------------------------------------------

--
-- Table structure for table `DRIVER`
--

DROP TABLE IF EXISTS `DRIVER`;
CREATE TABLE `DRIVER` (
  `DRIVER_ID` char(8) NOT NULL,
  `SPIN_ID` char(8) NOT NULL,
  `DRIVER_LICNO` char(12) NOT NULL,
  `DRIVER_SPEN_ID` char(8) DEFAULT NULL,
  `DRIVER_ENT_AGREE` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `DRIVER`
--

INSERT INTO `DRIVER` (`DRIVER_ID`, `SPIN_ID`, `DRIVER_LICNO`, `DRIVER_SPEN_ID`, `DRIVER_ENT_AGREE`) VALUES
('DR123456', 'SI123456', 'LIC123456', 'SE123456', 'YES'),
('DR234567', 'SI234567', 'LIC234567', NULL, 'NO'),
('DR345678', 'SI345678', 'LIC345678', NULL, 'NO'),
('DR456789', 'SI456789', 'LIC456789', NULL, 'NO'),
('DR567890', 'SI567890', 'LIC567890', NULL, 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
CREATE TABLE `EMPLOYEE` (
  `EMP_ID` char(8) NOT NULL,
  `EMP_FNAME` varchar(20) NOT NULL,
  `EMP_LNAME` varchar(20) NOT NULL,
  `EMP_AADHARNO` char(12) NOT NULL,
  `EMP_MOBILENO` char(10) NOT NULL,
  `EMP_DOB` date DEFAULT NULL,
  `EMP_GENDER` char(1) DEFAULT NULL,
  `EMP_JOB_CODE` char(2) NOT NULL,
  `EMP_EMAILID` varchar(50) NOT NULL,
  `EMP_ADDRESS` varchar(50) NOT NULL,
  `EMP_CITY` varchar(20) DEFAULT NULL,
  `EMP_STATE` varchar(20) DEFAULT NULL,
  `EMP_ZIPCODE` char(6) DEFAULT NULL,
  `EMP_MONTHLY_SALARY` decimal(10,2) DEFAULT NULL,
  `EMP_JOB_TITLE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`EMP_ID`, `EMP_FNAME`, `EMP_LNAME`, `EMP_AADHARNO`, `EMP_MOBILENO`, `EMP_DOB`, `EMP_GENDER`, `EMP_JOB_CODE`, `EMP_EMAILID`, `EMP_ADDRESS`, `EMP_CITY`, `EMP_STATE`, `EMP_ZIPCODE`, `EMP_MONTHLY_SALARY`, `EMP_JOB_TITLE`) VALUES
('EM123456', 'John', 'Doe', '123412301234', '9876543210', '1985-06-15', 'M', '01', 'johndoe@example.com', '123 Elm St', 'Hyderabad', 'TS', '500001', '50000.00', 'Manager'),
('EM234567', 'Jane', 'Smith', '123412302345', '9876543211', '1990-02-20', 'F', '02', 'janesmith@example.com', '456 Oak St', 'Warangal', 'TS', '500101', '55000.00', 'Supervisor'),
('EM345678', 'Alice', 'Johnson', '123412303456', '9876543212', '1988-09-12', 'F', '03', 'alicejohnson@example.com', '789 Pine St', 'Rourkela', 'OD', '600601', '10000.00', 'Coordinator'),
('EM456789', 'Bob', 'Brown', '23412304567', '9876543213', '1992-03-18', 'M', '04', 'bobbrown@example.com', '101 Maple St', 'Bangalore', 'KA', '577001', '9000.00', 'Assistant Manager'),
('EM567890', 'Charlie', 'Williams', '123012305678', '9876543214', '1995-12-01', 'M', '05', 'charliewilliams@example.com', '202 Cedar St', 'Hyderabad', 'TS', '541010', '4500.00', 'DataEntry-I');

-- --------------------------------------------------------

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
CREATE TABLE `INVOICE` (
  `INV_NO` int(11) NOT NULL,
  `INV_REF_ID` char(10) DEFAULT NULL,
  `INV_BILL_AMOUNT` decimal(10,2) NOT NULL,
  `INV_STATUS` char(8) NOT NULL,
  `INV_DATETIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `INVOICE`
--

INSERT INTO `INVOICE` (`INV_NO`, `INV_REF_ID`, `INV_BILL_AMOUNT`, `INV_STATUS`, `INV_DATETIME`) VALUES
(1001, 'INV1001', '500.00', 'Paid', '2024-01-15 10:00:00'),
(1002, 'INV1002', '1500.00', 'Unpaid', '2024-02-20 15:30:00'),
(1003, 'INV1003', '200.00', 'Paid', '2024-03-25 12:15:00'),
(1004, 'INV1004', '1200.00', 'Unpaid', '2024-04-10 14:45:00'),
(1005, 'INV1005', '800.00', 'Paid', '2024-05-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `PICK_DROP`
--

DROP TABLE IF EXISTS `PICK_DROP`;
CREATE TABLE `PICK_DROP` (
  `BOOK_ID` char(8) NOT NULL,
  `PD_PLOC_LONG` decimal(8,6) NOT NULL,
  `PD_PLOC_LAT` decimal(9,6) NOT NULL,
  `PD_DLOC_LONG` decimal(8,6) NOT NULL,
  `PD_DLOC_LAT` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PICK_DROP`
--

INSERT INTO `PICK_DROP` (`BOOK_ID`, `PD_PLOC_LONG`, `PD_PLOC_LAT`, `PD_DLOC_LONG`, `PD_DLOC_LAT`) VALUES
('BK123456', '77.123456', '28.543210', '77.654321', '28.654321'),
('BK234567', '77.223456', '28.643210', '77.754321', '28.754321'),
('BK345678', '77.323456', '28.743210', '77.854321', '28.854321');

-- --------------------------------------------------------

--
-- Table structure for table `RENTAL`
--

DROP TABLE IF EXISTS `RENTAL`;
CREATE TABLE `RENTAL` (
  `BOOK_ID` char(8) NOT NULL,
  `RENT_PICK_LOC` varchar(20) NOT NULL,
  `RENT_DROP_LOC` varchar(20) NOT NULL,
  `RENT_VISIT_CITY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RENTAL`
--

INSERT INTO `RENTAL` (`BOOK_ID`, `RENT_PICK_LOC`, `RENT_DROP_LOC`, `RENT_VISIT_CITY`) VALUES
('BK456789', 'Shopping Complex', 'Beach', 'City D'),
('BK567890', 'Suburb', 'Convention Center', 'City E');

-- --------------------------------------------------------

--
-- Table structure for table `RIDE`
--

DROP TABLE IF EXISTS `RIDE`;
CREATE TABLE `RIDE` (
  `RIDE_ID` char(20) NOT NULL,
  `DRIVER_ID` char(8) NOT NULL,
  `VEHICLE_ID` char(8) NOT NULL,
  `RIDE_START_TIME` datetime NOT NULL,
  `RIDE_STOP_TIME` datetime DEFAULT NULL,
  `RIDE_START_LOC_LONG` decimal(8,6) NOT NULL,
  `RIDE_START_LOC_LAT` decimal(9,6) DEFAULT NULL,
  `RIDE_END_LOC_LONG` decimal(8,6) NOT NULL,
  `RIDE_END_LOC_LAT` decimal(9,6) DEFAULT NULL,
  `RIDE_MEANS` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RIDE`
--

INSERT INTO `RIDE` (`RIDE_ID`, `DRIVER_ID`, `VEHICLE_ID`, `RIDE_START_TIME`, `RIDE_STOP_TIME`, `RIDE_START_LOC_LONG`, `RIDE_START_LOC_LAT`, `RIDE_END_LOC_LONG`, `RIDE_END_LOC_LAT`, `RIDE_MEANS`) VALUES
('RD1234567890', 'DR123456', 'VH123456', '2024-01-12 08:30:00', '2024-01-12 09:30:00', '77.123456', '28.543210', '77.654321', '28.654321', 'Car'),
('RD2345678901', 'DR234567', 'VH234567', '2024-02-14 14:00:00', '2024-02-14 15:00:00', '77.223456', '28.643210', '77.754321', '28.754321', 'Van'),
('RD3456789012', 'DR345678', 'VH345678', '2024-03-18 11:00:00', '2024-03-18 12:00:00', '77.323456', '28.743210', '77.854321', '28.854321', 'SUV'),
('RD4567890123', 'DR456789', 'VH456789', '2024-04-02 16:30:00', '2024-04-02 17:30:00', '77.423456', '28.843210', '77.954321', '28.954321', 'Sedan'),
('RD5678901234', 'DR567890', 'VH567890', '2024-05-08 18:00:00', '2024-05-08 19:00:00', '77.523456', '28.943210', '78.054321', '29.054321', 'Truck');

-- --------------------------------------------------------

--
-- Table structure for table `RIDE_BOOK`
--

DROP TABLE IF EXISTS `RIDE_BOOK`;
CREATE TABLE `RIDE_BOOK` (
  `RIDE_ID` char(20) NOT NULL,
  `BOOK_ID` char(8) NOT NULL,
  `INV_NO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RIDE_BOOK`
--

INSERT INTO `RIDE_BOOK` (`RIDE_ID`, `BOOK_ID`, `INV_NO`) VALUES
('RD1234567890', 'BK123456', 1001),
('RD2345678901', 'BK234567', 1002),
('RD3456789012', 'BK345678', 1003),
('RD4567890123', 'BK456789', 1004),
('RD5678901234', 'BK567890', 1005);

-- --------------------------------------------------------

--
-- Table structure for table `SERVICE_PROVIDER_ENTITY`
--

DROP TABLE IF EXISTS `SERVICE_PROVIDER_ENTITY`;
CREATE TABLE `SERVICE_PROVIDER_ENTITY` (
  `SPEN_ID` char(8) NOT NULL,
  `SPIN_ID` char(8) NOT NULL,
  `SPEN_NAME` varchar(20) NOT NULL,
  `SPEN_BRANCH` varchar(20) DEFAULT NULL,
  `SPEN_PERSON_CONTACT` char(8) NOT NULL,
  `SPEN_MOBILENO` char(10) NOT NULL,
  `SPEN_GSTNO` char(15) NOT NULL,
  `SPEN_ADDRESS` varchar(50) NOT NULL,
  `SPEN_CITY` varchar(20) DEFAULT NULL,
  `SPEN_STATE` varchar(20) DEFAULT NULL,
  `SPEN_ZIPCODE` char(6) DEFAULT NULL,
  `SPEN_JOIN_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SERVICE_PROVIDER_ENTITY`
--

INSERT INTO `SERVICE_PROVIDER_ENTITY` (`SPEN_ID`, `SPIN_ID`, `SPEN_NAME`, `SPEN_BRANCH`, `SPEN_PERSON_CONTACT`, `SPEN_MOBILENO`, `SPEN_GSTNO`, `SPEN_ADDRESS`, `SPEN_CITY`, `SPEN_STATE`, `SPEN_ZIPCODE`, `SPEN_JOIN_DATE`) VALUES
('SE123456', 'SI123456', 'David Enterprises', 'Main Branch', 'David', '9876543215', 'GST123461', '303 Market, Town', 'City F', 'State A', '123461', '2024-01-01'),
('SE234567', 'SI234567', 'Emma Ltd.', 'Sub Branch', 'Emma', '9876543216', 'GST234462', '404 Park, City', 'City G', 'State B', '123462', '2024-02-01'),
('SE345678', 'SI345678', 'Michael Co.', 'Main Branch', 'Michael', '9876543217', 'GST345463', '505 Boulevard, District', 'City H', 'State C', '123463', '2024-03-01'),
('SE456789', 'SI456789', 'Sophia Industries', 'Sub Branch', 'Sophia', '9876543218', 'GST456464', '606 Plaza, Region', 'City I', 'State D', '123464', '2024-04-01'),
('SE567890', 'SI567890', 'James Group', 'Main Branch', 'James', '9876543219', 'GST567465', '707 Avenue, Area', 'City J', 'State E', '123465', '2024-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `SERVICE_PROVIDER_INDIVIDUAL`
--

DROP TABLE IF EXISTS `SERVICE_PROVIDER_INDIVIDUAL`;
CREATE TABLE `SERVICE_PROVIDER_INDIVIDUAL` (
  `SPIN_ID` char(8) NOT NULL,
  `SPIN_FNAME` varchar(20) NOT NULL,
  `SPIN_LNAME` varchar(20) DEFAULT NULL,
  `SPIN_MOBILENO` char(10) NOT NULL,
  `SPIN_EMAILID` varchar(50) NOT NULL,
  `SPIN_GENDER` char(1) DEFAULT NULL,
  `SPIN_ADDRESS` varchar(50) NOT NULL,
  `SPIN_ZIPCODE` char(6) DEFAULT NULL,
  `SPIN_STATE` varchar(20) DEFAULT NULL,
  `SPIN_CITY` varchar(20) DEFAULT NULL,
  `SPIN_JOIN_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SERVICE_PROVIDER_INDIVIDUAL`
--

INSERT INTO `SERVICE_PROVIDER_INDIVIDUAL` (`SPIN_ID`, `SPIN_FNAME`, `SPIN_LNAME`, `SPIN_MOBILENO`, `SPIN_EMAILID`, `SPIN_GENDER`, `SPIN_ADDRESS`, `SPIN_ZIPCODE`, `SPIN_STATE`, `SPIN_CITY`, `SPIN_JOIN_DATE`) VALUES
('SI123456', 'David', 'Jones', '9876543215', 'david.jones@example.com', 'M', '303 Market, Town', '123461', 'State A', 'City F', '2024-01-01'),
('SI234567', 'Emma', 'Taylor', '9876543216', 'emma.taylor@example.com', 'F', '404 Park, City', '123462', 'State B', 'City G', '2024-02-01'),
('SI345678', 'Michael', 'Lee', '9876543217', 'michael.lee@example.com', 'M', '505 Boulevard, District', '123463', 'State C', 'City H', '2024-03-01'),
('SI456789', 'Sophia', 'Clark', '9876543218', 'sophia.clark@example.com', 'F', '606 Plaza, Region', '123464', 'State D', 'City I', '2024-04-01'),
('SI567890', 'James', 'Walker', '9876543219', 'james.walker@example.com', 'M', '707 Avenue, Area', '123465', 'State E', 'City J', '2024-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `SUBSCRIPTION_PLAN`
--

DROP TABLE IF EXISTS `SUBSCRIPTION_PLAN`;
CREATE TABLE `SUBSCRIPTION_PLAN` (
  `SUBPLAN_CODE` char(4) NOT NULL,
  `SUBPLAN_PRICE` decimal(10,2) DEFAULT NULL,
  `SUBPLAN_DESC` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SUBSCRIPTION_PLAN`
--

INSERT INTO `SUBSCRIPTION_PLAN` (`SUBPLAN_CODE`, `SUBPLAN_PRICE`, `SUBPLAN_DESC`) VALUES
('SP01', '1999.99', 'Basic Plan - Monthly Subscription for basic services.'),
('SP02', '4999.99', 'Premium Plan - Includes all services with priority support.'),
('SP03', '999.99', 'Standard Plan - Monthly subscription with limited features.'),
('SP04', '7999.99', 'Enterprise Plan - High-end services with full customer support.'),
('SP05', '1499.99', 'Basic Plus Plan - Includes some premium features.');

-- --------------------------------------------------------

--
-- Table structure for table `VEHICLE`
--

DROP TABLE IF EXISTS `VEHICLE`;
CREATE TABLE `VEHICLE` (
  `VEHICLE_ID` char(8) NOT NULL,
  `SPIN_ID` char(8) NOT NULL,
  `VEHICLE_POLICYNO` char(10) NOT NULL,
  `VEHICLE_NUM_PLATE` char(10) NOT NULL,
  `VEHICLE_MODEL` varchar(50) NOT NULL,
  `VEHICLE_TYPE` varchar(20) DEFAULT NULL,
  `VEHICLE_USE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VEHICLE`
--

INSERT INTO `VEHICLE` (`VEHICLE_ID`, `SPIN_ID`, `VEHICLE_POLICYNO`, `VEHICLE_NUM_PLATE`, `VEHICLE_MODEL`, `VEHICLE_TYPE`, `VEHICLE_USE`) VALUES
('VH123456', 'SI123456', '0980981234', 'AA01BC1234', 'Toyota Camry', 'Sedan', 'Person/Goods'),
('VH234567', 'SI234567', '0980982345', 'XX01YZ2345', 'Honda CRV', 'SUV', 'Personal'),
('VH345678', 'SI345678', '0980983456', 'LL01MN3456', 'Ford Focus', 'Hatchback', 'Perosnal/Goods'),
('VH456789', 'SI456789', '0980984567', 'PP01QR4567', 'Chevrolet Camaro', 'Coupe', 'Personal'),
('VH567890', 'SI567890', '0980985678', 'DD01EF5678', 'Ram 1500', 'Truck', 'Goods');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BOOKING`
--
ALTER TABLE `BOOKING`
  ADD PRIMARY KEY (`BOOK_ID`),
  ADD KEY `BOOKING_ibfk_1` (`CUSIN_ID`);

--
-- Indexes for table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`CLIENT_ID`),
  ADD KEY `CLIENT_SUBPLAN_CODE` (`CLIENT_SUBPLAN_CODE`),
  ADD KEY `CLIENT_EMP_ID` (`CLIENT_EMP_ID`),
  ADD KEY `CLIENT_ibfk_3` (`CLIENT_PERSON_CONTACT`);

--
-- Indexes for table `CUSTOMER_ENTITY`
--
ALTER TABLE `CUSTOMER_ENTITY`
  ADD PRIMARY KEY (`CUSEN_ID`),
  ADD KEY `CUSTOMER_ENTITY_ibfk_1` (`CUSIN_ID`);

--
-- Indexes for table `CUSTOMER_INDIVIDUAL`
--
ALTER TABLE `CUSTOMER_INDIVIDUAL`
  ADD PRIMARY KEY (`CUSIN_ID`),
  ADD UNIQUE KEY `CUSIN_DRIVE_LICNO` (`CUSIN_DRIVE_LICNO`) USING BTREE;

--
-- Indexes for table `DRIVER`
--
ALTER TABLE `DRIVER`
  ADD PRIMARY KEY (`DRIVER_ID`,`SPIN_ID`),
  ADD KEY `SPIN_ID` (`SPIN_ID`),
  ADD KEY `DRIVER_SPEN_ID` (`DRIVER_SPEN_ID`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `INVOICE`
--
ALTER TABLE `INVOICE`
  ADD PRIMARY KEY (`INV_NO`);

--
-- Indexes for table `PICK_DROP`
--
ALTER TABLE `PICK_DROP`
  ADD PRIMARY KEY (`BOOK_ID`);

--
-- Indexes for table `RENTAL`
--
ALTER TABLE `RENTAL`
  ADD PRIMARY KEY (`BOOK_ID`);

--
-- Indexes for table `RIDE`
--
ALTER TABLE `RIDE`
  ADD PRIMARY KEY (`RIDE_ID`),
  ADD KEY `DRIVER_ID` (`DRIVER_ID`),
  ADD KEY `VEHICLE_ID` (`VEHICLE_ID`);

--
-- Indexes for table `RIDE_BOOK`
--
ALTER TABLE `RIDE_BOOK`
  ADD PRIMARY KEY (`RIDE_ID`,`BOOK_ID`),
  ADD KEY `BOOK_ID` (`BOOK_ID`),
  ADD KEY `INV_NO` (`INV_NO`);

--
-- Indexes for table `SERVICE_PROVIDER_ENTITY`
--
ALTER TABLE `SERVICE_PROVIDER_ENTITY`
  ADD PRIMARY KEY (`SPEN_ID`),
  ADD KEY `SPIN_ID` (`SPIN_ID`);

--
-- Indexes for table `SERVICE_PROVIDER_INDIVIDUAL`
--
ALTER TABLE `SERVICE_PROVIDER_INDIVIDUAL`
  ADD PRIMARY KEY (`SPIN_ID`);

--
-- Indexes for table `SUBSCRIPTION_PLAN`
--
ALTER TABLE `SUBSCRIPTION_PLAN`
  ADD PRIMARY KEY (`SUBPLAN_CODE`);

--
-- Indexes for table `VEHICLE`
--
ALTER TABLE `VEHICLE`
  ADD PRIMARY KEY (`VEHICLE_ID`),
  ADD KEY `SPIN_ID` (`SPIN_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BOOKING`
--
ALTER TABLE `BOOKING`
  ADD CONSTRAINT `BOOKING_ibfk_1` FOREIGN KEY (`CUSIN_ID`) REFERENCES `CUSTOMER_INDIVIDUAL` (`CUSIN_ID`);

--
-- Constraints for table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD CONSTRAINT `CLIENT_ibfk_1` FOREIGN KEY (`CLIENT_SUBPLAN_CODE`) REFERENCES `SUBSCRIPTION_PLAN` (`SUBPLAN_CODE`),
  ADD CONSTRAINT `CLIENT_ibfk_2` FOREIGN KEY (`CLIENT_EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `CLIENT_ibfk_3` FOREIGN KEY (`CLIENT_PERSON_CONTACT`) REFERENCES `CUSTOMER_INDIVIDUAL` (`CUSIN_ID`);

--
-- Constraints for table `CUSTOMER_ENTITY`
--
ALTER TABLE `CUSTOMER_ENTITY`
  ADD CONSTRAINT `CUSTOMER_ENTITY_ibfk_1` FOREIGN KEY (`CUSIN_ID`) REFERENCES `CUSTOMER_INDIVIDUAL` (`CUSIN_ID`);

--
-- Constraints for table `DRIVER`
--
ALTER TABLE `DRIVER`
  ADD CONSTRAINT `DRIVER_ibfk_1` FOREIGN KEY (`SPIN_ID`) REFERENCES `SERVICE_PROVIDER_INDIVIDUAL` (`SPIN_ID`),
  ADD CONSTRAINT `DRIVER_ibfk_2` FOREIGN KEY (`DRIVER_SPEN_ID`) REFERENCES `SERVICE_PROVIDER_ENTITY` (`SPEN_ID`);

--
-- Constraints for table `PICK_DROP`
--
ALTER TABLE `PICK_DROP`
  ADD CONSTRAINT `PICK_DROP_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOKING` (`BOOK_ID`);

--
-- Constraints for table `RENTAL`
--
ALTER TABLE `RENTAL`
  ADD CONSTRAINT `RENTAL_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOKING` (`BOOK_ID`);

--
-- Constraints for table `RIDE`
--
ALTER TABLE `RIDE`
  ADD CONSTRAINT `RIDE_ibfk_1` FOREIGN KEY (`VEHICLE_ID`) REFERENCES `VEHICLE` (`VEHICLE_ID`),
  ADD CONSTRAINT `RIDE_ibfk_2` FOREIGN KEY (`DRIVER_ID`) REFERENCES `DRIVER` (`DRIVER_ID`);

--
-- Constraints for table `RIDE_BOOK`
--
ALTER TABLE `RIDE_BOOK`
  ADD CONSTRAINT `RIDE_BOOK_ibfk_1` FOREIGN KEY (`RIDE_ID`) REFERENCES `RIDE` (`RIDE_ID`),
  ADD CONSTRAINT `RIDE_BOOK_ibfk_2` FOREIGN KEY (`BOOK_ID`) REFERENCES `BOOKING` (`BOOK_ID`),
  ADD CONSTRAINT `RIDE_BOOK_ibfk_3` FOREIGN KEY (`INV_NO`) REFERENCES `INVOICE` (`INV_NO`);

--
-- Constraints for table `SERVICE_PROVIDER_ENTITY`
--
ALTER TABLE `SERVICE_PROVIDER_ENTITY`
  ADD CONSTRAINT `SERVICE_PROVIDER_ENTITY_ibfk_1` FOREIGN KEY (`SPIN_ID`) REFERENCES `SERVICE_PROVIDER_INDIVIDUAL` (`SPIN_ID`);

--
-- Constraints for table `VEHICLE`
--
ALTER TABLE `VEHICLE`
  ADD CONSTRAINT `VEHICLE_ibfk_1` FOREIGN KEY (`SPIN_ID`) REFERENCES `SERVICE_PROVIDER_INDIVIDUAL` (`SPIN_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
