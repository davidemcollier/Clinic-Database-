-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2021 at 05:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DentalClinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADDRESS`
--

CREATE TABLE `ADDRESS` (
  `Eircode` char(7) NOT NULL,
  `AddressLine` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ADDRESS`
--

INSERT INTO `ADDRESS` (`Eircode`, `AddressLine`) VALUES
('A97W8Y5', '2 Northview Pass,Cork City, Cork'),
('B98W8Y5', '27 Heffernan Terrace, Blackrock, Cork'),
('C17W8Y8', '7 Prairie Rose Avenue, Blarney, Cork'),
('C27W8Y5', '21 Warren Trail, Clonakilty, Cork'),
('C37W8Y1', '7 Everett Parkway, Macroom, Cork'),
('C47S2Y5', 'Smiles Dental Surgery, Clonakilty, Cork'),
('C47W8Y2', '3 Magdeline Park, Clonakilty, Cork'),
('C57T2Y5', 'Mary Mulcahey Dental, Clonakilty, Cork'),
('C57W8Y3', '58 Magdeline Alley, Blarney, Cork'),
('C67W8Y4', '24 Jenifer Point, Mallow, Cork'),
('C77W8Y5', '9 Boyd Lane, Macroom, Cork'),
('C87W8Y6', '70 Oak Street, Blarney, Cork'),
('C97W8Y7', '210 Nancy Trail, Clonakilty, Cork'),
('CV7W8Y9', '5 Chive Plaza, Middleton, Cork'),
('D87W8Y5', '5 Mendota Pass, Clonakilty, Cork'),
('D97W8Y5', '27 Kensington Trail, Bantry, Cork'),
('K27W8H5', 'St. Anne\'s Dental Hospital, Dublin Rd, Cork City, '),
('W97V3Y5', '57 Ryan Way, Kinsale, Cork'),
('XY7W8Y5', '6 Trailsway Plaza,Cobh, Cork');

-- --------------------------------------------------------

--
-- Table structure for table `APPS`
--

