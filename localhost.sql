-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2022 at 04:35 PM
-- Server version: 5.7.37-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secret-message`
--
CREATE DATABASE IF NOT EXISTS `secret-message` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `secret-message`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `ip_address` text,
  `user_agent_data` text,
  `device` varchar(50) DEFAULT NULL,
  `os` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `unique_id` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `ip_address`, `user_agent_data`, `device`, `os`, `created_at`, `updated_at`, `unique_id`) VALUES
(17, 'Kyle', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Computer', 'Windows 7', '2021-11-14 00:00:00', '2021-11-14 00:00:00', '2021111416369173731097442669'),
(18, 'jadraquejayson', '175.176.64.254', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 7', '2021-11-18 00:00:00', '2021-11-18 00:00:00', '202111181055234397'),
(19, 'ggh', '112.198.87.57', 'Mozilla/5.0 (Linux; Android 10; CPH1819) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36', 'Mobile', 'Android', '2021-11-18 00:00:00', '2021-11-18 00:00:00', '202111181683873349'),
(20, 'Frank', '49.145.99.89', 'Mozilla/5.0 (Linux; Android 10; CPH1819) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36', 'Mobile', 'Android', '2021-11-18 00:00:00', '2021-11-18 00:00:00', '20211118412919892'),
(21, 'Ana Marie Mantalaba', '58.69.113.115', 'Mozilla/5.0 (Linux; Android 11; CPH2059 Build/RKQ1.200903.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/338.1.0.11.117;]', 'Tablet', 'Android', '2021-11-18 00:00:00', '2021-11-18 00:00:00', '20211118991261595'),
(22, 'Ana Marie Mantalaba', '58.69.113.115', 'Mozilla/5.0 (Linux; Android 11; CPH2059 Build/RKQ1.200903.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/276.0.0.17.116;]', 'Mobile', 'Android', '2021-11-18 00:00:00', '2021-11-18 00:00:00', '202111181347480864'),
(23, 'Claire Rey', '180.190.161.92', 'Mozilla/5.0 (Linux; Android 9; JAT-LX3 Build/HUAWEIJAT-LX3; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/95.0.4638.74 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/344.0.0.34.116;]', 'Mobile', 'Android', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '20211119951568929'),
(24, 'Ana Marie Mantalaba', '58.69.113.115', 'Mozilla/5.0 (Linux; Android 11; CPH2059) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Mobile', 'Android', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '20211119919406981'),
(25, 'Jayson', '175.176.64.117', 'Mozilla/5.0 (Linux; Android 10; CPH2239 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/95.0.4638.74 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/338.1.0.11.117;]', 'Tablet', 'Android', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '202111191176465906'),
(26, 'Jhon Paul Mantalaba', '58.69.113.115', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1820 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/312.0.0.45.117;]', 'Mobile', 'Android', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '202111191239503095'),
(27, 'Jhon Paul', '58.69.113.115', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1820 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/7.12.0.0', 'Mobile', 'Android', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '202111191893188948'),
(28, 'ygjg', '119.93.75.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Computer', 'Windows 10', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '202111191079025665'),
(29, 'Topher', '112.211.249.14', 'Mozilla/5.0 (Linux; Android 11; vivo 1906 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/344.0.0.34.116;]', 'Mobile', 'Android', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '20211119517752277'),
(30, 'Kyle zagado', '180.190.162.24', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '202111191472231701'),
(31, 'Cute mo', '175.176.67.115', 'Mozilla/5.0 (Linux; Android 11; V2038 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/276.0.0.44.127;]', 'Mobile', 'Android', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '202111191565656069'),
(32, 'kyle', '131.226.65.177', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 7', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '202111191235544544'),
(33, 'Frank', '131.226.65.177', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Linux', '2021-11-19 00:00:00', '2021-11-19 00:00:00', '2021111956274864'),
(34, 'lacioreybergmailcom', '122.53.61.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '2021-11-20 00:00:00', '2021-11-20 00:00:00', '202111201734816271'),
(35, 'kyle', '180.190.162.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '2021-11-20 00:00:00', '2021-11-20 00:00:00', '20211120199154204'),
(36, 'kyle zagado', '180.190.162.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '2021-11-20 00:00:00', '2021-11-20 00:00:00', '20211120751642975'),
(37, 'Kyle', '175.176.67.216', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/181.0.401558652 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-20 00:00:00', '2021-11-20 00:00:00', '20211120340425428'),
(38, 'Bhuu', '180.190.162.24', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-20 00:00:00', '2021-11-20 00:00:00', '202111201351868174'),
(39, 'Crezelle', '58.69.113.115', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1903) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Mobile Safari/537.36', 'Mobile', 'Android', '2021-11-20 00:00:00', '2021-11-20 00:00:00', '20211120477441324'),
(40, 'JAMES', '175.176.67.90', 'Mozilla/5.0 (Linux; Android 11; V2038) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'Mobile', 'Android', '2021-11-20 00:00:00', '2021-11-20 00:00:00', '202111201313991718'),
(41, 'vbn', '180.190.162.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '2021-11-21 00:00:00', '2021-11-21 00:00:00', '2021112143290299'),
(42, 'yow hayson', '49.145.67.77', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 7', '2021-11-21 00:00:00', '2021-11-21 00:00:00', '202111211968872753'),
(43, 'washup', '49.145.67.77', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 7', '2021-11-21 00:00:00', '2021-11-21 00:00:00', '202111211023125005'),
(44, 'bro', '49.145.67.77', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 7', '2021-11-21 00:00:00', '2021-11-21 00:00:00', '20211121133461530'),
(45, 'bro', '49.145.67.77', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 7', '2021-11-21 00:00:00', '2021-11-21 00:00:00', '202111211848419740'),
(46, 'Jdjd', '180.190.162.24', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-21 00:00:00', '2021-11-21 00:00:00', '20211121435665839'),
(47, 'werew', '119.93.75.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '202111221540321495'),
(48, 'Kyle', '49.149.11.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '202111221861770017'),
(49, 'Elsie', '119.94.2.7', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16H62 [FBAN/FBIOS;FBDV/iPhone7,2;FBMD/iPhone;FBSN/iOS;FBSV/12.5.5;FBSS/2;FBID/phone;FBLC/en_US;FBOP/5]', 'Mobile', 'iPhone', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '20211122188091306'),
(50, 'Ejeura', '143.44.164.174', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.1 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '20211122694595553'),
(51, 'Anyang', '58.69.113.115', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'Computer', 'Windows 7', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '202111221278494618'),
(52, 'muning', '110.54.159.170', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16H62 [FBAN/FBIOS;FBDV/iPhone7,2;FBMD/iPhone;FBSN/iOS;FBSV/12.5.5;FBSS/2;FBID/phone;FBLC/en_US;FBOP/5]', 'Mobile', 'iPhone', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '202111221797227477'),
(53, 'muning', '110.54.159.170', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16H62 [FBAN/FBIOS;FBDV/iPhone7,2;FBMD/iPhone;FBSN/iOS;FBSV/12.5.5;FBSS/2;FBID/phone;FBLC/en_US;FBOP/5]', 'Mobile', 'iPhone', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '2021112250628273'),
(54, 'kyle', '130.105.5.148', 'Mozilla/5.0 (Linux; Android 12; SM-G998B Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/345.0.0.34.118;]', 'Mobile', 'Android', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '20211122159323605'),
(55, 'Sean Sean', '131.226.66.63', 'Mozilla/5.0 (Linux; Android 11; V2026 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/340.0.0.27.113;]', 'Mobile', 'Android', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '202111221416956656'),
(56, 'Namuun', '66.181.161.122', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/17F80 [FBAN/FBIOS;FBDV/iPhone8,1;FBMD/iPhone;FBSN/iOS;FBSV/13.5.1;FBSS/2;FBID/phone;FBLC/en_US;FBOP/5]', 'Mobile', 'iPhone', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '202111221044690046'),
(57, 'Ella', '180.191.201.237', 'Mozilla/5.0 (Linux; Android 10; M2004J19C Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36[FBAN/EMA;FBLC/en_GB;FBAV/277.0.0.13.119;]', 'Mobile', 'Android', '2021-11-22 00:00:00', '2021-11-22 00:00:00', '20211122212068372'),
(58, 'clydeee', '110.54.184.194', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1801 Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.82 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/315.0.0.47.113;]', 'Mobile', 'Android', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '202111232120357654'),
(59, 'Kyle', '180.190.161.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/18F72 [FBAN/FBIOS;FBDV/iPhone10,6;FBMD/iPhone;FBSN/iOS;FBSV/14.6;FBSS/3;FBID/phone;FBLC/en_US;FBOP/5]', 'Mobile', 'iPhone', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '20211123214825088'),
(60, 'Jane', '180.190.161.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '20211123610636523'),
(61, 'fghfg', '180.190.161.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '202111231229409558'),
(62, 'Hshshshs', '175.176.65.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '202111231253452513'),
(63, 'hayson', '175.176.65.40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 7', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '202111231742445361'),
(64, 'Bdhdjd', '175.176.65.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '202111231349056753'),
(65, 'Olok', '175.176.65.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '20211123230714108'),
(66, 'Camila kyut', '180.190.169.132', 'Mozilla/5.0 (iPad; CPU OS 14_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/91.0.4472.80 Mobile/15E148 Safari/604.1', 'Tablet', 'iPad', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '202111231380498818'),
(67, 'Ffh', '175.176.65.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/96.0.4664.53 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '202111231163539164'),
(68, 'Jayson', '131.226.65.67', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1909) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Mobile', 'Android', '2021-11-23 00:00:00', '2021-11-23 00:00:00', '202111231038016435'),
(69, 'Anyang', '58.69.113.115', 'Mozilla/5.0 (Linux; Android 11; CPH2059 Build/RKQ1.200903.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/339.0.0.18.118;]', 'Tablet', 'Android', '2021-11-24 00:00:00', '2021-11-24 00:00:00', '20211124767691234'),
(70, 'Anyang', '58.69.113.115', 'Mozilla/5.0 (Linux; Android 11; CPH2059) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', 'Mobile', 'Android', '2021-11-24 00:00:00', '2021-11-24 00:00:00', '202111241333478404'),
(71, 'kyle', '180.190.161.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '2021-11-24 00:00:00', '2021-11-24 00:00:00', '202111241415974265'),
(72, 'ghj', '180.190.161.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '2021-11-24 00:00:00', '2021-11-24 00:00:00', '202111242055267588'),
(73, 'geeceey', '1.37.86.76', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1801 Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.82 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/315.0.0.47.113;]', 'Mobile', 'Android', '2021-11-26 00:00:00', '2021-11-26 00:00:00', '20211126964262353'),
(74, 'sdfdsfs', '110.54.170.161', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'Computer', 'Windows 7', '2022-05-24 00:00:00', '2022-05-24 00:00:00', '20220524900472956');

-- --------------------------------------------------------

--
-- Table structure for table `user_message`
--

CREATE TABLE `user_message` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `unique_id` text,
  `message` text,
  `user_agent_data` text,
  `device` text,
  `os` text,
  `ip_address` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_message`
