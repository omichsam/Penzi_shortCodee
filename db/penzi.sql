-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 10:56 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penzi`
--

-- --------------------------------------------------------

--
-- Table structure for table `match_log`
--

CREATE TABLE `match_log` (
  `matchlog_id` int(10) NOT NULL,
  `searcher` int(15) NOT NULL,
  `searched` int(15) NOT NULL,
  `status` int(2) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_log`
--

INSERT INTO `match_log` (`matchlog_id`, `searcher`, `searched`, `status`, `datetime`) VALUES
(92, 708726836, 707856920, 1, '2021-11-09 15:38:15'),
(93, 708726836, 707752869, 1, '2021-11-09 15:38:15'),
(94, 708726836, 750576402, 1, '2021-11-09 15:38:16'),
(95, 708726836, 200200200, 0, '2021-11-09 15:38:15'),
(96, 708726836, 20202020, 0, '2021-11-09 15:38:15'),
(97, 708726838, 707856920, 1, '2021-11-09 16:54:49'),
(98, 708726838, 707752869, 1, '2021-11-09 16:54:49'),
(99, 708726838, 750576402, 1, '2021-11-09 16:54:49'),
(100, 708726838, 200200200, 1, '2021-11-09 18:51:07'),
(101, 708726838, 20202020, 1, '2021-11-09 18:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `match_pref`
--

CREATE TABLE `match_pref` (
  `id` int(5) NOT NULL,
  `phone` int(12) NOT NULL,
  `min_age` int(5) NOT NULL,
  `max_age` int(5) NOT NULL,
  `county` varchar(20) NOT NULL,
  `gender_match` varchar(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_pref`
--

INSERT INTO `match_pref` (`id`, `phone`, `min_age`, `max_age`, `county`, `gender_match`, `date`) VALUES
(27, 708726836, 18, 30, 'nairobi', 'Male', '2021-11-09 15:38:14'),
(28, 707726836, 18, 40, 'Nairobi', 'Female', '2021-11-09 15:20:41'),
(29, 708726838, 20, 30, 'Nairobi', '', '2021-11-09 16:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mes_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `message_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mes_id`, `message`, `sender`, `receiver`, `date`, `message_status`) VALUES
(143, 'We have 5 of Male[s]  who match your choice! We will send you details of 3 of them shortly.\r\n    To get more details about a persons, SMS their number E.G 0722123456 to 25005', '25005', '707852963', '2021-11-02 14:50:59', 0),
(144, 'START#18-30#Nairobi', '707568923', '25005', '2021-11-02 14:52:23', 0),
(145, 'We have 5 of Male[s]  who match your choice! We will send you details of 3 of them shortly.\r\n    To get more details about a persons, SMS their number E.G 0722123456 to 25005', '25005', '707568923', '2021-11-02 14:52:24', 0),
(146, 'START#18-30#Nairobi', '707568923', '25005', '2021-11-02 14:55:15', 0),
(147, 'We have 5 of Male[s]  who match your choice! We will send you details of 3 of them shortly.\r\n    To get more details about a persons, SMS their number E.G 0722123456 to 25005', '25005', '707568923', '2021-11-02 14:55:15', 0),
(148, 'MatCh#20-26#Nairobi', '707568923', '25005', '2021-11-02 14:58:37', 0),
(149, 'We have 4 of Male[s]  who match your choice! We will send you details of 3 of them shortly.\r\n    To get more details about a persons, SMS their number E.G 0722123456 to 25005', '25005', '707568923', '2021-11-02 14:58:37', 0),
(150, 'MATch#20-28#Nairobi', '707568923', '25005', '2021-11-02 15:04:37', 0),
(151, 'We have 4 of Male[s]  who match your choice! We will send you details of 3 of them shortly.\r\n    To get more details about a persons, SMS their number E.G 0722123456 to 25005', '25005', '707568923', '2021-11-02 15:04:37', 0),
(152, 'Match#25-30#Nairobi', '707568923', '25005', '2021-11-02 15:05:10', 0),
(153, 'We have 1 of Male[s]  who match your choice! We will send you details of 3 of them shortly.\r\n    To get more details about a persons, SMS their number E.G 0722123456 to 25005', '25005', '707568923', '2021-11-02 15:05:10', 0),
(154, 'Match#18-25#Nairobi', '707568923', '25005', '2021-11-02 15:08:53', 0),
(180, 'We have 5 of Male[s]  who match your choice! We will send you details of 3 of them shortly.\r\n    To get more details about a persons, SMS their number E.G 0722123456 to 25005', '25005', '707852963', '2021-11-02 16:06:10', 0),
(188, 'Match#18-28#Nairobi', '707852963', '25005', '2021-11-02 16:33:43', 0),
(189, 'We have 4 of Male[s]  who match your choice! We will send you details of 3 of them shortly.\r\n    To get more details about a persons, SMS their number E.G 0722123456 to 25005', '25005', '707852963', '2021-11-02 16:33:43', 0),
(215, 'MYSELF#chocolate#lovely#sexy', '0707726836', '25005', '2021-11-02 21:38:53', 0),
(216, 'You were registered for dating with your details your initial details. Enjoy yorself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-02 21:38:53', 0),
(227, 'PENZI', '0707726836', '25005', '2021-11-02 21:58:02', 0),
(228, 'You were registered for dating with your details your initial details. Enjoy yorself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-02 21:58:02', 0),
(229, 'PENZI', '233565', '25005', '2021-11-02 21:58:28', 0),
(230, 'DETAILS#diploma#accountant#single#christian#mijikenda', '0707726836', '25005', '2021-11-02 22:00:59', 0),
(231, 'This is the last stage of registration SMS a brief description of yourself to 25005 starting with the word MYSELF E.G MYSELF,chocolate, lovely,sexy etc', '25005', '0707726836', '2021-11-02 22:00:59', 0),
(232, 'penzi', '0707726836', '25005', '2021-11-02 22:13:39', 0),
(233, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-02 22:13:39', 0),
(234, 'PENZI', '0707726836', '', '2021-11-02 22:43:29', 0),
(235, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '', '0707726836', '2021-11-02 22:43:29', 0),
(236, 'PENZI', '2465454', '250005', '2021-11-02 22:45:33', 0),
(237, 'PENZI', '0707726836', '25005', '2021-11-02 22:47:15', 0),
(238, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-02 22:47:16', 0),
(239, 'PENZI', '0707725985', '25005', '2021-11-02 22:49:01', 0),
(240, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707725985', '2021-11-02 22:49:01', 0),
(241, 'PENZI', '070745963', '25005', '2021-11-02 22:51:17', 0),
(242, 'Welcome to our dating service with 6000 potential dating patners! To register sms START#name#age#sex#province#town to 25005 E.G START#Mike#26#Male#COast#malindi', '25005', '070745963', '2021-11-02 22:51:17', 0),
(243, 'PENZI', '0707726836', '25005', '2021-11-03 10:07:32', 0),
(244, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-03 10:07:32', 0),
(245, 'PENZI', '0707726836', '25005', '2021-11-03 10:09:18', 0),
(246, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-03 10:09:18', 0),
(247, 'MATCH', '0707726836', '25005', '2021-11-03 10:34:28', 0),
(248, 'MATCH', '0707726836', '25005', '2021-11-03 10:34:41', 0),
(249, 'MATCH', '0707726836', '25005', '2021-11-03 10:35:59', 0),
(250, 'PENZI', '0707726836', '25005', '2021-11-03 10:56:40', 0),
(251, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-03 10:56:40', 0),
(252, 'START', '0707726836', '25005', '2021-11-03 10:58:59', 0),
(253, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 10:58:59', 0),
(254, 'START', '0707726836', '25005', '2021-11-03 10:59:49', 0),
(255, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 10:59:50', 0),
(256, 'START', '0707726836', '25005', '2021-11-03 10:59:56', 0),
(257, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 10:59:56', 0),
(258, 'START', '0707726836', '25005', '2021-11-03 11:01:56', 0),
(259, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:01:56', 0),
(260, 'START', '0707726836', '25005', '2021-11-03 11:02:47', 0),
(261, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:02:47', 0),
(262, 'START', '0707726836', '25005', '2021-11-03 11:03:59', 0),
(263, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:04:00', 0),
(264, 'START', '0707726836', '25005', '2021-11-03 11:06:32', 0),
(265, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:06:32', 0),
(266, 'START', '0707726836', '25005', '2021-11-03 11:06:59', 0),
(267, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:06:59', 0),
(268, 'START', '0707726836', '25005', '2021-11-03 11:07:05', 0),
(269, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:07:05', 0),
(270, 'PENZI', '0707726836', '25005', '2021-11-03 11:15:32', 0),
(271, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-03 11:15:32', 0),
(272, 'START', '0707726836', '25005', '2021-11-03 11:16:48', 0),
(273, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:16:49', 0),
(274, 'penzi', '0707726836', '25005', '2021-11-03 11:17:19', 0),
(275, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-03 11:17:19', 0),
(276, 'penzi', '0707726836', '25005', '2021-11-03 11:17:39', 0),
(277, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-03 11:17:39', 0),
(278, 'start', '0707726836', '25005', '2021-11-03 11:17:48', 0),
(279, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:17:48', 0),
(280, 'start', '0707726836', '25005', '2021-11-03 11:18:07', 0),
(281, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:18:07', 0),
(282, 'start', '0707726836', '25005', '2021-11-03 11:18:11', 0),
(283, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:18:11', 0),
(284, 'start', '0707726836', '25005', '2021-11-03 11:18:17', 0),
(285, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-03 11:18:17', 0),
(286, 'details', '0707726836', '25005', '2021-11-03 11:18:37', 0),
(287, 'This is the last stage of registration SMS a brief description of yourself to 25005 starting with the word MYSELF E.G MYSELF,chocolate, lovely,sexy etc', '25005', '0707726836', '2021-11-03 11:18:37', 0),
(288, 'MAtch', '0707726836', '25005', '2021-11-03 11:20:22', 0),
(289, '', '25005', '0707726836', '2021-11-03 11:20:22', 0),
(290, 'MATCH', '0707726836', '25005', '2021-11-03 11:22:07', 0),
(291, 'MATCH', '0707726836', '25005', '2021-11-03 11:32:22', 0),
(292, 'MATCH', '0707726836', '25005', '2021-11-03 11:33:53', 0),
(293, 'MATCH', '0707726836', '25005', '2021-11-03 11:34:42', 0),
(294, 'MATCH', '0707726836', '25005', '2021-11-03 11:37:10', 0),
(295, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:38:55', 0),
(296, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:41:18', 0),
(297, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:42:05', 0),
(298, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:43:54', 0),
(299, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:46:18', 0),
(300, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:52:56', 0),
(301, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:54:11', 0),
(302, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:54:54', 0),
(303, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:55:32', 0),
(304, 'MATCH#12-30#Nairobi', '0707726836', '25005', '2021-11-03 11:58:06', 0),
(305, '1', '25005', '0707726836', '2021-11-03 11:58:06', 0),
(306, 'MATCH#12-30#Nairobi', '707568923', '25005', '2021-11-03 12:01:34', 0),
(307, '1 person(s) were found who match your choice! We will send you details of 3 of them shortly.\r\n									     To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '707568923', '2021-11-03 12:01:35', 0),
(308, 'MATCH#18-30#NAirobi', '0707726836', '25005', '2021-11-03 12:04:56', 0),
(309, '1 person(s) were found who match your choice! We will send you details  of them shortly.\r\n									     To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-03 12:04:56', 0),
(310, 'MATCH#12-30#Nairobi', '707568923', '25005', '2021-11-03 12:08:11', 0),
(311, '1 person(s) were found who match your choice! We will send you details  of them shortly.\r\n									     To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '707568923', '2021-11-03 12:08:12', 0),
(312, 'MATCH#12-30#Nairobi', '707568923', '25005', '2021-11-03 12:10:46', 0),
(313, '1 person(s) were found who match your choice! We will send you details  of them shortly.\r\n									     To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '707568923', '2021-11-03 12:10:46', 0),
(314, '1 person(s) were found who match your choice! We will send you details  of them shortly.\r\n									     To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '707568923', '2021-11-03 12:10:46', 0),
(315, 'MATCH#18-30#Nairobi', '707568923', '25005', '2021-11-03 12:15:42', 0),
(316, '1 person(s) were found who match your choice! We will send you details  of them shortly.\r\n									     To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '707568923', '2021-11-03 12:15:42', 0),
(317, '1 person(s) were found who match your choice! We will send you details  of them shortly.\r\n									     To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '707568923', '2021-11-03 12:15:42', 0),
(318, 'MATCH#18-30#Nairobi', '707568923', '25005', '2021-11-03 12:19:26', 0),
(319, '', '25005', '707568923', '2021-11-03 12:19:26', 0),
(320, 'MATCH#18-30#Nairobi', '707568923', '25005', '2021-11-03 12:20:11', 0),
(321, '5 person(s) were found who match your choice! We will send you details  of them shortly.\r\n									     To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '707568923', '2021-11-03 12:20:11', 0),
(322, 'MATCH#18-30#Nairobi', '707568923', '25005', '2021-11-03 12:28:26', 0),
(323, '5 person(s) were found who match your choice! We will send you details  of them shortly. To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '707568923', '2021-11-03 12:28:26', 0),
(324, 'PENZI', '0707077777', '25005', '2021-11-03 13:58:32', 0),
(325, 'Welcome to our dating service with 6000 potential dating patners! To register sms START#name#age#sex#province#town to 25005 E.G START#Mike#26#Male#COast#malindi', '25005', '0707077777', '2021-11-03 13:58:36', 0),
(326, 'PENZI', '0707726836', '25005', '2021-11-03 13:59:14', 0),
(327, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-03 13:59:14', 0),
(328, 'Match#18-30#Nairobi', '0707726837', '25005', '2021-11-03 15:24:55', 0),
(329, 'Match#18-30#Nairobi', '0707726837', '25005', '2021-11-03 15:31:35', 0),
(330, 'Match#18-30#Nairobi', '0707726837', '25005', '2021-11-03 15:39:53', 0),
(331, '5 person(s) were found who match your choice! We will send you details  of them shortly. To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 Kevo, aged 21, 750576402', '25005', '0707726837', '2021-11-03 15:39:53', 0),
(332, 'Match#18-30#Nairobi', '0707726837', '25005', '2021-11-03 15:42:13', 0),
(333, '5 person(s) were found who match your choice! We will send you details  of them shortly. To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 Kevo, aged 21, 750576402', '25005', '0707726837', '2021-11-03 15:42:13', 0),
(334, 'Match#18-30#Nairobi', '0707726837', '25005', '2021-11-03 15:43:22', 0),
(335, '5 person(s) were found who match your choice! We will send you details  of them shortly. To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 Kevo, aged 21, 750576402', '25005', '0707726837', '2021-11-03 15:43:22', 0),
(336, 'Match#18-30#Nairobi', '0707726837', '25005', '2021-11-03 15:45:07', 0),
(337, '5 person(s)   of them shortly. To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 Kevo, aged 21, 750576402', '25005', '0707726837', '2021-11-03 15:45:08', 0),
(338, 'Match#18-30#Nairobi', '0707726837', '25005', '2021-11-03 15:46:48', 0),
(339, '5 person(s)   of them shortly. To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 Kevo, aged 21, 750576402', '25005', '0707726837', '2021-11-03 15:46:48', 0),
(340, 'Match#18-30#Nairobi', '0707726836', '25005', '2021-11-03 15:47:10', 0),
(341, '1 person(s)   of them shortly. To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 Njeri, aged 21, 707726837', '25005', '0707726836', '2021-11-03 15:47:10', 0),
(342, 'Match#18-30#Nairobi', '0707726836', '25005', '2021-11-03 15:49:38', 0),
(343, '1 person(s) were found who match \r\nyour choice! We will send you details  of them shortly. To get more details about a person, \r\nSMS their number to 25005 E.G 0722123456 to 25005\r\n Njeri, aged 21, 707726837', '25005', '0707726836', '2021-11-03 15:49:38', 0),
(344, 'Match#18-30#Nairobi', '0707726836', '25005', '2021-11-03 15:50:43', 0),
(345, '1 person(s) were found who match {\r\n}your choice! We will send you details  of them shortly. To get more details about a person, {\r\n}SMS their number to 25005 E.G 0722123456 to 25005{\r\n} Njeri, aged 21, 707726837', '25005', '0707726836', '2021-11-03 15:50:43', 0),
(346, 'MATch#18-30#Nairobi', '0707726837', '25005', '2021-11-03 15:52:16', 0),
(347, '5 person(s) were found who match your choice! We will send you details  of them shortly. To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 Kevo, aged 21, 750576402', '25005', '0707726837', '2021-11-03 15:52:16', 0),
(348, 'MATCH#18-30#Nairobi', '0707726836', '25005', '2021-11-03 15:53:03', 0),
(349, '1 person(s) were found who match your choice! We will send you details  of them shortly. To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 Njeri, aged 21, 707726837', '25005', '0707726836', '2021-11-03 15:53:03', 0),
(350, '', '', '', '2021-11-04 15:24:38', 0),
(351, '', '', '', '2021-11-04 15:26:04', 0),
(352, 'PENZI', '0707726836', '25005', '2021-11-04 16:11:50', 0),
(353, 'PENZI', '0707726836', '25005', '2021-11-04 16:13:36', 0),
(354, 'PENZI', '0707726836', '25005', '2021-11-04 16:26:33', 0),
(355, 'PENZI', '25005', '0707726836', '2021-11-04 16:26:38', 0),
(356, 'PENZI', '0707726836', '25005', '2021-11-04 16:37:21', 0),
(357, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-04 16:37:21', 0),
(358, 'start', '0707726836', '25005', '2021-11-04 16:37:44', 0),
(359, 'PENZI', '0707726836', '25005', '2021-11-04 16:40:35', 0),
(360, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-04 16:40:35', 0),
(361, 'sta', '0707726836', '25005', '2021-11-04 16:48:48', 0),
(362, 'sta', '0707726836', '25005', '2021-11-04 16:49:31', 0),
(363, 'sta', '0707726836', '25005', '2021-11-04 16:49:37', 0),
(364, 'starte', '0707726836', '25005', '2021-11-04 16:52:17', 0),
(365, 'Array', '', '', '2021-11-04 16:52:18', 0),
(366, 'starte', '0707726836', '25005', '2021-11-04 16:55:47', 0),
(367, 'Array', '', '', '2021-11-04 16:55:47', 0),
(368, 'starte', '0707726836', '25005', '2021-11-04 16:57:50', 0),
(369, 'INCORRECT FORMAT Please try again', '', '', '2021-11-04 16:57:51', 0),
(370, 'starte', '0707726836', '25005', '2021-11-04 16:59:22', 0),
(371, 'INCORRECT FORMAT Please try again', '', '', '2021-11-04 16:59:22', 0),
(372, 'starte', '0707726836', '25005', '2021-11-04 17:03:24', 0),
(373, 'INCORRECT FORMAT Please try again', '25005', '0707726836', '2021-11-04 17:03:24', 0),
(374, 'start', '0707726836', '25005', '2021-11-04 17:04:11', 0),
(375, 'start', '0707726836', '25005', '2021-11-04 17:08:08', 0),
(376, 'start', '0707726836', '25005', '2021-11-04 17:12:03', 0),
(377, 'start', '0707726836', '25005', '2021-11-04 17:12:41', 0),
(378, 'start', '0707726836', '25005', '2021-11-04 17:13:16', 0),
(379, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-04 17:13:17', 0),
(380, 'start', '0707726836', '25005', '2021-11-04 17:14:06', 0),
(381, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-04 17:14:07', 0),
(382, 'start', '0707726836', '25005', '2021-11-04 17:14:37', 0),
(383, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0707726836', '2021-11-04 17:14:38', 0),
(384, 'start#Jane#25#female#Nairobi#thika', '0708726836', '25005', '2021-11-04 17:19:14', 0),
(385, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005 E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0708726836', '2021-11-04 17:19:15', 0),
(386, 'details', '0707726836', '25005', '2021-11-04 17:22:31', 0),
(387, 'details', '0707726836', '25005', '2021-11-04 17:23:40', 0),
(388, 'This is the last stage of registration SMS a brief description of yourself to 25005 starting with the word MYSELF E.G MYSELF,chocolate, lovely,sexy etc', '25005', '0707726836', '2021-11-04 17:23:40', 0),
(389, 'Details#diploma#teacher#single#christian#luo', '0708726836', '25005', '2021-11-04 17:27:05', 0),
(390, 'This is the last stage of registration SMS a brief description of yourself to 25005 starting with the word MYSELF E.G MYSELF,chocolate, lovely,sexy etc', '25005', '0708726836', '2021-11-04 17:27:05', 0),
(391, 'myself#chips-kuku#lovely#cute', '0708726836', '25005', '2021-11-04 17:39:37', 0),
(392, 'myself#chips-kuku#lovely#cute', '25005', '0708726836', '2021-11-04 17:39:38', 0),
(393, 'myself#chips-kuku#lovely#cute', '0708726836', '25005', '2021-11-04 17:42:22', 0),
(394, 'myself#chips-kuku#lovely#cute', '0708726836', '25005', '2021-11-04 17:42:43', 0),
(395, 'You were registered for dating with your details your initial details. Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '0708726836', '2021-11-04 17:42:45', 0),
(396, 'match#20-30#Nairobi', '0708726836', '25005', '2021-11-04 18:06:01', 0),
(397, 'match#20-30#Nairobi', '0708726836', '25005', '2021-11-04 18:06:21', 0),
(398, 'match#20-30#Nairobi', '0708726836', '25005', '2021-11-04 18:10:10', 0),
(399, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 Jane, aged 25, 708726836', '25005', '0708726836', '2021-11-04 18:10:10', 0),
(400, 'match#20-30#Nairobi', '0708726836', '25005', '2021-11-04 18:13:24', 0),
(401, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0708726836', '2021-11-04 18:13:24', 0),
(402, 'match#20-30#Nairobi', '0708726836', '25005', '2021-11-04 18:31:10', 0),
(403, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0708726836', '2021-11-04 18:31:10', 0),
(404, 'match#20-30#Nairobi', '707726837', '25005', '2021-11-04 18:33:42', 0),
(405, '5 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '707726837', '2021-11-04 18:33:42', 0),
(406, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-04 18:33:57', 0),
(407, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-04 18:33:57', 0),
(408, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-04 18:33:57', 0),
(409, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-04 18:33:57', 0),
(410, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-04 18:33:57', 0),
(411, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-04 18:36:38', 0),
(412, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-04 18:36:38', 0),
(413, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-04 18:36:38', 0),
(414, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-04 18:36:38', 0),
(415, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-04 18:36:38', 0),
(416, 'match#20-30#Nairobi', '0707726837', '25005', '2021-11-04 18:36:52', 0),
(417, '5 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726837', '2021-11-04 18:36:52', 0),
(418, 'match#20-30#Nairobi', '0707726837', '25005', '2021-11-05 08:19:33', 0),
(419, 'match#20-30#Nairobi', '0707726837', '25005', '2021-11-05 08:20:28', 0),
(420, '5 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726837', '2021-11-05 08:20:28', 0),
(421, 'match#20-30#Nairobi', '0707726837', '25005', '2021-11-05 08:51:22', 0),
(422, '5 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726837', '2021-11-05 08:51:22', 0),
(423, 'PENZI', '0707726836', '25005', '2021-11-05 11:16:10', 0),
(424, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 11:16:12', 0),
(425, 'penzi', '0707726836', '25005', '2021-11-05 12:48:56', 0),
(426, 'penzi', '0707726836', '25005', '2021-11-05 12:48:58', 0),
(427, 'penzi', '0707726836', '25005', '2021-11-05 12:48:58', 0),
(428, 'penzi', '0707726836', '25005', '2021-11-05 12:48:49', 0),
(429, 'penzi', '0707726836', '25005', '2021-11-05 12:48:58', 0),
(430, 'penzi', '0707726836', '25005', '2021-11-05 12:48:58', 0),
(431, 'penzi', '0707726836', '25005', '2021-11-05 12:49:20', 0),
(432, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:26', 0),
(433, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:26', 0),
(434, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:26', 0),
(435, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:26', 0),
(436, 'penzi', '0707726836', '25005', '2021-11-05 12:49:26', 0),
(437, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:26', 0),
(438, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:27', 0),
(439, 'penzi', '0707726836', '25005', '2021-11-05 12:49:27', 0),
(440, 'penzi', '0707726836', '25005', '2021-11-05 12:49:27', 0),
(441, 'penzi', '0707726836', '25005', '2021-11-05 12:49:27', 0),
(442, 'penzi', '0707726836', '25005', '2021-11-05 12:49:27', 0),
(443, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:27', 0),
(444, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:27', 0),
(445, 'penzi', '0707726836', '25005', '2021-11-05 12:49:28', 0),
(446, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:28', 0),
(447, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:29', 0),
(448, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-05 12:49:29', 0),
(449, 'match#20-30#Nairobi', '0708726836', '25005', '2021-11-05 12:56:59', 0),
(450, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-05 12:58:57', 0),
(451, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-05 13:01:20', 0),
(452, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-05 13:02:04', 0),
(453, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-05 13:03:02', 0),
(454, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-05 13:03:48', 0),
(455, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-05 13:03:48', 0),
(456, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-05 13:03:48', 0),
(457, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-05 13:03:48', 0),
(458, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005', '25005', '0707726836', '2021-11-05 13:03:48', 0),
(459, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-05 13:10:17', 0),
(460, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005. ', '25005', '0707726836', '2021-11-05 13:10:17', 0),
(461, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005. ', '25005', '0707726836', '2021-11-05 13:10:18', 0),
(462, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005. ', '25005', '0707726836', '2021-11-05 13:10:19', 0),
(463, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005. ', '25005', '0707726836', '2021-11-05 13:10:19', 0),
(464, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-05 13:12:34', 0),
(465, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005. ', '25005', '0707726836', '2021-11-05 13:12:34', 0),
(466, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-05 13:13:17', 0),
(467, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005. Jane, aged 25, 708726836,Njeri, aged 21, 707726837.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0707726836', '2021-11-05 13:13:17', 0),
(468, 'match#20-30#Nairobi', '0707726836', '25005', '2021-11-05 13:14:33', 0),
(469, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005. Jane, aged 25, 708726836,Njeri, aged 21, 707726837.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0707726836', '2021-11-05 13:14:34', 0),
(470, 'match#20-30#Nairobi', '0708726836', '25005', '2021-11-05 13:15:50', 0),
(471, '2 person(s) were found who match your choice! We will send you details  of them shortly.\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005.                                . Jane, aged 25, 708726836,Njeri, aged 21, 707726837.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-05 13:15:50', 0),
(472, 'match#18-30#Nairobi', '0707726836', '25005', '2021-11-05 13:28:02', 0),
(473, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005. Jane, aged 25, 708726836,Njeri, aged 21, 707726837.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0707726836', '2021-11-05 13:28:02', 0),
(474, 'match#18-30#Nairobi', '0708726836', '25005', '2021-11-05 13:30:23', 0),
(475, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n<br />\r\n<br />\r\n<br />\r\n. Jane, aged 25, 708726836,Njeri, aged 21, 707726837.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-05 13:30:23', 0),
(476, 'match#18-30#nairobi', '0707726836', '25005', '2021-11-05 13:34:15', 0),
(477, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 {PHP_EOL}{PHP_EOL}{PHP_EOL}{PHP_EOL} . Jane, aged 25, 708726836,Njeri, aged 21, 707726837.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0707726836', '2021-11-05 13:34:16', 0),
(478, 'matCh#20-30#Nairobi', '0708726836', '25005', '2021-11-05 13:35:45', 0),
(479, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Jane, aged 25, 708726836,Njeri, aged 21, 707726837.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-05 13:35:45', 0),
(480, 'Match#18-30#Nairobi', '0708726836', '25005', '2021-11-08 13:22:19', 0),
(481, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Jane, aged 25, 708726836,Njeri, aged 21, 707726837.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-08 13:22:20', 0),
(482, 'matCh#18-30#Nairobi', '0708726836', '25005', '2021-11-08 13:26:13', 0),
(483, '5 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Jose, aged 30, 20202020,Ian, aged 21, 200200200,Kevo, aged 21, 750576402.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-08 13:26:13', 0),
(484, 'Match#18-30#Nairobi', '0708726836', '25005', '2021-11-08 15:22:44', 0),
(485, '5 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Sam, aged 21, 707856920,Kane, aged 21, 707752869,Kevo, aged 21, 750576402.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-08 15:22:45', 0),
(486, 'Match#18-30#Nairobi', '0708726836', '25005', '2021-11-08 15:24:22', 0),
(487, '5 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Sam, aged 21, 707856920,Kane, aged 21, 707752869,Kevo, aged 21, 750576402.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-08 15:24:23', 0),
(488, 'match#18-50#Nairobi', '0708726836', '25005', '2021-11-08 15:25:36', 0),
(489, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Sam, aged 21, 707856920,Kane, aged 21, 707752869,Kevo, aged 21, 750576402.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-08 15:25:37', 0),
(490, 'match#18-50#Nairobi', '0708726836', '25005', '2021-11-08 15:27:55', 0),
(491, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Sam, aged 21, 707856920,Kane, aged 21, 707752869,Kevo, aged 21, 750576402,Ian, aged 21, 200200200,Jose, aged 30, 20202020,John, aged 31, 6415415.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-08 15:27:56', 0),
(492, 'Match#18-35#Nairobi', '0708726836', '25005', '2021-11-08 15:36:21', 0),
(493, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0708726836', '2021-11-08 15:36:22', 0),
(494, 'Match#19-35#Nairobi', '0708726836', '25005', '2021-11-08 15:37:41', 0),
(495, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Sam, aged 21, 707856920,Kane, aged 21, 707752869,Kevo, aged 21, 750576402.  Send  Next to 5001 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-08 15:37:42', 0),
(496, 'Match#18-30#Nairobi', '0708726836', '25005', '2021-11-08 18:52:24', 0),
(497, '5 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Sam, aged 21, 707856920,Kane, aged 21, 707752869,Kevo, aged 21, 750576402,Ian, aged 21, 200200200,Jose, aged 30, 20202020.  Send  Next to 25005 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-08 18:52:26', 0),
(498, 'Match#18-35#Nairobi', '0708726836', '25005', '2021-11-09 11:03:02', 0),
(499, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0708726836', '2021-11-09 11:03:03', 0),
(500, 'match#18-35#Nairobi', '0708726836', '25005', '2021-11-09 11:21:41', 0),
(501, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0708726836', '2021-11-09 11:21:42', 0),
(502, 'match#18-35#Nairobi', '0708726836', '25005', '2021-11-09 11:28:34', 0),
(503, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0708726836', '2021-11-09 11:28:35', 0),
(504, 'Match#18-35#Nairobi', '0708726836', '25005', '2021-11-09 12:47:47', 0),
(505, '. Array.  Send  Next to 25005 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-09 12:47:48', 0),
(506, 'match#18-35#Nairobi', '0708726836', '25005', '2021-11-09 12:57:11', 0),
(507, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Array.  Send  Next to 25005 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-09 12:57:11', 0),
(508, 'Match#18-30#Nairobi', '0708726836', '25005', '2021-11-09 13:01:21', 0),
(509, '5 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Array.  Send  Next to 25005 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-09 13:01:22', 0),
(510, 'Match#20-30#Nairobi', '0707726836', '25005', '2021-11-09 13:09:13', 0),
(511, '', '25005', '0707726836', '2021-11-09 13:09:14', 0),
(512, 'Match#20-30#Nairobi', '0707726836', '25005', '2021-11-09 13:21:13', 0),
(513, '', '25005', '0707726836', '2021-11-09 13:21:13', 0),
(514, 'match#20-28#Nairobi', '0707726836', '25005', '2021-11-09 13:26:25', 0),
(515, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0707726836', '2021-11-09 13:26:25', 0),
(516, 'Match#18-30#NAirobi', '0707726836', '25005', '2021-11-09 13:31:26', 0),
(517, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0707726836', '2021-11-09 13:31:26', 0),
(518, 'Match#18-35#Nairobi', '0707726836', '25005', '2021-11-09 13:34:36', 0),
(519, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0707726836', '2021-11-09 13:34:37', 0),
(520, 'Match#18-35#Nairobi', '0708726836', '25005', '2021-11-09 13:44:27', 0),
(521, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0708726836', '2021-11-09 13:44:27', 0),
(522, 'Match#18-35#Nairobi', '0707726836', '25005', '2021-11-09 13:49:12', 0),
(523, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0707726836', '2021-11-09 13:49:12', 0),
(524, 'Match#18-30#Nairobi', '0707726836', '25005', '2021-11-09 13:52:58', 0),
(525, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0707726836', '2021-11-09 13:52:59', 0),
(526, 'Match#20-25#Nairobi', '0708726836', '25005', '2021-11-09 13:54:14', 0),
(527, '4 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0708726836', '2021-11-09 13:54:14', 0),
(528, 'Match#20-30#Nairobi', '0707726836', '25005', '2021-11-09 13:56:42', 0),
(529, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0707726836', '2021-11-09 13:56:42', 0),
(530, 'Match#20-30#Nairobi', '0707726836', '25005', '2021-11-09 14:02:17', 0),
(531, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Array.  Send  Next to 25005 to recive details of the remaining  persons', '25005', '0707726836', '2021-11-09 14:02:18', 0),
(532, 'match#18-30#Nairobi', '0708726836', '25005', '2021-11-09 14:30:30', 0),
(533, '5 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Array.  Send  Next to 25005 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-09 14:30:31', 0),
(534, 'match#18-40#Nairobi', '0708726836', '25005', '2021-11-09 14:45:52', 0),
(535, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Sam, aged 21, 707856920:Kane, aged 21, 707752869:Kevo, aged 21, 750576402: Send  Next to 25005 to recive details of the remaining  persons', '25005', '0708726836', '2021-11-09 14:45:53', 0),
(536, 'PENZI', '0707726838', '25005', '2021-11-09 15:04:50', 0),
(537, 'Match#18-40#Nairobi', '0707726836', '25005', '2021-11-09 15:08:02', 0),
(538, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0707726836', '2021-11-09 15:08:02', 0),
(539, 'Match#18-30#Nairobi', '0707726836', '25005', '2021-11-09 15:18:40', 0),
(540, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0707726836', '2021-11-09 15:18:40', 0),
(541, 'Match#18-40#Nairobi', '0707726836', '25005', '2021-11-09 15:20:40', 0),
(542, '2 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0707726836', '2021-11-09 15:20:41', 0),
(543, 'Match#18-35#Nairobi', '0708726836', '25005', '2021-11-09 15:30:40', 0),
(544, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0708726836', '2021-11-09 15:30:40', 0),
(545, 'match#18-50#Nairobi', '0708726836', '25005', '2021-11-09 15:36:34', 0),
(546, '6 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. ', '25005', '0708726836', '2021-11-09 15:36:35', 0),
(547, 'match#18-30#nairobi', '0708726836', '25005', '2021-11-09 15:38:14', 0);
INSERT INTO `message` (`mes_id`, `message`, `sender`, `receiver`, `date`, `message_status`) VALUES
(548, '5 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Sam, aged 21, 707856920:Kane, aged 21, 707752869:Kevo, aged 21, 750576402: Send  Next to 25005 to recive details of the remaining { 2} persons', '25005', '0708726836', '2021-11-09 15:38:16', 0),
(549, 'Next', '0708726836', '25005', '2021-11-09 15:48:58', 0),
(550, 'Next', '0708726836', '25005', '2021-11-09 15:50:31', 0),
(551, 'Penzi', '0707726836', '25005', '2021-11-09 16:30:14', 0),
(552, 'ssd', '708726836', '25005', '2021-11-09 16:32:17', 0),
(553, 'INCORRECT FORMAT Please try again', '25005', '708726836', '2021-11-09 16:32:17', 0),
(554, 'PENZI', '708726836', '25005', '2021-11-09 16:32:35', 0),
(555, 'PENZI', '708726836', '25005', '2021-11-09 16:34:10', 0),
(556, 'PENZI', '708726836', '25005', '2021-11-09 16:36:09', 0),
(557, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '708726836', '2021-11-09 16:36:09', 0),
(558, 'PENzi', '0707726836', '25005', '2021-11-09 16:36:43', 0),
(559, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-09 16:36:43', 0),
(560, 'PENZI', '708726836', '25005', '2021-11-09 16:37:37', 0),
(561, 'penzi', '0707726836', '25005', '2021-11-09 16:38:27', 0),
(562, 'PENZI', '708726836', '25005', '2021-11-09 16:39:23', 0),
(563, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '708726836', '2021-11-09 16:39:23', 0),
(564, 'Match#23-25#Nairobi', '708726838', '25005', '2021-11-09 16:39:48', 0),
(565, 'Penzi', '708726838', '25005', '2021-11-09 16:40:24', 0),
(566, 'Welcome to our dating service with 6000 potential dating patners! To register sms \r\n               START#name#age#sex#province#town to 25005 E.G START#Mike#26#Male#COast#malindi', '25005', '708726838', '2021-11-09 16:40:24', 0),
(567, 'START#Mike#26#Female#Nairobit#Makadara', '708726838', '25005', '2021-11-09 16:40:59', 0),
(568, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005\r\n                    E.G details#diploma#accountant#single#christian#mijikenda', '25005', '708726838', '2021-11-09 16:41:00', 0),
(569, 'details#diploma#accountant#single#christian#mijikenda', '708726838', '25005', '2021-11-09 16:41:19', 0),
(570, 'This is the last stage of registration SMS a brief description of yourself to 25005 starting \r\n                   with the word MYSELF E.G MYSELF,chocolate, lovely,sexy etc', '25005', '708726838', '2021-11-09 16:41:20', 0),
(571, 'myself#pilau#Sexy#Hardworking', '708726838', '25005', '2021-11-09 16:42:23', 0),
(572, 'You are now registered for dating with your details your initial details. Enjoy yorself, To \r\n                   search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi', '25005', '708726838', '2021-11-09 16:42:23', 0),
(573, 'Match#20-30#Nairobi', '708726838', '25005', '2021-11-09 16:43:06', 0),
(574, '5 person(s) were found who match your choice! We will send you details  of them shortly.<br />\r\n	 To get more details about a person, SMS their number to 25005 E.G 0722123456 to 25005 <br />\r\n .. Sam, aged 21, 707856920:Kane, aged 21, 707752869:Kevo, aged 21, 750576402: Send  Next to 25005 to receive details of the remaining { 2} persons', '25005', '708726838', '2021-11-09 16:43:07', 0),
(575, 'Next', '708726838', '25005', '2021-11-09 16:43:24', 0),
(576, 'Next', '708726838', '25005', '2021-11-09 16:45:14', 0),
(577, 'Next', '708726838', '25005', '2021-11-09 16:45:47', 0),
(578, 'Next', '708726838', '25005', '2021-11-09 16:46:59', 0),
(579, 'Ian, aged 21, 200200200:Jose, aged 30, 20202020: Send  Next to 25005 to receive details of the remaining { } persons', '25005', '708726838', '2021-11-09 16:47:00', 0),
(580, 'Next', '708726838', '25005', '2021-11-09 16:50:24', 0),
(581, 'Sam, aged 21, 707856920:Jose, aged 30, 20202020: Send  Next to 25005 to receive details of the remaining { } persons', '25005', '708726838', '2021-11-09 16:50:24', 0),
(582, 'Next', '708726838', '25005', '2021-11-09 16:52:29', 0),
(583, 'Sam, aged 21, 707856920:Kane, aged 21, 707752869:Kevo, aged 21, 750576402: Send  Next to 25005 to receive details of the remaining { 2} persons', '25005', '708726838', '2021-11-09 16:52:29', 0),
(584, 'Next', '708726838', '25005', '2021-11-09 16:52:36', 0),
(585, 'Ian, aged 21, 200200200:Jose, aged 30, 20202020: ', '25005', '708726838', '2021-11-09 16:52:36', 0),
(586, 'next', '0708726838', '25005', '2021-11-09 16:54:49', 0),
(587, 'Sam, aged 21, 707856920:Kane, aged 21, 707752869:Kevo, aged 21, 750576402: Send  Next to 25005 to receive details of the remaining { 2} persons', '25005', '0708726838', '2021-11-09 16:54:49', 0),
(588, 'next', '708726838', '25005', '2021-11-09 16:55:02', 0),
(589, 'Ian, aged 21, 200200200:Jose, aged 30, 20202020: ', '25005', '708726838', '2021-11-09 16:55:02', 0),
(590, 'ghhghj', '', '', '2021-11-09 17:00:30', 0),
(591, 'INCORRECT FORMAT Please try again', '', '', '2021-11-09 17:00:30', 0),
(592, 'Next', '708726838', '25005', '2021-11-09 18:50:27', 0),
(594, 'Ian, aged 21, 200200200:Jose, aged 30, 20202020: ', '25005', '708726838', '2021-11-09 18:51:07', 0),
(795, 'penzi', '0707726836', '25005', '2021-11-16 20:48:41', 0),
(796, 'You were registered for dating with your details your initial details.\r\n                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi', '25005', '0707726836', '2021-11-16 20:48:42', 0),
(797, 'PENZI', '0720931758', '25005', '2021-11-17 08:42:47', 0),
(798, 'Welcome to our dating service with 6000 potential dating patners! To register sms \r\n               START#name#age#sex#province#town to 25005 E.G START#Mike#26#Male#COast#malindi', '25005', '0720931758', '2021-11-17 08:42:47', 0),
(799, 'Start#hilla#25#Male#Nairobi#Embakasi', '0720931758', '25005', '2021-11-17 08:45:12', 0),
(800, ' Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005\r\n                    E.G details#diploma#accountant#single#christian#mijikenda', '25005', '0720931758', '2021-11-17 08:45:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `searched_penzi`
--

CREATE TABLE `searched_penzi` (
  `id` int(10) NOT NULL,
  `searcher` int(20) NOT NULL,
  `searched` int(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `county` varchar(20) NOT NULL,
  `town` varchar(20) NOT NULL,
  `education` varchar(20) NOT NULL,
  `proffesion` varchar(20) NOT NULL,
  `marital_status` varchar(10) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `tribe` varchar(20) NOT NULL,
  `fav_food` varchar(20) NOT NULL,
  `desc1` varchar(20) NOT NULL,
  `desc2` varchar(20) NOT NULL,
  `activation` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_no`, `age`, `gender`, `county`, `town`, `education`, `proffesion`, `marital_status`, `religion`, `tribe`, `fav_food`, `desc1`, `desc2`, `activation`) VALUES
(1, 'sam', 707726836, 23, 'Male', '', '', '', '', ' ', '', '', 'chocolate', 'lovely', ' sexy', 1),
(4, 'Sam', 707856920, 21, 'Male', 'Nairobi', 'Njenga', 'diploma', 'teacher', 'single', 'christian', 'Taita', '', '', '', 0),
(5, 'Vera', 707852963, 23, 'Female', 'Kiambu', 'Thika', 'diploma', 'Teacher', ' Single', 'christian', 'Turkana', 'Fries', '', '', 1),
(6, 'Kane', 707752869, 21, 'Male', 'Nairobi', 'Kibra', 'diploma', 'Secretary', 'Single', 'christian', 'Masai', 'meat', '', '', 0),
(7, 'Kevo', 750576402, 21, 'Male', 'Nairobi', 'Kibra', 'diploma', 'MedicalOfficer', 'Single', 'muslim', 'Kalenjin', 'mursik', '', '', 0),
(8, 'Njeri', 707726837, 21, 'Female', 'Nairobi', 'Embakasi', 'degree', 'HealthOfficer', 'Single', 'Muslim', 'Kisii', 'chiela', '', '', 1),
(9, 'Ian', 200200200, 21, 'Male', 'Nairobi', 'Embakasi', 'ddegree', 'BusinessMan', 'Married', 'Christian', 'Luhya', 'thufu', '', '', 0),
(10, 'Jose', 20202020, 30, 'Male', 'Nairobi', 'Tassia', 'masters', 'ENgineer', 'Divorced', 'CHRISTTIAN', 'Kuria', 'githeri', '', '', 0),
(11, 'John', 6415415, 31, 'Male', 'Nairobi', 'Njenga', 'certificate', 'chef', 'Single', 'Muslim', 'taita', 'ugali', '', '', 0),
(12, 'Mich', 745438483, 21, 'Male', 'Nakuru', 'Section49', 'diploma', 'mechanic', ' single', 'christian', 'luo', 'Pilau', 'sexy', ' Smart', 0),
(30, 'Jane', 708726836, 25, 'Female', 'Nairobi', 'thika', 'diploma', 'teacher', ' single', 'christian', 'luo', 'chips-kuku', 'lovely', ' cute', 1),
(31, 'Mike', 708726838, 26, 'Female', 'Nairobit', 'Makadara', 'diploma', 'accountant', ' single', 'christian', 'mijikenda', 'pilau', 'Sexy', ' Hardworking', 0),
(32, 'hilla', 720931758, 25, 'Male', 'Nairobi', 'Embakasi', '', '', '', '', '', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `match_log`
--
ALTER TABLE `match_log`
  ADD PRIMARY KEY (`matchlog_id`);

--
-- Indexes for table `match_pref`
--
ALTER TABLE `match_pref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mes_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `match_log`
--
ALTER TABLE `match_log`
  MODIFY `matchlog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `match_pref`
--
ALTER TABLE `match_pref`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mes_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