CREATE TABLE `APPS` (
  `App_ID` int(11) NOT NULL,
  `Patient_ID` int(11) NOT NULL,
  `AppDate` date DEFAULT NULL,
  `AppTime` time DEFAULT NULL,
  `SchedulingNotes` varchar(250) DEFAULT NULL,
  `AppReason` varchar(250) DEFAULT NULL,
  `ComMethod_ID` varchar(10) DEFAULT NULL,
  `AppStatus_ID` varchar(20) DEFAULT NULL,
  `PractitionerNotes` varchar(250) DEFAULT NULL,
  `Practitioner_ID` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `APPS`
--

INSERT INTO `APPS` (`App_ID`, `Patient_ID`, `AppDate`, `AppTime`, `SchedulingNotes`, `AppReason`, `ComMethod_ID`, `AppStatus_ID`, `PractitionerNotes`, `Practitioner_ID`) VALUES
(1, 1, '2021-04-01', '12:00:00', NULL, 'Sore teeth and gums. ', 'In-person', 'Booked', 'Patient had sore teeth and gums. Advised to brush teeth more regularly. Cleaning provided', 1),
(2, 2, '2021-04-02', '11:00:00', NULL, 'Dental cleaning.', 'Phone', 'Booked', 'Routine cleaning for patient completed. Advised to set up regular cleanings twice a year.', 1),
(3, 3, '2021-04-05', '11:00:00', NULL, 'Sore tooth, may need a filling.', 'Phone', 'Booked', 'Filling completed on sore tooth.', 1),
(4, 4, '2021-04-06', '11:00:00', NULL, 'Very sore tooth. Unable to eat on side of mouth.', 'Phone', 'Booked', 'Filling added for patient. Advised to brush teeth more regularly.', 1),
(5, 5, '2021-04-07', '11:00:00', NULL, 'Very sore teeth. ', 'In-person', 'Booked', 'Two fillings completed. Advised to brush teeth more regularly and floss.', 1),
(6, 6, '2021-04-01', '15:00:00', NULL, 'Needs several crowns put in place.', 'Phone', 'Booked', '4 crowns completed on patient.', 1),
(7, 7, '2020-10-01', '14:00:00', NULL, 'Cleaning.', 'In-person', 'Booked', 'Cleaning complete. Advised to come back twice a year.', 1),
(8, 8, '2021-04-07', '14:00:00', 'Rang in the day before (6 April) to cancel. Explained that within 24 hours, we impose a fine.', 'sore tooth', 'Phone', 'Late Cancellation', NULL, 1),
(9, 9, '2021-04-15', '12:00:00', 'Cancelled on 12 April. Unable to get time off. Will contact again for app in future.', 'Toothache', 'Phone', 'Cancelled', NULL, 1),
(10, 10, '2021-04-02', '09:00:00', NULL, 'Seeking veneers. Checkup/consultation.', 'Phone', 'Booked', 'Assessed patient and provided information and letter of referral for Cork-based veneers specialist. ', 1),
(11, 10, NULL, NULL, 'Referral. Will input details on receipt of return letter from specialist.', 'Veneers referral', 'In-person', 'Booked', NULL, 3),
(18, 11, '2021-04-08', '16:00:00', NULL, 'Wants aesthetic improvement of teeth.', 'Phone', 'Booked', 'Spoke with patient and have issued litter of referral for Owen Johnston.', 1),
(19, 11, '2021-04-26', '13:00:00', NULL, 'Referral', 'In-person', 'Booked', 'Spoke with patient and completed session implanting veneers. Have advised to make appointment with Dr. Mulcahey to check up with patient in June.', 3),
(20, 11, '2021-06-01', '13:00:00', NULL, 'Seeking checkup with Dr. Mulcahey as follow up for veneer referral treatment. ', 'Phone', 'Booked', '', 1),
(21, 12, '2021-05-03', '13:00:00', NULL, 'Regular check ups weekly needed from May until end of June', 'Phone', 'Booked', NULL, 1),
(22, 12, '2021-05-10', '13:00:00', NULL, 'Regular check ups weekly needed from May until end of June', 'Phone', 'Booked', NULL, 1),
(23, 12, '2021-05-17', '13:00:00', NULL, 'Regular check ups weekly needed from May until end of June', 'Phone', 'Booked', NULL, 1),
(24, 12, '2021-05-24', '13:00:00', NULL, 'Regular check ups weekly needed from May until end of June', 'Phone', 'Booked', NULL, 1),
(25, 12, '2021-05-31', '13:00:00', NULL, 'Regular check ups weekly needed from May until end of June', 'Phone', 'Booked', NULL, 1),
(26, 12, '2021-06-07', '13:00:00', NULL, 'Regular check ups weekly needed from May until end of June', 'Phone', 'Booked', NULL, 1),
(27, 12, '2021-06-14', '13:00:00', NULL, 'Regular check ups weekly needed from May until end of June', 'Phone', 'Booked', NULL, 1),
(28, 12, '2021-06-21', '13:00:00', NULL, 'Regular check ups weekly needed from May until end of June', 'Phone', 'Booked', NULL, 1),
(29, 14, '2021-06-02', '14:30:00', 'have a booking ages from now but happy to be contacted to fill any empty appointments.', 'check up', 'Phone', 'Booked', NULL, 1),
(30, 14, NULL, NULL, 'have a booking ages from now but happy to be contacted to fill any empty appointments.', NULL, 'Phone', 'Seeking Opening', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `APPSTATUS`
--

CREATE TABLE `APPSTATUS` (
  `AppStatus_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `APPSTATUS`
--

INSERT INTO `APPSTATUS` (`AppStatus_ID`) VALUES
('Booked'),
('Cancelled'),
('Late Cancellation'),
('Seeking Opening');

-- --------------------------------------------------------

--
-- Table structure for table `BILLS`
--

CREATE TABLE `BILLS` (
  `Bill_ID` int(11) NOT NULL,
  `App_ID` int(11) NOT NULL,
  `DateIssued` date NOT NULL,
  `InstalmentNotes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BILLS`
--

INSERT INTO `BILLS` (`Bill_ID`, `App_ID`, `DateIssued`, `InstalmentNotes`) VALUES
(1, 1, '2021-04-01', NULL),
(2, 2, '2021-04-02', 'To be paid in two instalments. '),
(3, 3, '2021-04-05', 'Will pay at later date.'),
(4, 4, '2021-04-06', 'Some paid immediately. Will call in to pay outstanding in coming week.'),
(5, 5, '2021-04-07', 'Will pay in multiple instalments over next few weeks. '),
(6, 6, '2021-04-01', 'Unable to pay at the moment but will revert after next payday. Patient informed that no further bookings possible as block placed after 1000 bill owed.'),
(7, 7, '2020-10-07', 'Will call in to pay at a later date. '),
(8, 8, '2021-04-06', NULL),
(9, 10, '2021-04-02', NULL),
(10, 18, '2021-04-08', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `blockcheck`
-- (See below for the actual view)
--
CREATE TABLE `blockcheck` (
`Patient_ID` int(11)
,`FName` varchar(15)
,`LName` varchar(20)
,`AddressLine` varchar(50)
,`Eircode` char(7)
,`DateIssued` date
,`DueDate` date
,`AmountPaid` decimal(10,2)
,`BillTotal` decimal(32,2)
,`PaymentsTotal` decimal(32,2)
,`Outstanding` decimal(33,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `blockcheckbreakdown`
-- (See below for the actual view)
--
CREATE TABLE `blockcheckbreakdown` (
`Patient_ID` int(11)
,`FName` varchar(15)
,`LName` varchar(20)
,`AddressLine` varchar(50)
,`Eircode` char(7)
,`DateIssued` date
,`DueDate` date
,`FeeName` varchar(30)
,`Cost` decimal(10,2)
,`Payment_ID` int(11)
,`AmountPaid` decimal(10,2)
,`BillTotal` decimal(32,2)
,`PaymentsTotal` decimal(32,2)
,`Outstanding` decimal(33,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `COMMETHODS`
--

CREATE TABLE `COMMETHODS` (
  `ComMethod_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `COMMETHODS`
--

INSERT INTO `COMMETHODS` (`ComMethod_ID`) VALUES
('In-person'),
('Phone'),
('Post');

-- --------------------------------------------------------

--
-- Table structure for table `FEES`
--

CREATE TABLE `FEES` (
  `Fee_ID` int(11) NOT NULL,
  `FeeName` varchar(30) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `FeeNotes` varchar(250) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateEnded` date DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `FEES`
--

INSERT INTO `FEES` (`Fee_ID`, `FeeName`, `Cost`, `FeeNotes`, `DateCreated`, `DateEnded`, `Active`) VALUES
(1, 'Late Cancellation', '10.00', 'Penalty for short notice (<24)', '2021-01-01', NULL, 1),
(2, 'Cleaning', '80.00', 'Plaque removal', '2021-01-01', NULL, 1),
(3, 'General Checkup', '60.00', 'Dental check', '2021-01-01', NULL, 1),
(4, 'Filling', '50.00', 'Per tooth', '2021-01-01', NULL, 1),
(5, 'Root canal', '200.00', 'Per tooth', '2021-01-01', NULL, 1),
(6, 'Whitening', '200.00', 'Per session', '2021-01-01', NULL, 1),
(7, 'Crown', '300.00', 'Per tooth', '2021-01-01', NULL, 1),
(8, 'Follow up Consultation', '50.00', 'General follow up for a major procedure', '2021-01-01', NULL, 1),
(9, 'Prescription', '50.00', 'Prescription provision', '2021-01-01', '2021-01-02', 0),
(10, 'Prescription', '60.00', 'Prescription provision', '2021-01-02', NULL, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `nextweeksapps`
-- (See below for the actual view)
--
CREATE TABLE `nextweeksapps` (
`Patient_ID` int(11)
,`FName` varchar(15)
,`LName` varchar(20)
,`AddressLine` varchar(50)
,`Eircode` char(7)
,`AppDate` date
,`AppTime` time
,`AppReason` varchar(250)
,`AppStatus_ID` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `outstandingpayments`
-- (See below for the actual view)
--
CREATE TABLE `outstandingpayments` (
`Patient_ID` int(11)
,`FName` varchar(15)
,`LName` varchar(20)
,`AddressLine` varchar(50)
,`Eircode` char(7)
,`DateIssued` date
,`DueDate` date
,`FeeName` varchar(30)
,`Cost` decimal(10,2)
,`bill_ID` int(11)
,`Payment_ID` int(11)
,`AmountPaid` decimal(10,2)
,`BillTotal` decimal(32,2)
,`PaymentsTotal` decimal(32,2)
,`Outstanding` decimal(33,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `outstandingpaymentsummary`
-- (See below for the actual view)
--
CREATE TABLE `outstandingpaymentsummary` (
`Patient_ID` int(11)
,`FName` varchar(15)
,`LName` varchar(20)
,`AddressLine` varchar(50)
,`Eircode` char(7)
,`Bill_ID` int(11)
,`DateIssued` date
,`DueDate` date
,`BillTotal` decimal(32,2)
,`PaymentsTotal` decimal(32,2)
,`Outstanding` decimal(33,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `PATIENTS`
--

CREATE TABLE `PATIENTS` (
  `Patient_ID` int(11) NOT NULL,
  `FName` varchar(15) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `Landline` varchar(10) DEFAULT NULL,
  `Eircode` char(7) NOT NULL,
  `BirthDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PATIENTS`
--

INSERT INTO `PATIENTS` (`Patient_ID`, `FName`, `LName`, `Mobile`, `Landline`, `Eircode`, `BirthDate`) VALUES
(1, 'John', 'Smith', '0851234567', '092310987', 'XY7W8Y5', '2008-07-04'),
(2, 'Mary', 'Smith', '0861234567', '092310987', 'XY7W8Y5', '1974-07-04'),
(3, 'Mary', 'Fleming', '0861234568', '014301224', 'A97W8Y5', '1978-07-04'),
(4, 'Jill', 'Shortall', '0851234567', '092301934', 'B98W8Y5', '1950-07-04'),
(5, 'Kevin', 'Black', '0871235537', '082301274', 'W97V3Y5', '2000-07-04'),
(6, 'Ian', 'Casey', '0861534567', '012301764', 'D97W8Y5', '1967-07-04'),
(7, 'Evelyn', 'Brand', '0856434227', '012983534', 'D87W8Y5', '1963-07-04'),
(8, 'Iseult', 'O\'Sullivan', '0861239567', '09121234', 'C27W8Y5', '1959-07-04'),
(9, 'Aine', 'O\'Sullivan', '0861239567', '09121234', 'C27W8Y5', '2010-05-21'),
(10, 'Alan', 'Long', '0859234567', '012401234', 'C37W8Y1', '1988-07-04'),
(11, 'Kevin', 'Jones', '0860234567', '013301234', 'C47W8Y2', '1978-07-05'),
(12, 'Alison', 'Jacobs', '0837234567', '094301234', 'C57W8Y3', '1984-07-04'),
(13, 'Ann', 'Fleming', '0880234568', '018501224', 'C67W8Y4', '1979-07-04'),
(14, 'Eoghan', 'White', '0873234567', '073301934', 'C77W8Y5', '1953-07-04'),
(15, 'Jo', 'Black', '0871235537', '088201274', 'C87W8Y6', '2002-07-04'),
(16, 'Arnold', 'Keogh', '0894534567', '093301764', 'C97W8Y7', '1969-07-04'),
(17, 'Ernest', 'McDonald', '0883434227', '098983534', 'C17W8Y8', '1965-07-04'),
(18, 'Isabel', 'Harry', '0894239567', '09081234', 'CV7W8Y9', '1957-07-04'),
(19, 'Jean', 'Harry', '0876239567', '09173234', 'CV7W8Y9', '2004-05-21'),
(21, 'John', 'Donnelly', NULL, NULL, 'C17W8Y8', '2021-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `PAYMENTS`
--

CREATE TABLE `PAYMENTS` (
  `Payment_ID` int(11) NOT NULL,
  `Bill_ID` int(11) NOT NULL,
  `AmountPaid` decimal(10,2) NOT NULL,
  `DatePaid` date NOT NULL,
  `PayType_ID` char(10) NOT NULL,
  `ComMethod_ID` varchar(10) NOT NULL,
  `PayStatus_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PAYMENTS`
--

INSERT INTO `PAYMENTS` (`Payment_ID`, `Bill_ID`, `AmountPaid`, `DatePaid`, `PayType_ID`, `ComMethod_ID`, `PayStatus_ID`) VALUES
(1, 1, '80.00', '2021-04-01', 'Cash', 'In-person', 'Complete'),
(2, 2, '30.00', '2021-04-02', 'Cash', 'In-person', 'Complete'),
(3, 2, '50.00', '2021-04-09', 'Cash', 'Post', 'Complete'),
(4, 4, '20.00', '2021-04-06', 'Cash', 'In-person', 'Complete'),
(5, 5, '25.00', '2021-04-09', 'Cash', 'In-person', 'Complete'),
(6, 5, '25.00', '2021-04-16', 'Cash', 'In-person', 'Complete'),
(7, 9, '60.00', '2021-04-02', 'Card', 'In-person', 'Complete'),
(8, 10, '60.00', '2021-04-08', 'Cash', 'In-person', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `PAYSTATUS`
--

CREATE TABLE `PAYSTATUS` (
  `PayStatus_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PAYSTATUS`
--

INSERT INTO `PAYSTATUS` (`PayStatus_ID`) VALUES
('Awaiting Confirmatio'),
('Complete'),
('Denied');

-- --------------------------------------------------------

--
-- Table structure for table `PAYTYPES`
--

CREATE TABLE `PAYTYPES` (
  `PayType_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PAYTYPES`
--

INSERT INTO `PAYTYPES` (`PayType_ID`) VALUES
('Card'),
('Cash'),
('Cheque');

-- --------------------------------------------------------

--
-- Table structure for table `PRACTITIONERS`
--

CREATE TABLE `PRACTITIONERS` (
  `Practitioner_ID` int(11) NOT NULL,
  `FName` varchar(15) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Specialism` varchar(15) NOT NULL,
  `Eircode` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PRACTITIONERS`
--

INSERT INTO `PRACTITIONERS` (`Practitioner_ID`, `FName`, `LName`, `Specialism`, `Eircode`) VALUES
(1, 'Mary', 'Mulcahey', 'General', 'C57T2Y5'),
(2, 'John', 'Owens', 'Extraction', 'K27W8H5'),
(3, 'Owen', 'Johnston', 'Veneers', 'C47S2Y5'),
(4, 'Dominica', 'Keefe', 'Child surgery', 'K27W8H5');

-- --------------------------------------------------------

--
-- Table structure for table `PROCEDURES`
--

CREATE TABLE `PROCEDURES` (
  `Procedure_ID` int(11) NOT NULL,
  `Bill_ID` int(11) DEFAULT NULL,
  `Fee_ID` int(11) DEFAULT NULL,
  `ProcedureNotes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PROCEDURES`
--

INSERT INTO `PROCEDURES` (`Procedure_ID`, `Bill_ID`, `Fee_ID`, `ProcedureNotes`) VALUES
(1, 1, 3, NULL),
(2, 2, 2, NULL),
(3, 3, 4, 'Filling complete on back left molar.'),
(4, 4, 4, 'Filling complete on right back most molar.'),
(5, 5, 4, 'Filling on right back molar.'),
(6, 5, 4, 'Filling on left back molar.'),
(7, 6, 7, 'Back left molar.'),
(8, 6, 7, 'Inner back left molar.'),
(9, 6, 7, 'Back right molar.'),
(10, 6, 7, 'Inner back right molar.'),
(11, 7, 2, NULL),
(12, 8, 1, NULL),
(13, 9, 3, 'Inspected teeth for veneers and referral'),
(14, 10, 3, 'veneers referral requested and granted');

-- --------------------------------------------------------

--
-- Structure for view `blockcheck`
--
DROP TABLE IF EXISTS `blockcheck`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dentalclinic`.`blockcheck`  AS SELECT `dentalclinic`.`patients`.`Patient_ID` AS `Patient_ID`, `dentalclinic`.`patients`.`FName` AS `FName`, `dentalclinic`.`patients`.`LName` AS `LName`, `dentalclinic`.`address`.`AddressLine` AS `AddressLine`, `dentalclinic`.`patients`.`Eircode` AS `Eircode`, `dentalclinic`.`bills`.`DateIssued` AS `DateIssued`, `dentalclinic`.`bills`.`DateIssued`+ interval 6 month AS `DueDate`, `dentalclinic`.`payments`.`AmountPaid` AS `AmountPaid`, (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` and `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) AS `BillTotal`, (select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) AS `PaymentsTotal`, (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` and `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) AS `Outstanding` FROM (((((`dentalclinic`.`patients` join `dentalclinic`.`apps`) join `dentalclinic`.`address`) join `dentalclinic`.`procedures`) join `dentalclinic`.`fees`) join (`dentalclinic`.`bills` left join `dentalclinic`.`payments` on(`dentalclinic`.`bills`.`Bill_ID` = `dentalclinic`.`payments`.`Bill_ID`))) WHERE `dentalclinic`.`patients`.`Eircode` = `dentalclinic`.`address`.`Eircode` AND `dentalclinic`.`patients`.`Patient_ID` = `dentalclinic`.`apps`.`Patient_ID` AND `dentalclinic`.`apps`.`App_ID` = `dentalclinic`.`bills`.`Bill_ID` AND `dentalclinic`.`bills`.`Bill_ID` = `dentalclinic`.`procedures`.`Bill_ID` AND `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND ((select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) > 0 AND `dentalclinic`.`bills`.`DateIssued` + interval 6 month < curdate() OR (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) > 1000) GROUP BY `dentalclinic`.`patients`.`Patient_ID` ORDER BY `dentalclinic`.`patients`.`Patient_ID` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `blockcheckbreakdown`
--
DROP TABLE IF EXISTS `blockcheckbreakdown`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dentalclinic`.`blockcheckbreakdown`  AS SELECT `dentalclinic`.`patients`.`Patient_ID` AS `Patient_ID`, `dentalclinic`.`patients`.`FName` AS `FName`, `dentalclinic`.`patients`.`LName` AS `LName`, `dentalclinic`.`address`.`AddressLine` AS `AddressLine`, `dentalclinic`.`patients`.`Eircode` AS `Eircode`, `dentalclinic`.`bills`.`DateIssued` AS `DateIssued`, `dentalclinic`.`bills`.`DateIssued`+ interval 6 month AS `DueDate`, `dentalclinic`.`fees`.`FeeName` AS `FeeName`, `dentalclinic`.`fees`.`Cost` AS `Cost`, `dentalclinic`.`payments`.`Payment_ID` AS `Payment_ID`, `dentalclinic`.`payments`.`AmountPaid` AS `AmountPaid`, (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` and `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) AS `BillTotal`, (select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) AS `PaymentsTotal`, (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` and `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) AS `Outstanding` FROM (((((`dentalclinic`.`patients` join `dentalclinic`.`apps`) join `dentalclinic`.`address`) join `dentalclinic`.`procedures`) join `dentalclinic`.`fees`) join (`dentalclinic`.`bills` left join `dentalclinic`.`payments` on(`dentalclinic`.`bills`.`Bill_ID` = `dentalclinic`.`payments`.`Bill_ID`))) WHERE `dentalclinic`.`patients`.`Eircode` = `dentalclinic`.`address`.`Eircode` AND `dentalclinic`.`patients`.`Patient_ID` = `dentalclinic`.`apps`.`Patient_ID` AND `dentalclinic`.`apps`.`App_ID` = `dentalclinic`.`bills`.`Bill_ID` AND `dentalclinic`.`bills`.`Bill_ID` = `dentalclinic`.`procedures`.`Bill_ID` AND `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND ((select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) > 0 AND `dentalclinic`.`bills`.`DateIssued` + interval 6 month < curdate() OR (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) > 1000) ORDER BY `dentalclinic`.`patients`.`Patient_ID` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `nextweeksapps`
--
DROP TABLE IF EXISTS `nextweeksapps`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dentalclinic`.`nextweeksapps`  AS SELECT `dentalclinic`.`patients`.`Patient_ID` AS `Patient_ID`, `dentalclinic`.`patients`.`FName` AS `FName`, `dentalclinic`.`patients`.`LName` AS `LName`, `dentalclinic`.`address`.`AddressLine` AS `AddressLine`, `dentalclinic`.`address`.`Eircode` AS `Eircode`, `dentalclinic`.`apps`.`AppDate` AS `AppDate`, `dentalclinic`.`apps`.`AppTime` AS `AppTime`, `dentalclinic`.`apps`.`AppReason` AS `AppReason`, `dentalclinic`.`apps`.`AppStatus_ID` AS `AppStatus_ID` FROM ((`dentalclinic`.`apps` join `dentalclinic`.`address`) join `dentalclinic`.`patients`) WHERE week(`dentalclinic`.`apps`.`AppDate`,3) = week(curdate(),3) + 1 AND `dentalclinic`.`apps`.`AppStatus_ID` = 'Booked' AND `dentalclinic`.`apps`.`Practitioner_ID` = 1 AND `dentalclinic`.`patients`.`Eircode` = `dentalclinic`.`address`.`Eircode` AND `dentalclinic`.`patients`.`Patient_ID` = `dentalclinic`.`apps`.`Patient_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `outstandingpayments`
--
DROP TABLE IF EXISTS `outstandingpayments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dentalclinic`.`outstandingpayments`  AS SELECT `dentalclinic`.`patients`.`Patient_ID` AS `Patient_ID`, `dentalclinic`.`patients`.`FName` AS `FName`, `dentalclinic`.`patients`.`LName` AS `LName`, `dentalclinic`.`address`.`AddressLine` AS `AddressLine`, `dentalclinic`.`patients`.`Eircode` AS `Eircode`, `dentalclinic`.`bills`.`DateIssued` AS `DateIssued`, `dentalclinic`.`bills`.`DateIssued`+ interval 6 month AS `DueDate`, `dentalclinic`.`fees`.`FeeName` AS `FeeName`, `dentalclinic`.`fees`.`Cost` AS `Cost`, `dentalclinic`.`bills`.`Bill_ID` AS `bill_ID`, `dentalclinic`.`payments`.`Payment_ID` AS `Payment_ID`, `dentalclinic`.`payments`.`AmountPaid` AS `AmountPaid`, (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` and `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) AS `BillTotal`, (select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) AS `PaymentsTotal`, (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` and `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) AS `Outstanding` FROM (((((`dentalclinic`.`patients` join `dentalclinic`.`apps`) join `dentalclinic`.`address`) join `dentalclinic`.`procedures`) join `dentalclinic`.`fees`) join (`dentalclinic`.`bills` left join `dentalclinic`.`payments` on(`dentalclinic`.`bills`.`Bill_ID` = `dentalclinic`.`payments`.`Bill_ID`))) WHERE `dentalclinic`.`patients`.`Eircode` = `dentalclinic`.`address`.`Eircode` AND `dentalclinic`.`patients`.`Patient_ID` = `dentalclinic`.`apps`.`Patient_ID` AND `dentalclinic`.`apps`.`App_ID` = `dentalclinic`.`bills`.`Bill_ID` AND `dentalclinic`.`bills`.`Bill_ID` = `dentalclinic`.`procedures`.`Bill_ID` AND `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) > 0 ORDER BY `dentalclinic`.`patients`.`Patient_ID` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `outstandingpaymentsummary`
--
DROP TABLE IF EXISTS `outstandingpaymentsummary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dentalclinic`.`outstandingpaymentsummary`  AS SELECT `dentalclinic`.`patients`.`Patient_ID` AS `Patient_ID`, `dentalclinic`.`patients`.`FName` AS `FName`, `dentalclinic`.`patients`.`LName` AS `LName`, `dentalclinic`.`address`.`AddressLine` AS `AddressLine`, `dentalclinic`.`patients`.`Eircode` AS `Eircode`, `dentalclinic`.`bills`.`Bill_ID` AS `Bill_ID`, `dentalclinic`.`bills`.`DateIssued` AS `DateIssued`, `dentalclinic`.`bills`.`DateIssued`+ interval 6 month AS `DueDate`, (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` and `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) AS `BillTotal`, (select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) AS `PaymentsTotal`, (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` and `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) AS `Outstanding` FROM (((((`dentalclinic`.`patients` join `dentalclinic`.`apps`) join `dentalclinic`.`address`) join `dentalclinic`.`procedures`) join `dentalclinic`.`fees`) join (`dentalclinic`.`bills` left join `dentalclinic`.`payments` on(`dentalclinic`.`bills`.`Bill_ID` = `dentalclinic`.`payments`.`Bill_ID`))) WHERE `dentalclinic`.`patients`.`Eircode` = `dentalclinic`.`address`.`Eircode` AND `dentalclinic`.`patients`.`Patient_ID` = `dentalclinic`.`apps`.`Patient_ID` AND `dentalclinic`.`apps`.`App_ID` = `dentalclinic`.`bills`.`Bill_ID` AND `dentalclinic`.`bills`.`Bill_ID` = `dentalclinic`.`procedures`.`Bill_ID` AND `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND (select sum(`dentalclinic`.`fees`.`Cost`) from (`dentalclinic`.`fees` join `dentalclinic`.`procedures`) where `dentalclinic`.`fees`.`Fee_ID` = `dentalclinic`.`procedures`.`Fee_ID` AND `dentalclinic`.`procedures`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`) - ifnull((select sum(`dentalclinic`.`payments`.`AmountPaid`) from `dentalclinic`.`payments` where `dentalclinic`.`payments`.`Bill_ID` = `dentalclinic`.`bills`.`Bill_ID`),0) > 0 GROUP BY `dentalclinic`.`patients`.`Patient_ID` ORDER BY `dentalclinic`.`patients`.`Patient_ID` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADDRESS`
--
ALTER TABLE `ADDRESS`
  ADD PRIMARY KEY (`Eircode`);

--
-- Indexes for table `APPS`
--
ALTER TABLE `APPS`
  ADD PRIMARY KEY (`App_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `ComMethod_ID` (`ComMethod_ID`),
  ADD KEY `AppStatus_ID` (`AppStatus_ID`);

--
-- Indexes for table `APPSTATUS`
--
ALTER TABLE `APPSTATUS`
  ADD PRIMARY KEY (`AppStatus_ID`);

--
-- Indexes for table `BILLS`
--
ALTER TABLE `BILLS`
  ADD PRIMARY KEY (`Bill_ID`),
  ADD UNIQUE KEY `App_ID` (`App_ID`);

--
-- Indexes for table `COMMETHODS`
--
ALTER TABLE `COMMETHODS`
  ADD PRIMARY KEY (`ComMethod_ID`);

--
-- Indexes for table `FEES`
--
ALTER TABLE `FEES`
  ADD PRIMARY KEY (`Fee_ID`);

--
-- Indexes for table `PATIENTS`
--
ALTER TABLE `PATIENTS`
  ADD PRIMARY KEY (`Patient_ID`),
  ADD KEY `Eircode` (`Eircode`);

--
-- Indexes for table `PAYMENTS`
--
ALTER TABLE `PAYMENTS`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Bill_ID` (`Bill_ID`),
  ADD KEY `ComMethod_ID` (`ComMethod_ID`),
  ADD KEY `PayType_ID` (`PayType_ID`),
  ADD KEY `PayStatus_ID` (`PayStatus_ID`);

--
-- Indexes for table `PAYSTATUS`
--
ALTER TABLE `PAYSTATUS`
  ADD PRIMARY KEY (`PayStatus_ID`);

--
-- Indexes for table `PAYTYPES`
--
ALTER TABLE `PAYTYPES`
  ADD PRIMARY KEY (`PayType_ID`);

--
-- Indexes for table `PRACTITIONERS`
--
ALTER TABLE `PRACTITIONERS`
  ADD PRIMARY KEY (`Practitioner_ID`),
  ADD KEY `Eircode` (`Eircode`);

--
-- Indexes for table `PROCEDURES`
--
ALTER TABLE `PROCEDURES`
  ADD PRIMARY KEY (`Procedure_ID`),
  ADD KEY `Bill_ID` (`Bill_ID`),
  ADD KEY `Fee_ID` (`Fee_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `APPS`
--
ALTER TABLE `APPS`
  MODIFY `App_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `BILLS`
--
ALTER TABLE `BILLS`
  MODIFY `Bill_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `FEES`
--
ALTER TABLE `FEES`
  MODIFY `Fee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `PATIENTS`
--
ALTER TABLE `PATIENTS`
  MODIFY `Patient_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `PAYMENTS`
--
ALTER TABLE `PAYMENTS`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `PRACTITIONERS`
--
ALTER TABLE `PRACTITIONERS`
  MODIFY `Practitioner_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `PROCEDURES`
--
ALTER TABLE `PROCEDURES`
  MODIFY `Procedure_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `APPS`
--
ALTER TABLE `APPS`
  ADD CONSTRAINT `apps_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `PATIENTS` (`Patient_ID`),
  ADD CONSTRAINT `apps_ibfk_2` FOREIGN KEY (`ComMethod_ID`) REFERENCES `COMMETHODS` (`ComMethod_ID`),
  ADD CONSTRAINT `apps_ibfk_3` FOREIGN KEY (`AppStatus_ID`) REFERENCES `AppStatus` (`AppStatus_ID`);

--
-- Constraints for table `BILLS`
--
ALTER TABLE `BILLS`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`App_ID`) REFERENCES `APPS` (`App_ID`);

--
-- Constraints for table `PATIENTS`
--
ALTER TABLE `PATIENTS`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`Eircode`) REFERENCES `ADDRESS` (`Eircode`);

--
-- Constraints for table `PAYMENTS`
--
ALTER TABLE `PAYMENTS`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`Bill_ID`) REFERENCES `BILLS` (`Bill_ID`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`ComMethod_ID`) REFERENCES `COMMETHODS` (`ComMethod_ID`),
  ADD CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`PayType_ID`) REFERENCES `PAYTYPES` (`PayType_ID`),
  ADD CONSTRAINT `payments_ibfk_4` FOREIGN KEY (`PayStatus_ID`) REFERENCES `PAYSTATUS` (`PayStatus_ID`);

--
-- Constraints for table `PRACTITIONERS`
--
ALTER TABLE `PRACTITIONERS`
  ADD CONSTRAINT `practitioners_ibfk_1` FOREIGN KEY (`Eircode`) REFERENCES `ADDRESS` (`Eircode`);

--
-- Constraints for table `PROCEDURES`
--
ALTER TABLE `PROCEDURES`
  ADD CONSTRAINT `procedures_ibfk_1` FOREIGN KEY (`Bill_ID`) REFERENCES `BILLS` (`Bill_ID`),
  ADD CONSTRAINT `procedures_ibfk_2` FOREIGN KEY (`Fee_ID`) REFERENCES `FEES` (`Fee_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