--

INSERT INTO `user_message` (`id`, `user_id`, `unique_id`, `message`, `user_agent_data`, `device`, `os`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 0, '2021111416369155711457735039', 'sddsfdsdfdsfsfsdfdsdfdsfsdfds', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Computer', 'Windows 7', '::1', '2021-11-14 00:00:00', '2021-11-14 00:00:00'),
(2, 0, '2021111416369173731097442669', 'kyle gwapo', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Computer', 'Windows 7', '127.0.0.1', '2021-11-14 00:00:00', '2021-11-14 00:00:00'),
(3, 0, '202111181055234397', 'Choo', 'Mozilla/5.0 (Linux; Android 11; vivo 1906 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.61 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/332.0.0.11.117;]', 'Tablet', 'Android', '175.176.66.209', '2021-11-18 00:00:00', '2021-11-18 00:00:00'),
(4, 0, '20211118412919892', 'Im sad lods send cash', 'Mozilla/5.0 (Linux; Android 11; CPH2059 Build/RKQ1.200903.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/276.0.0.17.116;]', 'Mobile', 'Android', '58.69.113.115', '2021-11-18 00:00:00', '2021-11-18 00:00:00'),
(5, 0, '20211118412919892', 'Derek koykoy ', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1909 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/93.0.4577.82 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/338.1.0.11.117;]', 'Tablet', 'Android', '131.226.65.177', '2021-11-19 00:00:00', '2021-11-19 00:00:00'),
(6, 0, '202111191176465906', 'Pinaka ka may na programmer', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1909 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/93.0.4577.82 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/338.1.0.11.117;]', 'Tablet', 'Android', '131.226.65.177', '2021-11-19 00:00:00', '2021-11-19 00:00:00'),
(7, 0, '20211119951568929', 'Pinaka buotan sa CRC', 'Mozilla/5.0 (Linux; Android 11; CPH2059 Build/RKQ1.200903.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/276.0.0.17.116;]', 'Mobile', 'Android', '58.69.113.115', '2021-11-19 00:00:00', '2021-11-19 00:00:00'),
(8, 0, '202111191893188948', 'Pag bag o na ay sig laag ha bhaipol para motubo nasad ka ba HAHAHHAHAH ', 'Mozilla/5.0 (Linux; Android 11; vivo 1906 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/251.0.0.4.119;]', 'Mobile', 'Android', '110.54.186.103', '2021-11-19 00:00:00', '2021-11-19 00:00:00'),
(9, 0, '202111181055234397', 'pawiks tisoy', 'Mozilla/5.0 (Linux; Android 10; CPH1819 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/338.1.0.11.117;]', 'Tablet', 'Android', '119.93.75.83', '2021-11-19 00:00:00', '2021-11-19 00:00:00'),
(10, 0, '20211118412919892', 'Badjao', 'Mozilla/5.0 (Linux; Android 11; vivo 1906 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/344.0.0.34.116;]', 'Mobile', 'Android', '124.105.86.12', '2021-11-19 00:00:00', '2021-11-19 00:00:00'),
(11, 0, '20211119517752277', 'bagoy butakal', 'Mozilla/5.0 (Linux; Android 10; CPH1819 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/344.0.0.34.116;]', 'Mobile', 'Android', '119.93.75.83', '2021-11-19 00:00:00', '2021-11-19 00:00:00'),
(12, 0, '202111191472231701', 'yvrctvggbf rvt', 'Mozilla/5.0 (Linux; Android 7.1.1; CPH1723 Build/N6F26Q; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/93.0.4577.82 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/338.1.0.11.117;]', 'Tablet', 'Android', '180.190.162.24', '2021-11-19 00:00:00', '2021-11-19 00:00:00'),
(13, 0, '20211119517752277', 'kalood biya', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'Computer', 'Windows 10', '49.145.98.219', '2021-11-19 00:00:00', '2021-11-19 00:00:00'),
(14, 34, '34', 'Lacio tusoy', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1909 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/93.0.4577.82 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/338.1.0.11.117;]', 'Tablet', 'Android', '122.53.61.21', '2021-11-20 02:05:10', '2021-11-20 00:00:00'),
(15, 35, '35', 'hello', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '180.190.162.24', '2021-11-20 04:15:13', '2021-11-20 00:00:00'),
(16, 37, '37', 'Hello', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/181.0.401558652 Mobile/15E148 Safari/604.1', 'Mobile', 'iPhone', '175.176.67.216', '2021-11-20 07:06:30', '2021-11-20 00:00:00'),
(17, 39, '39', 'Anyang', 'Mozilla/5.0 (Linux; Android 11; CPH2059 Build/RKQ1.200903.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/339.0.0.18.118;]', 'Tablet', 'Android', '58.69.113.115', '2021-11-20 13:07:53', '2021-11-20 00:00:00'),
(18, 39, '39', 'Anyang', 'Mozilla/5.0 (Linux; Android 11; CPH2059 Build/RKQ1.200903.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/339.0.0.18.118;]', 'Tablet', 'Android', '58.69.113.115', '2021-11-20 13:07:59', '2021-11-20 00:00:00'),
(19, 45, '45', 'kyle zagado', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 7', '49.145.67.77', '2021-11-21 04:35:24', '2021-11-21 00:00:00'),
(20, 48, '48', 'HI', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '49.149.11.233', '2021-11-22 13:31:28', '2021-11-22 00:00:00'),
(21, 49, '49', 'Hi', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16H62 [FBAN/FBIOS;FBDV/iPhone7,2;FBMD/iPhone;FBSN/iOS;FBSV/12.5.5;FBSS/2;FBID/phone;FBLC/en_US;FBOP/5]', 'Mobile', 'iPhone', '119.94.2.7', '2021-11-22 13:36:20', '2021-11-22 00:00:00'),
(22, 53, '53', 'when kaya ule makaka laro sa rg si lodi hehehe', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16H62 [FBAN/FBIOS;FBDV/iPhone7,2;FBMD/iPhone;FBSN/iOS;FBSV/12.5.5;FBSS/2;FBID/phone;FBLC/en_US;FBOP/5]', 'Mobile', 'iPhone', '110.54.159.170', '2021-11-22 14:35:14', '2021-11-22 00:00:00'),
(23, 53, '53', 'Ganda ko', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16H62 [FBAN/FBIOS;FBDV/iPhone7,2;FBMD/iPhone;FBSN/iOS;FBSV/12.5.5;FBSS/2;FBID/phone;FBLC/en_US;FBOP/5]', 'Mobile', 'iPhone', '110.54.159.170', '2021-11-22 14:40:27', '2021-11-22 00:00:00'),
(24, 70, '70', 'Hi nyang I missyou Love', 'Mozilla/5.0 (Linux; Android 10; CPH1819 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/345.0.0.34.118;]', 'Mobile', 'Android', '119.93.75.83', '2021-11-24 01:41:23', '2021-11-24 00:00:00'),
(25, 71, '71', 'asfasfasf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'Computer', 'Windows 10', '180.190.161.46', '2021-11-24 04:40:41', '2021-11-24 00:00:00'),
(26, 70, '70', 'Hello babe anyang hehe dugay napud musta na', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1909 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/93.0.4577.82 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/345.0.0.34.118;]', 'Mobile', 'Android', '131.226.65.73', '2021-11-24 08:52:44', '2021-11-24 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_message`
--
ALTER TABLE `user_message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user_message`
--
ALTER TABLE `user_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
