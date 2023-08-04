-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 24, 2023 at 05:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendure_test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `fullName` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `streetLine1` varchar(255) NOT NULL,
  `streetLine2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `postalCode` varchar(255) NOT NULL DEFAULT '',
  `phoneNumber` varchar(255) NOT NULL DEFAULT '',
  `defaultShippingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `defaultBillingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`createdAt`, `updatedAt`, `deletedAt`, `firstName`, `lastName`, `emailAddress`, `id`, `userId`) VALUES
('2023-07-21 14:31:24.770051', '2023-07-21 14:31:24.770051', NULL, 'Super', 'Admin', 'superadmin', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `fileSize` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `focalPoint` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`createdAt`, `updatedAt`, `name`, `type`, `mimeType`, `width`, `height`, `fileSize`, `source`, `preview`, `focalPoint`, `id`) VALUES
('2023-07-21 14:31:37.951526', '2023-07-21 14:31:37.951526', 'derick-david-409858-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 44525, 'source/b6/derick-david-409858-unsplash.jpg', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, 1),
('2023-07-21 14:31:38.441397', '2023-07-21 14:31:38.441397', 'kelly-sikkema-685291-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 47714, 'source/5a/kelly-sikkema-685291-unsplash.jpg', 'preview/b8/kelly-sikkema-685291-unsplash__preview.jpg', NULL, 2),
('2023-07-21 14:31:38.708604', '2023-07-21 14:31:38.708604', 'oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1071, 76870, 'source/0b/oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'preview/a1/oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, 3),
('2023-07-21 14:31:38.856571', '2023-07-21 14:31:38.856571', 'daniel-korpai-1302051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1280, 1600, 201064, 'source/28/daniel-korpai-1302051-unsplash.jpg', 'preview/d2/daniel-korpai-1302051-unsplash__preview.jpg', NULL, 4),
('2023-07-21 14:31:38.966518', '2023-07-21 14:31:38.966518', 'alexandru-acea-686569-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 71196, 'source/e8/alexandru-acea-686569-unsplash.jpg', 'preview/9c/alexandru-acea-686569-unsplash__preview.jpg', NULL, 5),
('2023-07-21 14:31:39.133611', '2023-07-21 14:31:39.133611', 'liam-briese-1128307-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 120523, 'source/2e/liam-briese-1128307-unsplash.jpg', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, 6),
('2023-07-21 14:31:39.476420', '2023-07-21 14:31:39.476420', 'florian-olivo-1166419-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 73904, 'source/63/florian-olivo-1166419-unsplash.jpg', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, 7),
('2023-07-21 14:31:39.836079', '2023-07-21 14:31:39.836079', 'vincent-botta-736919-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 87075, 'source/59/vincent-botta-736919-unsplash.jpg', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, 8),
('2023-07-21 14:31:40.202690', '2023-07-21 14:31:40.202690', 'juan-gomez-674574-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1060, 60470, 'source/b8/juan-gomez-674574-unsplash.jpg', 'preview/09/juan-gomez-674574-unsplash__preview.jpg', NULL, 9),
('2023-07-21 14:31:40.310948', '2023-07-21 14:31:40.310948', 'thomas-q-1229169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 94113, 'source/86/thomas-q-1229169-unsplash.jpg', 'preview/7b/thomas-q-1229169-unsplash__preview.jpg', NULL, 10),
('2023-07-21 14:31:40.487348', '2023-07-21 14:31:40.487348', 'adam-birkett-239153-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 17676, 'source/3c/adam-birkett-239153-unsplash.jpg', 'preview/64/adam-birkett-239153-unsplash__preview.jpg', NULL, 11),
('2023-07-21 14:31:40.660599', '2023-07-21 14:31:40.660599', 'eniko-kis-663725-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 42943, 'source/1d/eniko-kis-663725-unsplash.jpg', 'preview/b5/eniko-kis-663725-unsplash__preview.jpg', NULL, 12),
('2023-07-21 14:31:40.915788', '2023-07-21 14:31:40.915788', 'brandi-redd-104140-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1110, 91458, 'source/21/brandi-redd-104140-unsplash.jpg', 'preview/9b/brandi-redd-104140-unsplash__preview.jpg', NULL, 13),
('2023-07-21 14:31:41.016441', '2023-07-21 14:31:41.016441', 'jonathan-talbert-697262-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 103011, 'source/69/jonathan-talbert-697262-unsplash.jpg', 'preview/3c/jonathan-talbert-697262-unsplash__preview.jpg', NULL, 14),
('2023-07-21 14:31:41.205089', '2023-07-21 14:31:41.205089', 'zoltan-tasi-423051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 49099, 'source/92/zoltan-tasi-423051-unsplash.jpg', 'preview/21/zoltan-tasi-423051-unsplash__preview.jpg', NULL, 15),
('2023-07-21 14:31:41.430936', '2023-07-21 14:31:41.430936', 'jakob-owens-274337-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 213089, 'source/cf/jakob-owens-274337-unsplash.jpg', 'preview/5b/jakob-owens-274337-unsplash__preview.jpg', NULL, 16),
('2023-07-21 14:31:41.641324', '2023-07-21 14:31:41.641324', 'patrick-brinksma-663044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 190811, 'source/0f/patrick-brinksma-663044-unsplash.jpg', 'preview/bc/patrick-brinksma-663044-unsplash__preview.jpg', NULL, 17),
('2023-07-21 14:31:41.737913', '2023-07-21 14:31:41.737913', 'chuttersnap-324234-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 118442, 'source/df/chuttersnap-324234-unsplash.jpg', 'preview/95/chuttersnap-324234-unsplash__preview.jpg', NULL, 18),
('2023-07-21 14:31:41.833892', '2023-07-21 14:31:41.833892', 'robert-shunev-528016-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 36204, 'source/9e/robert-shunev-528016-unsplash.jpg', 'preview/9d/robert-shunev-528016-unsplash__preview.jpg', NULL, 19),
('2023-07-21 14:31:41.926208', '2023-07-21 14:31:41.926208', 'alexander-andrews-260988-unsplash.jpg', 'IMAGE', 'image/jpeg', 1050, 1600, 65460, 'source/f8/alexander-andrews-260988-unsplash.jpg', 'preview/ef/alexander-andrews-260988-unsplash__preview.jpg', NULL, 20),
('2023-07-21 14:31:42.022145', '2023-07-21 14:31:42.022145', 'mikkel-bech-748940-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1130, 62785, 'source/29/mikkel-bech-748940-unsplash.jpg', 'preview/2f/mikkel-bech-748940-unsplash__preview.jpg', NULL, 21),
('2023-07-21 14:31:42.251265', '2023-07-21 14:31:42.251265', 'stoica-ionela-530966-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 50995, 'source/b1/stoica-ionela-530966-unsplash.jpg', 'preview/34/stoica-ionela-530966-unsplash__preview.jpg', NULL, 22),
('2023-07-21 14:31:42.376443', '2023-07-21 14:31:42.376443', 'neonbrand-428982-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1332, 169677, 'source/3c/neonbrand-428982-unsplash.jpg', 'preview/4f/neonbrand-428982-unsplash__preview.jpg', NULL, 23),
('2023-07-21 14:31:42.473202', '2023-07-21 14:31:42.473202', 'michael-guite-571169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 240247, 'source/ab/michael-guite-571169-unsplash.jpg', 'preview/96/michael-guite-571169-unsplash__preview.jpg', NULL, 24),
('2023-07-21 14:31:42.676225', '2023-07-21 14:31:42.676225', 'max-tarkhov-737999-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1280, 192508, 'source/ed/max-tarkhov-737999-unsplash.jpg', 'preview/35/max-tarkhov-737999-unsplash__preview.jpg', NULL, 25),
('2023-07-21 14:31:42.820509', '2023-07-21 14:31:42.820509', 'nik-shuliahin-619349-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1020, 130437, 'source/87/nik-shuliahin-619349-unsplash.jpg', 'preview/d6/nik-shuliahin-619349-unsplash__preview.jpg', NULL, 26),
('2023-07-21 14:31:42.970765', '2023-07-21 14:31:42.970765', 'ben-hershey-574483-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1070, 77118, 'source/f3/ben-hershey-574483-unsplash.jpg', 'preview/30/ben-hershey-574483-unsplash__preview.jpg', NULL, 27),
('2023-07-21 14:31:43.069716', '2023-07-21 14:31:43.069716', 'tommy-bebo-600358-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 262335, 'source/ac/tommy-bebo-600358-unsplash.jpg', 'preview/0f/tommy-bebo-600358-unsplash__preview.jpg', NULL, 28),
('2023-07-21 14:31:43.189917', '2023-07-21 14:31:43.189917', 'chuttersnap-584518-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 76330, 'source/20/chuttersnap-584518-unsplash.jpg', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, 29),
('2023-07-21 14:31:43.608108', '2023-07-21 14:31:43.608108', 'imani-clovis-234736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 99111, 'source/de/imani-clovis-234736-unsplash.jpg', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, 30),
('2023-07-21 14:31:43.923495', '2023-07-21 14:31:43.923495', 'xavier-teo-469050-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 167599, 'source/5c/xavier-teo-469050-unsplash.jpg', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, 31),
('2023-07-21 14:31:44.238409', '2023-07-21 14:31:44.238409', 'thomas-serer-420833-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1223, 78999, 'source/55/thomas-serer-420833-unsplash.jpg', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, 32),
('2023-07-21 14:31:44.501012', '2023-07-21 14:31:44.501012', 'nikolai-chernichenko-1299748-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 56282, 'source/01/nikolai-chernichenko-1299748-unsplash.jpg', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, 33),
('2023-07-21 14:31:44.819110', '2023-07-21 14:31:44.819110', 'mitch-lensink-256007-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 154988, 'source/2b/mitch-lensink-256007-unsplash.jpg', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, 34),
('2023-07-21 14:31:45.204284', '2023-07-21 14:31:45.204284', 'charles-deluvio-695736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 54419, 'source/92/charles-deluvio-695736-unsplash.jpg', 'preview/78/charles-deluvio-695736-unsplash__preview.jpg', NULL, 35),
('2023-07-21 14:31:45.456911', '2023-07-21 14:31:45.456911', 'natalia-y-345738-unsplash.jpg', 'IMAGE', 'image/jpeg', 900, 1600, 97819, 'source/17/natalia-y-345738-unsplash.jpg', 'preview/14/natalia-y-345738-unsplash__preview.jpg', NULL, 36),
('2023-07-21 14:31:45.567495', '2023-07-21 14:31:45.567495', 'alex-rodriguez-santibanez-200278-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 176280, 'source/ff/alex-rodriguez-santibanez-200278-unsplash.jpg', 'preview/5b/alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, 37),
('2023-07-21 14:31:45.650647', '2023-07-21 14:31:45.650647', 'silvia-agrasar-227575-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1063, 119654, 'source/d5/silvia-agrasar-227575-unsplash.jpg', 'preview/29/silvia-agrasar-227575-unsplash__preview.jpg', NULL, 38),
('2023-07-21 14:31:45.757387', '2023-07-21 14:31:45.757387', 'caleb-george-536388-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 184968, 'source/f0/caleb-george-536388-unsplash.jpg', 'preview/6d/caleb-george-536388-unsplash__preview.jpg', NULL, 39),
('2023-07-21 14:31:45.850571', '2023-07-21 14:31:45.850571', 'annie-spratt-78044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1115, 1600, 173536, 'source/f1/annie-spratt-78044-unsplash.jpg', 'preview/81/annie-spratt-78044-unsplash__preview.jpg', NULL, 40),
('2023-07-21 14:31:45.945341', '2023-07-21 14:31:45.945341', 'zoltan-kovacs-642412-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 72752, 'source/e3/zoltan-kovacs-642412-unsplash.jpg', 'preview/88/zoltan-kovacs-642412-unsplash__preview.jpg', NULL, 41),
('2023-07-21 14:31:46.028923', '2023-07-21 14:31:46.028923', 'mark-tegethoff-667351-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 79857, 'source/e6/mark-tegethoff-667351-unsplash.jpg', 'preview/f3/mark-tegethoff-667351-unsplash__preview.jpg', NULL, 42),
('2023-07-21 14:31:46.171611', '2023-07-21 14:31:46.171611', 'vincent-liu-525429-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 77358, 'source/10/vincent-liu-525429-unsplash.jpg', 'preview/44/vincent-liu-525429-unsplash__preview.jpg', NULL, 43),
('2023-07-21 14:31:46.463647', '2023-07-21 14:31:46.463647', 'neslihan-gunaydin-3493-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 152486, 'source/01/neslihan-gunaydin-3493-unsplash.jpg', 'preview/7d/neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, 44),
('2023-07-21 14:31:46.538253', '2023-07-21 14:31:46.538253', 'florian-klauer-14840-unsplash.jpg', 'IMAGE', 'image/jpeg', 800, 1200, 17149, 'source/a9/florian-klauer-14840-unsplash.jpg', 'preview/ef/florian-klauer-14840-unsplash__preview.jpg', NULL, 45),
('2023-07-21 14:31:47.312208', '2023-07-21 14:31:47.312208', 'nathan-fertig-249917-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 113855, 'source/68/nathan-fertig-249917-unsplash.jpg', 'preview/69/nathan-fertig-249917-unsplash__preview.jpg', NULL, 46),
('2023-07-21 14:31:47.509808', '2023-07-21 14:31:47.509808', 'paul-weaver-1120584-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 65612, 'source/14/paul-weaver-1120584-unsplash.jpg', 'preview/3e/paul-weaver-1120584-unsplash__preview.jpg', NULL, 47),
('2023-07-21 14:31:47.666871', '2023-07-21 14:31:47.666871', 'pierre-chatel-innocenti-483198-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 32036, 'source/39/pierre-chatel-innocenti-483198-unsplash.jpg', 'preview/5f/pierre-chatel-innocenti-483198-unsplash__preview.jpg', NULL, 48),
('2023-07-21 14:31:47.781410', '2023-07-21 14:31:47.781410', 'abel-y-costa-716024-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 103392, 'source/46/abel-y-costa-716024-unsplash.jpg', 'preview/40/abel-y-costa-716024-unsplash__preview.jpg', NULL, 49),
('2023-07-21 14:31:48.005214', '2023-07-21 14:31:48.005214', 'kari-shea-398668-unsplash.jpg', 'IMAGE', 'image/jpeg', 1048, 1500, 181352, 'source/4f/kari-shea-398668-unsplash.jpg', 'preview/3b/kari-shea-398668-unsplash__preview.jpg', NULL, 50),
('2023-07-21 14:31:48.130733', '2023-07-21 14:31:48.130733', 'andres-jasso-220776-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1104, 100927, 'source/f1/andres-jasso-220776-unsplash.jpg', 'preview/09/andres-jasso-220776-unsplash__preview.jpg', NULL, 51),
('2023-07-21 14:31:48.301686', '2023-07-21 14:31:48.301686', 'ruslan-bardash-351288-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 47113, 'source/95/ruslan-bardash-351288-unsplash.jpg', 'preview/d0/ruslan-bardash-351288-unsplash__preview.jpg', NULL, 52),
('2023-07-21 14:31:48.500993', '2023-07-21 14:31:48.500993', 'benjamin-voros-310026-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 218391, 'source/7a/benjamin-voros-310026-unsplash.jpg', 'preview/72/benjamin-voros-310026-unsplash__preview.jpg', NULL, 53),
('2023-07-21 14:31:48.644803', '2023-07-21 14:31:48.644803', 'jean-philippe-delberghe-1400011-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 64529, 'source/94/jean-philippe-delberghe-1400011-unsplash.jpg', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, 54);

-- --------------------------------------------------------

--
-- Table structure for table `asset_channels_channel`
--

CREATE TABLE `asset_channels_channel` (
  `assetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset_channels_channel`
--

INSERT INTO `asset_channels_channel` (`assetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset_tags_tag`
--

CREATE TABLE `asset_tags_tag` (
  `assetId` int(11) NOT NULL,
  `tagId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_method`
--

CREATE TABLE `authentication_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `identifier` varchar(255) DEFAULT NULL,
  `passwordHash` varchar(255) DEFAULT NULL,
  `verificationToken` varchar(255) DEFAULT NULL,
  `passwordResetToken` varchar(255) DEFAULT NULL,
  `identifierChangeToken` varchar(255) DEFAULT NULL,
  `pendingIdentifier` varchar(255) DEFAULT NULL,
  `strategy` varchar(255) DEFAULT NULL,
  `externalIdentifier` varchar(255) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authentication_method`
--

INSERT INTO `authentication_method` (`createdAt`, `updatedAt`, `identifier`, `passwordHash`, `verificationToken`, `passwordResetToken`, `identifierChangeToken`, `pendingIdentifier`, `strategy`, `externalIdentifier`, `metadata`, `id`, `type`, `userId`) VALUES
('2023-07-21 14:31:24.745011', '2023-07-21 14:31:24.000000', 'superadmin', '$2b$12$faYWqm5yOZJu8GxqPPsM7OsnW/F8Kdjha4Ag4N6q7FTrnrJpJmkUa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NativeAuthenticationMethod', 1),
('2023-07-24 09:26:23.971752', '2023-07-24 09:26:23.000000', '9876543211@kaikani.com', '$2b$12$JESDquzCo/dJedzeXu0cQu5R8yfD2K2w9IGjLvyI6VUbUWWXZCKZ.', 'MjAyMy0wNy0yNFQwMzoyNjoyMy45OTJa_QGNY3LYGWQKBYCA1', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NativeAuthenticationMethod', 2);

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `defaultLanguageCode` varchar(255) NOT NULL,
  `availableLanguageCodes` text DEFAULT NULL,
  `defaultCurrencyCode` varchar(255) NOT NULL,
  `availableCurrencyCodes` text DEFAULT NULL,
  `trackInventory` tinyint(4) NOT NULL DEFAULT 1,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `pricesIncludeTax` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `sellerId` int(11) DEFAULT NULL,
  `defaultTaxZoneId` int(11) DEFAULT NULL,
  `defaultShippingZoneId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`createdAt`, `updatedAt`, `code`, `token`, `description`, `defaultLanguageCode`, `availableLanguageCodes`, `defaultCurrencyCode`, `availableCurrencyCodes`, `trackInventory`, `outOfStockThreshold`, `pricesIncludeTax`, `id`, `sellerId`, `defaultTaxZoneId`, `defaultShippingZoneId`) VALUES
('2023-07-21 14:31:24.042416', '2023-07-21 14:31:37.000000', '__default_channel__', 'zvto6myl835da6to8nm', '', 'en', 'en', 'USD', 'USD', 1, 0, 0, 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `isRoot` tinyint(4) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL,
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `filters` text NOT NULL,
  `inheritFilters` tinyint(4) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`createdAt`, `updatedAt`, `isRoot`, `position`, `isPrivate`, `filters`, `inheritFilters`, `id`, `parentId`, `featuredAssetId`) VALUES
('2023-07-21 14:31:48.849468', '2023-07-21 14:31:48.849468', 1, 0, 0, '[]', 1, 1, NULL, NULL),
('2023-07-21 14:31:48.866087', '2023-07-21 14:31:48.866087', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[1]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 2, 1, 16),
('2023-07-21 14:31:48.958785', '2023-07-21 14:31:48.958785', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[2]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 3, 2, 5),
('2023-07-21 14:31:49.033695', '2023-07-21 14:31:49.033695', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[9]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 4, 2, 12),
('2023-07-21 14:31:49.064872', '2023-07-21 14:31:49.064872', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[30]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 5, 1, 47),
('2023-07-21 14:31:49.116617', '2023-07-21 14:31:49.116617', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[34]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 6, 5, 46),
('2023-07-21 14:31:49.155797', '2023-07-21 14:31:49.155797', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[31]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 7, 5, 37),
('2023-07-21 14:31:49.182097', '2023-07-21 14:31:49.182097', 0, 3, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[17]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 8, 1, 24),
('2023-07-21 14:31:49.213451', '2023-07-21 14:31:49.213451', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[18]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 9, 8, 23),
('2023-07-21 14:31:49.244960', '2023-07-21 14:31:49.244960', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[23]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 10, 8, 32);

-- --------------------------------------------------------

--
-- Table structure for table `collection_asset`
--

CREATE TABLE `collection_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `collectionId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_asset`
--

INSERT INTO `collection_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `collectionId`, `id`) VALUES
('2023-07-21 14:31:48.887150', '2023-07-21 14:31:48.887150', 16, 0, 2, 1),
('2023-07-21 14:31:48.977328', '2023-07-21 14:31:48.977328', 5, 0, 3, 2),
('2023-07-21 14:31:49.046205', '2023-07-21 14:31:49.046205', 12, 0, 4, 3),
('2023-07-21 14:31:49.084923', '2023-07-21 14:31:49.084923', 47, 0, 5, 4),
('2023-07-21 14:31:49.126799', '2023-07-21 14:31:49.126799', 46, 0, 6, 5),
('2023-07-21 14:31:49.164562', '2023-07-21 14:31:49.164562', 37, 0, 7, 6),
('2023-07-21 14:31:49.189698', '2023-07-21 14:31:49.189698', 24, 0, 8, 7),
('2023-07-21 14:31:49.221566', '2023-07-21 14:31:49.221566', 23, 0, 9, 8),
('2023-07-21 14:31:49.252750', '2023-07-21 14:31:49.252750', 32, 0, 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `collection_channels_channel`
--

CREATE TABLE `collection_channels_channel` (
  `collectionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_channels_channel`
--

INSERT INTO `collection_channels_channel` (`collectionId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `collection_closure`
--

CREATE TABLE `collection_closure` (
  `id_ancestor` int(11) NOT NULL,
  `id_descendant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_closure`
--

INSERT INTO `collection_closure` (`id_ancestor`, `id_descendant`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 2),
(2, 3),
(2, 4),
(3, 3),
(4, 4),
(5, 5),
(5, 6),
(5, 7),
(6, 6),
(7, 7),
(8, 8),
(8, 9),
(8, 10),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `collection_product_variants_product_variant`
--

CREATE TABLE `collection_product_variants_product_variant` (
  `collectionId` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_product_variants_product_variant`
--

INSERT INTO `collection_product_variants_product_variant` (`collectionId`, `productVariantId`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(6, 75),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(7, 67),
(7, 68),
(7, 69),
(7, 70),
(7, 71),
(7, 72),
(7, 73),
(7, 74),
(7, 76),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(8, 57),
(8, 58),
(8, 59),
(8, 60),
(8, 61),
(8, 62),
(8, 63),
(8, 64),
(8, 65),
(8, 66),
(9, 35),
(9, 36),
(9, 37),
(9, 38),
(9, 39),
(9, 40),
(9, 41),
(9, 42),
(10, 43),
(10, 44),
(10, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(10, 50),
(10, 51),
(10, 52),
(10, 53),
(10, 54),
(10, 55),
(10, 56),
(10, 57),
(10, 58),
(10, 59),
(10, 60),
(10, 61),
(10, 62),
(10, 63),
(10, 64),
(10, 65),
(10, 66);

-- --------------------------------------------------------

--
-- Table structure for table `collection_translation`
--

CREATE TABLE `collection_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_translation`
--

INSERT INTO `collection_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2023-07-21 14:31:48.833781', '2023-07-21 14:31:48.000000', 'en', 'Electronics', 'electronics', '', 1, 2),
('2023-07-21 14:31:48.839955', '2023-07-21 14:31:48.000000', 'en', '__root_collection__', '__root_collection__', 'The root of the Collection tree.', 2, 1),
('2023-07-21 14:31:48.933339', '2023-07-21 14:31:48.000000', 'en', 'Computers', 'computers', '', 3, 3),
('2023-07-21 14:31:49.022629', '2023-07-21 14:31:49.000000', 'en', 'Camera & Photo', 'camera-photo', '', 4, 4),
('2023-07-21 14:31:49.058804', '2023-07-21 14:31:49.000000', 'en', 'Home & Garden', 'home-garden', '', 5, 5),
('2023-07-21 14:31:49.107818', '2023-07-21 14:31:49.000000', 'en', 'Furniture', 'furniture', '', 6, 6),
('2023-07-21 14:31:49.146429', '2023-07-21 14:31:49.000000', 'en', 'Plants', 'plants', '', 7, 7),
('2023-07-21 14:31:49.175991', '2023-07-21 14:31:49.000000', 'en', 'Sports & Outdoor', 'sports-outdoor', '', 8, 8),
('2023-07-21 14:31:49.206510', '2023-07-21 14:31:49.000000', 'en', 'Equipment', 'equipment', '', 9, 9),
('2023-07-21 14:31:49.237168', '2023-07-21 14:31:49.000000', 'en', 'Footwear', 'footwear', '', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`createdAt`, `updatedAt`, `deletedAt`, `title`, `firstName`, `lastName`, `phoneNumber`, `emailAddress`, `id`, `userId`) VALUES
('2023-07-24 09:26:21.990072', '2023-07-24 09:26:24.000000', NULL, '', 'fname', 'lname', '9876543211', '9876543211@kaikani.com', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer_channels_channel`
--

CREATE TABLE `customer_channels_channel` (
  `customerId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_channels_channel`
--

INSERT INTO `customer_channels_channel` (`customerId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups_customer_group`
--

CREATE TABLE `customer_groups_customer_group` (
  `customerId` int(11) NOT NULL,
  `customerGroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facet`
--

CREATE TABLE `facet` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet`
--

INSERT INTO `facet` (`createdAt`, `updatedAt`, `isPrivate`, `code`, `id`) VALUES
('2023-07-21 14:31:37.978522', '2023-07-21 14:31:37.978522', 0, 'category', 1),
('2023-07-21 14:31:38.071929', '2023-07-21 14:31:38.071929', 0, 'brand', 2),
('2023-07-21 14:31:43.266403', '2023-07-21 14:31:43.266403', 0, 'color', 3),
('2023-07-21 14:31:45.257446', '2023-07-21 14:31:45.257446', 0, 'plant-type', 4);

-- --------------------------------------------------------

--
-- Table structure for table `facet_channels_channel`
--

CREATE TABLE `facet_channels_channel` (
  `facetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_channels_channel`
--

INSERT INTO `facet_channels_channel` (`facetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facet_translation`
--

CREATE TABLE `facet_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_translation`
--

INSERT INTO `facet_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2023-07-21 14:31:37.969426', '2023-07-21 14:31:37.000000', 'en', 'category', 1, 1),
('2023-07-21 14:31:38.063850', '2023-07-21 14:31:38.000000', 'en', 'brand', 2, 2),
('2023-07-21 14:31:43.261697', '2023-07-21 14:31:43.000000', 'en', 'color', 3, 3),
('2023-07-21 14:31:45.253293', '2023-07-21 14:31:45.000000', 'en', 'plant type', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value`
--

CREATE TABLE `facet_value` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `facetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_value`
--

INSERT INTO `facet_value` (`createdAt`, `updatedAt`, `code`, `id`, `facetId`) VALUES
('2023-07-21 14:31:38.017524', '2023-07-21 14:31:38.017524', 'electronics', 1, 1),
('2023-07-21 14:31:38.037860', '2023-07-21 14:31:38.037860', 'computers', 2, 1),
('2023-07-21 14:31:38.099880', '2023-07-21 14:31:38.099880', 'apple', 3, 2),
('2023-07-21 14:31:38.716751', '2023-07-21 14:31:38.716751', 'logitech', 4, 2),
('2023-07-21 14:31:38.864463', '2023-07-21 14:31:38.864463', 'samsung', 5, 2),
('2023-07-21 14:31:39.142686', '2023-07-21 14:31:39.142686', 'corsair', 6, 2),
('2023-07-21 14:31:39.498840', '2023-07-21 14:31:39.498840', 'admi', 7, 2),
('2023-07-21 14:31:39.849793', '2023-07-21 14:31:39.849793', 'seagate', 8, 2),
('2023-07-21 14:31:40.680542', '2023-07-21 14:31:40.680542', 'photo', 9, 1),
('2023-07-21 14:31:40.713612', '2023-07-21 14:31:40.713612', 'polaroid', 10, 2),
('2023-07-21 14:31:40.925764', '2023-07-21 14:31:40.925764', 'nikkon', 11, 2),
('2023-07-21 14:31:41.024060', '2023-07-21 14:31:41.024060', 'agfa', 12, 2),
('2023-07-21 14:31:41.223484', '2023-07-21 14:31:41.223484', 'manfrotto', 13, 2),
('2023-07-21 14:31:41.441968', '2023-07-21 14:31:41.441968', 'kodak', 14, 2),
('2023-07-21 14:31:41.649991', '2023-07-21 14:31:41.649991', 'sony', 15, 2),
('2023-07-21 14:31:41.934984', '2023-07-21 14:31:41.934984', 'rolleiflex', 16, 2),
('2023-07-21 14:31:42.030305', '2023-07-21 14:31:42.030305', 'sports-outdoor', 17, 1),
('2023-07-21 14:31:42.043116', '2023-07-21 14:31:42.043116', 'equipment', 18, 1),
('2023-07-21 14:31:42.058382', '2023-07-21 14:31:42.058382', 'pinarello', 19, 2),
('2023-07-21 14:31:42.262747', '2023-07-21 14:31:42.262747', 'everlast', 20, 2),
('2023-07-21 14:31:42.833425', '2023-07-21 14:31:42.833425', 'nike', 21, 2),
('2023-07-21 14:31:42.985854', '2023-07-21 14:31:42.985854', 'wilson', 22, 2),
('2023-07-21 14:31:43.207348', '2023-07-21 14:31:43.207348', 'footwear', 23, 1),
('2023-07-21 14:31:43.247220', '2023-07-21 14:31:43.247220', 'adidas', 24, 2),
('2023-07-21 14:31:43.279954', '2023-07-21 14:31:43.279954', 'blue', 25, 3),
('2023-07-21 14:31:43.291017', '2023-07-21 14:31:43.291017', 'pink', 26, 3),
('2023-07-21 14:31:43.624011', '2023-07-21 14:31:43.624011', 'black', 27, 3),
('2023-07-21 14:31:43.931353', '2023-07-21 14:31:43.931353', 'white', 28, 3),
('2023-07-21 14:31:44.826937', '2023-07-21 14:31:44.826937', 'converse', 29, 2),
('2023-07-21 14:31:45.218743', '2023-07-21 14:31:45.218743', 'home-garden', 30, 1),
('2023-07-21 14:31:45.240995', '2023-07-21 14:31:45.240995', 'plants', 31, 1),
('2023-07-21 14:31:45.270043', '2023-07-21 14:31:45.270043', 'indoor', 32, 4),
('2023-07-21 14:31:45.468658', '2023-07-21 14:31:45.468658', 'outdoor', 33, 4),
('2023-07-21 14:31:46.187515', '2023-07-21 14:31:46.187515', 'furniture', 34, 1),
('2023-07-21 14:31:46.216909', '2023-07-21 14:31:46.216909', 'gray', 35, 3),
('2023-07-21 14:31:47.525786', '2023-07-21 14:31:47.525786', 'brown', 36, 3),
('2023-07-21 14:31:47.833857', '2023-07-21 14:31:47.833857', 'wood', 37, 3),
('2023-07-21 14:31:48.707166', '2023-07-21 14:31:48.707166', 'yellow', 38, 3),
('2023-07-21 14:31:48.748348', '2023-07-21 14:31:48.748348', 'green', 39, 3);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value_channels_channel`
--

CREATE TABLE `facet_value_channels_channel` (
  `facetValueId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_value_channels_channel`
--

INSERT INTO `facet_value_channels_channel` (`facetValueId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value_translation`
--

CREATE TABLE `facet_value_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_value_translation`
--

INSERT INTO `facet_value_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2023-07-21 14:31:38.011418', '2023-07-21 14:31:38.000000', 'en', 'Electronics', 1, 1),
('2023-07-21 14:31:38.032961', '2023-07-21 14:31:38.000000', 'en', 'Computers', 2, 2),
('2023-07-21 14:31:38.093956', '2023-07-21 14:31:38.000000', 'en', 'Apple', 3, 3),
('2023-07-21 14:31:38.712949', '2023-07-21 14:31:38.000000', 'en', 'Logitech', 4, 4),
('2023-07-21 14:31:38.860822', '2023-07-21 14:31:38.000000', 'en', 'Samsung', 5, 5),
('2023-07-21 14:31:39.138356', '2023-07-21 14:31:39.000000', 'en', 'Corsair', 6, 6),
('2023-07-21 14:31:39.493696', '2023-07-21 14:31:39.000000', 'en', 'ADMI', 7, 7),
('2023-07-21 14:31:39.843022', '2023-07-21 14:31:39.000000', 'en', 'Seagate', 8, 8),
('2023-07-21 14:31:40.671058', '2023-07-21 14:31:40.000000', 'en', 'Photo', 9, 9),
('2023-07-21 14:31:40.700733', '2023-07-21 14:31:40.000000', 'en', 'Polaroid', 10, 10),
('2023-07-21 14:31:40.920946', '2023-07-21 14:31:40.000000', 'en', 'Nikkon', 11, 11),
('2023-07-21 14:31:41.020661', '2023-07-21 14:31:41.000000', 'en', 'Agfa', 12, 12),
('2023-07-21 14:31:41.214529', '2023-07-21 14:31:41.000000', 'en', 'Manfrotto', 13, 13),
('2023-07-21 14:31:41.436801', '2023-07-21 14:31:41.000000', 'en', 'Kodak', 14, 14),
('2023-07-21 14:31:41.645868', '2023-07-21 14:31:41.000000', 'en', 'Sony', 15, 15),
('2023-07-21 14:31:41.930722', '2023-07-21 14:31:41.000000', 'en', 'Rolleiflex', 16, 16),
('2023-07-21 14:31:42.026422', '2023-07-21 14:31:42.000000', 'en', 'Sports & Outdoor', 17, 17),
('2023-07-21 14:31:42.037022', '2023-07-21 14:31:42.000000', 'en', 'Equipment', 18, 18),
('2023-07-21 14:31:42.050174', '2023-07-21 14:31:42.000000', 'en', 'Pinarello', 19, 19),
('2023-07-21 14:31:42.257243', '2023-07-21 14:31:42.000000', 'en', 'Everlast', 20, 20),
('2023-07-21 14:31:42.827585', '2023-07-21 14:31:42.000000', 'en', 'Nike', 21, 21),
('2023-07-21 14:31:42.980013', '2023-07-21 14:31:42.000000', 'en', 'Wilson', 22, 22),
('2023-07-21 14:31:43.195222', '2023-07-21 14:31:43.000000', 'en', 'Footwear', 23, 23),
('2023-07-21 14:31:43.233864', '2023-07-21 14:31:43.000000', 'en', 'Adidas', 24, 24),
('2023-07-21 14:31:43.276538', '2023-07-21 14:31:43.000000', 'en', 'blue', 25, 25),
('2023-07-21 14:31:43.287457', '2023-07-21 14:31:43.000000', 'en', 'pink', 26, 26),
('2023-07-21 14:31:43.614685', '2023-07-21 14:31:43.000000', 'en', 'black', 27, 27),
('2023-07-21 14:31:43.927798', '2023-07-21 14:31:43.000000', 'en', 'white', 28, 28),
('2023-07-21 14:31:44.823436', '2023-07-21 14:31:44.000000', 'en', 'Converse', 29, 29),
('2023-07-21 14:31:45.211669', '2023-07-21 14:31:45.000000', 'en', 'Home & Garden', 30, 30),
('2023-07-21 14:31:45.230899', '2023-07-21 14:31:45.000000', 'en', 'Plants', 31, 31),
('2023-07-21 14:31:45.266543', '2023-07-21 14:31:45.000000', 'en', 'Indoor', 32, 32),
('2023-07-21 14:31:45.465121', '2023-07-21 14:31:45.000000', 'en', 'Outdoor', 33, 33),
('2023-07-21 14:31:46.179820', '2023-07-21 14:31:46.000000', 'en', 'Furniture', 34, 34),
('2023-07-21 14:31:46.208668', '2023-07-21 14:31:46.000000', 'en', 'gray', 35, 35),
('2023-07-21 14:31:47.518781', '2023-07-21 14:31:47.000000', 'en', 'brown', 36, 36),
('2023-07-21 14:31:47.827486', '2023-07-21 14:31:47.000000', 'en', 'wood', 37, 37),
('2023-07-21 14:31:48.703727', '2023-07-21 14:31:48.000000', 'en', 'yellow', 38, 38),
('2023-07-21 14:31:48.745117', '2023-07-21 14:31:48.000000', 'en', 'green', 39, 39);

-- --------------------------------------------------------

--
-- Table structure for table `fulfillment`
--

CREATE TABLE `fulfillment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `state` varchar(255) NOT NULL,
  `trackingCode` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(255) NOT NULL,
  `handlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `availableLanguages` text NOT NULL,
  `trackInventory` tinyint(4) NOT NULL DEFAULT 1,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`createdAt`, `updatedAt`, `availableLanguages`, `trackInventory`, `outOfStockThreshold`, `id`) VALUES
('2023-07-21 14:31:24.009482', '2023-07-21 14:31:24.009482', 'en', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history_entry`
--

CREATE TABLE `history_entry` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `isPublic` tinyint(4) NOT NULL,
  `data` text NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `administratorId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_entry`
--

INSERT INTO `history_entry` (`createdAt`, `updatedAt`, `type`, `isPublic`, `data`, `id`, `discriminator`, `administratorId`, `customerId`, `orderId`) VALUES
('2023-07-24 03:26:22.001000', '2023-07-24 09:26:22.002868', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 1, 'CustomerHistoryEntry', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_record`
--

CREATE TABLE `job_record` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `queueName` varchar(255) NOT NULL,
  `data` text DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `progress` int(11) NOT NULL,
  `result` text DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `startedAt` datetime(6) DEFAULT NULL,
  `settledAt` datetime(6) DEFAULT NULL,
  `isSettled` tinyint(4) NOT NULL,
  `retries` int(11) NOT NULL,
  `attempts` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_record`
--

INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2023-07-21 14:31:48.896551', '2023-07-21 14:31:49.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[2]}', 'COMPLETED', 100, NULL, NULL, '2023-07-21 08:31:49.067000', '2023-07-21 08:31:49.099000', 1, 0, 1, 1),
('2023-07-21 14:31:48.997918', '2023-07-21 14:31:49.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[3]}', 'COMPLETED', 100, NULL, NULL, '2023-07-21 08:31:49.280000', '2023-07-21 08:31:49.350000', 1, 0, 1, 2),
('2023-07-21 14:31:49.049980', '2023-07-21 14:31:49.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[4]}', 'COMPLETED', 100, NULL, NULL, '2023-07-21 08:31:49.491000', '2023-07-21 08:31:49.568000', 1, 0, 1, 3),
('2023-07-21 14:31:49.092041', '2023-07-21 14:31:49.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[5]}', 'COMPLETED', 100, NULL, NULL, '2023-07-21 08:31:49.713000', '2023-07-21 08:31:49.745000', 1, 0, 1, 4),
('2023-07-21 14:31:49.131115', '2023-07-21 14:31:50.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[6]}', 'COMPLETED', 100, NULL, NULL, '2023-07-21 08:31:49.936000', '2023-07-21 08:31:50.067000', 1, 0, 1, 5),
('2023-07-21 14:31:49.151044', '2023-07-21 14:31:49.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":34,\"timeTaken\":479}', NULL, '2023-07-21 08:31:49.276000', '2023-07-21 08:31:49.769000', 1, 0, 1, 6),
('2023-07-21 14:31:49.168190', '2023-07-21 14:31:50.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[7]}', 'COMPLETED', 100, NULL, NULL, '2023-07-21 08:31:50.151000', '2023-07-21 08:31:50.198000', 1, 0, 1, 7),
('2023-07-21 14:31:49.196569', '2023-07-21 14:31:50.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[8]}', 'COMPLETED', 100, NULL, NULL, '2023-07-21 08:31:50.359000', '2023-07-21 08:31:50.389000', 1, 0, 1, 8),
('2023-07-21 14:31:49.225065', '2023-07-21 14:31:50.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[9]}', 'COMPLETED', 100, NULL, NULL, '2023-07-21 08:31:50.570000', '2023-07-21 08:31:50.622000', 1, 0, 1, 9),
('2023-07-21 14:31:49.256443', '2023-07-21 14:31:50.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[10]}', 'COMPLETED', 100, NULL, NULL, '2023-07-21 08:31:50.801000', '2023-07-21 08:31:50.858000', 1, 0, 1, 10),
('2023-07-21 14:31:49.336278', '2023-07-21 14:31:51.000000', 'update-search-index', '{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":88,\"timeTaken\":1120}', NULL, '2023-07-21 08:31:49.897000', '2023-07-21 08:31:51.035000', 1, 0, 1, 11),
('2023-07-21 14:31:49.403434', '2023-07-21 14:31:51.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":25,\"timeTaken\":190}', NULL, '2023-07-21 08:31:51.145000', '2023-07-21 08:31:51.347000', 1, 0, 1, 12),
('2023-07-21 14:31:49.621085', '2023-07-23 20:39:53.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":423}', NULL, '2023-07-23 14:39:53.045000', '2023-07-23 14:39:53.488000', 1, 0, 1, 13),
('2023-07-21 14:31:49.796809', '2023-07-23 20:39:54.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":22,\"timeTaken\":395}', NULL, '2023-07-23 14:39:53.695000', '2023-07-23 14:39:54.109000', 1, 0, 1, 14),
('2023-07-21 14:31:50.120893', '2023-07-23 20:39:54.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[75,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":13,\"timeTaken\":164}', NULL, '2023-07-23 14:39:54.124000', '2023-07-23 14:39:54.294000', 1, 0, 1, 15),
('2023-07-21 14:31:50.250275', '2023-07-23 20:39:54.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,76]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":195}', NULL, '2023-07-23 14:39:54.344000', '2023-07-23 14:39:54.553000', 1, 0, 1, 16),
('2023-07-21 14:31:50.442326', '2023-07-23 20:39:54.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":32,\"timeTaken\":265}', NULL, '2023-07-23 14:39:54.566000', '2023-07-23 14:39:54.838000', 1, 0, 1, 17),
('2023-07-21 14:31:50.678556', '2023-07-23 20:39:55.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":8,\"timeTaken\":219}', NULL, '2023-07-23 14:39:54.979000', '2023-07-23 14:39:55.209000', 1, 0, 1, 18),
('2023-07-21 14:31:50.912382', '2023-07-23 20:39:55.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2024-07-20T14:31:48.820Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":24,\"timeTaken\":179}', NULL, '2023-07-23 14:39:55.403000', '2023-07-23 14:39:55.593000', 1, 0, 1, 19),
('2023-07-24 09:26:24.025744', '2023-07-24 09:26:24.000000', 'send-email', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"constructed\":true,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":true,\"destroyed\":true,\"errored\":null,\"closed\":true,\"closeEmitted\":true,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_closeAfterHandlingError\":false,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":689,\"remoteAddress\":\"::ffff:192.168.0.100\",\"remoteFamily\":\"IPv6\",\"remotePort\":43154,\"localAddress\":\"::ffff:192.168.0.104\",\"localPort\":3000,\"localFamily\":\"IPv6\",\"_bytesDispatched\":464,\"bytesWritten\":464},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"rawHeaders\":[\"user-agent\",\"Dart/2.17 (dart:io)\",\"accept\",\"*/*\",\"accept-encoding\",\"gzip\",\"content-length\",\"497\",\"host\",\"192.168.0.104:3000\",\"authorization\",\"\",\"content-type\",\"application/json\"],\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_closeAfterHandlingError\":false,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":689,\"remoteAddress\":\"::ffff:192.168.0.100\",\"remoteFamily\":\"IPv6\",\"remotePort\":43154,\"localAddress\":\"::ffff:192.168.0.104\",\"localPort\":3000,\"localFamily\":\"IPv6\",\"_bytesDispatched\":464,\"bytesWritten\":464},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/shop-api\",\"originalUrl\":\"/shop-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/shop-api\",\"path\":\"/shop-api\",\"href\":\"/shop-api\",\"_raw\":\"/shop-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"maxRequestsOnConnectionReached\":false,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"strictContentLength\":false,\"_contentLength\":\"101\",\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"_closed\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 101\\r\\nETag: W/\\\"65-Ix8DprqfUR1F43+LPVzqHDFwT5g\\\"\\r\\nDate: Mon, 24 Jul 2023 03:26:24 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"_maxRequestsPerSocket\":0,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"di6ff9yl94e\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{},\"body\":{\"operationName\":null,\"query\":\"mutation Register($input: RegisterCustomerInput!) {\\n  registerCustomerAccount(input: $input) {\\n    ... on Success {\\n      success\\n      __typename\\n    }\\n    ...ErrorResult\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment ErrorResult on ErrorResult {\\n  errorCode\\n  message\\n  __typename\\n}\"},\"_body\":true,\"lng\":\"en\",\"locale\":\"en\",\"language\":\"en\",\"languages\":[\"en\"],\"i18n\":{\"language\":\"en\",\"isInitialized\":true,\"languages\":[\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"shop\",\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":false,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::ffff:192.168.0.100\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"192.168.0.104\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"_destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_addHeaderLineDistinct\":{},\"_dump\":{},\"destroy\":{},\"_undestroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"iterator\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"shop\",\"_channel\":{\"token\":\"zvto6myl835da6to8nm\",\"createdAt\":\"2023-07-21T14:31:24.042Z\",\"updatedAt\":\"2023-07-21T14:31:37.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2023-07-21T14:31:28.895Z\",\"updatedAt\":\"2023-07-21T14:31:28.895Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":false,\"_authorizedAsOwnerOnly\":false},\"type\":\"email-verification\",\"recipient\":\"9876543211@kaikani.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:8080/verify\",\"passwordResetUrl\":\"http://localhost:8080/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:8080/verify-email-address-change\",\"verificationToken\":\"MjAyMy0wNy0yNFQwMzoyNjoyMy45OTJa_QGNY3LYGWQKBYCA1\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2023-07-24 03:26:24.133000', '2023-07-24 03:26:24.288000', 1, 5, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `job_record_buffer`
--

CREATE TABLE `job_record_buffer` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `bufferId` varchar(255) NOT NULL,
  `job` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL DEFAULT 'Regular',
  `code` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `orderPlacedAt` datetime DEFAULT NULL,
  `couponCodes` text NOT NULL,
  `shippingAddress` text NOT NULL,
  `billingAddress` text NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `aggregateOrderId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `taxZoneId` int(11) DEFAULT NULL,
  `subTotal` int(11) NOT NULL,
  `subTotalWithTax` int(11) NOT NULL,
  `shipping` int(11) NOT NULL DEFAULT 0,
  `shippingWithTax` int(11) NOT NULL DEFAULT 0,
  `customFieldsClientrequesttocancel` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_channels_channel`
--

CREATE TABLE `order_channels_channel` (
  `orderId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_fulfillments_fulfillment`
--

CREATE TABLE `order_fulfillments_fulfillment` (
  `orderId` int(11) NOT NULL,
  `fulfillmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `quantity` int(11) NOT NULL,
  `orderPlacedQuantity` int(11) NOT NULL DEFAULT 0,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `sellerChannelId` int(11) DEFAULT NULL,
  `shippingLineId` int(11) DEFAULT NULL,
  `productVariantId` int(11) NOT NULL,
  `initialListPrice` int(11) DEFAULT NULL,
  `listPrice` int(11) NOT NULL,
  `taxCategoryId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_line_reference`
--

CREATE TABLE `order_line_reference` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `fulfillmentId` int(11) DEFAULT NULL,
  `modificationId` int(11) DEFAULT NULL,
  `orderLineId` int(11) NOT NULL,
  `refundId` int(11) DEFAULT NULL,
  `discriminator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_modification`
--

CREATE TABLE `order_modification` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `note` varchar(255) NOT NULL,
  `shippingAddressChange` text DEFAULT NULL,
  `billingAddressChange` text DEFAULT NULL,
  `id` int(11) NOT NULL,
  `priceChange` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `refundId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_promotions_promotion`
--

CREATE TABLE `order_promotions_promotion` (
  `orderId` int(11) NOT NULL,
  `promotionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `method` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `errorMessage` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL,
  `checker` text DEFAULT NULL,
  `handler` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`createdAt`, `updatedAt`, `code`, `enabled`, `checker`, `handler`, `id`) VALUES
('2023-07-21 14:31:37.477370', '2023-07-21 14:31:37.477370', 'standard-payment', 1, NULL, '{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_channels_channel`
--

CREATE TABLE `payment_method_channels_channel` (
  `paymentMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method_channels_channel`
--

INSERT INTO `payment_method_channels_channel` (`paymentMethodId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_translation`
--

CREATE TABLE `payment_method_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method_translation`
--

INSERT INTO `payment_method_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `description`, `id`, `baseId`) VALUES
('2023-07-21 14:31:37.472696', '2023-07-21 14:31:37.000000', 'en', 'Standard Payment', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `id`, `featuredAssetId`) VALUES
('2023-07-21 14:31:38.120140', '2023-07-21 14:31:38.120140', NULL, 1, 1, 1),
('2023-07-21 14:31:38.453571', '2023-07-21 14:31:38.453571', NULL, 1, 2, 2),
('2023-07-21 14:31:38.733819', '2023-07-21 14:31:38.733819', NULL, 1, 3, 3),
('2023-07-21 14:31:38.876777', '2023-07-21 14:31:38.876777', NULL, 1, 4, 4),
('2023-07-21 14:31:39.002667', '2023-07-21 14:31:39.002667', NULL, 1, 5, 5),
('2023-07-21 14:31:39.154434', '2023-07-21 14:31:39.154434', NULL, 1, 6, 6),
('2023-07-21 14:31:39.517126', '2023-07-21 14:31:39.517126', NULL, 1, 7, 7),
('2023-07-21 14:31:39.864797', '2023-07-21 14:31:39.864797', NULL, 1, 8, 8),
('2023-07-21 14:31:40.212033', '2023-07-21 14:31:40.212033', NULL, 1, 9, 9),
('2023-07-21 14:31:40.319965', '2023-07-21 14:31:40.319965', NULL, 1, 10, 10),
('2023-07-21 14:31:40.500192', '2023-07-21 14:31:40.500192', NULL, 1, 11, 11),
('2023-07-21 14:31:40.743312', '2023-07-21 14:31:40.743312', NULL, 1, 12, 12),
('2023-07-21 14:31:40.939176', '2023-07-21 14:31:40.939176', NULL, 1, 13, 13),
('2023-07-21 14:31:41.037447', '2023-07-21 14:31:41.037447', NULL, 1, 14, 14),
('2023-07-21 14:31:41.251174', '2023-07-21 14:31:41.251174', NULL, 1, 15, 15),
('2023-07-21 14:31:41.463118', '2023-07-21 14:31:41.463118', NULL, 1, 16, 16),
('2023-07-21 14:31:41.670654', '2023-07-21 14:31:41.670654', NULL, 1, 17, 17),
('2023-07-21 14:31:41.746967', '2023-07-21 14:31:41.746967', NULL, 1, 18, 18),
('2023-07-21 14:31:41.841585', '2023-07-21 14:31:41.841585', NULL, 1, 19, 19),
('2023-07-21 14:31:41.949046', '2023-07-21 14:31:41.949046', NULL, 1, 20, 20),
('2023-07-21 14:31:42.070358', '2023-07-21 14:31:42.070358', NULL, 1, 21, 21),
('2023-07-21 14:31:42.277879', '2023-07-21 14:31:42.277879', NULL, 1, 22, 22),
('2023-07-21 14:31:42.384770', '2023-07-21 14:31:42.384770', NULL, 1, 23, 23),
('2023-07-21 14:31:42.481874', '2023-07-21 14:31:42.481874', NULL, 1, 24, 24),
('2023-07-21 14:31:42.693458', '2023-07-21 14:31:42.693458', NULL, 1, 25, 25),
('2023-07-21 14:31:42.855789', '2023-07-21 14:31:42.855789', NULL, 1, 26, 26),
('2023-07-21 14:31:42.999180', '2023-07-21 14:31:42.999180', NULL, 1, 27, 27),
('2023-07-21 14:31:43.077025', '2023-07-21 14:31:43.077025', NULL, 1, 28, 28),
('2023-07-21 14:31:43.302430', '2023-07-21 14:31:43.302430', NULL, 1, 29, 29),
('2023-07-21 14:31:43.639728', '2023-07-21 14:31:43.639728', NULL, 1, 30, 30),
('2023-07-21 14:31:43.941938', '2023-07-21 14:31:43.941938', NULL, 1, 31, 31),
('2023-07-21 14:31:44.277485', '2023-07-21 14:31:44.277485', NULL, 1, 32, 32),
('2023-07-21 14:31:44.509419', '2023-07-21 14:31:44.509419', NULL, 1, 33, 33),
('2023-07-21 14:31:44.838879', '2023-07-21 14:31:44.838879', NULL, 1, 34, 34),
('2023-07-21 14:31:45.283900', '2023-07-21 14:31:45.283900', NULL, 1, 35, 35),
('2023-07-21 14:31:45.479953', '2023-07-21 14:31:45.479953', NULL, 1, 36, 36),
('2023-07-21 14:31:45.575038', '2023-07-21 14:31:45.575038', NULL, 1, 37, 37),
('2023-07-21 14:31:45.661430', '2023-07-21 14:31:45.661430', NULL, 1, 38, 38),
('2023-07-21 14:31:45.764761', '2023-07-21 14:31:45.764761', NULL, 1, 39, 39),
('2023-07-21 14:31:45.858323', '2023-07-21 14:31:45.858323', NULL, 1, 40, 40),
('2023-07-21 14:31:45.953291', '2023-07-21 14:31:45.953291', NULL, 1, 41, 41),
('2023-07-21 14:31:46.039720', '2023-07-21 14:31:46.039720', NULL, 1, 42, 42),
('2023-07-21 14:31:46.245137', '2023-07-21 14:31:46.245137', NULL, 1, 43, 43),
('2023-07-21 14:31:46.472127', '2023-07-21 14:31:46.472127', NULL, 1, 44, 44),
('2023-07-21 14:31:46.545588', '2023-07-21 14:31:46.545588', NULL, 1, 45, 45),
('2023-07-21 14:31:47.324726', '2023-07-21 14:31:47.324726', NULL, 1, 46, 46),
('2023-07-21 14:31:47.551963', '2023-07-21 14:31:47.551963', NULL, 1, 47, 47),
('2023-07-21 14:31:47.673905', '2023-07-21 14:31:47.673905', NULL, 1, 48, 48),
('2023-07-21 14:31:47.853742', '2023-07-21 14:31:47.853742', NULL, 1, 49, 49),
('2023-07-21 14:31:48.023475', '2023-07-21 14:31:48.023475', NULL, 1, 50, 50),
('2023-07-21 14:31:48.138778', '2023-07-21 14:31:48.138778', NULL, 1, 51, 51),
('2023-07-21 14:31:48.319039', '2023-07-21 14:31:48.319039', NULL, 1, 52, 52),
('2023-07-21 14:31:48.512213', '2023-07-21 14:31:48.512213', NULL, 1, 53, 53),
('2023-07-21 14:31:48.656027', '2023-07-21 14:31:48.656027', NULL, 1, 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_asset`
--

CREATE TABLE `product_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_asset`
--

INSERT INTO `product_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `productId`, `id`) VALUES
('2023-07-21 14:31:38.146858', '2023-07-21 14:31:38.146858', 1, 0, 1, 1),
('2023-07-21 14:31:38.470781', '2023-07-21 14:31:38.470781', 2, 0, 2, 2),
('2023-07-21 14:31:38.743431', '2023-07-21 14:31:38.743431', 3, 0, 3, 3),
('2023-07-21 14:31:38.883691', '2023-07-21 14:31:38.883691', 4, 0, 4, 4),
('2023-07-21 14:31:39.013707', '2023-07-21 14:31:39.013707', 5, 0, 5, 5),
('2023-07-21 14:31:39.169464', '2023-07-21 14:31:39.169464', 6, 0, 6, 6),
('2023-07-21 14:31:39.527355', '2023-07-21 14:31:39.527355', 7, 0, 7, 7),
('2023-07-21 14:31:39.870557', '2023-07-21 14:31:39.870557', 8, 0, 8, 8),
('2023-07-21 14:31:40.220050', '2023-07-21 14:31:40.220050', 9, 0, 9, 9),
('2023-07-21 14:31:40.325312', '2023-07-21 14:31:40.325312', 10, 0, 10, 10),
('2023-07-21 14:31:40.507677', '2023-07-21 14:31:40.507677', 11, 0, 11, 11),
('2023-07-21 14:31:40.751899', '2023-07-21 14:31:40.751899', 12, 0, 12, 12),
('2023-07-21 14:31:40.945186', '2023-07-21 14:31:40.945186', 13, 0, 13, 13),
('2023-07-21 14:31:41.044887', '2023-07-21 14:31:41.044887', 14, 0, 14, 14),
('2023-07-21 14:31:41.263645', '2023-07-21 14:31:41.263645', 15, 0, 15, 15),
('2023-07-21 14:31:41.471171', '2023-07-21 14:31:41.471171', 16, 0, 16, 16),
('2023-07-21 14:31:41.676365', '2023-07-21 14:31:41.676365', 17, 0, 17, 17),
('2023-07-21 14:31:41.754006', '2023-07-21 14:31:41.754006', 18, 0, 18, 18),
('2023-07-21 14:31:41.848134', '2023-07-21 14:31:41.848134', 19, 0, 19, 19),
('2023-07-21 14:31:41.955151', '2023-07-21 14:31:41.955151', 20, 0, 20, 20),
('2023-07-21 14:31:42.075773', '2023-07-21 14:31:42.075773', 21, 0, 21, 21),
('2023-07-21 14:31:42.286679', '2023-07-21 14:31:42.286679', 22, 0, 22, 22),
('2023-07-21 14:31:42.390401', '2023-07-21 14:31:42.390401', 23, 0, 23, 23),
('2023-07-21 14:31:42.486814', '2023-07-21 14:31:42.486814', 24, 0, 24, 24),
('2023-07-21 14:31:42.704017', '2023-07-21 14:31:42.704017', 25, 0, 25, 25),
('2023-07-21 14:31:42.865204', '2023-07-21 14:31:42.865204', 26, 0, 26, 26),
('2023-07-21 14:31:43.004414', '2023-07-21 14:31:43.004414', 27, 0, 27, 27),
('2023-07-21 14:31:43.082507', '2023-07-21 14:31:43.082507', 28, 0, 28, 28),
('2023-07-21 14:31:43.308492', '2023-07-21 14:31:43.308492', 29, 0, 29, 29),
('2023-07-21 14:31:43.648511', '2023-07-21 14:31:43.648511', 30, 0, 30, 30),
('2023-07-21 14:31:43.947076', '2023-07-21 14:31:43.947076', 31, 0, 31, 31),
('2023-07-21 14:31:44.286549', '2023-07-21 14:31:44.286549', 32, 0, 32, 32),
('2023-07-21 14:31:44.516169', '2023-07-21 14:31:44.516169', 33, 0, 33, 33),
('2023-07-21 14:31:44.844012', '2023-07-21 14:31:44.844012', 34, 0, 34, 34),
('2023-07-21 14:31:45.354946', '2023-07-21 14:31:45.354946', 35, 0, 35, 35),
('2023-07-21 14:31:45.486106', '2023-07-21 14:31:45.486106', 36, 0, 36, 36),
('2023-07-21 14:31:45.580730', '2023-07-21 14:31:45.580730', 37, 0, 37, 37),
('2023-07-21 14:31:45.666601', '2023-07-21 14:31:45.666601', 38, 0, 38, 38),
('2023-07-21 14:31:45.769661', '2023-07-21 14:31:45.769661', 39, 0, 39, 39),
('2023-07-21 14:31:45.865524', '2023-07-21 14:31:45.865524', 40, 0, 40, 40),
('2023-07-21 14:31:45.959493', '2023-07-21 14:31:45.959493', 41, 0, 41, 41),
('2023-07-21 14:31:46.045817', '2023-07-21 14:31:46.045817', 42, 0, 42, 42),
('2023-07-21 14:31:46.256737', '2023-07-21 14:31:46.256737', 43, 0, 43, 43),
('2023-07-21 14:31:46.477736', '2023-07-21 14:31:46.477736', 44, 0, 44, 44),
('2023-07-21 14:31:46.551103', '2023-07-21 14:31:46.551103', 45, 0, 45, 45),
('2023-07-21 14:31:47.331454', '2023-07-21 14:31:47.331454', 46, 0, 46, 46),
('2023-07-21 14:31:47.560915', '2023-07-21 14:31:47.560915', 47, 0, 47, 47),
('2023-07-21 14:31:47.679075', '2023-07-21 14:31:47.679075', 48, 0, 48, 48),
('2023-07-21 14:31:47.861803', '2023-07-21 14:31:47.861803', 49, 0, 49, 49),
('2023-07-21 14:31:48.034657', '2023-07-21 14:31:48.034657', 50, 0, 50, 50),
('2023-07-21 14:31:48.144950', '2023-07-21 14:31:48.144950', 51, 0, 51, 51),
('2023-07-21 14:31:48.334011', '2023-07-21 14:31:48.334011', 52, 0, 52, 52),
('2023-07-21 14:31:48.517742', '2023-07-21 14:31:48.517742', 53, 0, 53, 53),
('2023-07-21 14:31:48.664861', '2023-07-21 14:31:48.664861', 54, 0, 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_channels_channel`
--

CREATE TABLE `product_channels_channel` (
  `productId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_channels_channel`
--

INSERT INTO `product_channels_channel` (`productId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_facet_values_facet_value`
--

CREATE TABLE `product_facet_values_facet_value` (
  `productId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_facet_values_facet_value`
--

INSERT INTO `product_facet_values_facet_value` (`productId`, `facetValueId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(5, 2),
(5, 5),
(6, 1),
(6, 2),
(6, 6),
(7, 1),
(7, 2),
(7, 7),
(8, 1),
(8, 2),
(8, 8),
(9, 1),
(9, 2),
(9, 6),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 9),
(12, 10),
(13, 1),
(13, 9),
(13, 11),
(14, 1),
(14, 9),
(14, 12),
(15, 1),
(15, 9),
(15, 13),
(16, 1),
(16, 9),
(16, 14),
(17, 1),
(17, 9),
(17, 15),
(18, 1),
(18, 9),
(18, 11),
(19, 1),
(19, 9),
(20, 1),
(20, 9),
(20, 16),
(21, 17),
(21, 18),
(21, 19),
(22, 17),
(22, 18),
(22, 20),
(23, 17),
(23, 18),
(23, 20),
(24, 17),
(24, 18),
(25, 17),
(25, 18),
(26, 17),
(26, 18),
(26, 21),
(27, 17),
(27, 18),
(27, 22),
(28, 17),
(28, 18),
(28, 22),
(29, 17),
(29, 23),
(29, 24),
(29, 25),
(29, 26),
(30, 17),
(30, 21),
(30, 23),
(30, 27),
(31, 17),
(31, 21),
(31, 23),
(31, 28),
(32, 17),
(32, 23),
(32, 24),
(32, 27),
(32, 28),
(33, 17),
(33, 23),
(33, 24),
(33, 27),
(34, 17),
(34, 23),
(34, 27),
(34, 29),
(35, 30),
(35, 31),
(35, 32),
(36, 30),
(36, 31),
(36, 32),
(36, 33),
(37, 30),
(37, 31),
(37, 33),
(38, 30),
(38, 31),
(38, 32),
(39, 30),
(39, 31),
(39, 33),
(40, 30),
(40, 31),
(40, 32),
(41, 30),
(41, 31),
(42, 30),
(42, 31),
(43, 30),
(43, 34),
(43, 35),
(44, 30),
(44, 31),
(45, 30),
(45, 34),
(46, 30),
(46, 34),
(46, 35),
(47, 30),
(47, 34),
(47, 36),
(48, 30),
(48, 34),
(49, 30),
(49, 34),
(49, 37),
(50, 30),
(50, 34),
(50, 35),
(51, 27),
(51, 30),
(51, 34),
(52, 30),
(52, 34),
(52, 37),
(53, 28),
(53, 30),
(53, 34),
(54, 30),
(54, 34);

-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

CREATE TABLE `product_option` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_option`
--

INSERT INTO `product_option` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `groupId`) VALUES
('2023-07-21 14:31:38.183197', '2023-07-21 14:31:38.183197', NULL, '13-inch', 1, 1),
('2023-07-21 14:31:38.196740', '2023-07-21 14:31:38.196740', NULL, '15-inch', 2, 1),
('2023-07-21 14:31:38.228371', '2023-07-21 14:31:38.228371', NULL, '8gb', 3, 2),
('2023-07-21 14:31:38.237236', '2023-07-21 14:31:38.237236', NULL, '16gb', 4, 2),
('2023-07-21 14:31:38.527279', '2023-07-21 14:31:38.527279', NULL, '32gb', 5, 3),
('2023-07-21 14:31:38.552814', '2023-07-21 14:31:38.552814', NULL, '128gb', 6, 3),
('2023-07-21 14:31:39.032313', '2023-07-21 14:31:39.032313', NULL, '24-inch', 7, 4),
('2023-07-21 14:31:39.040273', '2023-07-21 14:31:39.040273', NULL, '27-inch', 8, 4),
('2023-07-21 14:31:39.202037', '2023-07-21 14:31:39.202037', NULL, '4gb', 9, 5),
('2023-07-21 14:31:39.210969', '2023-07-21 14:31:39.210969', NULL, '8gb', 10, 5),
('2023-07-21 14:31:39.218563', '2023-07-21 14:31:39.218563', NULL, '16gb', 11, 5),
('2023-07-21 14:31:39.544900', '2023-07-21 14:31:39.544900', NULL, 'i7-8700', 12, 6),
('2023-07-21 14:31:39.553440', '2023-07-21 14:31:39.553440', NULL, 'r7-2700', 13, 6),
('2023-07-21 14:31:39.572793', '2023-07-21 14:31:39.572793', NULL, '240gb-ssd', 14, 7),
('2023-07-21 14:31:39.585131', '2023-07-21 14:31:39.585131', NULL, '120gb-ssd', 15, 7),
('2023-07-21 14:31:39.884489', '2023-07-21 14:31:39.884489', NULL, '1tb', 16, 8),
('2023-07-21 14:31:39.893669', '2023-07-21 14:31:39.893669', NULL, '2tb', 17, 8),
('2023-07-21 14:31:39.901158', '2023-07-21 14:31:39.901158', NULL, '3tb', 18, 8),
('2023-07-21 14:31:39.908521', '2023-07-21 14:31:39.908521', NULL, '4tb', 19, 8),
('2023-07-21 14:31:39.915789', '2023-07-21 14:31:39.915789', NULL, '6tb', 20, 8),
('2023-07-21 14:31:43.329522', '2023-07-21 14:31:43.329522', NULL, 'size-40', 21, 9),
('2023-07-21 14:31:43.336940', '2023-07-21 14:31:43.336940', NULL, 'size-42', 22, 9),
('2023-07-21 14:31:43.344915', '2023-07-21 14:31:43.344915', NULL, 'size-44', 23, 9),
('2023-07-21 14:31:43.352850', '2023-07-21 14:31:43.352850', NULL, 'size-46', 24, 9),
('2023-07-21 14:31:43.674021', '2023-07-21 14:31:43.674021', NULL, 'size-40', 25, 10),
('2023-07-21 14:31:43.683735', '2023-07-21 14:31:43.683735', NULL, 'size-42', 26, 10),
('2023-07-21 14:31:43.693660', '2023-07-21 14:31:43.693660', NULL, 'size-44', 27, 10),
('2023-07-21 14:31:43.703989', '2023-07-21 14:31:43.703989', NULL, 'size-46', 28, 10),
('2023-07-21 14:31:43.980692', '2023-07-21 14:31:43.980692', NULL, 'size-40', 29, 11),
('2023-07-21 14:31:43.988376', '2023-07-21 14:31:43.988376', NULL, 'size-42', 30, 11),
('2023-07-21 14:31:43.995788', '2023-07-21 14:31:43.995788', NULL, 'size-44', 31, 11),
('2023-07-21 14:31:44.004623', '2023-07-21 14:31:44.004623', NULL, 'size-46', 32, 11),
('2023-07-21 14:31:44.311175', '2023-07-21 14:31:44.311175', NULL, 'size-40', 33, 12),
('2023-07-21 14:31:44.318740', '2023-07-21 14:31:44.318740', NULL, 'size-42', 34, 12),
('2023-07-21 14:31:44.327377', '2023-07-21 14:31:44.327377', NULL, 'size-44', 35, 12),
('2023-07-21 14:31:44.334776', '2023-07-21 14:31:44.334776', NULL, 'size-46', 36, 12),
('2023-07-21 14:31:44.533043', '2023-07-21 14:31:44.533043', NULL, 'size-40', 37, 13),
('2023-07-21 14:31:44.542910', '2023-07-21 14:31:44.542910', NULL, 'size-42', 38, 13),
('2023-07-21 14:31:44.551270', '2023-07-21 14:31:44.551270', NULL, 'size-44', 39, 13),
('2023-07-21 14:31:44.559553', '2023-07-21 14:31:44.559553', NULL, 'size-46', 40, 13),
('2023-07-21 14:31:44.858704', '2023-07-21 14:31:44.858704', NULL, 'size-40', 41, 14),
('2023-07-21 14:31:44.868704', '2023-07-21 14:31:44.868704', NULL, 'size-42', 42, 14),
('2023-07-21 14:31:44.876598', '2023-07-21 14:31:44.876598', NULL, 'size-44', 43, 14),
('2023-07-21 14:31:44.884197', '2023-07-21 14:31:44.884197', NULL, 'size-46', 44, 14),
('2023-07-21 14:31:48.680176', '2023-07-21 14:31:48.680176', NULL, 'mustard', 45, 15),
('2023-07-21 14:31:48.689803', '2023-07-21 14:31:48.689803', NULL, 'mint', 46, 15),
('2023-07-21 14:31:48.697385', '2023-07-21 14:31:48.697385', NULL, 'pearl', 47, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_group`
--

CREATE TABLE `product_option_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_option_group`
--

INSERT INTO `product_option_group` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `productId`) VALUES
('2023-07-21 14:31:38.165727', '2023-07-21 14:31:38.000000', NULL, 'laptop-screen-size', 1, 1),
('2023-07-21 14:31:38.218234', '2023-07-21 14:31:38.000000', NULL, 'laptop-ram', 2, 1),
('2023-07-21 14:31:38.480485', '2023-07-21 14:31:38.000000', NULL, 'tablet-storage', 3, 2),
('2023-07-21 14:31:39.023651', '2023-07-21 14:31:39.000000', NULL, 'curvy-monitor-monitor-size', 4, 5),
('2023-07-21 14:31:39.189461', '2023-07-21 14:31:39.000000', NULL, 'high-performance-ram-size', 5, 6),
('2023-07-21 14:31:39.536351', '2023-07-21 14:31:39.000000', NULL, 'gaming-pc-cpu', 6, 7),
('2023-07-21 14:31:39.564549', '2023-07-21 14:31:39.000000', NULL, 'gaming-pc-hdd', 7, 7),
('2023-07-21 14:31:39.877051', '2023-07-21 14:31:39.000000', NULL, 'hard-drive-hdd', 8, 8),
('2023-07-21 14:31:43.314999', '2023-07-21 14:31:43.000000', NULL, 'ultraboost-running-shoe-size', 9, 29),
('2023-07-21 14:31:43.664423', '2023-07-21 14:31:43.000000', NULL, 'freerun-running-shoe-size', 10, 30),
('2023-07-21 14:31:43.954122', '2023-07-21 14:31:44.000000', NULL, 'hi-top-basketball-shoe-size', 11, 31),
('2023-07-21 14:31:44.303481', '2023-07-21 14:31:44.000000', NULL, 'pureboost-running-shoe-size', 12, 32),
('2023-07-21 14:31:44.522525', '2023-07-21 14:31:44.000000', NULL, 'runx-running-shoe-size', 13, 33),
('2023-07-21 14:31:44.850797', '2023-07-21 14:31:44.000000', NULL, 'allstar-sneakers-size', 14, 34),
('2023-07-21 14:31:48.672153', '2023-07-21 14:31:48.000000', NULL, 'modern-cafe-chair-color', 15, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_group_translation`
--

CREATE TABLE `product_option_group_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_option_group_translation`
--

INSERT INTO `product_option_group_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2023-07-21 14:31:38.154811', '2023-07-21 14:31:38.000000', 'en', 'screen size', 1, 1),
('2023-07-21 14:31:38.212578', '2023-07-21 14:31:38.000000', 'en', 'RAM', 2, 2),
('2023-07-21 14:31:38.475412', '2023-07-21 14:31:38.000000', 'en', 'storage', 3, 3),
('2023-07-21 14:31:39.016528', '2023-07-21 14:31:39.000000', 'en', 'monitor size', 4, 4),
('2023-07-21 14:31:39.180562', '2023-07-21 14:31:39.000000', 'en', 'size', 5, 5),
('2023-07-21 14:31:39.532061', '2023-07-21 14:31:39.000000', 'en', 'cpu', 6, 6),
('2023-07-21 14:31:39.560477', '2023-07-21 14:31:39.000000', 'en', 'HDD', 7, 7),
('2023-07-21 14:31:39.873471', '2023-07-21 14:31:39.000000', 'en', 'HDD', 8, 8),
('2023-07-21 14:31:43.311599', '2023-07-21 14:31:43.000000', 'en', 'size', 9, 9),
('2023-07-21 14:31:43.659945', '2023-07-21 14:31:43.000000', 'en', 'size', 10, 10),
('2023-07-21 14:31:43.950979', '2023-07-21 14:31:43.000000', 'en', 'size', 11, 11),
('2023-07-21 14:31:44.299358', '2023-07-21 14:31:44.000000', 'en', 'size', 12, 12),
('2023-07-21 14:31:44.519364', '2023-07-21 14:31:44.000000', 'en', 'size', 13, 13),
('2023-07-21 14:31:44.847321', '2023-07-21 14:31:44.000000', 'en', 'size', 14, 14),
('2023-07-21 14:31:48.668025', '2023-07-21 14:31:48.000000', 'en', 'color', 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_translation`
--

CREATE TABLE `product_option_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_option_translation`
--

INSERT INTO `product_option_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2023-07-21 14:31:38.177469', '2023-07-21 14:31:38.000000', 'en', '13 inch', 1, 1),
('2023-07-21 14:31:38.191073', '2023-07-21 14:31:38.000000', 'en', '15 inch', 2, 2),
('2023-07-21 14:31:38.223848', '2023-07-21 14:31:38.000000', 'en', '8GB', 3, 3),
('2023-07-21 14:31:38.233533', '2023-07-21 14:31:38.000000', 'en', '16GB', 4, 4),
('2023-07-21 14:31:38.492593', '2023-07-21 14:31:38.000000', 'en', '32GB', 5, 5),
('2023-07-21 14:31:38.544343', '2023-07-21 14:31:38.000000', 'en', '128GB', 6, 6),
('2023-07-21 14:31:39.028203', '2023-07-21 14:31:39.000000', 'en', '24 inch', 7, 7),
('2023-07-21 14:31:39.036580', '2023-07-21 14:31:39.000000', 'en', '27 inch', 8, 8),
('2023-07-21 14:31:39.197535', '2023-07-21 14:31:39.000000', 'en', '4GB', 9, 9),
('2023-07-21 14:31:39.207275', '2023-07-21 14:31:39.000000', 'en', '8GB', 10, 10),
('2023-07-21 14:31:39.214911', '2023-07-21 14:31:39.000000', 'en', '16GB', 11, 11),
('2023-07-21 14:31:39.540546', '2023-07-21 14:31:39.000000', 'en', 'i7-8700', 12, 12),
('2023-07-21 14:31:39.549887', '2023-07-21 14:31:39.000000', 'en', 'R7-2700', 13, 13),
('2023-07-21 14:31:39.569376', '2023-07-21 14:31:39.000000', 'en', '240GB SSD', 14, 14),
('2023-07-21 14:31:39.576968', '2023-07-21 14:31:39.000000', 'en', '120GB SSD', 15, 15),
('2023-07-21 14:31:39.881180', '2023-07-21 14:31:39.000000', 'en', '1TB', 16, 16),
('2023-07-21 14:31:39.889199', '2023-07-21 14:31:39.000000', 'en', '2TB', 17, 17),
('2023-07-21 14:31:39.897719', '2023-07-21 14:31:39.000000', 'en', '3TB', 18, 18),
('2023-07-21 14:31:39.905030', '2023-07-21 14:31:39.000000', 'en', '4TB', 19, 19),
('2023-07-21 14:31:39.912344', '2023-07-21 14:31:39.000000', 'en', '6TB', 20, 20),
('2023-07-21 14:31:43.325230', '2023-07-21 14:31:43.000000', 'en', 'Size 40', 21, 21),
('2023-07-21 14:31:43.333523', '2023-07-21 14:31:43.000000', 'en', 'Size 42', 22, 22),
('2023-07-21 14:31:43.341374', '2023-07-21 14:31:43.000000', 'en', 'Size 44', 23, 23),
('2023-07-21 14:31:43.348990', '2023-07-21 14:31:43.000000', 'en', 'Size 46', 24, 24),
('2023-07-21 14:31:43.669377', '2023-07-21 14:31:43.000000', 'en', 'Size 40', 25, 25),
('2023-07-21 14:31:43.679305', '2023-07-21 14:31:43.000000', 'en', 'Size 42', 26, 26),
('2023-07-21 14:31:43.689357', '2023-07-21 14:31:43.000000', 'en', 'Size 44', 27, 27),
('2023-07-21 14:31:43.698845', '2023-07-21 14:31:43.000000', 'en', 'Size 46', 28, 28),
('2023-07-21 14:31:43.976863', '2023-07-21 14:31:43.000000', 'en', 'Size 40', 29, 29),
('2023-07-21 14:31:43.985050', '2023-07-21 14:31:43.000000', 'en', 'Size 42', 30, 30),
('2023-07-21 14:31:43.992532', '2023-07-21 14:31:43.000000', 'en', 'Size 44', 31, 31),
('2023-07-21 14:31:43.999970', '2023-07-21 14:31:44.000000', 'en', 'Size 46', 32, 32),
('2023-07-21 14:31:44.307614', '2023-07-21 14:31:44.000000', 'en', 'Size 40', 33, 33),
('2023-07-21 14:31:44.315148', '2023-07-21 14:31:44.000000', 'en', 'Size 42', 34, 34),
('2023-07-21 14:31:44.323378', '2023-07-21 14:31:44.000000', 'en', 'Size 44', 35, 35),
('2023-07-21 14:31:44.331401', '2023-07-21 14:31:44.000000', 'en', 'Size 46', 36, 36),
('2023-07-21 14:31:44.529304', '2023-07-21 14:31:44.000000', 'en', 'Size 40', 37, 37),
('2023-07-21 14:31:44.539371', '2023-07-21 14:31:44.000000', 'en', 'Size 42', 38, 38),
('2023-07-21 14:31:44.547117', '2023-07-21 14:31:44.000000', 'en', 'Size 44', 39, 39),
('2023-07-21 14:31:44.556324', '2023-07-21 14:31:44.000000', 'en', 'Size 46', 40, 40),
('2023-07-21 14:31:44.855051', '2023-07-21 14:31:44.000000', 'en', 'Size 40', 41, 41),
('2023-07-21 14:31:44.864477', '2023-07-21 14:31:44.000000', 'en', 'Size 42', 42, 42),
('2023-07-21 14:31:44.873030', '2023-07-21 14:31:44.000000', 'en', 'Size 44', 43, 43),
('2023-07-21 14:31:44.880827', '2023-07-21 14:31:44.000000', 'en', 'Size 46', 44, 44),
('2023-07-21 14:31:48.676454', '2023-07-21 14:31:48.000000', 'en', 'mustard', 45, 45),
('2023-07-21 14:31:48.684824', '2023-07-21 14:31:48.000000', 'en', 'mint', 46, 46),
('2023-07-21 14:31:48.693921', '2023-07-21 14:31:48.000000', 'en', 'pearl', 47, 47);

-- --------------------------------------------------------

--
-- Table structure for table `product_translation`
--

CREATE TABLE `product_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_translation`
--

INSERT INTO `product_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2023-07-21 14:31:38.112148', '2023-07-21 14:31:38.000000', 'en', 'Laptop', 'laptop', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 1, 1),
('2023-07-21 14:31:38.450040', '2023-07-21 14:31:38.000000', 'en', 'Tablet', 'tablet', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 2, 2),
('2023-07-21 14:31:38.730165', '2023-07-21 14:31:38.000000', 'en', 'Wireless Optical Mouse', 'cordless-mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 3, 3),
('2023-07-21 14:31:38.872797', '2023-07-21 14:31:38.000000', 'en', '32-Inch Monitor', '32-inch-monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', 4, 4),
('2023-07-21 14:31:38.990027', '2023-07-21 14:31:39.000000', 'en', 'Curvy Monitor', 'curvy-monitor', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 5, 5),
('2023-07-21 14:31:39.150699', '2023-07-21 14:31:39.000000', 'en', 'High Performance RAM', 'high-performance-ram', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 6, 6),
('2023-07-21 14:31:39.512526', '2023-07-21 14:31:39.000000', 'en', 'Gaming PC', 'gaming-pc', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 7, 7),
('2023-07-21 14:31:39.860700', '2023-07-21 14:31:39.000000', 'en', 'Hard Drive', 'hard-drive', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 8, 8),
('2023-07-21 14:31:40.207865', '2023-07-21 14:31:40.000000', 'en', 'Clacky Keyboard', 'clacky-keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 9, 9),
('2023-07-21 14:31:40.315290', '2023-07-21 14:31:40.000000', 'en', 'Ethernet Cable', 'ethernet-cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 10, 10),
('2023-07-21 14:31:40.492850', '2023-07-21 14:31:40.000000', 'en', 'USB Cable', 'usb-cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 11, 11),
('2023-07-21 14:31:40.737040', '2023-07-21 14:31:40.000000', 'en', 'Instant Camera', 'instant-camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 12, 12),
('2023-07-21 14:31:40.935346', '2023-07-21 14:31:40.000000', 'en', 'Camera Lens', 'camera-lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 13, 13),
('2023-07-21 14:31:41.033968', '2023-07-21 14:31:41.000000', 'en', 'Vintage Folding Camera', 'vintage-folding-camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 14, 14),
('2023-07-21 14:31:41.241801', '2023-07-21 14:31:41.000000', 'en', 'Tripod', 'tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 15, 15),
('2023-07-21 14:31:41.457320', '2023-07-21 14:31:41.000000', 'en', 'Instamatic Camera', 'instamatic-camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 16, 16),
('2023-07-21 14:31:41.666056', '2023-07-21 14:31:41.000000', 'en', 'Compact Digital Camera', 'compact-digital-camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 17, 17),
('2023-07-21 14:31:41.742176', '2023-07-21 14:31:41.000000', 'en', 'Nikkormat SLR Camera', 'nikkormat-slr-camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 18, 18),
('2023-07-21 14:31:41.838019', '2023-07-21 14:31:41.000000', 'en', 'Compact SLR Camera', 'compact-slr-camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 19, 19),
('2023-07-21 14:31:41.945134', '2023-07-21 14:31:41.000000', 'en', 'Twin Lens Camera', 'twin-lens-camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen. ', 20, 20),
('2023-07-21 14:31:42.066171', '2023-07-21 14:31:42.000000', 'en', 'Road Bike', 'road-bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 21, 21),
('2023-07-21 14:31:42.272999', '2023-07-21 14:31:42.000000', 'en', 'Skipping Rope', 'skipping-rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 22, 22),
('2023-07-21 14:31:42.380499', '2023-07-21 14:31:42.000000', 'en', 'Boxing Gloves', 'boxing-gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 23, 23),
('2023-07-21 14:31:42.478433', '2023-07-21 14:31:42.000000', 'en', 'Tent', 'tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 24, 24),
('2023-07-21 14:31:42.686081', '2023-07-21 14:31:42.000000', 'en', 'Cruiser Skateboard', 'cruiser-skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 25, 25),
('2023-07-21 14:31:42.849009', '2023-07-21 14:31:42.000000', 'en', 'Football', 'football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 26, 26),
('2023-07-21 14:31:42.995192', '2023-07-21 14:31:43.000000', 'en', 'Tennis Ball', 'tennis-ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 27, 27),
('2023-07-21 14:31:43.073594', '2023-07-21 14:31:43.000000', 'en', 'Basketball', 'basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 28, 28),
('2023-07-21 14:31:43.298520', '2023-07-21 14:31:43.000000', 'en', 'Ultraboost Running Shoe', 'ultraboost-running-shoe', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 29, 29),
('2023-07-21 14:31:43.635278', '2023-07-21 14:31:43.000000', 'en', 'Freerun Running Shoe', 'freerun-running-shoe', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 30, 30),
('2023-07-21 14:31:43.938531', '2023-07-21 14:31:43.000000', 'en', 'Hi-Top Basketball Shoe', 'hi-top-basketball-shoe', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 31, 31),
('2023-07-21 14:31:44.251187', '2023-07-21 14:31:44.000000', 'en', 'Pureboost Running Shoe', 'pureboost-running-shoe', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 32, 32),
('2023-07-21 14:31:44.505191', '2023-07-21 14:31:44.000000', 'en', 'RunX Running Shoe', 'runx-running-shoe', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 33, 33),
('2023-07-21 14:31:44.834952', '2023-07-21 14:31:44.000000', 'en', 'Allstar Sneakers', 'allstar-sneakers', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 34, 34),
('2023-07-21 14:31:45.278300', '2023-07-21 14:31:45.000000', 'en', 'Spiky Cactus', 'spiky-cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 35, 35),
('2023-07-21 14:31:45.476472', '2023-07-21 14:31:45.000000', 'en', 'Tulip Pot', 'tulip-pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 36, 36),
('2023-07-21 14:31:45.571583', '2023-07-21 14:31:45.000000', 'en', 'Hanging Plant', 'hanging-plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 37, 37),
('2023-07-21 14:31:45.657060', '2023-07-21 14:31:45.000000', 'en', 'Aloe Vera', 'aloe-vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 38, 38),
('2023-07-21 14:31:45.761482', '2023-07-21 14:31:45.000000', 'en', 'Fern Blechnum Gibbum', 'fern-blechnum-gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 39, 39),
('2023-07-21 14:31:45.854629', '2023-07-21 14:31:45.000000', 'en', 'Assorted Indoor Succulents', 'assorted-succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 40, 40),
('2023-07-21 14:31:45.949262', '2023-07-21 14:31:45.000000', 'en', 'Orchid', 'orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 41, 41),
('2023-07-21 14:31:46.032728', '2023-07-21 14:31:46.000000', 'en', 'Bonsai Tree', 'bonsai-tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 42, 42),
('2023-07-21 14:31:46.237185', '2023-07-21 14:31:46.000000', 'en', 'Guardian Lion Statue', 'guardian-lion-statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 43, 43),
('2023-07-21 14:31:46.468252', '2023-07-21 14:31:46.000000', 'en', 'Hand Trowel', 'hand-trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 44, 44),
('2023-07-21 14:31:46.542177', '2023-07-21 14:31:46.000000', 'en', 'Balloon Chair', 'balloon-chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 45, 45),
('2023-07-21 14:31:47.318012', '2023-07-21 14:31:47.000000', 'en', 'Grey Fabric Sofa', 'grey-fabric-sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 46, 46),
('2023-07-21 14:31:47.542968', '2023-07-21 14:31:47.000000', 'en', 'Leather Sofa', 'leather-sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 47, 47),
('2023-07-21 14:31:47.670691', '2023-07-21 14:31:47.000000', 'en', 'Light Shade', 'light-shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 48, 48),
('2023-07-21 14:31:47.850582', '2023-07-21 14:31:47.000000', 'en', 'Wooden Side Desk', 'wooden-side-desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 49, 49),
('2023-07-21 14:31:48.016906', '2023-07-21 14:31:48.000000', 'en', 'Comfy Padded Chair', 'comfy-padded-chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 50, 50),
('2023-07-21 14:31:48.135214', '2023-07-21 14:31:48.000000', 'en', 'Black Eaves Chair', 'black-eaves-chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 51, 51),
('2023-07-21 14:31:48.310204', '2023-07-21 14:31:48.000000', 'en', 'Wooden Stool', 'wooden-stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 52, 52),
('2023-07-21 14:31:48.507386', '2023-07-21 14:31:48.000000', 'en', 'Bedside Table', 'bedside-table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 53, 53),
('2023-07-21 14:31:48.651347', '2023-07-21 14:31:48.000000', 'en', 'Modern Cafe Chair', 'modern-cafe-chair', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

CREATE TABLE `product_variant` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `sku` varchar(255) NOT NULL,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `useGlobalOutOfStockThreshold` tinyint(4) NOT NULL DEFAULT 1,
  `trackInventory` varchar(255) NOT NULL DEFAULT 'INHERIT',
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant`
--

INSERT INTO `product_variant` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `sku`, `outOfStockThreshold`, `useGlobalOutOfStockThreshold`, `trackInventory`, `id`, `productId`, `featuredAssetId`, `taxCategoryId`) VALUES
('2023-07-21 14:31:38.250263', '2023-07-21 14:31:38.250263', NULL, 1, 'L2201308', 0, 1, 'INHERIT', 1, 1, NULL, 1),
('2023-07-21 14:31:38.285437', '2023-07-21 14:31:38.285437', NULL, 1, 'L2201508', 0, 1, 'INHERIT', 2, 1, NULL, 1),
('2023-07-21 14:31:38.345153', '2023-07-21 14:31:38.345153', NULL, 1, 'L2201316', 0, 1, 'INHERIT', 3, 1, NULL, 1),
('2023-07-21 14:31:38.376708', '2023-07-21 14:31:38.376708', NULL, 1, 'L2201516', 0, 1, 'INHERIT', 4, 1, NULL, 1),
('2023-07-21 14:31:38.578608', '2023-07-21 14:31:38.578608', NULL, 1, 'TBL200032', 0, 1, 'INHERIT', 5, 2, NULL, 1),
('2023-07-21 14:31:38.609547', '2023-07-21 14:31:38.609547', NULL, 1, 'TBL200128', 0, 1, 'INHERIT', 6, 2, NULL, 1),
('2023-07-21 14:31:38.758532', '2023-07-21 14:31:38.758532', NULL, 1, '834444', 0, 1, 'INHERIT', 7, 3, NULL, 1),
('2023-07-21 14:31:38.891696', '2023-07-21 14:31:38.891696', NULL, 1, 'LU32J590UQUXEN', 0, 1, 'INHERIT', 8, 4, NULL, 1),
('2023-07-21 14:31:39.051109', '2023-07-21 14:31:39.051109', NULL, 1, 'C24F390', 0, 1, 'INHERIT', 9, 5, NULL, 1),
('2023-07-21 14:31:39.076766', '2023-07-21 14:31:39.076766', NULL, 1, 'C27F390', 0, 1, 'INHERIT', 10, 5, NULL, 1),
('2023-07-21 14:31:39.229666', '2023-07-21 14:31:39.229666', NULL, 1, 'CMK32GX4M2AC04', 0, 1, 'INHERIT', 11, 6, NULL, 1),
('2023-07-21 14:31:39.252400', '2023-07-21 14:31:39.252400', NULL, 1, 'CMK32GX4M2AC08', 0, 1, 'INHERIT', 12, 6, NULL, 1),
('2023-07-21 14:31:39.275188', '2023-07-21 14:31:39.275188', NULL, 1, 'CMK32GX4M2AC16', 0, 1, 'INHERIT', 13, 6, NULL, 1),
('2023-07-21 14:31:39.596785', '2023-07-21 14:31:39.596785', NULL, 1, 'CGS480VR1063', 0, 1, 'INHERIT', 14, 7, NULL, 1),
('2023-07-21 14:31:39.623187', '2023-07-21 14:31:39.623187', NULL, 1, 'CGS480VR1064', 0, 1, 'INHERIT', 15, 7, NULL, 1),
('2023-07-21 14:31:39.648360', '2023-07-21 14:31:39.648360', NULL, 1, 'CGS480VR1065', 0, 1, 'INHERIT', 16, 7, NULL, 1),
('2023-07-21 14:31:39.673221', '2023-07-21 14:31:39.673221', NULL, 1, 'CGS480VR1066', 0, 1, 'INHERIT', 17, 7, NULL, 1),
('2023-07-21 14:31:39.927832', '2023-07-21 14:31:39.927832', NULL, 1, 'IHD455T1', 0, 1, 'INHERIT', 18, 8, NULL, 1),
('2023-07-21 14:31:39.959035', '2023-07-21 14:31:39.959035', NULL, 1, 'IHD455T2', 0, 1, 'INHERIT', 19, 8, NULL, 1),
('2023-07-21 14:31:39.987629', '2023-07-21 14:31:39.987629', NULL, 1, 'IHD455T3', 0, 1, 'INHERIT', 20, 8, NULL, 1),
('2023-07-21 14:31:40.090607', '2023-07-21 14:31:40.090607', NULL, 1, 'IHD455T4', 0, 1, 'INHERIT', 21, 8, NULL, 1),
('2023-07-21 14:31:40.121721', '2023-07-21 14:31:40.121721', NULL, 1, 'IHD455T6', 0, 1, 'INHERIT', 22, 8, NULL, 1),
('2023-07-21 14:31:40.227339', '2023-07-21 14:31:40.227339', NULL, 1, 'A4TKLA45535', 0, 1, 'INHERIT', 23, 9, NULL, 1),
('2023-07-21 14:31:40.331576', '2023-07-21 14:31:40.331576', NULL, 1, 'A23334x30', 0, 1, 'INHERIT', 24, 10, NULL, 1),
('2023-07-21 14:31:40.517033', '2023-07-21 14:31:40.517033', NULL, 1, 'USBCIN01.5MI', 0, 1, 'INHERIT', 25, 11, NULL, 1),
('2023-07-21 14:31:40.760719', '2023-07-21 14:31:40.760719', NULL, 1, 'IC22MWDD', 0, 1, 'INHERIT', 26, 12, NULL, 1),
('2023-07-21 14:31:40.951514', '2023-07-21 14:31:40.951514', NULL, 1, 'B0012UUP02', 0, 1, 'INHERIT', 27, 13, NULL, 1),
('2023-07-21 14:31:41.052510', '2023-07-21 14:31:41.052510', NULL, 1, 'B00AFC9099', 0, 1, 'INHERIT', 28, 14, NULL, 1),
('2023-07-21 14:31:41.277595', '2023-07-21 14:31:41.277595', NULL, 1, 'B00XI87KV8', 0, 1, 'INHERIT', 29, 15, NULL, 1),
('2023-07-21 14:31:41.489074', '2023-07-21 14:31:41.489074', NULL, 1, 'B07K1330LL', 0, 1, 'INHERIT', 30, 16, NULL, 1),
('2023-07-21 14:31:41.683201', '2023-07-21 14:31:41.683201', NULL, 1, 'B07D990021', 0, 1, 'INHERIT', 31, 17, NULL, 1),
('2023-07-21 14:31:41.760642', '2023-07-21 14:31:41.760642', NULL, 1, 'B07D33B334', 0, 1, 'INHERIT', 32, 18, NULL, 1),
('2023-07-21 14:31:41.859585', '2023-07-21 14:31:41.859585', NULL, 1, 'B07D75V44S', 0, 1, 'INHERIT', 33, 19, NULL, 1),
('2023-07-21 14:31:41.961989', '2023-07-21 14:31:41.961989', NULL, 1, 'B07D78JTLR', 0, 1, 'INHERIT', 34, 20, NULL, 1),
('2023-07-21 14:31:42.082011', '2023-07-21 14:31:42.082011', NULL, 1, 'RB000844334', 0, 1, 'INHERIT', 35, 21, NULL, 1),
('2023-07-21 14:31:42.297269', '2023-07-21 14:31:42.297269', NULL, 1, 'B07CNGXVXT', 0, 1, 'INHERIT', 36, 22, NULL, 1),
('2023-07-21 14:31:42.396477', '2023-07-21 14:31:42.396477', NULL, 1, 'B000ZYLPPU', 0, 1, 'INHERIT', 37, 23, NULL, 1),
('2023-07-21 14:31:42.493064', '2023-07-21 14:31:42.493064', NULL, 1, '2000023510', 0, 1, 'INHERIT', 38, 24, NULL, 1),
('2023-07-21 14:31:42.715007', '2023-07-21 14:31:42.715007', NULL, 1, '799872520', 0, 1, 'INHERIT', 39, 25, NULL, 1),
('2023-07-21 14:31:42.875483', '2023-07-21 14:31:42.875483', NULL, 1, 'SC3137-056', 0, 1, 'INHERIT', 40, 26, NULL, 1),
('2023-07-21 14:31:43.011069', '2023-07-21 14:31:43.011069', NULL, 1, 'WRT11752P', 0, 1, 'INHERIT', 41, 27, NULL, 1),
('2023-07-21 14:31:43.088947', '2023-07-21 14:31:43.088947', NULL, 1, 'WTB1418XB06', 0, 1, 'INHERIT', 42, 28, NULL, 1),
('2023-07-21 14:31:43.366772', '2023-07-21 14:31:43.366772', NULL, 1, 'RS0040', 0, 1, 'INHERIT', 43, 29, NULL, 1),
('2023-07-21 14:31:43.392268', '2023-07-21 14:31:43.392268', NULL, 1, 'RS0042', 0, 1, 'INHERIT', 44, 29, NULL, 1),
('2023-07-21 14:31:43.417726', '2023-07-21 14:31:43.417726', NULL, 1, 'RS0044', 0, 1, 'INHERIT', 45, 29, NULL, 1),
('2023-07-21 14:31:43.442633', '2023-07-21 14:31:43.442633', NULL, 1, 'RS0046', 0, 1, 'INHERIT', 46, 29, NULL, 1),
('2023-07-21 14:31:43.717589', '2023-07-21 14:31:43.717589', NULL, 1, 'AR4561-40', 0, 1, 'INHERIT', 47, 30, NULL, 1),
('2023-07-21 14:31:43.758309', '2023-07-21 14:31:43.758309', NULL, 1, 'AR4561-42', 0, 1, 'INHERIT', 48, 30, NULL, 1),
('2023-07-21 14:31:43.784946', '2023-07-21 14:31:43.784946', NULL, 1, 'AR4561-44', 0, 1, 'INHERIT', 49, 30, NULL, 1),
('2023-07-21 14:31:43.813477', '2023-07-21 14:31:43.813477', NULL, 1, 'AR4561-46', 0, 1, 'INHERIT', 50, 30, NULL, 1),
('2023-07-21 14:31:44.019035', '2023-07-21 14:31:44.019035', NULL, 1, 'AO7893-40', 0, 1, 'INHERIT', 51, 31, NULL, 1),
('2023-07-21 14:31:44.052941', '2023-07-21 14:31:44.052941', NULL, 1, 'AO7893-42', 0, 1, 'INHERIT', 52, 31, NULL, 1),
('2023-07-21 14:31:44.075911', '2023-07-21 14:31:44.075911', NULL, 1, 'AO7893-44', 0, 1, 'INHERIT', 53, 31, NULL, 1),
('2023-07-21 14:31:44.101527', '2023-07-21 14:31:44.101527', NULL, 1, 'AO7893-46', 0, 1, 'INHERIT', 54, 31, NULL, 1),
('2023-07-21 14:31:44.344772', '2023-07-21 14:31:44.344772', NULL, 1, 'F3578640', 0, 1, 'INHERIT', 55, 32, NULL, 1),
('2023-07-21 14:31:44.387371', '2023-07-21 14:31:44.387371', NULL, 1, 'F3578642', 0, 1, 'INHERIT', 56, 32, NULL, 1),
('2023-07-21 14:31:44.416643', '2023-07-21 14:31:44.416643', NULL, 1, 'F3578644', 0, 1, 'INHERIT', 57, 32, NULL, 1),
('2023-07-21 14:31:44.440720', '2023-07-21 14:31:44.440720', NULL, 1, 'F3578646', 0, 1, 'INHERIT', 58, 32, NULL, 1),
('2023-07-21 14:31:44.569558', '2023-07-21 14:31:44.569558', NULL, 1, 'F3633340', 0, 1, 'INHERIT', 59, 33, NULL, 1),
('2023-07-21 14:31:44.597944', '2023-07-21 14:31:44.597944', NULL, 1, 'F3633342', 0, 1, 'INHERIT', 60, 33, NULL, 1),
('2023-07-21 14:31:44.624366', '2023-07-21 14:31:44.624366', NULL, 1, 'F3633344', 0, 1, 'INHERIT', 61, 33, NULL, 1),
('2023-07-21 14:31:44.650061', '2023-07-21 14:31:44.650061', NULL, 1, 'F3633346', 0, 1, 'INHERIT', 62, 33, NULL, 1),
('2023-07-21 14:31:44.894691', '2023-07-21 14:31:44.894691', NULL, 1, 'CAS23340', 0, 1, 'INHERIT', 63, 34, NULL, 1),
('2023-07-21 14:31:44.925885', '2023-07-21 14:31:44.925885', NULL, 1, 'CAS23342', 0, 1, 'INHERIT', 64, 34, NULL, 1),
('2023-07-21 14:31:44.950679', '2023-07-21 14:31:44.950679', NULL, 1, 'CAS23344', 0, 1, 'INHERIT', 65, 34, NULL, 1),
('2023-07-21 14:31:44.973969', '2023-07-21 14:31:44.973969', NULL, 1, 'CAS23346', 0, 1, 'INHERIT', 66, 34, NULL, 1),
('2023-07-21 14:31:45.376366', '2023-07-21 14:31:45.376366', NULL, 1, 'SC011001', 0, 1, 'INHERIT', 67, 35, NULL, 1),
('2023-07-21 14:31:45.493481', '2023-07-21 14:31:45.493481', NULL, 1, 'A58477', 0, 1, 'INHERIT', 68, 36, NULL, 1),
('2023-07-21 14:31:45.587033', '2023-07-21 14:31:45.587033', NULL, 1, 'A44223', 0, 1, 'INHERIT', 69, 37, NULL, 1),
('2023-07-21 14:31:45.672702', '2023-07-21 14:31:45.672702', NULL, 1, 'A44352', 0, 1, 'INHERIT', 70, 38, NULL, 1),
('2023-07-21 14:31:45.775776', '2023-07-21 14:31:45.775776', NULL, 1, 'A04851', 0, 1, 'INHERIT', 71, 39, NULL, 1),
('2023-07-21 14:31:45.872604', '2023-07-21 14:31:45.872604', NULL, 1, 'A08593', 0, 1, 'INHERIT', 72, 40, NULL, 1),
('2023-07-21 14:31:45.965689', '2023-07-21 14:31:45.965689', NULL, 1, 'ROR00221', 0, 1, 'INHERIT', 73, 41, NULL, 1),
('2023-07-21 14:31:46.052231', '2023-07-21 14:31:46.052231', NULL, 1, 'B01MXFLUSV', 0, 1, 'INHERIT', 74, 42, NULL, 1),
('2023-07-21 14:31:46.269412', '2023-07-21 14:31:46.269412', NULL, 1, 'GL34LLW11', 0, 1, 'INHERIT', 75, 43, NULL, 1),
('2023-07-21 14:31:46.484570', '2023-07-21 14:31:46.484570', NULL, 1, '4058NB/09', 0, 1, 'INHERIT', 76, 44, NULL, 1),
('2023-07-21 14:31:46.557710', '2023-07-21 14:31:46.557710', NULL, 1, '34-BC82444', 0, 1, 'INHERIT', 77, 45, NULL, 1),
('2023-07-21 14:31:47.337281', '2023-07-21 14:31:47.337281', NULL, 1, 'CH00001-12', 0, 1, 'INHERIT', 78, 46, NULL, 1),
('2023-07-21 14:31:47.569252', '2023-07-21 14:31:47.569252', NULL, 1, 'CH00001-02', 0, 1, 'INHERIT', 79, 47, NULL, 1),
('2023-07-21 14:31:47.685057', '2023-07-21 14:31:47.685057', NULL, 1, 'B45809LSW', 0, 1, 'INHERIT', 80, 48, NULL, 1),
('2023-07-21 14:31:47.867585', '2023-07-21 14:31:47.867585', NULL, 1, '304.096.29', 0, 1, 'INHERIT', 81, 49, NULL, 1),
('2023-07-21 14:31:48.050637', '2023-07-21 14:31:48.050637', NULL, 1, '404.068.14', 0, 1, 'INHERIT', 82, 50, NULL, 1),
('2023-07-21 14:31:48.151888', '2023-07-21 14:31:48.151888', NULL, 1, '003.600.02', 0, 1, 'INHERIT', 83, 51, NULL, 1),
('2023-07-21 14:31:48.346075', '2023-07-21 14:31:48.346075', NULL, 1, '202.493.30', 0, 1, 'INHERIT', 84, 52, NULL, 1),
('2023-07-21 14:31:48.523862', '2023-07-21 14:31:48.523862', NULL, 1, '404.290.14', 0, 1, 'INHERIT', 85, 53, NULL, 1),
('2023-07-21 14:31:48.717573', '2023-07-21 14:31:48.717573', NULL, 1, '404.038.96', 0, 1, 'INHERIT', 86, 54, NULL, 1),
('2023-07-21 14:31:48.769691', '2023-07-21 14:31:48.769691', NULL, 1, '404.038.96', 0, 1, 'INHERIT', 87, 54, NULL, 1),
('2023-07-21 14:31:48.796799', '2023-07-21 14:31:48.796799', NULL, 1, '404.038.96', 0, 1, 'INHERIT', 88, 54, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_asset`
--

CREATE TABLE `product_variant_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_channels_channel`
--

CREATE TABLE `product_variant_channels_channel` (
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_channels_channel`
--

INSERT INTO `product_variant_channels_channel` (`productVariantId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_facet_values_facet_value`
--

CREATE TABLE `product_variant_facet_values_facet_value` (
  `productVariantId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_facet_values_facet_value`
--

INSERT INTO `product_variant_facet_values_facet_value` (`productVariantId`, `facetValueId`) VALUES
(86, 38),
(87, 39),
(88, 28);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_options_product_option`
--

CREATE TABLE `product_variant_options_product_option` (
  `productVariantId` int(11) NOT NULL,
  `productOptionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_options_product_option`
--

INSERT INTO `product_variant_options_product_option` (`productVariantId`, `productOptionId`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 2),
(4, 4),
(5, 5),
(6, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(14, 14),
(15, 13),
(15, 14),
(16, 12),
(16, 15),
(17, 13),
(17, 15),
(18, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(43, 21),
(44, 22),
(45, 23),
(46, 24),
(47, 25),
(48, 26),
(49, 27),
(50, 28),
(51, 29),
(52, 30),
(53, 31),
(54, 32),
(55, 33),
(56, 34),
(57, 35),
(58, 36),
(59, 37),
(60, 38),
(61, 39),
(62, 40),
(63, 41),
(64, 42),
(65, 43),
(66, 44),
(86, 45),
(87, 46),
(88, 47);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_price`
--

CREATE TABLE `product_variant_price` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `currencyCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `channelId` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `variantId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_price`
--

INSERT INTO `product_variant_price` (`createdAt`, `updatedAt`, `currencyCode`, `id`, `channelId`, `price`, `variantId`) VALUES
('2023-07-21 14:31:38.277614', '2023-07-21 14:31:38.277614', 'USD', 1, 1, 129900, 1),
('2023-07-21 14:31:38.337042', '2023-07-21 14:31:38.337042', 'USD', 2, 1, 139900, 2),
('2023-07-21 14:31:38.369763', '2023-07-21 14:31:38.369763', 'USD', 3, 1, 219900, 3),
('2023-07-21 14:31:38.395715', '2023-07-21 14:31:38.395715', 'USD', 4, 1, 229900, 4),
('2023-07-21 14:31:38.602107', '2023-07-21 14:31:38.602107', 'USD', 5, 1, 32900, 5),
('2023-07-21 14:31:38.672696', '2023-07-21 14:31:38.672696', 'USD', 6, 1, 44500, 6),
('2023-07-21 14:31:38.806403', '2023-07-21 14:31:38.806403', 'USD', 7, 1, 1899, 7),
('2023-07-21 14:31:38.911119', '2023-07-21 14:31:38.911119', 'USD', 8, 1, 31000, 8),
('2023-07-21 14:31:39.070041', '2023-07-21 14:31:39.070041', 'USD', 9, 1, 14374, 9),
('2023-07-21 14:31:39.097187', '2023-07-21 14:31:39.097187', 'USD', 10, 1, 16994, 10),
('2023-07-21 14:31:39.246296', '2023-07-21 14:31:39.246296', 'USD', 11, 1, 13785, 11),
('2023-07-21 14:31:39.269383', '2023-07-21 14:31:39.269383', 'USD', 12, 1, 14639, 12),
('2023-07-21 14:31:39.299771', '2023-07-21 14:31:39.299771', 'USD', 13, 1, 28181, 13),
('2023-07-21 14:31:39.616693', '2023-07-21 14:31:39.616693', 'USD', 14, 1, 108720, 14),
('2023-07-21 14:31:39.641797', '2023-07-21 14:31:39.641797', 'USD', 15, 1, 109995, 15),
('2023-07-21 14:31:39.665393', '2023-07-21 14:31:39.665393', 'USD', 16, 1, 93120, 16),
('2023-07-21 14:31:39.691496', '2023-07-21 14:31:39.691496', 'USD', 17, 1, 94920, 17),
('2023-07-21 14:31:39.948788', '2023-07-21 14:31:39.948788', 'USD', 18, 1, 3799, 18),
('2023-07-21 14:31:39.980573', '2023-07-21 14:31:39.980573', 'USD', 19, 1, 5374, 19),
('2023-07-21 14:31:40.079228', '2023-07-21 14:31:40.079228', 'USD', 20, 1, 7896, 20),
('2023-07-21 14:31:40.114690', '2023-07-21 14:31:40.114690', 'USD', 21, 1, 9299, 21),
('2023-07-21 14:31:40.145542', '2023-07-21 14:31:40.145542', 'USD', 22, 1, 13435, 22),
('2023-07-21 14:31:40.251405', '2023-07-21 14:31:40.251405', 'USD', 23, 1, 7489, 23),
('2023-07-21 14:31:40.368467', '2023-07-21 14:31:40.368467', 'USD', 24, 1, 597, 24),
('2023-07-21 14:31:40.544632', '2023-07-21 14:31:40.544632', 'USD', 25, 1, 6900, 25),
('2023-07-21 14:31:40.778876', '2023-07-21 14:31:40.778876', 'USD', 26, 1, 17499, 26),
('2023-07-21 14:31:40.977097', '2023-07-21 14:31:40.977097', 'USD', 27, 1, 10400, 27),
('2023-07-21 14:31:41.080001', '2023-07-21 14:31:41.080001', 'USD', 28, 1, 535000, 28),
('2023-07-21 14:31:41.331642', '2023-07-21 14:31:41.331642', 'USD', 29, 1, 1498, 29),
('2023-07-21 14:31:41.520990', '2023-07-21 14:31:41.520990', 'USD', 30, 1, 2000, 30),
('2023-07-21 14:31:41.701649', '2023-07-21 14:31:41.701649', 'USD', 31, 1, 89999, 31),
('2023-07-21 14:31:41.779008', '2023-07-21 14:31:41.779008', 'USD', 32, 1, 61500, 32),
('2023-07-21 14:31:41.877763', '2023-07-21 14:31:41.877763', 'USD', 33, 1, 52100, 33),
('2023-07-21 14:31:41.983706', '2023-07-21 14:31:41.983706', 'USD', 34, 1, 79900, 34),
('2023-07-21 14:31:42.100953', '2023-07-21 14:31:42.100953', 'USD', 35, 1, 249900, 35),
('2023-07-21 14:31:42.320666', '2023-07-21 14:31:42.320666', 'USD', 36, 1, 799, 36),
('2023-07-21 14:31:42.430537', '2023-07-21 14:31:42.430537', 'USD', 37, 1, 3304, 37),
('2023-07-21 14:31:42.510974', '2023-07-21 14:31:42.510974', 'USD', 38, 1, 21493, 38),
('2023-07-21 14:31:42.753878', '2023-07-21 14:31:42.753878', 'USD', 39, 1, 2499, 39),
('2023-07-21 14:31:42.908527', '2023-07-21 14:31:42.908527', 'USD', 40, 1, 5707, 40),
('2023-07-21 14:31:43.028232', '2023-07-21 14:31:43.028232', 'USD', 41, 1, 1273, 41),
('2023-07-21 14:31:43.106109', '2023-07-21 14:31:43.106109', 'USD', 42, 1, 3562, 42),
('2023-07-21 14:31:43.385281', '2023-07-21 14:31:43.385281', 'USD', 43, 1, 9999, 43),
('2023-07-21 14:31:43.409580', '2023-07-21 14:31:43.409580', 'USD', 44, 1, 9999, 44),
('2023-07-21 14:31:43.436032', '2023-07-21 14:31:43.436032', 'USD', 45, 1, 9999, 45),
('2023-07-21 14:31:43.460184', '2023-07-21 14:31:43.460184', 'USD', 46, 1, 9999, 46),
('2023-07-21 14:31:43.752034', '2023-07-21 14:31:43.752034', 'USD', 47, 1, 16000, 47),
('2023-07-21 14:31:43.777979', '2023-07-21 14:31:43.777979', 'USD', 48, 1, 16000, 48),
('2023-07-21 14:31:43.805266', '2023-07-21 14:31:43.805266', 'USD', 49, 1, 16000, 49),
('2023-07-21 14:31:43.841514', '2023-07-21 14:31:43.841514', 'USD', 50, 1, 16000, 50),
('2023-07-21 14:31:44.045787', '2023-07-21 14:31:44.045787', 'USD', 51, 1, 14000, 51),
('2023-07-21 14:31:44.069945', '2023-07-21 14:31:44.069945', 'USD', 52, 1, 14000, 52),
('2023-07-21 14:31:44.094961', '2023-07-21 14:31:44.094961', 'USD', 53, 1, 14000, 53),
('2023-07-21 14:31:44.120871', '2023-07-21 14:31:44.120871', 'USD', 54, 1, 14000, 54),
('2023-07-21 14:31:44.363306', '2023-07-21 14:31:44.363306', 'USD', 55, 1, 9995, 55),
('2023-07-21 14:31:44.410097', '2023-07-21 14:31:44.410097', 'USD', 56, 1, 9995, 56),
('2023-07-21 14:31:44.434024', '2023-07-21 14:31:44.434024', 'USD', 57, 1, 9995, 57),
('2023-07-21 14:31:44.459444', '2023-07-21 14:31:44.459444', 'USD', 58, 1, 9995, 58),
('2023-07-21 14:31:44.591242', '2023-07-21 14:31:44.591242', 'USD', 59, 1, 4495, 59),
('2023-07-21 14:31:44.617216', '2023-07-21 14:31:44.617216', 'USD', 60, 1, 4495, 60),
('2023-07-21 14:31:44.641782', '2023-07-21 14:31:44.641782', 'USD', 61, 1, 4495, 61),
('2023-07-21 14:31:44.667555', '2023-07-21 14:31:44.667555', 'USD', 62, 1, 4495, 62),
('2023-07-21 14:31:44.919821', '2023-07-21 14:31:44.919821', 'USD', 63, 1, 6500, 63),
('2023-07-21 14:31:44.944543', '2023-07-21 14:31:44.944543', 'USD', 64, 1, 6500, 64),
('2023-07-21 14:31:44.966835', '2023-07-21 14:31:44.966835', 'USD', 65, 1, 6500, 65),
('2023-07-21 14:31:44.991204', '2023-07-21 14:31:44.991204', 'USD', 66, 1, 6500, 66),
('2023-07-21 14:31:45.405063', '2023-07-21 14:31:45.405063', 'USD', 67, 1, 1550, 67),
('2023-07-21 14:31:45.516699', '2023-07-21 14:31:45.516699', 'USD', 68, 1, 675, 68),
('2023-07-21 14:31:45.604780', '2023-07-21 14:31:45.604780', 'USD', 69, 1, 1995, 69),
('2023-07-21 14:31:45.690059', '2023-07-21 14:31:45.690059', 'USD', 70, 1, 699, 70),
('2023-07-21 14:31:45.797603', '2023-07-21 14:31:45.797603', 'USD', 71, 1, 895, 71),
('2023-07-21 14:31:45.893546', '2023-07-21 14:31:45.893546', 'USD', 72, 1, 3250, 72),
('2023-07-21 14:31:45.981735', '2023-07-21 14:31:45.981735', 'USD', 73, 1, 6500, 73),
('2023-07-21 14:31:46.068447', '2023-07-21 14:31:46.068447', 'USD', 74, 1, 1999, 74),
('2023-07-21 14:31:46.308674', '2023-07-21 14:31:46.308674', 'USD', 75, 1, 18853, 75),
('2023-07-21 14:31:46.503642', '2023-07-21 14:31:46.503642', 'USD', 76, 1, 499, 76),
('2023-07-21 14:31:46.577164', '2023-07-21 14:31:46.577164', 'USD', 77, 1, 6500, 77),
('2023-07-21 14:31:47.353274', '2023-07-21 14:31:47.353274', 'USD', 78, 1, 29500, 78),
('2023-07-21 14:31:47.588970', '2023-07-21 14:31:47.588970', 'USD', 79, 1, 124500, 79),
('2023-07-21 14:31:47.701709', '2023-07-21 14:31:47.701709', 'USD', 80, 1, 2845, 80),
('2023-07-21 14:31:47.882121', '2023-07-21 14:31:47.882121', 'USD', 81, 1, 12500, 81),
('2023-07-21 14:31:48.072052', '2023-07-21 14:31:48.072052', 'USD', 82, 1, 13000, 82),
('2023-07-21 14:31:48.171313', '2023-07-21 14:31:48.171313', 'USD', 83, 1, 7000, 83),
('2023-07-21 14:31:48.387543', '2023-07-21 14:31:48.387543', 'USD', 84, 1, 1400, 84),
('2023-07-21 14:31:48.540353', '2023-07-21 14:31:48.540353', 'USD', 85, 1, 13000, 85),
('2023-07-21 14:31:48.742315', '2023-07-21 14:31:48.742315', 'USD', 86, 1, 10000, 86),
('2023-07-21 14:31:48.790367', '2023-07-21 14:31:48.790367', 'USD', 87, 1, 10000, 87),
('2023-07-21 14:31:48.816128', '2023-07-21 14:31:48.816128', 'USD', 88, 1, 10000, 88);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_translation`
--

CREATE TABLE `product_variant_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_translation`
--

INSERT INTO `product_variant_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2023-07-21 14:31:38.245416', '2023-07-21 14:31:38.000000', 'en', 'Laptop 13 inch 8GB', 1, 1),
('2023-07-21 14:31:38.281195', '2023-07-21 14:31:38.000000', 'en', 'Laptop 15 inch 8GB', 2, 2),
('2023-07-21 14:31:38.341503', '2023-07-21 14:31:38.000000', 'en', 'Laptop 13 inch 16GB', 3, 3),
('2023-07-21 14:31:38.372813', '2023-07-21 14:31:38.000000', 'en', 'Laptop 15 inch 16GB', 4, 4),
('2023-07-21 14:31:38.571559', '2023-07-21 14:31:38.000000', 'en', 'Tablet 32GB', 5, 5),
('2023-07-21 14:31:38.605109', '2023-07-21 14:31:38.000000', 'en', 'Tablet 128GB', 6, 6),
('2023-07-21 14:31:38.746841', '2023-07-21 14:31:38.000000', 'en', 'Wireless Optical Mouse', 7, 7),
('2023-07-21 14:31:38.887231', '2023-07-21 14:31:38.000000', 'en', '32-Inch Monitor', 8, 8),
('2023-07-21 14:31:39.047474', '2023-07-21 14:31:39.000000', 'en', 'Curvy Monitor 24 inch', 9, 9),
('2023-07-21 14:31:39.073076', '2023-07-21 14:31:39.000000', 'en', 'Curvy Monitor 27 inch', 10, 10),
('2023-07-21 14:31:39.225537', '2023-07-21 14:31:39.000000', 'en', 'High Performance RAM 4GB', 11, 11),
('2023-07-21 14:31:39.249021', '2023-07-21 14:31:39.000000', 'en', 'High Performance RAM 8GB', 12, 12),
('2023-07-21 14:31:39.271990', '2023-07-21 14:31:39.000000', 'en', 'High Performance RAM 16GB', 13, 13),
('2023-07-21 14:31:39.593224', '2023-07-21 14:31:39.000000', 'en', 'Gaming PC i7-8700 240GB SSD', 14, 14),
('2023-07-21 14:31:39.619425', '2023-07-21 14:31:39.000000', 'en', 'Gaming PC R7-2700 240GB SSD', 15, 15),
('2023-07-21 14:31:39.644789', '2023-07-21 14:31:39.000000', 'en', 'Gaming PC i7-8700 120GB SSD', 16, 16),
('2023-07-21 14:31:39.668896', '2023-07-21 14:31:39.000000', 'en', 'Gaming PC R7-2700 120GB SSD', 17, 17),
('2023-07-21 14:31:39.924110', '2023-07-21 14:31:39.000000', 'en', 'Hard Drive 1TB', 18, 18),
('2023-07-21 14:31:39.951529', '2023-07-21 14:31:39.000000', 'en', 'Hard Drive 2TB', 19, 19),
('2023-07-21 14:31:39.983653', '2023-07-21 14:31:39.000000', 'en', 'Hard Drive 3TB', 20, 20),
('2023-07-21 14:31:40.086973', '2023-07-21 14:31:40.000000', 'en', 'Hard Drive 4TB', 21, 21),
('2023-07-21 14:31:40.118109', '2023-07-21 14:31:40.000000', 'en', 'Hard Drive 6TB', 22, 22),
('2023-07-21 14:31:40.223288', '2023-07-21 14:31:40.000000', 'en', 'Clacky Keyboard', 23, 23),
('2023-07-21 14:31:40.327998', '2023-07-21 14:31:40.000000', 'en', 'Ethernet Cable', 24, 24),
('2023-07-21 14:31:40.511823', '2023-07-21 14:31:40.000000', 'en', 'USB Cable', 25, 25),
('2023-07-21 14:31:40.755921', '2023-07-21 14:31:40.000000', 'en', 'Instant Camera', 26, 26),
('2023-07-21 14:31:40.947893', '2023-07-21 14:31:40.000000', 'en', 'Camera Lens', 27, 27),
('2023-07-21 14:31:41.048117', '2023-07-21 14:31:41.000000', 'en', 'Vintage Folding Camera', 28, 28),
('2023-07-21 14:31:41.269293', '2023-07-21 14:31:41.000000', 'en', 'Tripod', 29, 29),
('2023-07-21 14:31:41.483614', '2023-07-21 14:31:41.000000', 'en', 'Instamatic Camera', 30, 30),
('2023-07-21 14:31:41.679469', '2023-07-21 14:31:41.000000', 'en', 'Compact Digital Camera', 31, 31),
('2023-07-21 14:31:41.756906', '2023-07-21 14:31:41.000000', 'en', 'Nikkormat SLR Camera', 32, 32),
('2023-07-21 14:31:41.854803', '2023-07-21 14:31:41.000000', 'en', 'Compact SLR Camera', 33, 33),
('2023-07-21 14:31:41.958507', '2023-07-21 14:31:41.000000', 'en', 'Twin Lens Camera', 34, 34),
('2023-07-21 14:31:42.078650', '2023-07-21 14:31:42.000000', 'en', 'Road Bike', 35, 35),
('2023-07-21 14:31:42.291272', '2023-07-21 14:31:42.000000', 'en', 'Skipping Rope', 36, 36),
('2023-07-21 14:31:42.393163', '2023-07-21 14:31:42.000000', 'en', 'Boxing Gloves', 37, 37),
('2023-07-21 14:31:42.489444', '2023-07-21 14:31:42.000000', 'en', 'Tent', 38, 38),
('2023-07-21 14:31:42.708420', '2023-07-21 14:31:42.000000', 'en', 'Cruiser Skateboard', 39, 39),
('2023-07-21 14:31:42.869681', '2023-07-21 14:31:42.000000', 'en', 'Football', 40, 40),
('2023-07-21 14:31:43.007148', '2023-07-21 14:31:43.000000', 'en', 'Tennis Ball', 41, 41),
('2023-07-21 14:31:43.085672', '2023-07-21 14:31:43.000000', 'en', 'Basketball', 42, 42),
('2023-07-21 14:31:43.362673', '2023-07-21 14:31:43.000000', 'en', 'Ultraboost Running Shoe Size 40', 43, 43),
('2023-07-21 14:31:43.388805', '2023-07-21 14:31:43.000000', 'en', 'Ultraboost Running Shoe Size 42', 44, 44),
('2023-07-21 14:31:43.412369', '2023-07-21 14:31:43.000000', 'en', 'Ultraboost Running Shoe Size 44', 45, 45),
('2023-07-21 14:31:43.438680', '2023-07-21 14:31:43.000000', 'en', 'Ultraboost Running Shoe Size 46', 46, 46),
('2023-07-21 14:31:43.712609', '2023-07-21 14:31:43.000000', 'en', 'Freerun Running Shoe Size 40', 47, 47),
('2023-07-21 14:31:43.754820', '2023-07-21 14:31:43.000000', 'en', 'Freerun Running Shoe Size 42', 48, 48),
('2023-07-21 14:31:43.781373', '2023-07-21 14:31:43.000000', 'en', 'Freerun Running Shoe Size 44', 49, 49),
('2023-07-21 14:31:43.809892', '2023-07-21 14:31:43.000000', 'en', 'Freerun Running Shoe Size 46', 50, 50),
('2023-07-21 14:31:44.014833', '2023-07-21 14:31:44.000000', 'en', 'Hi-Top Basketball Shoe Size 40', 51, 51),
('2023-07-21 14:31:44.048583', '2023-07-21 14:31:44.000000', 'en', 'Hi-Top Basketball Shoe Size 42', 52, 52),
('2023-07-21 14:31:44.072503', '2023-07-21 14:31:44.000000', 'en', 'Hi-Top Basketball Shoe Size 44', 53, 53),
('2023-07-21 14:31:44.097764', '2023-07-21 14:31:44.000000', 'en', 'Hi-Top Basketball Shoe Size 46', 54, 54),
('2023-07-21 14:31:44.341275', '2023-07-21 14:31:44.000000', 'en', 'Pureboost Running Shoe Size 40', 55, 55),
('2023-07-21 14:31:44.366390', '2023-07-21 14:31:44.000000', 'en', 'Pureboost Running Shoe Size 42', 56, 56),
('2023-07-21 14:31:44.413303', '2023-07-21 14:31:44.000000', 'en', 'Pureboost Running Shoe Size 44', 57, 57),
('2023-07-21 14:31:44.436923', '2023-07-21 14:31:44.000000', 'en', 'Pureboost Running Shoe Size 46', 58, 58),
('2023-07-21 14:31:44.565938', '2023-07-21 14:31:44.000000', 'en', 'RunX Running Shoe Size 40', 59, 59),
('2023-07-21 14:31:44.594340', '2023-07-21 14:31:44.000000', 'en', 'RunX Running Shoe Size 42', 60, 60),
('2023-07-21 14:31:44.620554', '2023-07-21 14:31:44.000000', 'en', 'RunX Running Shoe Size 44', 61, 61),
('2023-07-21 14:31:44.646297', '2023-07-21 14:31:44.000000', 'en', 'RunX Running Shoe Size 46', 62, 62),
('2023-07-21 14:31:44.891050', '2023-07-21 14:31:44.000000', 'en', 'Allstar Sneakers Size 40', 63, 63),
('2023-07-21 14:31:44.922365', '2023-07-21 14:31:44.000000', 'en', 'Allstar Sneakers Size 42', 64, 64),
('2023-07-21 14:31:44.947193', '2023-07-21 14:31:44.000000', 'en', 'Allstar Sneakers Size 44', 65, 65),
('2023-07-21 14:31:44.970119', '2023-07-21 14:31:44.000000', 'en', 'Allstar Sneakers Size 46', 66, 66),
('2023-07-21 14:31:45.360078', '2023-07-21 14:31:45.000000', 'en', 'Spiky Cactus', 67, 67),
('2023-07-21 14:31:45.489145', '2023-07-21 14:31:45.000000', 'en', 'Tulip Pot', 68, 68),
('2023-07-21 14:31:45.583581', '2023-07-21 14:31:45.000000', 'en', 'Hanging Plant', 69, 69),
('2023-07-21 14:31:45.669265', '2023-07-21 14:31:45.000000', 'en', 'Aloe Vera', 70, 70),
('2023-07-21 14:31:45.772203', '2023-07-21 14:31:45.000000', 'en', 'Fern Blechnum Gibbum', 71, 71),
('2023-07-21 14:31:45.868860', '2023-07-21 14:31:45.000000', 'en', 'Assorted Indoor Succulents', 72, 72),
('2023-07-21 14:31:45.962265', '2023-07-21 14:31:45.000000', 'en', 'Orchid', 73, 73),
('2023-07-21 14:31:46.048985', '2023-07-21 14:31:46.000000', 'en', 'Bonsai Tree', 74, 74),
('2023-07-21 14:31:46.262117', '2023-07-21 14:31:46.000000', 'en', 'Guardian Lion Statue', 75, 75),
('2023-07-21 14:31:46.480806', '2023-07-21 14:31:46.000000', 'en', 'Hand Trowel', 76, 76),
('2023-07-21 14:31:46.553882', '2023-07-21 14:31:46.000000', 'en', 'Balloon Chair', 77, 77),
('2023-07-21 14:31:47.334082', '2023-07-21 14:31:47.000000', 'en', 'Grey Fabric Sofa', 78, 78),
('2023-07-21 14:31:47.564243', '2023-07-21 14:31:47.000000', 'en', 'Leather Sofa', 79, 79),
('2023-07-21 14:31:47.681767', '2023-07-21 14:31:47.000000', 'en', 'Light Shade', 80, 80),
('2023-07-21 14:31:47.864398', '2023-07-21 14:31:47.000000', 'en', 'Wooden Side Desk', 81, 81),
('2023-07-21 14:31:48.041226', '2023-07-21 14:31:48.000000', 'en', 'Comfy Padded Chair', 82, 82),
('2023-07-21 14:31:48.148064', '2023-07-21 14:31:48.000000', 'en', 'Black Eaves Chair', 83, 83),
('2023-07-21 14:31:48.339219', '2023-07-21 14:31:48.000000', 'en', 'Wooden Stool', 84, 84),
('2023-07-21 14:31:48.520655', '2023-07-21 14:31:48.000000', 'en', 'Bedside Table', 85, 85),
('2023-07-21 14:31:48.714076', '2023-07-21 14:31:48.000000', 'en', 'Modern Cafe Chair mustard', 86, 86),
('2023-07-21 14:31:48.755525', '2023-07-21 14:31:48.000000', 'en', 'Modern Cafe Chair mint', 87, 87),
('2023-07-21 14:31:48.793236', '2023-07-21 14:31:48.000000', 'en', 'Modern Cafe Chair pearl', 88, 88);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `startsAt` datetime DEFAULT NULL,
  `endsAt` datetime DEFAULT NULL,
  `couponCode` varchar(255) DEFAULT NULL,
  `perCustomerUsageLimit` int(11) DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL,
  `conditions` text NOT NULL,
  `actions` text NOT NULL,
  `priorityScore` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_channels_channel`
--

CREATE TABLE `promotion_channels_channel` (
  `promotionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_translation`
--

CREATE TABLE `promotion_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `method` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `adjustment` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `discriminator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`createdAt`, `updatedAt`, `code`, `type`, `enabled`, `id`, `parentId`, `discriminator`) VALUES
('2023-07-21 14:31:28.640095', '2023-07-21 14:31:28.640095', 'AF', 'country', 1, 1, NULL, 'Country'),
('2023-07-21 14:31:28.804875', '2023-07-21 14:31:28.804875', 'AX', 'country', 1, 2, NULL, 'Country'),
('2023-07-21 14:31:28.959793', '2023-07-21 14:31:28.959793', 'AL', 'country', 1, 3, NULL, 'Country'),
('2023-07-21 14:31:29.027312', '2023-07-21 14:31:29.027312', 'DZ', 'country', 1, 4, NULL, 'Country'),
('2023-07-21 14:31:29.182343', '2023-07-21 14:31:29.182343', 'AS', 'country', 1, 5, NULL, 'Country'),
('2023-07-21 14:31:29.284007', '2023-07-21 14:31:29.284007', 'AD', 'country', 1, 6, NULL, 'Country'),
('2023-07-21 14:31:29.348474', '2023-07-21 14:31:29.348474', 'AO', 'country', 1, 7, NULL, 'Country'),
('2023-07-21 14:31:29.423611', '2023-07-21 14:31:29.423611', 'AI', 'country', 1, 8, NULL, 'Country'),
('2023-07-21 14:31:29.808712', '2023-07-21 14:31:29.808712', 'AG', 'country', 1, 9, NULL, 'Country'),
('2023-07-21 14:31:30.074415', '2023-07-21 14:31:30.074415', 'AR', 'country', 1, 10, NULL, 'Country'),
('2023-07-21 14:31:30.161237', '2023-07-21 14:31:30.161237', 'AM', 'country', 1, 11, NULL, 'Country'),
('2023-07-21 14:31:30.240132', '2023-07-21 14:31:30.240132', 'AW', 'country', 1, 12, NULL, 'Country'),
('2023-07-21 14:31:30.332441', '2023-07-21 14:31:30.332441', 'AU', 'country', 1, 13, NULL, 'Country'),
('2023-07-21 14:31:30.400885', '2023-07-21 14:31:30.400885', 'AT', 'country', 1, 14, NULL, 'Country'),
('2023-07-21 14:31:30.496167', '2023-07-21 14:31:30.496167', 'AZ', 'country', 1, 15, NULL, 'Country'),
('2023-07-21 14:31:30.770865', '2023-07-21 14:31:30.770865', 'BS', 'country', 1, 16, NULL, 'Country'),
('2023-07-21 14:31:30.955045', '2023-07-21 14:31:30.955045', 'BH', 'country', 1, 17, NULL, 'Country'),
('2023-07-21 14:31:31.030438', '2023-07-21 14:31:31.030438', 'BD', 'country', 1, 18, NULL, 'Country'),
('2023-07-21 14:31:31.100730', '2023-07-21 14:31:31.100730', 'BB', 'country', 1, 19, NULL, 'Country'),
('2023-07-21 14:31:31.187054', '2023-07-21 14:31:31.187054', 'BY', 'country', 1, 20, NULL, 'Country'),
('2023-07-21 14:31:31.263103', '2023-07-21 14:31:31.263103', 'BE', 'country', 1, 21, NULL, 'Country'),
('2023-07-21 14:31:31.349768', '2023-07-21 14:31:31.349768', 'BZ', 'country', 1, 22, NULL, 'Country'),
('2023-07-21 14:31:31.435124', '2023-07-21 14:31:31.435124', 'BJ', 'country', 1, 23, NULL, 'Country'),
('2023-07-21 14:31:31.536398', '2023-07-21 14:31:31.536398', 'BM', 'country', 1, 24, NULL, 'Country'),
('2023-07-21 14:31:31.670200', '2023-07-21 14:31:31.670200', 'BT', 'country', 1, 25, NULL, 'Country'),
('2023-07-21 14:31:31.756943', '2023-07-21 14:31:31.756943', 'BO', 'country', 1, 26, NULL, 'Country'),
('2023-07-21 14:31:31.894089', '2023-07-21 14:31:31.894089', 'BQ', 'country', 1, 27, NULL, 'Country'),
('2023-07-21 14:31:31.998080', '2023-07-21 14:31:31.998080', 'BA', 'country', 1, 28, NULL, 'Country'),
('2023-07-21 14:31:32.080904', '2023-07-21 14:31:32.080904', 'BW', 'country', 1, 29, NULL, 'Country'),
('2023-07-21 14:31:32.155503', '2023-07-21 14:31:32.155503', 'BV', 'country', 1, 30, NULL, 'Country'),
('2023-07-21 14:31:32.233417', '2023-07-21 14:31:32.233417', 'BR', 'country', 1, 31, NULL, 'Country'),
('2023-07-21 14:31:32.306842', '2023-07-21 14:31:32.306842', 'IO', 'country', 1, 32, NULL, 'Country'),
('2023-07-21 14:31:32.395027', '2023-07-21 14:31:32.395027', 'BN', 'country', 1, 33, NULL, 'Country'),
('2023-07-21 14:31:32.476886', '2023-07-21 14:31:32.476886', 'BG', 'country', 1, 34, NULL, 'Country'),
('2023-07-21 14:31:32.584169', '2023-07-21 14:31:32.584169', 'BF', 'country', 1, 35, NULL, 'Country'),
('2023-07-21 14:31:32.764649', '2023-07-21 14:31:32.764649', 'BI', 'country', 1, 36, NULL, 'Country'),
('2023-07-21 14:31:32.841750', '2023-07-21 14:31:32.841750', 'CV', 'country', 1, 37, NULL, 'Country'),
('2023-07-21 14:31:32.941935', '2023-07-21 14:31:32.941935', 'KH', 'country', 1, 38, NULL, 'Country'),
('2023-07-21 14:31:33.031564', '2023-07-21 14:31:33.031564', 'CM', 'country', 1, 39, NULL, 'Country'),
('2023-07-21 14:31:33.088357', '2023-07-21 14:31:33.088357', 'CA', 'country', 1, 40, NULL, 'Country'),
('2023-07-21 14:31:33.144875', '2023-07-21 14:31:33.144875', 'KY', 'country', 1, 41, NULL, 'Country'),
('2023-07-21 14:31:33.198597', '2023-07-21 14:31:33.198597', 'CF', 'country', 1, 42, NULL, 'Country'),
('2023-07-21 14:31:33.253919', '2023-07-21 14:31:33.253919', 'TD', 'country', 1, 43, NULL, 'Country'),
('2023-07-21 14:31:33.322705', '2023-07-21 14:31:33.322705', 'CL', 'country', 1, 44, NULL, 'Country'),
('2023-07-21 14:31:33.377070', '2023-07-21 14:31:33.377070', 'CN', 'country', 1, 45, NULL, 'Country'),
('2023-07-21 14:31:33.435605', '2023-07-21 14:31:33.435605', 'CX', 'country', 1, 46, NULL, 'Country'),
('2023-07-21 14:31:33.525495', '2023-07-21 14:31:33.525495', 'CC', 'country', 1, 47, NULL, 'Country'),
('2023-07-21 14:31:33.656414', '2023-07-21 14:31:33.656414', 'CO', 'country', 1, 48, NULL, 'Country'),
('2023-07-21 14:31:33.736300', '2023-07-21 14:31:33.736300', 'KM', 'country', 1, 49, NULL, 'Country'),
('2023-07-21 14:31:33.782393', '2023-07-21 14:31:33.782393', 'CG', 'country', 1, 50, NULL, 'Country'),
('2023-07-21 14:31:33.792876', '2023-07-21 14:31:33.792876', 'CD', 'country', 1, 51, NULL, 'Country'),
('2023-07-21 14:31:33.806147', '2023-07-21 14:31:33.806147', 'CK', 'country', 1, 52, NULL, 'Country'),
('2023-07-21 14:31:33.823650', '2023-07-21 14:31:33.823650', 'CR', 'country', 1, 53, NULL, 'Country'),
('2023-07-21 14:31:33.838122', '2023-07-21 14:31:33.838122', 'CI', 'country', 1, 54, NULL, 'Country'),
('2023-07-21 14:31:33.852195', '2023-07-21 14:31:33.852195', 'HR', 'country', 1, 55, NULL, 'Country'),
('2023-07-21 14:31:33.864218', '2023-07-21 14:31:33.864218', 'CU', 'country', 1, 56, NULL, 'Country'),
('2023-07-21 14:31:33.876772', '2023-07-21 14:31:33.876772', 'CW', 'country', 1, 57, NULL, 'Country'),
('2023-07-21 14:31:33.892944', '2023-07-21 14:31:33.892944', 'CY', 'country', 1, 58, NULL, 'Country'),
('2023-07-21 14:31:33.914504', '2023-07-21 14:31:33.914504', 'CZ', 'country', 1, 59, NULL, 'Country'),
('2023-07-21 14:31:33.925227', '2023-07-21 14:31:33.925227', 'DK', 'country', 1, 60, NULL, 'Country'),
('2023-07-21 14:31:33.935942', '2023-07-21 14:31:33.935942', 'DJ', 'country', 1, 61, NULL, 'Country'),
('2023-07-21 14:31:33.947076', '2023-07-21 14:31:33.947076', 'DM', 'country', 1, 62, NULL, 'Country'),
('2023-07-21 14:31:33.957880', '2023-07-21 14:31:33.957880', 'DO', 'country', 1, 63, NULL, 'Country'),
('2023-07-21 14:31:33.970292', '2023-07-21 14:31:33.970292', 'EC', 'country', 1, 64, NULL, 'Country'),
('2023-07-21 14:31:33.993428', '2023-07-21 14:31:33.993428', 'EG', 'country', 1, 65, NULL, 'Country'),
('2023-07-21 14:31:34.003757', '2023-07-21 14:31:34.003757', 'SV', 'country', 1, 66, NULL, 'Country'),
('2023-07-21 14:31:34.020591', '2023-07-21 14:31:34.020591', 'GQ', 'country', 1, 67, NULL, 'Country'),
('2023-07-21 14:31:34.030970', '2023-07-21 14:31:34.030970', 'ER', 'country', 1, 68, NULL, 'Country'),
('2023-07-21 14:31:34.043427', '2023-07-21 14:31:34.043427', 'EE', 'country', 1, 69, NULL, 'Country'),
('2023-07-21 14:31:34.053864', '2023-07-21 14:31:34.053864', 'SZ', 'country', 1, 70, NULL, 'Country'),
('2023-07-21 14:31:34.065069', '2023-07-21 14:31:34.065069', 'ET', 'country', 1, 71, NULL, 'Country'),
('2023-07-21 14:31:34.075045', '2023-07-21 14:31:34.075045', 'FK', 'country', 1, 72, NULL, 'Country'),
('2023-07-21 14:31:34.086068', '2023-07-21 14:31:34.086068', 'FO', 'country', 1, 73, NULL, 'Country'),
('2023-07-21 14:31:34.097005', '2023-07-21 14:31:34.097005', 'FJ', 'country', 1, 74, NULL, 'Country'),
('2023-07-21 14:31:34.108273', '2023-07-21 14:31:34.108273', 'FI', 'country', 1, 75, NULL, 'Country'),
('2023-07-21 14:31:34.131210', '2023-07-21 14:31:34.131210', 'FR', 'country', 1, 76, NULL, 'Country'),
('2023-07-21 14:31:34.143341', '2023-07-21 14:31:34.143341', 'GF', 'country', 1, 77, NULL, 'Country'),
('2023-07-21 14:31:34.154562', '2023-07-21 14:31:34.154562', 'PF', 'country', 1, 78, NULL, 'Country'),
('2023-07-21 14:31:34.166031', '2023-07-21 14:31:34.166031', 'TF', 'country', 1, 79, NULL, 'Country'),
('2023-07-21 14:31:34.179084', '2023-07-21 14:31:34.179084', 'GA', 'country', 1, 80, NULL, 'Country'),
('2023-07-21 14:31:34.190600', '2023-07-21 14:31:34.190600', 'GM', 'country', 1, 81, NULL, 'Country'),
('2023-07-21 14:31:34.201276', '2023-07-21 14:31:34.201276', 'GE', 'country', 1, 82, NULL, 'Country'),
('2023-07-21 14:31:34.211106', '2023-07-21 14:31:34.211106', 'DE', 'country', 1, 83, NULL, 'Country'),
('2023-07-21 14:31:34.220971', '2023-07-21 14:31:34.220971', 'GH', 'country', 1, 84, NULL, 'Country'),
('2023-07-21 14:31:34.235134', '2023-07-21 14:31:34.235134', 'GI', 'country', 1, 85, NULL, 'Country'),
('2023-07-21 14:31:34.250071', '2023-07-21 14:31:34.250071', 'GR', 'country', 1, 86, NULL, 'Country'),
('2023-07-21 14:31:34.259982', '2023-07-21 14:31:34.259982', 'GL', 'country', 1, 87, NULL, 'Country'),
('2023-07-21 14:31:34.270239', '2023-07-21 14:31:34.270239', 'GD', 'country', 1, 88, NULL, 'Country'),
('2023-07-21 14:31:34.281674', '2023-07-21 14:31:34.281674', 'GP', 'country', 1, 89, NULL, 'Country'),
('2023-07-21 14:31:34.306642', '2023-07-21 14:31:34.306642', 'GU', 'country', 1, 90, NULL, 'Country'),
('2023-07-21 14:31:34.324250', '2023-07-21 14:31:34.324250', 'GT', 'country', 1, 91, NULL, 'Country'),
('2023-07-21 14:31:34.333928', '2023-07-21 14:31:34.333928', 'GG', 'country', 1, 92, NULL, 'Country'),
('2023-07-21 14:31:34.344329', '2023-07-21 14:31:34.344329', 'GN', 'country', 1, 93, NULL, 'Country'),
('2023-07-21 14:31:34.356495', '2023-07-21 14:31:34.356495', 'GW', 'country', 1, 94, NULL, 'Country'),
('2023-07-21 14:31:34.367653', '2023-07-21 14:31:34.367653', 'GY', 'country', 1, 95, NULL, 'Country'),
('2023-07-21 14:31:34.378555', '2023-07-21 14:31:34.378555', 'HT', 'country', 1, 96, NULL, 'Country'),
('2023-07-21 14:31:34.389834', '2023-07-21 14:31:34.389834', 'HM', 'country', 1, 97, NULL, 'Country'),
('2023-07-21 14:31:34.403605', '2023-07-21 14:31:34.403605', 'VA', 'country', 1, 98, NULL, 'Country'),
('2023-07-21 14:31:34.418199', '2023-07-21 14:31:34.418199', 'HN', 'country', 1, 99, NULL, 'Country'),
('2023-07-21 14:31:34.432351', '2023-07-21 14:31:34.432351', 'HK', 'country', 1, 100, NULL, 'Country'),
('2023-07-21 14:31:34.445125', '2023-07-21 14:31:34.445125', 'HU', 'country', 1, 101, NULL, 'Country'),
('2023-07-21 14:31:34.457392', '2023-07-21 14:31:34.457392', 'IS', 'country', 1, 102, NULL, 'Country'),
('2023-07-21 14:31:34.467467', '2023-07-21 14:31:34.467467', 'IN', 'country', 1, 103, NULL, 'Country'),
('2023-07-21 14:31:34.478087', '2023-07-21 14:31:34.478087', 'ID', 'country', 1, 104, NULL, 'Country'),
('2023-07-21 14:31:34.490679', '2023-07-21 14:31:34.490679', 'IR', 'country', 1, 105, NULL, 'Country'),
('2023-07-21 14:31:34.502010', '2023-07-21 14:31:34.502010', 'IQ', 'country', 1, 106, NULL, 'Country'),
('2023-07-21 14:31:34.513124', '2023-07-21 14:31:34.513124', 'IE', 'country', 1, 107, NULL, 'Country'),
('2023-07-21 14:31:34.523966', '2023-07-21 14:31:34.523966', 'IM', 'country', 1, 108, NULL, 'Country'),
('2023-07-21 14:31:34.534233', '2023-07-21 14:31:34.534233', 'IL', 'country', 1, 109, NULL, 'Country'),
('2023-07-21 14:31:34.555387', '2023-07-21 14:31:34.555387', 'IT', 'country', 1, 110, NULL, 'Country'),
('2023-07-21 14:31:34.580158', '2023-07-21 14:31:34.580158', 'JM', 'country', 1, 111, NULL, 'Country'),
('2023-07-21 14:31:34.606568', '2023-07-21 14:31:34.606568', 'JP', 'country', 1, 112, NULL, 'Country'),
('2023-07-21 14:31:34.638457', '2023-07-21 14:31:34.638457', 'JE', 'country', 1, 113, NULL, 'Country'),
('2023-07-21 14:31:34.661973', '2023-07-21 14:31:34.661973', 'JO', 'country', 1, 114, NULL, 'Country'),
('2023-07-21 14:31:34.684817', '2023-07-21 14:31:34.684817', 'KZ', 'country', 1, 115, NULL, 'Country'),
('2023-07-21 14:31:34.710975', '2023-07-21 14:31:34.710975', 'KE', 'country', 1, 116, NULL, 'Country'),
('2023-07-21 14:31:34.750741', '2023-07-21 14:31:34.750741', 'KI', 'country', 1, 117, NULL, 'Country'),
('2023-07-21 14:31:34.803362', '2023-07-21 14:31:34.803362', 'KP', 'country', 1, 118, NULL, 'Country'),
('2023-07-21 14:31:34.824493', '2023-07-21 14:31:34.824493', 'KR', 'country', 1, 119, NULL, 'Country'),
('2023-07-21 14:31:34.838730', '2023-07-21 14:31:34.838730', 'KW', 'country', 1, 120, NULL, 'Country'),
('2023-07-21 14:31:34.850399', '2023-07-21 14:31:34.850399', 'KG', 'country', 1, 121, NULL, 'Country'),
('2023-07-21 14:31:34.863538', '2023-07-21 14:31:34.863538', 'LA', 'country', 1, 122, NULL, 'Country'),
('2023-07-21 14:31:34.875337', '2023-07-21 14:31:34.875337', 'LV', 'country', 1, 123, NULL, 'Country'),
('2023-07-21 14:31:34.886241', '2023-07-21 14:31:34.886241', 'LB', 'country', 1, 124, NULL, 'Country'),
('2023-07-21 14:31:34.897673', '2023-07-21 14:31:34.897673', 'LS', 'country', 1, 125, NULL, 'Country'),
('2023-07-21 14:31:34.912326', '2023-07-21 14:31:34.912326', 'LR', 'country', 1, 126, NULL, 'Country'),
('2023-07-21 14:31:34.924606', '2023-07-21 14:31:34.924606', 'LY', 'country', 1, 127, NULL, 'Country'),
('2023-07-21 14:31:34.936199', '2023-07-21 14:31:34.936199', 'LI', 'country', 1, 128, NULL, 'Country'),
('2023-07-21 14:31:34.949900', '2023-07-21 14:31:34.949900', 'LT', 'country', 1, 129, NULL, 'Country'),
('2023-07-21 14:31:34.963260', '2023-07-21 14:31:34.963260', 'LU', 'country', 1, 130, NULL, 'Country'),
('2023-07-21 14:31:34.985809', '2023-07-21 14:31:34.985809', 'MO', 'country', 1, 131, NULL, 'Country'),
('2023-07-21 14:31:34.997299', '2023-07-21 14:31:34.997299', 'MK', 'country', 1, 132, NULL, 'Country'),
('2023-07-21 14:31:35.008387', '2023-07-21 14:31:35.008387', 'MG', 'country', 1, 133, NULL, 'Country'),
('2023-07-21 14:31:35.023059', '2023-07-21 14:31:35.023059', 'MW', 'country', 1, 134, NULL, 'Country'),
('2023-07-21 14:31:35.038917', '2023-07-21 14:31:35.038917', 'MY', 'country', 1, 135, NULL, 'Country'),
('2023-07-21 14:31:35.052941', '2023-07-21 14:31:35.052941', 'MV', 'country', 1, 136, NULL, 'Country'),
('2023-07-21 14:31:35.070009', '2023-07-21 14:31:35.070009', 'ML', 'country', 1, 137, NULL, 'Country'),
('2023-07-21 14:31:35.083331', '2023-07-21 14:31:35.083331', 'MT', 'country', 1, 138, NULL, 'Country'),
('2023-07-21 14:31:35.109255', '2023-07-21 14:31:35.109255', 'MH', 'country', 1, 139, NULL, 'Country'),
('2023-07-21 14:31:35.132590', '2023-07-21 14:31:35.132590', 'MQ', 'country', 1, 140, NULL, 'Country'),
('2023-07-21 14:31:35.144933', '2023-07-21 14:31:35.144933', 'MR', 'country', 1, 141, NULL, 'Country'),
('2023-07-21 14:31:35.157649', '2023-07-21 14:31:35.157649', 'MU', 'country', 1, 142, NULL, 'Country'),
('2023-07-21 14:31:35.167271', '2023-07-21 14:31:35.167271', 'YT', 'country', 1, 143, NULL, 'Country'),
('2023-07-21 14:31:35.177660', '2023-07-21 14:31:35.177660', 'MX', 'country', 1, 144, NULL, 'Country'),
('2023-07-21 14:31:35.187026', '2023-07-21 14:31:35.187026', 'FM', 'country', 1, 145, NULL, 'Country'),
('2023-07-21 14:31:35.238297', '2023-07-21 14:31:35.238297', 'MD', 'country', 1, 146, NULL, 'Country'),
('2023-07-21 14:31:35.261991', '2023-07-21 14:31:35.261991', 'MC', 'country', 1, 147, NULL, 'Country'),
('2023-07-21 14:31:35.283717', '2023-07-21 14:31:35.283717', 'MN', 'country', 1, 148, NULL, 'Country'),
('2023-07-21 14:31:35.298162', '2023-07-21 14:31:35.298162', 'ME', 'country', 1, 149, NULL, 'Country'),
('2023-07-21 14:31:35.310762', '2023-07-21 14:31:35.310762', 'MS', 'country', 1, 150, NULL, 'Country'),
('2023-07-21 14:31:35.322052', '2023-07-21 14:31:35.322052', 'MA', 'country', 1, 151, NULL, 'Country'),
('2023-07-21 14:31:35.333631', '2023-07-21 14:31:35.333631', 'MZ', 'country', 1, 152, NULL, 'Country'),
('2023-07-21 14:31:35.346607', '2023-07-21 14:31:35.346607', 'MM', 'country', 1, 153, NULL, 'Country'),
('2023-07-21 14:31:35.358725', '2023-07-21 14:31:35.358725', 'NA', 'country', 1, 154, NULL, 'Country'),
('2023-07-21 14:31:35.370494', '2023-07-21 14:31:35.370494', 'NR', 'country', 1, 155, NULL, 'Country'),
('2023-07-21 14:31:35.381547', '2023-07-21 14:31:35.381547', 'NP', 'country', 1, 156, NULL, 'Country'),
('2023-07-21 14:31:35.393618', '2023-07-21 14:31:35.393618', 'NL', 'country', 1, 157, NULL, 'Country'),
('2023-07-21 14:31:35.414180', '2023-07-21 14:31:35.414180', 'NC', 'country', 1, 158, NULL, 'Country'),
('2023-07-21 14:31:35.430462', '2023-07-21 14:31:35.430462', 'NZ', 'country', 1, 159, NULL, 'Country'),
('2023-07-21 14:31:35.442790', '2023-07-21 14:31:35.442790', 'NI', 'country', 1, 160, NULL, 'Country'),
('2023-07-21 14:31:35.453795', '2023-07-21 14:31:35.453795', 'NE', 'country', 1, 161, NULL, 'Country'),
('2023-07-21 14:31:35.465672', '2023-07-21 14:31:35.465672', 'NG', 'country', 1, 162, NULL, 'Country'),
('2023-07-21 14:31:35.477677', '2023-07-21 14:31:35.477677', 'NU', 'country', 1, 163, NULL, 'Country'),
('2023-07-21 14:31:35.493555', '2023-07-21 14:31:35.493555', 'NF', 'country', 1, 164, NULL, 'Country'),
('2023-07-21 14:31:35.504568', '2023-07-21 14:31:35.504568', 'MP', 'country', 1, 165, NULL, 'Country'),
('2023-07-21 14:31:35.516975', '2023-07-21 14:31:35.516975', 'NO', 'country', 1, 166, NULL, 'Country'),
('2023-07-21 14:31:35.531944', '2023-07-21 14:31:35.531944', 'OM', 'country', 1, 167, NULL, 'Country'),
('2023-07-21 14:31:35.545957', '2023-07-21 14:31:35.545957', 'PK', 'country', 1, 168, NULL, 'Country'),
('2023-07-21 14:31:35.564366', '2023-07-21 14:31:35.564366', 'PW', 'country', 1, 169, NULL, 'Country'),
('2023-07-21 14:31:35.580229', '2023-07-21 14:31:35.580229', 'PS', 'country', 1, 170, NULL, 'Country'),
('2023-07-21 14:31:35.591185', '2023-07-21 14:31:35.591185', 'PA', 'country', 1, 171, NULL, 'Country'),
('2023-07-21 14:31:35.602380', '2023-07-21 14:31:35.602380', 'PG', 'country', 1, 172, NULL, 'Country'),
('2023-07-21 14:31:35.614421', '2023-07-21 14:31:35.614421', 'PY', 'country', 1, 173, NULL, 'Country'),
('2023-07-21 14:31:35.626670', '2023-07-21 14:31:35.626670', 'PE', 'country', 1, 174, NULL, 'Country'),
('2023-07-21 14:31:35.637337', '2023-07-21 14:31:35.637337', 'PH', 'country', 1, 175, NULL, 'Country'),
('2023-07-21 14:31:35.651512', '2023-07-21 14:31:35.651512', 'PN', 'country', 1, 176, NULL, 'Country'),
('2023-07-21 14:31:35.663407', '2023-07-21 14:31:35.663407', 'PL', 'country', 1, 177, NULL, 'Country'),
('2023-07-21 14:31:35.681118', '2023-07-21 14:31:35.681118', 'PT', 'country', 1, 178, NULL, 'Country'),
('2023-07-21 14:31:35.691458', '2023-07-21 14:31:35.691458', 'PR', 'country', 1, 179, NULL, 'Country'),
('2023-07-21 14:31:35.700839', '2023-07-21 14:31:35.700839', 'QA', 'country', 1, 180, NULL, 'Country'),
('2023-07-21 14:31:35.710567', '2023-07-21 14:31:35.710567', 'RE', 'country', 1, 181, NULL, 'Country'),
('2023-07-21 14:31:35.756237', '2023-07-21 14:31:35.756237', 'RO', 'country', 1, 182, NULL, 'Country'),
('2023-07-21 14:31:35.774084', '2023-07-21 14:31:35.774084', 'RU', 'country', 1, 183, NULL, 'Country'),
('2023-07-21 14:31:35.785476', '2023-07-21 14:31:35.785476', 'RW', 'country', 1, 184, NULL, 'Country'),
('2023-07-21 14:31:35.796182', '2023-07-21 14:31:35.796182', 'BL', 'country', 1, 185, NULL, 'Country'),
('2023-07-21 14:31:35.805359', '2023-07-21 14:31:35.805359', 'SH', 'country', 1, 186, NULL, 'Country'),
('2023-07-21 14:31:35.858683', '2023-07-21 14:31:35.858683', 'KN', 'country', 1, 187, NULL, 'Country'),
('2023-07-21 14:31:35.880744', '2023-07-21 14:31:35.880744', 'LC', 'country', 1, 188, NULL, 'Country'),
('2023-07-21 14:31:35.896021', '2023-07-21 14:31:35.896021', 'MF', 'country', 1, 189, NULL, 'Country'),
('2023-07-21 14:31:35.908794', '2023-07-21 14:31:35.908794', 'PM', 'country', 1, 190, NULL, 'Country'),
('2023-07-21 14:31:35.924689', '2023-07-21 14:31:35.924689', 'VC', 'country', 1, 191, NULL, 'Country'),
('2023-07-21 14:31:35.939042', '2023-07-21 14:31:35.939042', 'WS', 'country', 1, 192, NULL, 'Country'),
('2023-07-21 14:31:35.951225', '2023-07-21 14:31:35.951225', 'SM', 'country', 1, 193, NULL, 'Country'),
('2023-07-21 14:31:35.964428', '2023-07-21 14:31:35.964428', 'ST', 'country', 1, 194, NULL, 'Country'),
('2023-07-21 14:31:35.976896', '2023-07-21 14:31:35.976896', 'SA', 'country', 1, 195, NULL, 'Country'),
('2023-07-21 14:31:35.999415', '2023-07-21 14:31:35.999415', 'SN', 'country', 1, 196, NULL, 'Country'),
('2023-07-21 14:31:36.014973', '2023-07-21 14:31:36.014973', 'RS', 'country', 1, 197, NULL, 'Country'),
('2023-07-21 14:31:36.028782', '2023-07-21 14:31:36.028782', 'SC', 'country', 1, 198, NULL, 'Country'),
('2023-07-21 14:31:36.058974', '2023-07-21 14:31:36.058974', 'SL', 'country', 1, 199, NULL, 'Country'),
('2023-07-21 14:31:36.078755', '2023-07-21 14:31:36.078755', 'SG', 'country', 1, 200, NULL, 'Country'),
('2023-07-21 14:31:36.092389', '2023-07-21 14:31:36.092389', 'SX', 'country', 1, 201, NULL, 'Country'),
('2023-07-21 14:31:36.106067', '2023-07-21 14:31:36.106067', 'SK', 'country', 1, 202, NULL, 'Country'),
('2023-07-21 14:31:36.118226', '2023-07-21 14:31:36.118226', 'SI', 'country', 1, 203, NULL, 'Country'),
('2023-07-21 14:31:36.130671', '2023-07-21 14:31:36.130671', 'SB', 'country', 1, 204, NULL, 'Country'),
('2023-07-21 14:31:36.147125', '2023-07-21 14:31:36.147125', 'SO', 'country', 1, 205, NULL, 'Country'),
('2023-07-21 14:31:36.160757', '2023-07-21 14:31:36.160757', 'ZA', 'country', 1, 206, NULL, 'Country'),
('2023-07-21 14:31:36.173732', '2023-07-21 14:31:36.173732', 'GS', 'country', 1, 207, NULL, 'Country'),
('2023-07-21 14:31:36.191048', '2023-07-21 14:31:36.191048', 'SS', 'country', 1, 208, NULL, 'Country'),
('2023-07-21 14:31:36.202472', '2023-07-21 14:31:36.202472', 'ES', 'country', 1, 209, NULL, 'Country'),
('2023-07-21 14:31:36.212706', '2023-07-21 14:31:36.212706', 'LK', 'country', 1, 210, NULL, 'Country'),
('2023-07-21 14:31:36.223284', '2023-07-21 14:31:36.223284', 'SD', 'country', 1, 211, NULL, 'Country'),
('2023-07-21 14:31:36.232577', '2023-07-21 14:31:36.232577', 'SR', 'country', 1, 212, NULL, 'Country'),
('2023-07-21 14:31:36.251649', '2023-07-21 14:31:36.251649', 'SJ', 'country', 1, 213, NULL, 'Country'),
('2023-07-21 14:31:36.277321', '2023-07-21 14:31:36.277321', 'SE', 'country', 1, 214, NULL, 'Country'),
('2023-07-21 14:31:36.299849', '2023-07-21 14:31:36.299849', 'CH', 'country', 1, 215, NULL, 'Country'),
('2023-07-21 14:31:36.322733', '2023-07-21 14:31:36.322733', 'SY', 'country', 1, 216, NULL, 'Country'),
('2023-07-21 14:31:36.345670', '2023-07-21 14:31:36.345670', 'TW', 'country', 1, 217, NULL, 'Country'),
('2023-07-21 14:31:36.374474', '2023-07-21 14:31:36.374474', 'TJ', 'country', 1, 218, NULL, 'Country'),
('2023-07-21 14:31:36.436134', '2023-07-21 14:31:36.436134', 'TZ', 'country', 1, 219, NULL, 'Country'),
('2023-07-21 14:31:36.448925', '2023-07-21 14:31:36.448925', 'TH', 'country', 1, 220, NULL, 'Country'),
('2023-07-21 14:31:36.464400', '2023-07-21 14:31:36.464400', 'TL', 'country', 1, 221, NULL, 'Country'),
('2023-07-21 14:31:36.485783', '2023-07-21 14:31:36.485783', 'TG', 'country', 1, 222, NULL, 'Country'),
('2023-07-21 14:31:36.501615', '2023-07-21 14:31:36.501615', 'TK', 'country', 1, 223, NULL, 'Country'),
('2023-07-21 14:31:36.516041', '2023-07-21 14:31:36.516041', 'TO', 'country', 1, 224, NULL, 'Country'),
('2023-07-21 14:31:36.527837', '2023-07-21 14:31:36.527837', 'TT', 'country', 1, 225, NULL, 'Country'),
('2023-07-21 14:31:36.541031', '2023-07-21 14:31:36.541031', 'TN', 'country', 1, 226, NULL, 'Country'),
('2023-07-21 14:31:36.567110', '2023-07-21 14:31:36.567110', 'TR', 'country', 1, 227, NULL, 'Country'),
('2023-07-21 14:31:36.580820', '2023-07-21 14:31:36.580820', 'TM', 'country', 1, 228, NULL, 'Country'),
('2023-07-21 14:31:36.594816', '2023-07-21 14:31:36.594816', 'TC', 'country', 1, 229, NULL, 'Country'),
('2023-07-21 14:31:36.607329', '2023-07-21 14:31:36.607329', 'TV', 'country', 1, 230, NULL, 'Country'),
('2023-07-21 14:31:36.619353', '2023-07-21 14:31:36.619353', 'UG', 'country', 1, 231, NULL, 'Country'),
('2023-07-21 14:31:36.634324', '2023-07-21 14:31:36.634324', 'UA', 'country', 1, 232, NULL, 'Country'),
('2023-07-21 14:31:36.645848', '2023-07-21 14:31:36.645848', 'AE', 'country', 1, 233, NULL, 'Country'),
('2023-07-21 14:31:36.660856', '2023-07-21 14:31:36.660856', 'GB', 'country', 1, 234, NULL, 'Country'),
('2023-07-21 14:31:36.690982', '2023-07-21 14:31:36.690982', 'US', 'country', 1, 235, NULL, 'Country'),
('2023-07-21 14:31:36.707703', '2023-07-21 14:31:36.707703', 'UM', 'country', 1, 236, NULL, 'Country'),
('2023-07-21 14:31:36.720238', '2023-07-21 14:31:36.720238', 'UY', 'country', 1, 237, NULL, 'Country'),
('2023-07-21 14:31:36.731886', '2023-07-21 14:31:36.731886', 'UZ', 'country', 1, 238, NULL, 'Country'),
('2023-07-21 14:31:36.744816', '2023-07-21 14:31:36.744816', 'VU', 'country', 1, 239, NULL, 'Country'),
('2023-07-21 14:31:36.761124', '2023-07-21 14:31:36.761124', 'VE', 'country', 1, 240, NULL, 'Country'),
('2023-07-21 14:31:36.779362', '2023-07-21 14:31:36.779362', 'VN', 'country', 1, 241, NULL, 'Country'),
('2023-07-21 14:31:36.800722', '2023-07-21 14:31:36.800722', 'VG', 'country', 1, 242, NULL, 'Country'),
('2023-07-21 14:31:36.818117', '2023-07-21 14:31:36.818117', 'VI', 'country', 1, 243, NULL, 'Country'),
('2023-07-21 14:31:36.832844', '2023-07-21 14:31:36.832844', 'WF', 'country', 1, 244, NULL, 'Country'),
('2023-07-21 14:31:36.891769', '2023-07-21 14:31:36.891769', 'EH', 'country', 1, 245, NULL, 'Country'),
('2023-07-21 14:31:36.923436', '2023-07-21 14:31:36.923436', 'YE', 'country', 1, 246, NULL, 'Country'),
('2023-07-21 14:31:36.946908', '2023-07-21 14:31:36.946908', 'ZM', 'country', 1, 247, NULL, 'Country'),
('2023-07-21 14:31:36.972922', '2023-07-21 14:31:36.972922', 'ZW', 'country', 1, 248, NULL, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `region_translation`
--

CREATE TABLE `region_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `region_translation`
--

INSERT INTO `region_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2023-07-21 14:31:28.606672', '2023-07-21 14:31:28.000000', 'en', 'Afghanistan', 1, 1),
('2023-07-21 14:31:28.772117', '2023-07-21 14:31:28.000000', 'en', 'Åland Islands', 2, 2),
('2023-07-21 14:31:28.931118', '2023-07-21 14:31:28.000000', 'en', 'Albania', 3, 3),
('2023-07-21 14:31:28.994724', '2023-07-21 14:31:29.000000', 'en', 'Algeria', 4, 4),
('2023-07-21 14:31:29.151483', '2023-07-21 14:31:29.000000', 'en', 'American Samoa', 5, 5),
('2023-07-21 14:31:29.250200', '2023-07-21 14:31:29.000000', 'en', 'Andorra', 6, 6),
('2023-07-21 14:31:29.318857', '2023-07-21 14:31:29.000000', 'en', 'Angola', 7, 7),
('2023-07-21 14:31:29.391382', '2023-07-21 14:31:29.000000', 'en', 'Anguilla', 8, 8),
('2023-07-21 14:31:29.767389', '2023-07-21 14:31:29.000000', 'en', 'Antigua and Barbuda', 9, 9),
('2023-07-21 14:31:30.038441', '2023-07-21 14:31:30.000000', 'en', 'Argentina', 10, 10),
('2023-07-21 14:31:30.124672', '2023-07-21 14:31:30.000000', 'en', 'Armenia', 11, 11),
('2023-07-21 14:31:30.205881', '2023-07-21 14:31:30.000000', 'en', 'Aruba', 12, 12),
('2023-07-21 14:31:30.297818', '2023-07-21 14:31:30.000000', 'en', 'Australia', 13, 13),
('2023-07-21 14:31:30.368282', '2023-07-21 14:31:30.000000', 'en', 'Austria', 14, 14),
('2023-07-21 14:31:30.450673', '2023-07-21 14:31:30.000000', 'en', 'Azerbaijan', 15, 15),
('2023-07-21 14:31:30.694955', '2023-07-21 14:31:30.000000', 'en', 'Bahamas', 16, 16),
('2023-07-21 14:31:30.918814', '2023-07-21 14:31:30.000000', 'en', 'Bahrain', 17, 17),
('2023-07-21 14:31:30.997629', '2023-07-21 14:31:31.000000', 'en', 'Bangladesh', 18, 18),
('2023-07-21 14:31:31.067025', '2023-07-21 14:31:31.000000', 'en', 'Barbados', 19, 19),
('2023-07-21 14:31:31.150561', '2023-07-21 14:31:31.000000', 'en', 'Belarus', 20, 20),
('2023-07-21 14:31:31.224697', '2023-07-21 14:31:31.000000', 'en', 'Belgium', 21, 21),
('2023-07-21 14:31:31.311015', '2023-07-21 14:31:31.000000', 'en', 'Belize', 22, 22),
('2023-07-21 14:31:31.397648', '2023-07-21 14:31:31.000000', 'en', 'Benin', 23, 23),
('2023-07-21 14:31:31.486470', '2023-07-21 14:31:31.000000', 'en', 'Bermuda', 24, 24),
('2023-07-21 14:31:31.596165', '2023-07-21 14:31:31.000000', 'en', 'Bhutan', 25, 25),
('2023-07-21 14:31:31.721848', '2023-07-21 14:31:31.000000', 'en', 'Bolivia (Plurinational State of)', 26, 26),
('2023-07-21 14:31:31.802341', '2023-07-21 14:31:31.000000', 'en', 'Bonaire, Sint Eustatius and Saba', 27, 27),
('2023-07-21 14:31:31.957251', '2023-07-21 14:31:32.000000', 'en', 'Bosnia and Herzegovina', 28, 28),
('2023-07-21 14:31:32.042408', '2023-07-21 14:31:32.000000', 'en', 'Botswana', 29, 29),
('2023-07-21 14:31:32.126312', '2023-07-21 14:31:32.000000', 'en', 'Bouvet Island', 30, 30),
('2023-07-21 14:31:32.194363', '2023-07-21 14:31:32.000000', 'en', 'Brazil', 31, 31),
('2023-07-21 14:31:32.270002', '2023-07-21 14:31:32.000000', 'en', 'British Indian Ocean Territory', 32, 32),
('2023-07-21 14:31:32.360354', '2023-07-21 14:31:32.000000', 'en', 'Brunei Darussalam', 33, 33),
('2023-07-21 14:31:32.436949', '2023-07-21 14:31:32.000000', 'en', 'Bulgaria', 34, 34),
('2023-07-21 14:31:32.519751', '2023-07-21 14:31:32.000000', 'en', 'Burkina Faso', 35, 35),
('2023-07-21 14:31:32.667332', '2023-07-21 14:31:32.000000', 'en', 'Burundi', 36, 36),
('2023-07-21 14:31:32.815639', '2023-07-21 14:31:32.000000', 'en', 'Cabo Verde', 37, 37),
('2023-07-21 14:31:32.888550', '2023-07-21 14:31:32.000000', 'en', 'Cambodia', 38, 38),
('2023-07-21 14:31:33.003917', '2023-07-21 14:31:33.000000', 'en', 'Cameroon', 39, 39),
('2023-07-21 14:31:33.063963', '2023-07-21 14:31:33.000000', 'en', 'Canada', 40, 40),
('2023-07-21 14:31:33.119135', '2023-07-21 14:31:33.000000', 'en', 'Cayman Islands', 41, 41),
('2023-07-21 14:31:33.173431', '2023-07-21 14:31:33.000000', 'en', 'Central African Republic', 42, 42),
('2023-07-21 14:31:33.227142', '2023-07-21 14:31:33.000000', 'en', 'Chad', 43, 43),
('2023-07-21 14:31:33.294994', '2023-07-21 14:31:33.000000', 'en', 'Chile', 44, 44),
('2023-07-21 14:31:33.352644', '2023-07-21 14:31:33.000000', 'en', 'China', 45, 45),
('2023-07-21 14:31:33.405048', '2023-07-21 14:31:33.000000', 'en', 'Christmas Island', 46, 46),
('2023-07-21 14:31:33.482047', '2023-07-21 14:31:33.000000', 'en', 'Cocos (Keeling) Islands', 47, 47),
('2023-07-21 14:31:33.581723', '2023-07-21 14:31:33.000000', 'en', 'Colombia', 48, 48),
('2023-07-21 14:31:33.700613', '2023-07-21 14:31:33.000000', 'en', 'Comoros', 49, 49),
('2023-07-21 14:31:33.778578', '2023-07-21 14:31:33.000000', 'en', 'Congo', 50, 50),
('2023-07-21 14:31:33.789005', '2023-07-21 14:31:33.000000', 'en', 'Congo (Democratic Republic of the)', 51, 51),
('2023-07-21 14:31:33.802090', '2023-07-21 14:31:33.000000', 'en', 'Cook Islands', 52, 52),
('2023-07-21 14:31:33.817296', '2023-07-21 14:31:33.000000', 'en', 'Costa Rica', 53, 53),
('2023-07-21 14:31:33.834496', '2023-07-21 14:31:33.000000', 'en', 'Côte d\'Ivoire', 54, 54),
('2023-07-21 14:31:33.847573', '2023-07-21 14:31:33.000000', 'en', 'Croatia', 55, 55),
('2023-07-21 14:31:33.859799', '2023-07-21 14:31:33.000000', 'en', 'Cuba', 56, 56),
('2023-07-21 14:31:33.871907', '2023-07-21 14:31:33.000000', 'en', 'Curaçao', 57, 57),
('2023-07-21 14:31:33.888104', '2023-07-21 14:31:33.000000', 'en', 'Cyprus', 58, 58),
('2023-07-21 14:31:33.905863', '2023-07-21 14:31:33.000000', 'en', 'Czechia', 59, 59),
('2023-07-21 14:31:33.921599', '2023-07-21 14:31:33.000000', 'en', 'Denmark', 60, 60),
('2023-07-21 14:31:33.931820', '2023-07-21 14:31:33.000000', 'en', 'Djibouti', 61, 61),
('2023-07-21 14:31:33.943350', '2023-07-21 14:31:33.000000', 'en', 'Dominica', 62, 62),
('2023-07-21 14:31:33.954126', '2023-07-21 14:31:33.000000', 'en', 'Dominican Republic', 63, 63),
('2023-07-21 14:31:33.966408', '2023-07-21 14:31:33.000000', 'en', 'Ecuador', 64, 64),
('2023-07-21 14:31:33.981579', '2023-07-21 14:31:33.000000', 'en', 'Egypt', 65, 65),
('2023-07-21 14:31:34.000308', '2023-07-21 14:31:34.000000', 'en', 'El Salvador', 66, 66),
('2023-07-21 14:31:34.015598', '2023-07-21 14:31:34.000000', 'en', 'Equatorial Guinea', 67, 67),
('2023-07-21 14:31:34.027281', '2023-07-21 14:31:34.000000', 'en', 'Eritrea', 68, 68),
('2023-07-21 14:31:34.037880', '2023-07-21 14:31:34.000000', 'en', 'Estonia', 69, 69),
('2023-07-21 14:31:34.050451', '2023-07-21 14:31:34.000000', 'en', 'Eswatini', 70, 70),
('2023-07-21 14:31:34.061534', '2023-07-21 14:31:34.000000', 'en', 'Ethiopia', 71, 71),
('2023-07-21 14:31:34.071443', '2023-07-21 14:31:34.000000', 'en', 'Falkland Islands (Malvinas)', 72, 72),
('2023-07-21 14:31:34.081498', '2023-07-21 14:31:34.000000', 'en', 'Faroe Islands', 73, 73),
('2023-07-21 14:31:34.093389', '2023-07-21 14:31:34.000000', 'en', 'Fiji', 74, 74),
('2023-07-21 14:31:34.104529', '2023-07-21 14:31:34.000000', 'en', 'Finland', 75, 75),
('2023-07-21 14:31:34.119699', '2023-07-21 14:31:34.000000', 'en', 'France', 76, 76),
('2023-07-21 14:31:34.138221', '2023-07-21 14:31:34.000000', 'en', 'French Guiana', 77, 77),
('2023-07-21 14:31:34.150610', '2023-07-21 14:31:34.000000', 'en', 'French Polynesia', 78, 78),
('2023-07-21 14:31:34.161551', '2023-07-21 14:31:34.000000', 'en', 'French Southern Territories', 79, 79),
('2023-07-21 14:31:34.173574', '2023-07-21 14:31:34.000000', 'en', 'Gabon', 80, 80),
('2023-07-21 14:31:34.186403', '2023-07-21 14:31:34.000000', 'en', 'Gambia', 81, 81),
('2023-07-21 14:31:34.197784', '2023-07-21 14:31:34.000000', 'en', 'Georgia', 82, 82),
('2023-07-21 14:31:34.207612', '2023-07-21 14:31:34.000000', 'en', 'Germany', 83, 83),
('2023-07-21 14:31:34.217586', '2023-07-21 14:31:34.000000', 'en', 'Ghana', 84, 84),
('2023-07-21 14:31:34.229988', '2023-07-21 14:31:34.000000', 'en', 'Gibraltar', 85, 85),
('2023-07-21 14:31:34.246707', '2023-07-21 14:31:34.000000', 'en', 'Greece', 86, 86),
('2023-07-21 14:31:34.256561', '2023-07-21 14:31:34.000000', 'en', 'Greenland', 87, 87),
('2023-07-21 14:31:34.266567', '2023-07-21 14:31:34.000000', 'en', 'Grenada', 88, 88),
('2023-07-21 14:31:34.277474', '2023-07-21 14:31:34.000000', 'en', 'Guadeloupe', 89, 89),
('2023-07-21 14:31:34.303108', '2023-07-21 14:31:34.000000', 'en', 'Guam', 90, 90),
('2023-07-21 14:31:34.320430', '2023-07-21 14:31:34.000000', 'en', 'Guatemala', 91, 91),
('2023-07-21 14:31:34.330588', '2023-07-21 14:31:34.000000', 'en', 'Guernsey', 92, 92),
('2023-07-21 14:31:34.340404', '2023-07-21 14:31:34.000000', 'en', 'Guinea', 93, 93),
('2023-07-21 14:31:34.352636', '2023-07-21 14:31:34.000000', 'en', 'Guinea-Bissau', 94, 94),
('2023-07-21 14:31:34.363785', '2023-07-21 14:31:34.000000', 'en', 'Guyana', 95, 95),
('2023-07-21 14:31:34.374789', '2023-07-21 14:31:34.000000', 'en', 'Haiti', 96, 96),
('2023-07-21 14:31:34.385530', '2023-07-21 14:31:34.000000', 'en', 'Heard Island and McDonald Islands', 97, 97),
('2023-07-21 14:31:34.399902', '2023-07-21 14:31:34.000000', 'en', 'Holy See', 98, 98),
('2023-07-21 14:31:34.414566', '2023-07-21 14:31:34.000000', 'en', 'Honduras', 99, 99),
('2023-07-21 14:31:34.428219', '2023-07-21 14:31:34.000000', 'en', 'Hong Kong', 100, 100),
('2023-07-21 14:31:34.439278', '2023-07-21 14:31:34.000000', 'en', 'Hungary', 101, 101),
('2023-07-21 14:31:34.453640', '2023-07-21 14:31:34.000000', 'en', 'Iceland', 102, 102),
('2023-07-21 14:31:34.464016', '2023-07-21 14:31:34.000000', 'en', 'India', 103, 103),
('2023-07-21 14:31:34.474230', '2023-07-21 14:31:34.000000', 'en', 'Indonesia', 104, 104),
('2023-07-21 14:31:34.486688', '2023-07-21 14:31:34.000000', 'en', 'Iran (Islamic Republic of)', 105, 105),
('2023-07-21 14:31:34.498216', '2023-07-21 14:31:34.000000', 'en', 'Iraq', 106, 106),
('2023-07-21 14:31:34.508695', '2023-07-21 14:31:34.000000', 'en', 'Ireland', 107, 107),
('2023-07-21 14:31:34.520501', '2023-07-21 14:31:34.000000', 'en', 'Isle of Man', 108, 108),
('2023-07-21 14:31:34.530247', '2023-07-21 14:31:34.000000', 'en', 'Israel', 109, 109),
('2023-07-21 14:31:34.546440', '2023-07-21 14:31:34.000000', 'en', 'Italy', 110, 110),
('2023-07-21 14:31:34.572546', '2023-07-21 14:31:34.000000', 'en', 'Jamaica', 111, 111),
('2023-07-21 14:31:34.598281', '2023-07-21 14:31:34.000000', 'en', 'Japan', 112, 112),
('2023-07-21 14:31:34.629629', '2023-07-21 14:31:34.000000', 'en', 'Jersey', 113, 113),
('2023-07-21 14:31:34.653980', '2023-07-21 14:31:34.000000', 'en', 'Jordan', 114, 114),
('2023-07-21 14:31:34.676813', '2023-07-21 14:31:34.000000', 'en', 'Kazakhstan', 115, 115),
('2023-07-21 14:31:34.701229', '2023-07-21 14:31:34.000000', 'en', 'Kenya', 116, 116),
('2023-07-21 14:31:34.731510', '2023-07-21 14:31:34.000000', 'en', 'Kiribati', 117, 117),
('2023-07-21 14:31:34.766193', '2023-07-21 14:31:34.000000', 'en', 'Korea (Democratic People\'s Republic of)', 118, 118),
('2023-07-21 14:31:34.819478', '2023-07-21 14:31:34.000000', 'en', 'Korea (Republic of)', 119, 119),
('2023-07-21 14:31:34.834186', '2023-07-21 14:31:34.000000', 'en', 'Kuwait', 120, 120),
('2023-07-21 14:31:34.846411', '2023-07-21 14:31:34.000000', 'en', 'Kyrgyzstan', 121, 121),
('2023-07-21 14:31:34.857594', '2023-07-21 14:31:34.000000', 'en', 'Lao People\'s Democratic Republic', 122, 122),
('2023-07-21 14:31:34.871403', '2023-07-21 14:31:34.000000', 'en', 'Latvia', 123, 123),
('2023-07-21 14:31:34.882493', '2023-07-21 14:31:34.000000', 'en', 'Lebanon', 124, 124),
('2023-07-21 14:31:34.893530', '2023-07-21 14:31:34.000000', 'en', 'Lesotho', 125, 125),
('2023-07-21 14:31:34.906910', '2023-07-21 14:31:34.000000', 'en', 'Liberia', 126, 126),
('2023-07-21 14:31:34.920628', '2023-07-21 14:31:34.000000', 'en', 'Libya', 127, 127),
('2023-07-21 14:31:34.932503', '2023-07-21 14:31:34.000000', 'en', 'Liechtenstein', 128, 128),
('2023-07-21 14:31:34.945153', '2023-07-21 14:31:34.000000', 'en', 'Lithuania', 129, 129),
('2023-07-21 14:31:34.958013', '2023-07-21 14:31:34.000000', 'en', 'Luxembourg', 130, 130),
('2023-07-21 14:31:34.978451', '2023-07-21 14:31:34.000000', 'en', 'Macao', 131, 131),
('2023-07-21 14:31:34.993299', '2023-07-21 14:31:34.000000', 'en', 'Macedonia (the former Yugoslav Republic of)', 132, 132),
('2023-07-21 14:31:35.004461', '2023-07-21 14:31:35.000000', 'en', 'Madagascar', 133, 133),
('2023-07-21 14:31:35.016404', '2023-07-21 14:31:35.000000', 'en', 'Malawi', 134, 134),
('2023-07-21 14:31:35.030589', '2023-07-21 14:31:35.000000', 'en', 'Malaysia', 135, 135),
('2023-07-21 14:31:35.047420', '2023-07-21 14:31:35.000000', 'en', 'Maldives', 136, 136),
('2023-07-21 14:31:35.065625', '2023-07-21 14:31:35.000000', 'en', 'Mali', 137, 137),
('2023-07-21 14:31:35.078530', '2023-07-21 14:31:35.000000', 'en', 'Malta', 138, 138),
('2023-07-21 14:31:35.092334', '2023-07-21 14:31:35.000000', 'en', 'Marshall Islands', 139, 139),
('2023-07-21 14:31:35.123782', '2023-07-21 14:31:35.000000', 'en', 'Martinique', 140, 140),
('2023-07-21 14:31:35.141249', '2023-07-21 14:31:35.000000', 'en', 'Mauritania', 141, 141),
('2023-07-21 14:31:35.153485', '2023-07-21 14:31:35.000000', 'en', 'Mauritius', 142, 142),
('2023-07-21 14:31:35.163841', '2023-07-21 14:31:35.000000', 'en', 'Mayotte', 143, 143),
('2023-07-21 14:31:35.173281', '2023-07-21 14:31:35.000000', 'en', 'Mexico', 144, 144),
('2023-07-21 14:31:35.183629', '2023-07-21 14:31:35.000000', 'en', 'Micronesia (Federated States of)', 145, 145),
('2023-07-21 14:31:35.230011', '2023-07-21 14:31:35.000000', 'en', 'Moldova (Republic of)', 146, 146),
('2023-07-21 14:31:35.254583', '2023-07-21 14:31:35.000000', 'en', 'Monaco', 147, 147),
('2023-07-21 14:31:35.276578', '2023-07-21 14:31:35.000000', 'en', 'Mongolia', 148, 148),
('2023-07-21 14:31:35.293768', '2023-07-21 14:31:35.000000', 'en', 'Montenegro', 149, 149),
('2023-07-21 14:31:35.306531', '2023-07-21 14:31:35.000000', 'en', 'Montserrat', 150, 150),
('2023-07-21 14:31:35.318185', '2023-07-21 14:31:35.000000', 'en', 'Morocco', 151, 151),
('2023-07-21 14:31:35.329298', '2023-07-21 14:31:35.000000', 'en', 'Mozambique', 152, 152),
('2023-07-21 14:31:35.342105', '2023-07-21 14:31:35.000000', 'en', 'Myanmar', 153, 153),
('2023-07-21 14:31:35.354551', '2023-07-21 14:31:35.000000', 'en', 'Namibia', 154, 154),
('2023-07-21 14:31:35.365810', '2023-07-21 14:31:35.000000', 'en', 'Nauru', 155, 155),
('2023-07-21 14:31:35.377558', '2023-07-21 14:31:35.000000', 'en', 'Nepal', 156, 156),
('2023-07-21 14:31:35.388555', '2023-07-21 14:31:35.000000', 'en', 'Netherlands', 157, 157),
('2023-07-21 14:31:35.409355', '2023-07-21 14:31:35.000000', 'en', 'New Caledonia', 158, 158),
('2023-07-21 14:31:35.424843', '2023-07-21 14:31:35.000000', 'en', 'New Zealand', 159, 159),
('2023-07-21 14:31:35.438827', '2023-07-21 14:31:35.000000', 'en', 'Nicaragua', 160, 160),
('2023-07-21 14:31:35.450114', '2023-07-21 14:31:35.000000', 'en', 'Niger', 161, 161),
('2023-07-21 14:31:35.461322', '2023-07-21 14:31:35.000000', 'en', 'Nigeria', 162, 162),
('2023-07-21 14:31:35.473789', '2023-07-21 14:31:35.000000', 'en', 'Niue', 163, 163),
('2023-07-21 14:31:35.489373', '2023-07-21 14:31:35.000000', 'en', 'Norfolk Island', 164, 164),
('2023-07-21 14:31:35.500729', '2023-07-21 14:31:35.000000', 'en', 'Northern Mariana Islands', 165, 165),
('2023-07-21 14:31:35.512560', '2023-07-21 14:31:35.000000', 'en', 'Norway', 166, 166),
('2023-07-21 14:31:35.526829', '2023-07-21 14:31:35.000000', 'en', 'Oman', 167, 167),
('2023-07-21 14:31:35.542189', '2023-07-21 14:31:35.000000', 'en', 'Pakistan', 168, 168),
('2023-07-21 14:31:35.558229', '2023-07-21 14:31:35.000000', 'en', 'Palau', 169, 169),
('2023-07-21 14:31:35.575397', '2023-07-21 14:31:35.000000', 'en', 'Palestine, State of', 170, 170),
('2023-07-21 14:31:35.587340', '2023-07-21 14:31:35.000000', 'en', 'Panama', 171, 171),
('2023-07-21 14:31:35.598321', '2023-07-21 14:31:35.000000', 'en', 'Papua New Guinea', 172, 172),
('2023-07-21 14:31:35.610403', '2023-07-21 14:31:35.000000', 'en', 'Paraguay', 173, 173),
('2023-07-21 14:31:35.622713', '2023-07-21 14:31:35.000000', 'en', 'Peru', 174, 174),
('2023-07-21 14:31:35.633696', '2023-07-21 14:31:35.000000', 'en', 'Philippines', 175, 175),
('2023-07-21 14:31:35.644034', '2023-07-21 14:31:35.000000', 'en', 'Pitcairn', 176, 176),
('2023-07-21 14:31:35.659049', '2023-07-21 14:31:35.000000', 'en', 'Poland', 177, 177),
('2023-07-21 14:31:35.674530', '2023-07-21 14:31:35.000000', 'en', 'Portugal', 178, 178),
('2023-07-21 14:31:35.688064', '2023-07-21 14:31:35.000000', 'en', 'Puerto Rico', 179, 179),
('2023-07-21 14:31:35.697540', '2023-07-21 14:31:35.000000', 'en', 'Qatar', 180, 180),
('2023-07-21 14:31:35.706740', '2023-07-21 14:31:35.000000', 'en', 'Réunion', 181, 181),
('2023-07-21 14:31:35.740450', '2023-07-21 14:31:35.000000', 'en', 'Romania', 182, 182),
('2023-07-21 14:31:35.769619', '2023-07-21 14:31:35.000000', 'en', 'Russian Federation', 183, 183),
('2023-07-21 14:31:35.782036', '2023-07-21 14:31:35.000000', 'en', 'Rwanda', 184, 184),
('2023-07-21 14:31:35.792133', '2023-07-21 14:31:35.000000', 'en', 'Saint Barthélemy', 185, 185),
('2023-07-21 14:31:35.802165', '2023-07-21 14:31:35.000000', 'en', 'Saint Helena, Ascension and Tristan da Cunha', 186, 186),
('2023-07-21 14:31:35.849740', '2023-07-21 14:31:35.000000', 'en', 'Saint Kitts and Nevis', 187, 187),
('2023-07-21 14:31:35.874914', '2023-07-21 14:31:35.000000', 'en', 'Saint Lucia', 188, 188),
('2023-07-21 14:31:35.891211', '2023-07-21 14:31:35.000000', 'en', 'Saint Martin (French part)', 189, 189),
('2023-07-21 14:31:35.904443', '2023-07-21 14:31:35.000000', 'en', 'Saint Pierre and Miquelon', 190, 190),
('2023-07-21 14:31:35.920182', '2023-07-21 14:31:35.000000', 'en', 'Saint Vincent and the Grenadines', 191, 191),
('2023-07-21 14:31:35.933650', '2023-07-21 14:31:35.000000', 'en', 'Samoa', 192, 192),
('2023-07-21 14:31:35.946788', '2023-07-21 14:31:35.000000', 'en', 'San Marino', 193, 193),
('2023-07-21 14:31:35.959661', '2023-07-21 14:31:35.000000', 'en', 'Sao Tome and Principe', 194, 194),
('2023-07-21 14:31:35.972319', '2023-07-21 14:31:35.000000', 'en', 'Saudi Arabia', 195, 195),
('2023-07-21 14:31:35.987059', '2023-07-21 14:31:36.000000', 'en', 'Senegal', 196, 196),
('2023-07-21 14:31:36.010231', '2023-07-21 14:31:36.000000', 'en', 'Serbia', 197, 197),
('2023-07-21 14:31:36.024558', '2023-07-21 14:31:36.000000', 'en', 'Seychelles', 198, 198),
('2023-07-21 14:31:36.053214', '2023-07-21 14:31:36.000000', 'en', 'Sierra Leone', 199, 199),
('2023-07-21 14:31:36.070246', '2023-07-21 14:31:36.000000', 'en', 'Singapore', 200, 200),
('2023-07-21 14:31:36.087337', '2023-07-21 14:31:36.000000', 'en', 'Sint Maarten (Dutch part)', 201, 201),
('2023-07-21 14:31:36.100836', '2023-07-21 14:31:36.000000', 'en', 'Slovakia', 202, 202),
('2023-07-21 14:31:36.114161', '2023-07-21 14:31:36.000000', 'en', 'Slovenia', 203, 203),
('2023-07-21 14:31:36.126440', '2023-07-21 14:31:36.000000', 'en', 'Solomon Islands', 204, 204),
('2023-07-21 14:31:36.142585', '2023-07-21 14:31:36.000000', 'en', 'Somalia', 205, 205),
('2023-07-21 14:31:36.155347', '2023-07-21 14:31:36.000000', 'en', 'South Africa', 206, 206),
('2023-07-21 14:31:36.169024', '2023-07-21 14:31:36.000000', 'en', 'South Georgia and the South Sandwich Islands', 207, 207),
('2023-07-21 14:31:36.186043', '2023-07-21 14:31:36.000000', 'en', 'South Sudan', 208, 208),
('2023-07-21 14:31:36.198746', '2023-07-21 14:31:36.000000', 'en', 'Spain', 209, 209),
('2023-07-21 14:31:36.209251', '2023-07-21 14:31:36.000000', 'en', 'Sri Lanka', 210, 210),
('2023-07-21 14:31:36.219848', '2023-07-21 14:31:36.000000', 'en', 'Sudan', 211, 211),
('2023-07-21 14:31:36.229217', '2023-07-21 14:31:36.000000', 'en', 'Suriname', 212, 212),
('2023-07-21 14:31:36.243834', '2023-07-21 14:31:36.000000', 'en', 'Svalbard and Jan Mayen', 213, 213),
('2023-07-21 14:31:36.270102', '2023-07-21 14:31:36.000000', 'en', 'Sweden', 214, 214),
('2023-07-21 14:31:36.291925', '2023-07-21 14:31:36.000000', 'en', 'Switzerland', 215, 215),
('2023-07-21 14:31:36.314526', '2023-07-21 14:31:36.000000', 'en', 'Syrian Arab Republic', 216, 216),
('2023-07-21 14:31:36.338274', '2023-07-21 14:31:36.000000', 'en', 'Taiwan, Province of China', 217, 217),
('2023-07-21 14:31:36.366134', '2023-07-21 14:31:36.000000', 'en', 'Tajikistan', 218, 218),
('2023-07-21 14:31:36.431721', '2023-07-21 14:31:36.000000', 'en', 'Tanzania, United Republic of', 219, 219),
('2023-07-21 14:31:36.444595', '2023-07-21 14:31:36.000000', 'en', 'Thailand', 220, 220),
('2023-07-21 14:31:36.460221', '2023-07-21 14:31:36.000000', 'en', 'Timor-Leste', 221, 221),
('2023-07-21 14:31:36.481523', '2023-07-21 14:31:36.000000', 'en', 'Togo', 222, 222),
('2023-07-21 14:31:36.496008', '2023-07-21 14:31:36.000000', 'en', 'Tokelau', 223, 223),
('2023-07-21 14:31:36.511793', '2023-07-21 14:31:36.000000', 'en', 'Tonga', 224, 224),
('2023-07-21 14:31:36.523756', '2023-07-21 14:31:36.000000', 'en', 'Trinidad and Tobago', 225, 225),
('2023-07-21 14:31:36.536459', '2023-07-21 14:31:36.000000', 'en', 'Tunisia', 226, 226),
('2023-07-21 14:31:36.549147', '2023-07-21 14:31:36.000000', 'en', 'Turkey', 227, 227),
('2023-07-21 14:31:36.576793', '2023-07-21 14:31:36.000000', 'en', 'Turkmenistan', 228, 228),
('2023-07-21 14:31:36.589305', '2023-07-21 14:31:36.000000', 'en', 'Turks and Caicos Islands', 229, 229),
('2023-07-21 14:31:36.603241', '2023-07-21 14:31:36.000000', 'en', 'Tuvalu', 230, 230),
('2023-07-21 14:31:36.615080', '2023-07-21 14:31:36.000000', 'en', 'Uganda', 231, 231),
('2023-07-21 14:31:36.629966', '2023-07-21 14:31:36.000000', 'en', 'Ukraine', 232, 232),
('2023-07-21 14:31:36.641826', '2023-07-21 14:31:36.000000', 'en', 'United Arab Emirates', 233, 233),
('2023-07-21 14:31:36.654975', '2023-07-21 14:31:36.000000', 'en', 'United Kingdom', 234, 234),
('2023-07-21 14:31:36.684481', '2023-07-21 14:31:36.000000', 'en', 'United States of America', 235, 235),
('2023-07-21 14:31:36.703358', '2023-07-21 14:31:36.000000', 'en', 'United States Minor Outlying Islands', 236, 236),
('2023-07-21 14:31:36.716222', '2023-07-21 14:31:36.000000', 'en', 'Uruguay', 237, 237),
('2023-07-21 14:31:36.727890', '2023-07-21 14:31:36.000000', 'en', 'Uzbekistan', 238, 238),
('2023-07-21 14:31:36.739590', '2023-07-21 14:31:36.000000', 'en', 'Vanuatu', 239, 239),
('2023-07-21 14:31:36.753761', '2023-07-21 14:31:36.000000', 'en', 'Venezuela (Bolivarian Republic of)', 240, 240),
('2023-07-21 14:31:36.771949', '2023-07-21 14:31:36.000000', 'en', 'Viet Nam', 241, 241),
('2023-07-21 14:31:36.790457', '2023-07-21 14:31:36.000000', 'en', 'Virgin Islands (British)', 242, 242),
('2023-07-21 14:31:36.811783', '2023-07-21 14:31:36.000000', 'en', 'Virgin Islands (U.S.)', 243, 243),
('2023-07-21 14:31:36.827928', '2023-07-21 14:31:36.000000', 'en', 'Wallis and Futuna', 244, 244),
('2023-07-21 14:31:36.842588', '2023-07-21 14:31:36.000000', 'en', 'Western Sahara', 245, 245),
('2023-07-21 14:31:36.911095', '2023-07-21 14:31:36.000000', 'en', 'Yemen', 246, 246),
('2023-07-21 14:31:36.939168', '2023-07-21 14:31:36.000000', 'en', 'Zambia', 247, 247),
('2023-07-21 14:31:36.964312', '2023-07-21 14:31:36.000000', 'en', 'Zimbabwe', 248, 248);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`createdAt`, `updatedAt`, `code`, `description`, `permissions`, `id`) VALUES
('2023-07-21 14:31:24.080995', '2023-07-21 14:31:24.080995', '__super_admin_role__', 'SuperAdmin', 'Authenticated,SuperAdmin,UpdateGlobalSettings,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateAdministrator,ReadAdministrator,UpdateAdministrator,DeleteAdministrator,CreateAsset,ReadAsset,UpdateAsset,DeleteAsset,CreateChannel,ReadChannel,UpdateChannel,DeleteChannel,CreateCollection,ReadCollection,UpdateCollection,DeleteCollection,CreateCountry,ReadCountry,UpdateCountry,DeleteCountry,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateFacet,ReadFacet,UpdateFacet,DeleteFacet,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreatePaymentMethod,ReadPaymentMethod,UpdatePaymentMethod,DeletePaymentMethod,CreateProduct,ReadProduct,UpdateProduct,DeleteProduct,CreatePromotion,ReadPromotion,UpdatePromotion,DeletePromotion,CreateShippingMethod,ReadShippingMethod,UpdateShippingMethod,DeleteShippingMethod,CreateTag,ReadTag,UpdateTag,DeleteTag,CreateTaxCategory,ReadTaxCategory,UpdateTaxCategory,DeleteTaxCategory,CreateTaxRate,ReadTaxRate,UpdateTaxRate,DeleteTaxRate,CreateSeller,ReadSeller,UpdateSeller,DeleteSeller,CreateStockLocation,ReadStockLocation,UpdateStockLocation,DeleteStockLocation,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem,CreateZone,ReadZone,UpdateZone,DeleteZone', 1),
('2023-07-21 14:31:24.105133', '2023-07-21 14:31:24.105133', '__customer_role__', 'Customer', 'Authenticated', 2),
('2023-07-21 14:31:37.512354', '2023-07-21 14:31:37.512354', 'administrator', 'Administrator', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem', 3),
('2023-07-21 14:31:37.519565', '2023-07-21 14:31:37.519565', 'order-manager', 'Order manager', 'Authenticated,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,ReadCustomer,ReadPaymentMethod,ReadShippingMethod,ReadPromotion,ReadCountry,ReadZone', 4),
('2023-07-21 14:31:37.528817', '2023-07-21 14:31:37.528817', 'inventory-manager', 'Inventory manager', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateTag,ReadTag,UpdateTag,DeleteTag,ReadCustomer', 5);

-- --------------------------------------------------------

--
-- Table structure for table `role_channels_channel`
--

CREATE TABLE `role_channels_channel` (
  `roleId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_channels_channel`
--

INSERT INTO `role_channels_channel` (`roleId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `search_index_item`
--

CREATE TABLE `search_index_item` (
  `languageCode` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productVariantName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `facetIds` text NOT NULL,
  `facetValueIds` text NOT NULL,
  `collectionIds` text NOT NULL,
  `collectionSlugs` text NOT NULL,
  `channelIds` text NOT NULL,
  `productPreview` varchar(255) NOT NULL,
  `productPreviewFocalPoint` text DEFAULT NULL,
  `productVariantPreview` varchar(255) NOT NULL,
  `productVariantPreviewFocalPoint` text DEFAULT NULL,
  `inStock` tinyint(4) NOT NULL DEFAULT 1,
  `productInStock` tinyint(4) NOT NULL DEFAULT 1,
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productAssetId` int(11) DEFAULT NULL,
  `productVariantAssetId` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `priceWithTax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_index_item`
--

INSERT INTO `search_index_item` (`languageCode`, `enabled`, `productName`, `productVariantName`, `description`, `slug`, `sku`, `facetIds`, `facetValueIds`, `collectionIds`, `collectionSlugs`, `channelIds`, `productPreview`, `productPreviewFocalPoint`, `productVariantPreview`, `productVariantPreviewFocalPoint`, `inStock`, `productInStock`, `productVariantId`, `channelId`, `productId`, `productAssetId`, `productVariantAssetId`, `price`, `priceWithTax`) VALUES
('en', 1, 'Laptop', 'Laptop 13 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201308', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 1, 1, 1, 1, NULL, 129900, 155880),
('en', 1, 'Laptop', 'Laptop 15 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201508', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 2, 1, 1, 1, NULL, 139900, 167880),
('en', 1, 'Laptop', 'Laptop 13 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201316', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 3, 1, 1, 1, NULL, 219900, 263880),
('en', 1, 'Laptop', 'Laptop 15 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201516', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 4, 1, 1, 1, NULL, 229900, 275880),
('en', 1, 'Tablet', 'Tablet 32GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200032', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/b8/kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 5, 1, 2, 2, NULL, 32900, 39480),
('en', 1, 'Tablet', 'Tablet 128GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200128', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/b8/kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 6, 1, 2, 2, NULL, 44500, 53400),
('en', 1, 'Wireless Optical Mouse', 'Wireless Optical Mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 'cordless-mouse', '834444', '1,2', '1,2,4', '2,3', 'electronics,computers', '1', 'preview/a1/oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 7, 1, 3, 3, NULL, 1899, 2279),
('en', 1, '32-Inch Monitor', '32-Inch Monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', '32-inch-monitor', 'LU32J590UQUXEN', '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview/d2/daniel-korpai-1302051-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 8, 1, 4, 4, NULL, 31000, 37200),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 24 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C24F390', '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview/9c/alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 9, 1, 5, 5, NULL, 14374, 17249),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 27 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C27F390', '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview/9c/alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 10, 1, 5, 5, NULL, 16994, 20393),
('en', 1, 'High Performance RAM', 'High Performance RAM 4GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC04', '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 11, 1, 6, 6, NULL, 13785, 16542),
('en', 1, 'High Performance RAM', 'High Performance RAM 8GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC08', '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 12, 1, 6, 6, NULL, 14639, 17567),
('en', 1, 'High Performance RAM', 'High Performance RAM 16GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC16', '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 13, 1, 6, 6, NULL, 28181, 33817),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1063', '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 14, 1, 7, 7, NULL, 108720, 130464),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1064', '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 15, 1, 7, 7, NULL, 109995, 131994),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1065', '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 16, 1, 7, 7, NULL, 93120, 111744),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1066', '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 17, 1, 7, 7, NULL, 94920, 113904),
('en', 1, 'Hard Drive', 'Hard Drive 1TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T1', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 18, 1, 8, 8, NULL, 3799, 4559),
('en', 1, 'Hard Drive', 'Hard Drive 2TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T2', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 19, 1, 8, 8, NULL, 5374, 6449),
('en', 1, 'Hard Drive', 'Hard Drive 3TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T3', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 20, 1, 8, 8, NULL, 7896, 9475),
('en', 1, 'Hard Drive', 'Hard Drive 4TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T4', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 21, 1, 8, 8, NULL, 9299, 11159),
('en', 1, 'Hard Drive', 'Hard Drive 6TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T6', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 22, 1, 8, 8, NULL, 13435, 16122),
('en', 1, 'Clacky Keyboard', 'Clacky Keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 'clacky-keyboard', 'A4TKLA45535', '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/09/juan-gomez-674574-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 23, 1, 9, 9, NULL, 7489, 8987),
('en', 1, 'Ethernet Cable', 'Ethernet Cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 'ethernet-cable', 'A23334x30', '1', '1,2', '2,3', 'electronics,computers', '1', 'preview/7b/thomas-q-1229169-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 24, 1, 10, 10, NULL, 597, 716),
('en', 1, 'USB Cable', 'USB Cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 'usb-cable', 'USBCIN01.5MI', '1', '1,2', '2,3', 'electronics,computers', '1', 'preview/64/adam-birkett-239153-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 25, 1, 11, 11, NULL, 6900, 8280),
('en', 1, 'Instant Camera', 'Instant Camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 'instant-camera', 'IC22MWDD', '1,2', '1,9,10', '2,4', 'electronics,camera-photo', '1', 'preview/b5/eniko-kis-663725-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 26, 1, 12, 12, NULL, 17499, 20999),
('en', 1, 'Camera Lens', 'Camera Lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 'camera-lens', 'B0012UUP02', '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview/9b/brandi-redd-104140-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 27, 1, 13, 13, NULL, 10400, 12480),
('en', 1, 'Vintage Folding Camera', 'Vintage Folding Camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 'vintage-folding-camera', 'B00AFC9099', '1,2', '1,9,12', '2,4', 'electronics,camera-photo', '1', 'preview/3c/jonathan-talbert-697262-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 28, 1, 14, 14, NULL, 535000, 642000),
('en', 1, 'Tripod', 'Tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 'tripod', 'B00XI87KV8', '1,2', '1,9,13', '2,4', 'electronics,camera-photo', '1', 'preview/21/zoltan-tasi-423051-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 29, 1, 15, 15, NULL, 1498, 1798),
('en', 1, 'Instamatic Camera', 'Instamatic Camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 'instamatic-camera', 'B07K1330LL', '1,2', '1,9,14', '2,4', 'electronics,camera-photo', '1', 'preview/5b/jakob-owens-274337-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 30, 1, 16, 16, NULL, 2000, 2400),
('en', 1, 'Compact Digital Camera', 'Compact Digital Camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 'compact-digital-camera', 'B07D990021', '1,2', '1,9,15', '2,4', 'electronics,camera-photo', '1', 'preview/bc/patrick-brinksma-663044-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 31, 1, 17, 17, NULL, 89999, 107999),
('en', 1, 'Nikkormat SLR Camera', 'Nikkormat SLR Camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 'nikkormat-slr-camera', 'B07D33B334', '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview/95/chuttersnap-324234-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 32, 1, 18, 18, NULL, 61500, 73800),
('en', 1, 'Compact SLR Camera', 'Compact SLR Camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 'compact-slr-camera', 'B07D75V44S', '1', '1,9', '2,4', 'electronics,camera-photo', '1', 'preview/9d/robert-shunev-528016-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 33, 1, 19, 19, NULL, 52100, 62520),
('en', 1, 'Twin Lens Camera', 'Twin Lens Camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen. ', 'twin-lens-camera', 'B07D78JTLR', '1,2', '1,9,16', '2,4', 'electronics,camera-photo', '1', 'preview/ef/alexander-andrews-260988-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 34, 1, 20, 20, NULL, 79900, 95880),
('en', 1, 'Road Bike', 'Road Bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 'road-bike', 'RB000844334', '1,2', '17,18,19', '8,9', 'sports-outdoor,equipment', '1', 'preview/2f/mikkel-bech-748940-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 35, 1, 21, 21, NULL, 249900, 299880),
('en', 1, 'Skipping Rope', 'Skipping Rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 'skipping-rope', 'B07CNGXVXT', '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview/34/stoica-ionela-530966-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 36, 1, 22, 22, NULL, 799, 959),
('en', 1, 'Boxing Gloves', 'Boxing Gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 'boxing-gloves', 'B000ZYLPPU', '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview/4f/neonbrand-428982-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 37, 1, 23, 23, NULL, 3304, 3965),
('en', 1, 'Tent', 'Tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 'tent', '2000023510', '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview/96/michael-guite-571169-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 38, 1, 24, 24, NULL, 21493, 25792),
('en', 1, 'Cruiser Skateboard', 'Cruiser Skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 'cruiser-skateboard', '799872520', '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview/35/max-tarkhov-737999-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 39, 1, 25, 25, NULL, 2499, 2999),
('en', 1, 'Football', 'Football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 'football', 'SC3137-056', '1,2', '17,18,21', '8,9', 'sports-outdoor,equipment', '1', 'preview/d6/nik-shuliahin-619349-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 40, 1, 26, 26, NULL, 5707, 6848),
('en', 1, 'Tennis Ball', 'Tennis Ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 'tennis-ball', 'WRT11752P', '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview/30/ben-hershey-574483-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 41, 1, 27, 27, NULL, 1273, 1528),
('en', 1, 'Basketball', 'Basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 'basketball', 'WTB1418XB06', '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview/0f/tommy-bebo-600358-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 42, 1, 28, 28, NULL, 3562, 4274),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 40', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0040', '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 43, 1, 29, 29, NULL, 9999, 11999),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 42', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0042', '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 44, 1, 29, 29, NULL, 9999, 11999),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 44', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0044', '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 45, 1, 29, 29, NULL, 9999, 11999),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 46', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0046', '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 46, 1, 29, 29, NULL, 9999, 11999),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 40', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-40', '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 47, 1, 30, 30, NULL, 16000, 19200),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 42', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-42', '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 48, 1, 30, 30, NULL, 16000, 19200),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 44', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-44', '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 49, 1, 30, 30, NULL, 16000, 19200),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 46', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-46', '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 50, 1, 30, 30, NULL, 16000, 19200),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 40', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-40', '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 51, 1, 31, 31, NULL, 14000, 16800),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 42', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-42', '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 52, 1, 31, 31, NULL, 14000, 16800),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 44', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-44', '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 53, 1, 31, 31, NULL, 14000, 16800),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 46', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-46', '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 54, 1, 31, 31, NULL, 14000, 16800),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 40', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578640', '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 55, 1, 32, 32, NULL, 9995, 11994),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 42', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578642', '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 56, 1, 32, 32, NULL, 9995, 11994),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 44', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578644', '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 57, 1, 32, 32, NULL, 9995, 11994),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 46', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578646', '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 58, 1, 32, 32, NULL, 9995, 11994),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 40', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633340', '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 59, 1, 33, 33, NULL, 4495, 5394),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 42', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633342', '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 60, 1, 33, 33, NULL, 4495, 5394),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 44', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633344', '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 61, 1, 33, 33, NULL, 4495, 5394),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 46', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633346', '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 62, 1, 33, 33, NULL, 4495, 5394),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 40', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23340', '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 63, 1, 34, 34, NULL, 6500, 7800),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 42', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23342', '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 64, 1, 34, 34, NULL, 6500, 7800),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 44', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23344', '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 65, 1, 34, 34, NULL, 6500, 7800),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 46', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23346', '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 66, 1, 34, 34, NULL, 6500, 7800),
('en', 1, 'Spiky Cactus', 'Spiky Cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 'spiky-cactus', 'SC011001', '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview/78/charles-deluvio-695736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 67, 1, 35, 35, NULL, 1550, 1860),
('en', 1, 'Tulip Pot', 'Tulip Pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 'tulip-pot', 'A58477', '1,4', '30,31,32,33', '5,7', 'home-garden,plants', '1', 'preview/14/natalia-y-345738-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 68, 1, 36, 36, NULL, 675, 810),
('en', 1, 'Hanging Plant', 'Hanging Plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 'hanging-plant', 'A44223', '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview/5b/alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 69, 1, 37, 37, NULL, 1995, 2394),
('en', 1, 'Aloe Vera', 'Aloe Vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 'aloe-vera', 'A44352', '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview/29/silvia-agrasar-227575-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 70, 1, 38, 38, NULL, 699, 839),
('en', 1, 'Fern Blechnum Gibbum', 'Fern Blechnum Gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 'fern-blechnum-gibbum', 'A04851', '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview/6d/caleb-george-536388-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 71, 1, 39, 39, NULL, 895, 1074),
('en', 1, 'Assorted Indoor Succulents', 'Assorted Indoor Succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 'assorted-succulents', 'A08593', '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview/81/annie-spratt-78044-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 72, 1, 40, 40, NULL, 3250, 3900),
('en', 1, 'Orchid', 'Orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 'orchid', 'ROR00221', '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview/88/zoltan-kovacs-642412-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 73, 1, 41, 41, NULL, 6500, 7800),
('en', 1, 'Bonsai Tree', 'Bonsai Tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 'bonsai-tree', 'B01MXFLUSV', '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview/f3/mark-tegethoff-667351-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 74, 1, 42, 42, NULL, 1999, 2399),
('en', 1, 'Guardian Lion Statue', 'Guardian Lion Statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 'guardian-lion-statue', 'GL34LLW11', '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview/44/vincent-liu-525429-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 75, 1, 43, 43, NULL, 18853, 22624),
('en', 1, 'Hand Trowel', 'Hand Trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 'hand-trowel', '4058NB/09', '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview/7d/neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 76, 1, 44, 44, NULL, 499, 599),
('en', 1, 'Balloon Chair', 'Balloon Chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 'balloon-chair', '34-BC82444', '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview/ef/florian-klauer-14840-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 77, 1, 45, 45, NULL, 6500, 7800),
('en', 1, 'Grey Fabric Sofa', 'Grey Fabric Sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 'grey-fabric-sofa', 'CH00001-12', '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview/69/nathan-fertig-249917-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 78, 1, 46, 46, NULL, 29500, 35400),
('en', 1, 'Leather Sofa', 'Leather Sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 'leather-sofa', 'CH00001-02', '1,3', '30,34,36', '5,6', 'home-garden,furniture', '1', 'preview/3e/paul-weaver-1120584-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 79, 1, 47, 47, NULL, 124500, 149400),
('en', 1, 'Light Shade', 'Light Shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 'light-shade', 'B45809LSW', '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview/5f/pierre-chatel-innocenti-483198-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 80, 1, 48, 48, NULL, 2845, 3414),
('en', 1, 'Wooden Side Desk', 'Wooden Side Desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 'wooden-side-desk', '304.096.29', '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview/40/abel-y-costa-716024-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 81, 1, 49, 49, NULL, 12500, 15000),
('en', 1, 'Comfy Padded Chair', 'Comfy Padded Chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 'comfy-padded-chair', '404.068.14', '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview/3b/kari-shea-398668-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 82, 1, 50, 50, NULL, 13000, 15600),
('en', 1, 'Black Eaves Chair', 'Black Eaves Chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 'black-eaves-chair', '003.600.02', '1,3', '30,34,27', '5,6', 'home-garden,furniture', '1', 'preview/09/andres-jasso-220776-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 83, 1, 51, 51, NULL, 7000, 8400),
('en', 1, 'Wooden Stool', 'Wooden Stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 'wooden-stool', '202.493.30', '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview/d0/ruslan-bardash-351288-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 84, 1, 52, 52, NULL, 1400, 1680),
('en', 1, 'Bedside Table', 'Bedside Table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 'bedside-table', '404.290.14', '1,3', '30,34,28', '5,6', 'home-garden,furniture', '1', 'preview/72/benjamin-voros-310026-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 85, 1, 53, 53, NULL, 13000, 15600),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mustard', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', '3,1', '38,30,34', '5,6', 'home-garden,furniture', '1', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 86, 1, 54, 54, NULL, 10000, 12000),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mint', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', '3,1', '39,30,34', '5,6', 'home-garden,furniture', '1', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 87, 1, 54, 54, NULL, 10000, 12000),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair pearl', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', '3,1', '28,30,34', '5,6', 'home-garden,furniture', '1', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 88, 1, 54, 54, NULL, 10000, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`createdAt`, `updatedAt`, `deletedAt`, `name`, `id`) VALUES
('2023-07-21 14:31:24.019092', '2023-07-21 14:31:24.019092', NULL, 'Default Seller', 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `invalidated` tinyint(4) NOT NULL,
  `authenticationStrategy` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `activeOrderId` int(11) DEFAULT NULL,
  `activeChannelId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`createdAt`, `updatedAt`, `token`, `expires`, `invalidated`, `authenticationStrategy`, `id`, `activeOrderId`, `activeChannelId`, `type`, `userId`) VALUES
('2023-07-23 20:40:19.709567', '2023-07-23 20:40:19.000000', '261470e66534339746af2a914975c738b9062cd4b0e6a4e33b9f5a47068e9371', '2024-07-22 20:40:19', 0, NULL, 1, NULL, 1, 'AnonymousSession', NULL),
('2023-07-23 20:40:35.359217', '2023-07-23 20:40:35.000000', 'dead69c6268955bdc57d8f449f6166b49c80e3103c922adbfdadc0da00973cb4', '2024-07-22 20:40:35', 0, 'native', 2, NULL, 1, 'AuthenticatedSession', 1),
('2023-07-24 09:48:26.047417', '2023-07-24 09:48:26.000000', '6e966551a86c444fe43683a256847b70b27d112b71bc8e62002647cef954253a', '2024-07-23 09:48:26', 0, NULL, 3, NULL, 1, 'AnonymousSession', NULL),
('2023-07-24 09:48:42.597777', '2023-07-24 09:48:42.000000', '91c6c34c659cab724984e2d7ca575f0245a1078baf81d6f9fd08659955ae0acc', '2024-07-23 09:48:42', 0, 'native', 4, NULL, 1, 'AuthenticatedSession', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_line`
--

CREATE TABLE `shipping_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `shippingMethodId` int(11) NOT NULL,
  `listPrice` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

CREATE TABLE `shipping_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `checker` text NOT NULL,
  `calculator` text NOT NULL,
  `fulfillmentHandlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `checker`, `calculator`, `fulfillmentHandlerCode`, `id`) VALUES
('2023-07-21 14:31:37.430326', '2023-07-21 14:31:37.430326', NULL, 'standard-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}', 'manual-fulfillment', 1),
('2023-07-21 14:31:37.453587', '2023-07-21 14:31:37.453587', NULL, 'express-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}', 'manual-fulfillment', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method_channels_channel`
--

CREATE TABLE `shipping_method_channels_channel` (
  `shippingMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_method_channels_channel`
--

INSERT INTO `shipping_method_channels_channel` (`shippingMethodId`, `channelId`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method_translation`
--

CREATE TABLE `shipping_method_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_method_translation`
--

INSERT INTO `shipping_method_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `description`, `id`, `baseId`) VALUES
('2023-07-21 14:31:37.425328', '2023-07-21 14:31:37.000000', 'en', 'Standard Shipping', '', 1, 1),
('2023-07-21 14:31:37.449834', '2023-07-21 14:31:37.000000', 'en', 'Express Shipping', '', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock_level`
--

CREATE TABLE `stock_level` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `stockOnHand` int(11) NOT NULL,
  `stockAllocated` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL,
  `stockLocationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_level`
--

INSERT INTO `stock_level` (`createdAt`, `updatedAt`, `stockOnHand`, `stockAllocated`, `id`, `productVariantId`, `stockLocationId`) VALUES
('2023-07-21 14:31:38.265921', '2023-07-21 14:31:38.000000', 100, 0, 1, 1, 1),
('2023-07-21 14:31:38.296598', '2023-07-21 14:31:38.000000', 100, 0, 2, 2, 1),
('2023-07-21 14:31:38.354648', '2023-07-21 14:31:38.000000', 100, 0, 3, 3, 1),
('2023-07-21 14:31:38.384353', '2023-07-21 14:31:38.000000', 100, 0, 4, 4, 1),
('2023-07-21 14:31:38.590458', '2023-07-21 14:31:38.000000', 100, 0, 5, 5, 1),
('2023-07-21 14:31:38.635608', '2023-07-21 14:31:38.000000', 100, 0, 6, 6, 1),
('2023-07-21 14:31:38.765529', '2023-07-21 14:31:38.000000', 100, 0, 7, 7, 1),
('2023-07-21 14:31:38.898761', '2023-07-21 14:31:38.000000', 100, 0, 8, 8, 1),
('2023-07-21 14:31:39.058342', '2023-07-21 14:31:39.000000', 100, 0, 9, 9, 1),
('2023-07-21 14:31:39.085090', '2023-07-21 14:31:39.000000', 100, 0, 10, 10, 1),
('2023-07-21 14:31:39.236431', '2023-07-21 14:31:39.000000', 100, 0, 11, 11, 1),
('2023-07-21 14:31:39.259237', '2023-07-21 14:31:39.000000', 100, 0, 12, 12, 1),
('2023-07-21 14:31:39.287289', '2023-07-21 14:31:39.000000', 100, 0, 13, 13, 1),
('2023-07-21 14:31:39.604667', '2023-07-21 14:31:39.000000', 100, 0, 14, 14, 1),
('2023-07-21 14:31:39.630411', '2023-07-21 14:31:39.000000', 100, 0, 15, 15, 1),
('2023-07-21 14:31:39.655162', '2023-07-21 14:31:39.000000', 100, 0, 16, 16, 1),
('2023-07-21 14:31:39.680316', '2023-07-21 14:31:39.000000', 100, 0, 17, 17, 1),
('2023-07-21 14:31:39.937670', '2023-07-21 14:31:39.000000', 100, 0, 18, 18, 1),
('2023-07-21 14:31:39.967542', '2023-07-21 14:31:39.000000', 100, 0, 19, 19, 1),
('2023-07-21 14:31:40.056774', '2023-07-21 14:31:40.000000', 100, 0, 20, 20, 1),
('2023-07-21 14:31:40.101129', '2023-07-21 14:31:40.000000', 100, 0, 21, 21, 1),
('2023-07-21 14:31:40.132927', '2023-07-21 14:31:40.000000', 100, 0, 22, 22, 1),
('2023-07-21 14:31:40.235363', '2023-07-21 14:31:40.000000', 100, 0, 23, 23, 1),
('2023-07-21 14:31:40.345177', '2023-07-21 14:31:40.000000', 100, 0, 24, 24, 1),
('2023-07-21 14:31:40.529655', '2023-07-21 14:31:40.000000', 100, 0, 25, 25, 1),
('2023-07-21 14:31:40.767994', '2023-07-21 14:31:40.000000', 100, 0, 26, 26, 1),
('2023-07-21 14:31:40.958182', '2023-07-21 14:31:40.000000', 100, 0, 27, 27, 1),
('2023-07-21 14:31:41.059776', '2023-07-21 14:31:41.000000', 100, 0, 28, 28, 1),
('2023-07-21 14:31:41.296777', '2023-07-21 14:31:41.000000', 100, 0, 29, 29, 1),
('2023-07-21 14:31:41.500707', '2023-07-21 14:31:41.000000', 100, 0, 30, 30, 1),
('2023-07-21 14:31:41.690363', '2023-07-21 14:31:41.000000', 100, 0, 31, 31, 1),
('2023-07-21 14:31:41.767507', '2023-07-21 14:31:41.000000', 100, 0, 32, 32, 1),
('2023-07-21 14:31:41.867421', '2023-07-21 14:31:41.000000', 100, 0, 33, 33, 1),
('2023-07-21 14:31:41.971543', '2023-07-21 14:31:41.000000', 100, 0, 34, 34, 1),
('2023-07-21 14:31:42.089195', '2023-07-21 14:31:42.000000', 100, 0, 35, 35, 1),
('2023-07-21 14:31:42.306596', '2023-07-21 14:31:42.000000', 100, 0, 36, 36, 1),
('2023-07-21 14:31:42.411754', '2023-07-21 14:31:42.000000', 100, 0, 37, 37, 1),
('2023-07-21 14:31:42.499003', '2023-07-21 14:31:42.000000', 100, 0, 38, 38, 1),
('2023-07-21 14:31:42.726789', '2023-07-21 14:31:42.000000', 100, 0, 39, 39, 1),
('2023-07-21 14:31:42.887696', '2023-07-21 14:31:42.000000', 100, 0, 40, 40, 1),
('2023-07-21 14:31:43.018268', '2023-07-21 14:31:43.000000', 100, 0, 41, 41, 1),
('2023-07-21 14:31:43.095408', '2023-07-21 14:31:43.000000', 100, 0, 42, 42, 1),
('2023-07-21 14:31:43.374119', '2023-07-21 14:31:43.000000', 100, 0, 43, 43, 1),
('2023-07-21 14:31:43.398456', '2023-07-21 14:31:43.000000', 100, 0, 44, 44, 1),
('2023-07-21 14:31:43.425786', '2023-07-21 14:31:43.000000', 100, 0, 45, 45, 1),
('2023-07-21 14:31:43.449769', '2023-07-21 14:31:43.000000', 100, 0, 46, 46, 1),
('2023-07-21 14:31:43.726748', '2023-07-21 14:31:43.000000', 100, 0, 47, 47, 1),
('2023-07-21 14:31:43.766387', '2023-07-21 14:31:43.000000', 100, 0, 48, 48, 1),
('2023-07-21 14:31:43.793718', '2023-07-21 14:31:43.000000', 100, 0, 49, 49, 1),
('2023-07-21 14:31:43.830207', '2023-07-21 14:31:43.000000', 100, 0, 50, 50, 1),
('2023-07-21 14:31:44.030627', '2023-07-21 14:31:44.000000', 100, 0, 51, 51, 1),
('2023-07-21 14:31:44.059796', '2023-07-21 14:31:44.000000', 100, 0, 52, 52, 1),
('2023-07-21 14:31:44.082435', '2023-07-21 14:31:44.000000', 100, 0, 53, 53, 1),
('2023-07-21 14:31:44.108442', '2023-07-21 14:31:44.000000', 100, 0, 54, 54, 1),
('2023-07-21 14:31:44.352164', '2023-07-21 14:31:44.000000', 100, 0, 55, 55, 1),
('2023-07-21 14:31:44.395112', '2023-07-21 14:31:44.000000', 100, 0, 56, 56, 1),
('2023-07-21 14:31:44.423681', '2023-07-21 14:31:44.000000', 100, 0, 57, 57, 1),
('2023-07-21 14:31:44.448323', '2023-07-21 14:31:44.000000', 100, 0, 58, 58, 1),
('2023-07-21 14:31:44.577949', '2023-07-21 14:31:44.000000', 100, 0, 59, 59, 1),
('2023-07-21 14:31:44.605520', '2023-07-21 14:31:44.000000', 100, 0, 60, 60, 1),
('2023-07-21 14:31:44.631771', '2023-07-21 14:31:44.000000', 100, 0, 61, 61, 1),
('2023-07-21 14:31:44.657442', '2023-07-21 14:31:44.000000', 100, 0, 62, 62, 1),
('2023-07-21 14:31:44.905367', '2023-07-21 14:31:44.000000', 100, 0, 63, 63, 1),
('2023-07-21 14:31:44.932631', '2023-07-21 14:31:44.000000', 100, 0, 64, 64, 1),
('2023-07-21 14:31:44.957050', '2023-07-21 14:31:44.000000', 100, 0, 65, 65, 1),
('2023-07-21 14:31:44.981362', '2023-07-21 14:31:44.000000', 100, 0, 66, 66, 1),
('2023-07-21 14:31:45.391064', '2023-07-21 14:31:45.000000', 100, 0, 67, 67, 1),
('2023-07-21 14:31:45.504764', '2023-07-21 14:31:45.000000', 100, 0, 68, 68, 1),
('2023-07-21 14:31:45.594395', '2023-07-21 14:31:45.000000', 100, 0, 69, 69, 1),
('2023-07-21 14:31:45.679100', '2023-07-21 14:31:45.000000', 100, 0, 70, 70, 1),
('2023-07-21 14:31:45.783902', '2023-07-21 14:31:45.000000', 100, 0, 71, 71, 1),
('2023-07-21 14:31:45.883019', '2023-07-21 14:31:45.000000', 100, 0, 72, 72, 1),
('2023-07-21 14:31:45.971699', '2023-07-21 14:31:45.000000', 100, 0, 73, 73, 1),
('2023-07-21 14:31:46.058413', '2023-07-21 14:31:46.000000', 100, 0, 74, 74, 1),
('2023-07-21 14:31:46.287463', '2023-07-21 14:31:46.000000', 100, 0, 75, 75, 1),
('2023-07-21 14:31:46.493234', '2023-07-21 14:31:46.000000', 100, 0, 76, 76, 1),
('2023-07-21 14:31:46.565250', '2023-07-21 14:31:46.000000', 100, 0, 77, 77, 1),
('2023-07-21 14:31:47.343091', '2023-07-21 14:31:47.000000', 100, 0, 78, 78, 1),
('2023-07-21 14:31:47.577216', '2023-07-21 14:31:47.000000', 100, 0, 79, 79, 1),
('2023-07-21 14:31:47.690936', '2023-07-21 14:31:47.000000', 100, 0, 80, 80, 1),
('2023-07-21 14:31:47.873430', '2023-07-21 14:31:47.000000', 100, 0, 81, 81, 1),
('2023-07-21 14:31:48.061062', '2023-07-21 14:31:48.000000', 100, 0, 82, 82, 1),
('2023-07-21 14:31:48.159310', '2023-07-21 14:31:48.000000', 100, 0, 83, 83, 1),
('2023-07-21 14:31:48.365082', '2023-07-21 14:31:48.000000', 100, 0, 84, 84, 1),
('2023-07-21 14:31:48.531311', '2023-07-21 14:31:48.000000', 100, 0, 85, 85, 1),
('2023-07-21 14:31:48.728958', '2023-07-21 14:31:48.000000', 100, 0, 86, 86, 1),
('2023-07-21 14:31:48.779411', '2023-07-21 14:31:48.000000', 100, 0, 87, 87, 1),
('2023-07-21 14:31:48.803598', '2023-07-21 14:31:48.000000', 100, 0, 88, 88, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_location`
--

CREATE TABLE `stock_location` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_location`
--

INSERT INTO `stock_location` (`createdAt`, `updatedAt`, `name`, `description`, `id`) VALUES
('2023-07-21 14:31:24.838290', '2023-07-21 14:31:24.838290', 'Default Stock Location', 'The default stock location', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_location_channels_channel`
--

CREATE TABLE `stock_location_channels_channel` (
  `stockLocationId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_location_channels_channel`
--

INSERT INTO `stock_location_channels_channel` (`stockLocationId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_movement`
--

CREATE TABLE `stock_movement` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `stockLocationId` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `orderLineId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_movement`
--

INSERT INTO `stock_movement` (`createdAt`, `updatedAt`, `type`, `quantity`, `id`, `stockLocationId`, `discriminator`, `productVariantId`, `orderLineId`) VALUES
('2023-07-21 14:31:38.269618', '2023-07-21 14:31:38.269618', 'ADJUSTMENT', 100, 1, 1, 'StockAdjustment', 1, NULL),
('2023-07-21 14:31:38.310417', '2023-07-21 14:31:38.310417', 'ADJUSTMENT', 100, 2, 1, 'StockAdjustment', 2, NULL),
('2023-07-21 14:31:38.361899', '2023-07-21 14:31:38.361899', 'ADJUSTMENT', 100, 3, 1, 'StockAdjustment', 3, NULL),
('2023-07-21 14:31:38.388107', '2023-07-21 14:31:38.388107', 'ADJUSTMENT', 100, 4, 1, 'StockAdjustment', 4, NULL),
('2023-07-21 14:31:38.594129', '2023-07-21 14:31:38.594129', 'ADJUSTMENT', 100, 5, 1, 'StockAdjustment', 5, NULL),
('2023-07-21 14:31:38.648510', '2023-07-21 14:31:38.648510', 'ADJUSTMENT', 100, 6, 1, 'StockAdjustment', 6, NULL),
('2023-07-21 14:31:38.769759', '2023-07-21 14:31:38.769759', 'ADJUSTMENT', 100, 7, 1, 'StockAdjustment', 7, NULL),
('2023-07-21 14:31:38.902823', '2023-07-21 14:31:38.902823', 'ADJUSTMENT', 100, 8, 1, 'StockAdjustment', 8, NULL),
('2023-07-21 14:31:39.062285', '2023-07-21 14:31:39.062285', 'ADJUSTMENT', 100, 9, 1, 'StockAdjustment', 9, NULL),
('2023-07-21 14:31:39.088525', '2023-07-21 14:31:39.088525', 'ADJUSTMENT', 100, 10, 1, 'StockAdjustment', 10, NULL),
('2023-07-21 14:31:39.239683', '2023-07-21 14:31:39.239683', 'ADJUSTMENT', 100, 11, 1, 'StockAdjustment', 11, NULL),
('2023-07-21 14:31:39.263020', '2023-07-21 14:31:39.263020', 'ADJUSTMENT', 100, 12, 1, 'StockAdjustment', 12, NULL),
('2023-07-21 14:31:39.290671', '2023-07-21 14:31:39.290671', 'ADJUSTMENT', 100, 13, 1, 'StockAdjustment', 13, NULL),
('2023-07-21 14:31:39.608592', '2023-07-21 14:31:39.608592', 'ADJUSTMENT', 100, 14, 1, 'StockAdjustment', 14, NULL),
('2023-07-21 14:31:39.634014', '2023-07-21 14:31:39.634014', 'ADJUSTMENT', 100, 15, 1, 'StockAdjustment', 15, NULL),
('2023-07-21 14:31:39.658769', '2023-07-21 14:31:39.658769', 'ADJUSTMENT', 100, 16, 1, 'StockAdjustment', 16, NULL),
('2023-07-21 14:31:39.684345', '2023-07-21 14:31:39.684345', 'ADJUSTMENT', 100, 17, 1, 'StockAdjustment', 17, NULL),
('2023-07-21 14:31:39.941413', '2023-07-21 14:31:39.941413', 'ADJUSTMENT', 100, 18, 1, 'StockAdjustment', 18, NULL),
('2023-07-21 14:31:39.971177', '2023-07-21 14:31:39.971177', 'ADJUSTMENT', 100, 19, 1, 'StockAdjustment', 19, NULL),
('2023-07-21 14:31:40.061801', '2023-07-21 14:31:40.061801', 'ADJUSTMENT', 100, 20, 1, 'StockAdjustment', 20, NULL),
('2023-07-21 14:31:40.104636', '2023-07-21 14:31:40.104636', 'ADJUSTMENT', 100, 21, 1, 'StockAdjustment', 21, NULL),
('2023-07-21 14:31:40.138503', '2023-07-21 14:31:40.138503', 'ADJUSTMENT', 100, 22, 1, 'StockAdjustment', 22, NULL),
('2023-07-21 14:31:40.243190', '2023-07-21 14:31:40.243190', 'ADJUSTMENT', 100, 23, 1, 'StockAdjustment', 23, NULL),
('2023-07-21 14:31:40.349091', '2023-07-21 14:31:40.349091', 'ADJUSTMENT', 100, 24, 1, 'StockAdjustment', 24, NULL),
('2023-07-21 14:31:40.534524', '2023-07-21 14:31:40.534524', 'ADJUSTMENT', 100, 25, 1, 'StockAdjustment', 25, NULL),
('2023-07-21 14:31:40.771467', '2023-07-21 14:31:40.771467', 'ADJUSTMENT', 100, 26, 1, 'StockAdjustment', 26, NULL),
('2023-07-21 14:31:40.961546', '2023-07-21 14:31:40.961546', 'ADJUSTMENT', 100, 27, 1, 'StockAdjustment', 27, NULL),
('2023-07-21 14:31:41.063530', '2023-07-21 14:31:41.063530', 'ADJUSTMENT', 100, 28, 1, 'StockAdjustment', 28, NULL),
('2023-07-21 14:31:41.307045', '2023-07-21 14:31:41.307045', 'ADJUSTMENT', 100, 29, 1, 'StockAdjustment', 29, NULL),
('2023-07-21 14:31:41.508555', '2023-07-21 14:31:41.508555', 'ADJUSTMENT', 100, 30, 1, 'StockAdjustment', 30, NULL),
('2023-07-21 14:31:41.693878', '2023-07-21 14:31:41.693878', 'ADJUSTMENT', 100, 31, 1, 'StockAdjustment', 31, NULL),
('2023-07-21 14:31:41.771607', '2023-07-21 14:31:41.771607', 'ADJUSTMENT', 100, 32, 1, 'StockAdjustment', 32, NULL),
('2023-07-21 14:31:41.870926', '2023-07-21 14:31:41.870926', 'ADJUSTMENT', 100, 33, 1, 'StockAdjustment', 33, NULL),
('2023-07-21 14:31:41.974997', '2023-07-21 14:31:41.974997', 'ADJUSTMENT', 100, 34, 1, 'StockAdjustment', 34, NULL),
('2023-07-21 14:31:42.092730', '2023-07-21 14:31:42.092730', 'ADJUSTMENT', 100, 35, 1, 'StockAdjustment', 35, NULL),
('2023-07-21 14:31:42.311314', '2023-07-21 14:31:42.311314', 'ADJUSTMENT', 100, 36, 1, 'StockAdjustment', 36, NULL),
('2023-07-21 14:31:42.422674', '2023-07-21 14:31:42.422674', 'ADJUSTMENT', 100, 37, 1, 'StockAdjustment', 37, NULL),
('2023-07-21 14:31:42.503318', '2023-07-21 14:31:42.503318', 'ADJUSTMENT', 100, 38, 1, 'StockAdjustment', 38, NULL),
('2023-07-21 14:31:42.734636', '2023-07-21 14:31:42.734636', 'ADJUSTMENT', 100, 39, 1, 'StockAdjustment', 39, NULL),
('2023-07-21 14:31:42.893312', '2023-07-21 14:31:42.893312', 'ADJUSTMENT', 100, 40, 1, 'StockAdjustment', 40, NULL),
('2023-07-21 14:31:43.021696', '2023-07-21 14:31:43.021696', 'ADJUSTMENT', 100, 41, 1, 'StockAdjustment', 41, NULL),
('2023-07-21 14:31:43.098807', '2023-07-21 14:31:43.098807', 'ADJUSTMENT', 100, 42, 1, 'StockAdjustment', 42, NULL),
('2023-07-21 14:31:43.378161', '2023-07-21 14:31:43.378161', 'ADJUSTMENT', 100, 43, 1, 'StockAdjustment', 43, NULL),
('2023-07-21 14:31:43.401715', '2023-07-21 14:31:43.401715', 'ADJUSTMENT', 100, 44, 1, 'StockAdjustment', 44, NULL),
('2023-07-21 14:31:43.428918', '2023-07-21 14:31:43.428918', 'ADJUSTMENT', 100, 45, 1, 'StockAdjustment', 45, NULL),
('2023-07-21 14:31:43.453242', '2023-07-21 14:31:43.453242', 'ADJUSTMENT', 100, 46, 1, 'StockAdjustment', 46, NULL),
('2023-07-21 14:31:43.731100', '2023-07-21 14:31:43.731100', 'ADJUSTMENT', 100, 47, 1, 'StockAdjustment', 47, NULL),
('2023-07-21 14:31:43.770029', '2023-07-21 14:31:43.770029', 'ADJUSTMENT', 100, 48, 1, 'StockAdjustment', 48, NULL),
('2023-07-21 14:31:43.797100', '2023-07-21 14:31:43.797100', 'ADJUSTMENT', 100, 49, 1, 'StockAdjustment', 49, NULL),
('2023-07-21 14:31:43.834826', '2023-07-21 14:31:43.834826', 'ADJUSTMENT', 100, 50, 1, 'StockAdjustment', 50, NULL),
('2023-07-21 14:31:44.038710', '2023-07-21 14:31:44.038710', 'ADJUSTMENT', 100, 51, 1, 'StockAdjustment', 51, NULL),
('2023-07-21 14:31:44.063261', '2023-07-21 14:31:44.063261', 'ADJUSTMENT', 100, 52, 1, 'StockAdjustment', 52, NULL),
('2023-07-21 14:31:44.086433', '2023-07-21 14:31:44.086433', 'ADJUSTMENT', 100, 53, 1, 'StockAdjustment', 53, NULL),
('2023-07-21 14:31:44.112324', '2023-07-21 14:31:44.112324', 'ADJUSTMENT', 100, 54, 1, 'StockAdjustment', 54, NULL),
('2023-07-21 14:31:44.356169', '2023-07-21 14:31:44.356169', 'ADJUSTMENT', 100, 55, 1, 'StockAdjustment', 55, NULL),
('2023-07-21 14:31:44.398643', '2023-07-21 14:31:44.398643', 'ADJUSTMENT', 100, 56, 1, 'StockAdjustment', 56, NULL),
('2023-07-21 14:31:44.426918', '2023-07-21 14:31:44.426918', 'ADJUSTMENT', 100, 57, 1, 'StockAdjustment', 57, NULL),
('2023-07-21 14:31:44.452761', '2023-07-21 14:31:44.452761', 'ADJUSTMENT', 100, 58, 1, 'StockAdjustment', 58, NULL),
('2023-07-21 14:31:44.582099', '2023-07-21 14:31:44.582099', 'ADJUSTMENT', 100, 59, 1, 'StockAdjustment', 59, NULL),
('2023-07-21 14:31:44.609957', '2023-07-21 14:31:44.609957', 'ADJUSTMENT', 100, 60, 1, 'StockAdjustment', 60, NULL),
('2023-07-21 14:31:44.635015', '2023-07-21 14:31:44.635015', 'ADJUSTMENT', 100, 61, 1, 'StockAdjustment', 61, NULL),
('2023-07-21 14:31:44.660813', '2023-07-21 14:31:44.660813', 'ADJUSTMENT', 100, 62, 1, 'StockAdjustment', 62, NULL),
('2023-07-21 14:31:44.912442', '2023-07-21 14:31:44.912442', 'ADJUSTMENT', 100, 63, 1, 'StockAdjustment', 63, NULL),
('2023-07-21 14:31:44.935825', '2023-07-21 14:31:44.935825', 'ADJUSTMENT', 100, 64, 1, 'StockAdjustment', 64, NULL),
('2023-07-21 14:31:44.960242', '2023-07-21 14:31:44.960242', 'ADJUSTMENT', 100, 65, 1, 'StockAdjustment', 65, NULL),
('2023-07-21 14:31:44.984634', '2023-07-21 14:31:44.984634', 'ADJUSTMENT', 100, 66, 1, 'StockAdjustment', 66, NULL),
('2023-07-21 14:31:45.396549', '2023-07-21 14:31:45.396549', 'ADJUSTMENT', 100, 67, 1, 'StockAdjustment', 67, NULL),
('2023-07-21 14:31:45.508738', '2023-07-21 14:31:45.508738', 'ADJUSTMENT', 100, 68, 1, 'StockAdjustment', 68, NULL),
('2023-07-21 14:31:45.597625', '2023-07-21 14:31:45.597625', 'ADJUSTMENT', 100, 69, 1, 'StockAdjustment', 69, NULL),
('2023-07-21 14:31:45.682513', '2023-07-21 14:31:45.682513', 'ADJUSTMENT', 100, 70, 1, 'StockAdjustment', 70, NULL),
('2023-07-21 14:31:45.787538', '2023-07-21 14:31:45.787538', 'ADJUSTMENT', 100, 71, 1, 'StockAdjustment', 71, NULL),
('2023-07-21 14:31:45.886594', '2023-07-21 14:31:45.886594', 'ADJUSTMENT', 100, 72, 1, 'StockAdjustment', 72, NULL),
('2023-07-21 14:31:45.974920', '2023-07-21 14:31:45.974920', 'ADJUSTMENT', 100, 73, 1, 'StockAdjustment', 73, NULL),
('2023-07-21 14:31:46.061400', '2023-07-21 14:31:46.061400', 'ADJUSTMENT', 100, 74, 1, 'StockAdjustment', 74, NULL),
('2023-07-21 14:31:46.294529', '2023-07-21 14:31:46.294529', 'ADJUSTMENT', 100, 75, 1, 'StockAdjustment', 75, NULL),
('2023-07-21 14:31:46.496617', '2023-07-21 14:31:46.496617', 'ADJUSTMENT', 100, 76, 1, 'StockAdjustment', 76, NULL),
('2023-07-21 14:31:46.570204', '2023-07-21 14:31:46.570204', 'ADJUSTMENT', 100, 77, 1, 'StockAdjustment', 77, NULL),
('2023-07-21 14:31:47.346320', '2023-07-21 14:31:47.346320', 'ADJUSTMENT', 100, 78, 1, 'StockAdjustment', 78, NULL),
('2023-07-21 14:31:47.581165', '2023-07-21 14:31:47.581165', 'ADJUSTMENT', 100, 79, 1, 'StockAdjustment', 79, NULL),
('2023-07-21 14:31:47.694709', '2023-07-21 14:31:47.694709', 'ADJUSTMENT', 100, 80, 1, 'StockAdjustment', 80, NULL),
('2023-07-21 14:31:47.876401', '2023-07-21 14:31:47.876401', 'ADJUSTMENT', 100, 81, 1, 'StockAdjustment', 81, NULL),
('2023-07-21 14:31:48.064973', '2023-07-21 14:31:48.064973', 'ADJUSTMENT', 100, 82, 1, 'StockAdjustment', 82, NULL),
('2023-07-21 14:31:48.163364', '2023-07-21 14:31:48.163364', 'ADJUSTMENT', 100, 83, 1, 'StockAdjustment', 83, NULL),
('2023-07-21 14:31:48.373924', '2023-07-21 14:31:48.373924', 'ADJUSTMENT', 100, 84, 1, 'StockAdjustment', 84, NULL),
('2023-07-21 14:31:48.534417', '2023-07-21 14:31:48.534417', 'ADJUSTMENT', 100, 85, 1, 'StockAdjustment', 85, NULL),
('2023-07-21 14:31:48.732695', '2023-07-21 14:31:48.732695', 'ADJUSTMENT', 100, 86, 1, 'StockAdjustment', 86, NULL),
('2023-07-21 14:31:48.783369', '2023-07-21 14:31:48.783369', 'ADJUSTMENT', 100, 87, 1, 'StockAdjustment', 87, NULL),
('2023-07-21 14:31:48.808760', '2023-07-21 14:31:48.808760', 'ADJUSTMENT', 100, 88, 1, 'StockAdjustment', 88, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surcharge`
--

CREATE TABLE `surcharge` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `description` varchar(255) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `listPrice` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `orderModificationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `value` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_category`
--

CREATE TABLE `tax_category` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_category`
--

INSERT INTO `tax_category` (`createdAt`, `updatedAt`, `name`, `isDefault`, `id`) VALUES
('2023-07-21 14:31:37.198216', '2023-07-21 14:31:37.198216', 'Standard Tax', 0, 1),
('2023-07-21 14:31:37.279384', '2023-07-21 14:31:37.279384', 'Reduced Tax', 0, 2),
('2023-07-21 14:31:37.349754', '2023-07-21 14:31:37.349754', 'Zero Tax', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `value` decimal(5,2) NOT NULL,
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `zoneId` int(11) DEFAULT NULL,
  `customerGroupId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`createdAt`, `updatedAt`, `name`, `enabled`, `value`, `id`, `categoryId`, `zoneId`, `customerGroupId`) VALUES
('2023-07-21 14:31:37.212011', '2023-07-21 14:31:37.212011', 'Standard Tax Asia', 1, '20.00', 1, 1, 1, NULL),
('2023-07-21 14:31:37.223478', '2023-07-21 14:31:37.223478', 'Standard Tax Europe', 1, '20.00', 2, 1, 2, NULL),
('2023-07-21 14:31:37.242898', '2023-07-21 14:31:37.242898', 'Standard Tax Africa', 1, '20.00', 3, 1, 3, NULL),
('2023-07-21 14:31:37.257313', '2023-07-21 14:31:37.257313', 'Standard Tax Oceania', 1, '20.00', 4, 1, 4, NULL),
('2023-07-21 14:31:37.270623', '2023-07-21 14:31:37.270623', 'Standard Tax Americas', 1, '20.00', 5, 1, 5, NULL),
('2023-07-21 14:31:37.287255', '2023-07-21 14:31:37.287255', 'Reduced Tax Asia', 1, '10.00', 6, 2, 1, NULL),
('2023-07-21 14:31:37.297761', '2023-07-21 14:31:37.297761', 'Reduced Tax Europe', 1, '10.00', 7, 2, 2, NULL),
('2023-07-21 14:31:37.319239', '2023-07-21 14:31:37.319239', 'Reduced Tax Africa', 1, '10.00', 8, 2, 3, NULL),
('2023-07-21 14:31:37.328838', '2023-07-21 14:31:37.328838', 'Reduced Tax Oceania', 1, '10.00', 9, 2, 4, NULL),
('2023-07-21 14:31:37.339379', '2023-07-21 14:31:37.339379', 'Reduced Tax Americas', 1, '10.00', 10, 2, 5, NULL),
('2023-07-21 14:31:37.356587', '2023-07-21 14:31:37.356587', 'Zero Tax Asia', 1, '0.00', 11, 3, 1, NULL),
('2023-07-21 14:31:37.370621', '2023-07-21 14:31:37.370621', 'Zero Tax Europe', 1, '0.00', 12, 3, 2, NULL),
('2023-07-21 14:31:37.382581', '2023-07-21 14:31:37.382581', 'Zero Tax Africa', 1, '0.00', 13, 3, 3, NULL),
('2023-07-21 14:31:37.393392', '2023-07-21 14:31:37.393392', 'Zero Tax Oceania', 1, '0.00', 14, 3, 4, NULL),
('2023-07-21 14:31:37.412424', '2023-07-21 14:31:37.412424', 'Zero Tax Americas', 1, '0.00', 15, 3, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `lastLogin` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `deletedAt`, `identifier`, `verified`, `lastLogin`, `id`) VALUES
('2023-07-21 14:31:24.756503', '2023-07-24 09:48:42.000000', NULL, 'superadmin', 1, '2023-07-24 03:48:42', 1),
('2023-07-24 09:26:23.978219', '2023-07-24 09:26:23.978219', NULL, '9876543211@kaikani.com', 0, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_role`
--

CREATE TABLE `user_roles_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles_role`
--

INSERT INTO `user_roles_role` (`userId`, `roleId`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`createdAt`, `updatedAt`, `name`, `id`) VALUES
('2023-07-21 14:31:28.733223', '2023-07-21 14:31:28.733223', 'Asia', 1),
('2023-07-21 14:31:28.895762', '2023-07-21 14:31:28.895762', 'Europe', 2),
('2023-07-21 14:31:29.113737', '2023-07-21 14:31:29.113737', 'Africa', 3),
('2023-07-21 14:31:29.214852', '2023-07-21 14:31:29.214852', 'Oceania', 4),
('2023-07-21 14:31:29.612787', '2023-07-21 14:31:29.612787', 'Americas', 5);

-- --------------------------------------------------------

--
-- Table structure for table `zone_members_region`
--

CREATE TABLE `zone_members_region` (
  `zoneId` int(11) NOT NULL,
  `regionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zone_members_region`
--

INSERT INTO `zone_members_region` (`zoneId`, `regionId`) VALUES
(1, 1),
(1, 11),
(1, 15),
(1, 17),
(1, 18),
(1, 25),
(1, 33),
(1, 38),
(1, 45),
(1, 58),
(1, 82),
(1, 100),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 109),
(1, 112),
(1, 114),
(1, 115),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 124),
(1, 131),
(1, 135),
(1, 136),
(1, 148),
(1, 153),
(1, 156),
(1, 167),
(1, 168),
(1, 170),
(1, 175),
(1, 180),
(1, 195),
(1, 200),
(1, 210),
(1, 216),
(1, 217),
(1, 218),
(1, 220),
(1, 221),
(1, 227),
(1, 228),
(1, 233),
(1, 238),
(1, 241),
(1, 246),
(2, 2),
(2, 3),
(2, 6),
(2, 14),
(2, 20),
(2, 21),
(2, 28),
(2, 34),
(2, 55),
(2, 59),
(2, 60),
(2, 69),
(2, 73),
(2, 75),
(2, 76),
(2, 83),
(2, 85),
(2, 86),
(2, 92),
(2, 98),
(2, 101),
(2, 102),
(2, 107),
(2, 108),
(2, 110),
(2, 113),
(2, 123),
(2, 128),
(2, 129),
(2, 130),
(2, 132),
(2, 138),
(2, 146),
(2, 147),
(2, 149),
(2, 157),
(2, 166),
(2, 177),
(2, 178),
(2, 182),
(2, 183),
(2, 193),
(2, 197),
(2, 202),
(2, 203),
(2, 209),
(2, 213),
(2, 214),
(2, 215),
(2, 232),
(2, 234),
(3, 4),
(3, 7),
(3, 23),
(3, 29),
(3, 32),
(3, 35),
(3, 36),
(3, 37),
(3, 39),
(3, 42),
(3, 43),
(3, 49),
(3, 50),
(3, 51),
(3, 54),
(3, 61),
(3, 65),
(3, 67),
(3, 68),
(3, 70),
(3, 71),
(3, 79),
(3, 80),
(3, 81),
(3, 84),
(3, 93),
(3, 94),
(3, 116),
(3, 125),
(3, 126),
(3, 127),
(3, 133),
(3, 134),
(3, 137),
(3, 141),
(3, 142),
(3, 143),
(3, 151),
(3, 152),
(3, 154),
(3, 161),
(3, 162),
(3, 181),
(3, 184),
(3, 186),
(3, 194),
(3, 196),
(3, 198),
(3, 199),
(3, 205),
(3, 206),
(3, 208),
(3, 211),
(3, 219),
(3, 222),
(3, 226),
(3, 231),
(3, 245),
(3, 247),
(3, 248),
(4, 5),
(4, 13),
(4, 46),
(4, 47),
(4, 52),
(4, 74),
(4, 78),
(4, 90),
(4, 97),
(4, 117),
(4, 139),
(4, 145),
(4, 155),
(4, 158),
(4, 159),
(4, 163),
(4, 164),
(4, 165),
(4, 169),
(4, 172),
(4, 176),
(4, 192),
(4, 204),
(4, 223),
(4, 224),
(4, 230),
(4, 236),
(4, 239),
(4, 244),
(5, 8),
(5, 9),
(5, 10),
(5, 12),
(5, 16),
(5, 19),
(5, 22),
(5, 24),
(5, 26),
(5, 27),
(5, 30),
(5, 31),
(5, 40),
(5, 41),
(5, 44),
(5, 48),
(5, 53),
(5, 56),
(5, 57),
(5, 62),
(5, 63),
(5, 64),
(5, 66),
(5, 72),
(5, 77),
(5, 87),
(5, 88),
(5, 89),
(5, 91),
(5, 95),
(5, 96),
(5, 99),
(5, 111),
(5, 140),
(5, 144),
(5, 150),
(5, 160),
(5, 171),
(5, 173),
(5, 174),
(5, 179),
(5, 185),
(5, 187),
(5, 188),
(5, 189),
(5, 190),
(5, 191),
(5, 201),
(5, 207),
(5, 212),
(5, 225),
(5, 229),
(5, 235),
(5, 237),
(5, 240),
(5, 242),
(5, 243);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_dc34d382b493ade1f70e834c4d` (`customerId`),
  ADD KEY `IDX_d87215343c3a3a67e6a0b7f3ea` (`countryId`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_154f5c538b1576ccc277b1ed63` (`emailAddress`),
  ADD UNIQUE KEY `REL_1966e18ce6a39a82b19204704d` (`userId`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD PRIMARY KEY (`assetId`,`channelId`),
  ADD KEY `IDX_dc4e7435f9f5e9e6436bebd33b` (`assetId`),
  ADD KEY `IDX_16ca9151a5153f1169da5b7b7e` (`channelId`);

--
-- Indexes for table `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD PRIMARY KEY (`assetId`,`tagId`),
  ADD KEY `IDX_9e412b00d4c6cee1a4b3d92071` (`assetId`),
  ADD KEY `IDX_fb5e800171ffbe9823f2cc727f` (`tagId`);

--
-- Indexes for table `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_00cbe87bc0d4e36758d61bd31d` (`userId`),
  ADD KEY `IDX_a23445b2c942d8dfcae15b8de2` (`type`);

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_06127ac6c6d913f4320759971d` (`code`),
  ADD UNIQUE KEY `IDX_842699fce4f3470a7d06d89de8` (`token`),
  ADD KEY `IDX_af2116c7e176b6b88dceceeb74` (`sellerId`),
  ADD KEY `IDX_afe9f917a1c82b9e9e69f7c612` (`defaultTaxZoneId`),
  ADD KEY `IDX_c9ca2f58d4517460435cbd8b4c` (`defaultShippingZoneId`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7256fef1bb42f1b38156b7449f` (`featuredAssetId`),
  ADD KEY `FK_4257b61275144db89fa0f5dc059` (`parentId`);

--
-- Indexes for table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_51da53b26522dc0525762d2de8` (`assetId`),
  ADD KEY `IDX_1ed9e48dfbf74b5fcbb35d3d68` (`collectionId`);

--
-- Indexes for table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD PRIMARY KEY (`collectionId`,`channelId`),
  ADD KEY `IDX_cdbf33ffb5d451916125152008` (`collectionId`),
  ADD KEY `IDX_7216ab24077cf5cbece7857dbb` (`channelId`);

--
-- Indexes for table `collection_closure`
--
ALTER TABLE `collection_closure`
  ADD PRIMARY KEY (`id_ancestor`,`id_descendant`),
  ADD KEY `IDX_c309f8cd152bbeaea08491e0c6` (`id_ancestor`),
  ADD KEY `IDX_457784c710f8ac9396010441f6` (`id_descendant`);

--
-- Indexes for table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD PRIMARY KEY (`collectionId`,`productVariantId`),
  ADD KEY `IDX_6faa7b72422d9c4679e2f186ad` (`collectionId`),
  ADD KEY `IDX_fb05887e2867365f236d7dd95e` (`productVariantId`);

--
-- Indexes for table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9f9da7d94b0278ea0f7831e1fc` (`slug`),
  ADD KEY `IDX_e329f9036210d75caa1d8f2154` (`baseId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_3f62b42ed23958b120c235f74d` (`userId`);

--
-- Indexes for table `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD PRIMARY KEY (`customerId`,`channelId`),
  ADD KEY `IDX_a842c9fe8cd4c8ff31402d172d` (`customerId`),
  ADD KEY `IDX_dc9f69207a8867f83b0fd257e3` (`channelId`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD PRIMARY KEY (`customerId`,`customerGroupId`),
  ADD KEY `IDX_b823a3c8bf3b78d3ed68736485` (`customerId`),
  ADD KEY `IDX_85feea3f0e5e82133605f78db0` (`customerGroupId`);

--
-- Indexes for table `facet`
--
ALTER TABLE `facet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_0c9a5d053fdf4ebb5f0490b40f` (`code`);

--
-- Indexes for table `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD PRIMARY KEY (`facetId`,`channelId`),
  ADD KEY `IDX_ca796020c6d097e251e5d6d2b0` (`facetId`),
  ADD KEY `IDX_2a8ea404d05bf682516184db7d` (`channelId`);

--
-- Indexes for table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_eaea53f44bf9e97790d38a3d68` (`baseId`);

--
-- Indexes for table `facet_value`
--
ALTER TABLE `facet_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_d101dc2265a7341be3d94968c5` (`facetId`);

--
-- Indexes for table `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD PRIMARY KEY (`facetValueId`,`channelId`),
  ADD KEY `IDX_ad690c1b05596d7f52e52ffeed` (`facetValueId`),
  ADD KEY `IDX_e1d54c0b9db3e2eb17faaf5919` (`channelId`);

--
-- Indexes for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3d6e45823b65de808a66cb1423` (`baseId`);

--
-- Indexes for table `fulfillment`
--
ALTER TABLE `fulfillment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_entry`
--
ALTER TABLE `history_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92f8c334ef06275f9586fd0183` (`administratorId`),
  ADD KEY `IDX_43ac602f839847fdb91101f30e` (`customerId`),
  ADD KEY `IDX_3a05127e67435b4d2332ded7c9` (`orderId`),
  ADD KEY `IDX_f3a761f6bcfabb474b11e1e51f` (`discriminator`);

--
-- Indexes for table `job_record`
--
ALTER TABLE `job_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_record_buffer`
--
ALTER TABLE `job_record_buffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_729b3eea7ce540930dbb706949` (`code`),
  ADD KEY `IDX_73a78d7df09541ac5eba620d18` (`aggregateOrderId`),
  ADD KEY `IDX_124456e637cca7a415897dce65` (`customerId`);

--
-- Indexes for table `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD PRIMARY KEY (`orderId`,`channelId`),
  ADD KEY `IDX_0d8e5c204480204a60e151e485` (`orderId`),
  ADD KEY `IDX_d0d16db872499e83b15999f8c7` (`channelId`);

--
-- Indexes for table `order_fulfillments_fulfillment`
--
ALTER TABLE `order_fulfillments_fulfillment`
  ADD PRIMARY KEY (`orderId`,`fulfillmentId`),
  ADD KEY `IDX_f80d84d525af2ffe974e7e8ca2` (`orderId`),
  ADD KEY `IDX_4add5a5796e1582dec2877b289` (`fulfillmentId`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6901d8715f5ebadd764466f7bd` (`sellerChannelId`),
  ADD KEY `IDX_dc9ac68b47da7b62249886affb` (`shippingLineId`),
  ADD KEY `IDX_cbcd22193eda94668e84d33f18` (`productVariantId`),
  ADD KEY `IDX_77be94ce9ec650446617946227` (`taxCategoryId`),
  ADD KEY `IDX_9f065453910ea77d4be8e92618` (`featuredAssetId`),
  ADD KEY `IDX_239cfca2a55b98b90b6bef2e44` (`orderId`);

--
-- Indexes for table `order_line_reference`
--
ALTER TABLE `order_line_reference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7d57857922dfc7303604697dbe` (`orderLineId`),
  ADD KEY `IDX_06b02fb482b188823e419d37bd` (`fulfillmentId`),
  ADD KEY `IDX_22b818af8722746fb9f206068c` (`modificationId`),
  ADD KEY `IDX_30019aa65b17fe9ee962893199` (`refundId`),
  ADD KEY `IDX_49a8632be8cef48b076446b8b9` (`discriminator`);

--
-- Indexes for table `order_modification`
--
ALTER TABLE `order_modification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_ad2991fa2933ed8b7f86a71633` (`paymentId`),
  ADD UNIQUE KEY `REL_cb66b63b6e97613013795eadbd` (`refundId`),
  ADD KEY `IDX_1df5bc14a47ef24d2e681f4559` (`orderId`);

--
-- Indexes for table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD PRIMARY KEY (`orderId`,`promotionId`),
  ADD KEY `IDX_67be0e40122ab30a62a9817efe` (`orderId`),
  ADD KEY `IDX_2c26b988769c0e3b0120bdef31` (`promotionId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_d09d285fe1645cd2f0db811e29` (`orderId`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD PRIMARY KEY (`paymentMethodId`,`channelId`),
  ADD KEY `IDX_5bcb569635ce5407eb3f264487` (`paymentMethodId`),
  ADD KEY `IDX_c00e36f667d35031087b382e61` (`channelId`);

--
-- Indexes for table `payment_method_translation`
--
ALTER TABLE `payment_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_66187f782a3e71b9e0f5b50b68` (`baseId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_91a19e6613534949a4ce6e76ff` (`featuredAssetId`);

--
-- Indexes for table `product_asset`
--
ALTER TABLE `product_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5888ac17b317b93378494a1062` (`assetId`),
  ADD KEY `IDX_0d1294f5c22a56da7845ebab72` (`productId`);

--
-- Indexes for table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD PRIMARY KEY (`productId`,`channelId`),
  ADD KEY `IDX_26d12be3b5fec6c4adb1d79284` (`productId`),
  ADD KEY `IDX_a51dfbd87c330c075c39832b6e` (`channelId`);

--
-- Indexes for table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD PRIMARY KEY (`productId`,`facetValueId`),
  ADD KEY `IDX_6a0558e650d75ae639ff38e413` (`productId`),
  ADD KEY `IDX_06e7d73673ee630e8ec50d0b29` (`facetValueId`);

--
-- Indexes for table `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_a6debf9198e2fbfa006aa10d71` (`groupId`);

--
-- Indexes for table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_a6e91739227bf4d442f23c52c7` (`productId`);

--
-- Indexes for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_93751abc1451972c02e033b766` (`baseId`);

--
-- Indexes for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_a79a443c1f7841f3851767faa6` (`baseId`);

--
-- Indexes for table `product_translation`
--
ALTER TABLE `product_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_f4a2ec16ba86d277b6faa0b67b` (`slug`),
  ADD KEY `IDX_7dbc75cb4e8b002620c4dbfdac` (`baseId`);

--
-- Indexes for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_0e6f516053cf982b537836e21c` (`featuredAssetId`),
  ADD KEY `IDX_e38dca0d82fd64c7cf8aac8b8e` (`taxCategoryId`),
  ADD KEY `IDX_6e420052844edf3a5506d863ce` (`productId`);

--
-- Indexes for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_10b5a2e3dee0e30b1e26c32f5c` (`assetId`),
  ADD KEY `IDX_fa21412afac15a2304f3eb35fe` (`productVariantId`);

--
-- Indexes for table `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD PRIMARY KEY (`productVariantId`,`channelId`),
  ADD KEY `IDX_beeb2b3cd800e589f2213ae99d` (`productVariantId`),
  ADD KEY `IDX_d194bff171b62357688a5d0f55` (`channelId`);

--
-- Indexes for table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD PRIMARY KEY (`productVariantId`,`facetValueId`),
  ADD KEY `IDX_69567bc225b6bbbd732d6c5455` (`productVariantId`),
  ADD KEY `IDX_0d641b761ed1dce4ef3cd33d55` (`facetValueId`);

--
-- Indexes for table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD PRIMARY KEY (`productVariantId`,`productOptionId`),
  ADD KEY `IDX_526f0131260eec308a3bd2b61b` (`productVariantId`),
  ADD KEY `IDX_e96a71affe63c97f7fa2f076da` (`productOptionId`);

--
-- Indexes for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_e6126cd268aea6e9b31d89af9a` (`variantId`);

--
-- Indexes for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_420f4d6fb75d38b9dca79bc43b` (`baseId`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD PRIMARY KEY (`promotionId`,`channelId`),
  ADD KEY `IDX_6d9e2c39ab12391aaa374bcdaa` (`promotionId`),
  ADD KEY `IDX_0eaaf0f4b6c69afde1e88ffb52` (`channelId`);

--
-- Indexes for table `promotion_translation`
--
ALTER TABLE `promotion_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1cc009e9ab2263a35544064561` (`baseId`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1c6932a756108788a361e7d440` (`paymentId`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ed0c8098ce6809925a437f42ae` (`parentId`);

--
-- Indexes for table `region_translation`
--
ALTER TABLE `region_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1afd722b943c81310705fc3e61` (`baseId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD PRIMARY KEY (`roleId`,`channelId`),
  ADD KEY `IDX_bfd2a03e9988eda6a9d1176011` (`roleId`),
  ADD KEY `IDX_e09dfee62b158307404202b43a` (`channelId`);

--
-- Indexes for table `search_index_item`
--
ALTER TABLE `search_index_item`
  ADD PRIMARY KEY (`languageCode`,`productVariantId`,`channelId`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_6fb55742e13e8082954d0436dc` (`productName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_d8791f444a8bf23fe4c1bc020c` (`productVariantName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_9a5a6a556f75c4ac7bfdd03410` (`description`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_232f8e85d7633bd6ddfad42169` (`token`),
  ADD KEY `IDX_7a75399a4f4ffa48ee02e98c05` (`activeOrderId`),
  ADD KEY `IDX_eb87ef1e234444728138302263` (`activeChannelId`),
  ADD KEY `IDX_3d2f174ef04fb312fdebd0ddc5` (`userId`),
  ADD KEY `IDX_e5598363000cab9d9116bd5835` (`type`);

--
-- Indexes for table `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_e2e7642e1e88167c1dfc827fdf` (`shippingMethodId`),
  ADD KEY `IDX_c9f34a440d490d1b66f6829b86` (`orderId`);

--
-- Indexes for table `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD PRIMARY KEY (`shippingMethodId`,`channelId`),
  ADD KEY `IDX_f0a17b94aa5a162f0d422920eb` (`shippingMethodId`),
  ADD KEY `IDX_f2b98dfb56685147bed509acc3` (`channelId`);

--
-- Indexes for table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_85ec26c71067ebc84adcd98d1a` (`baseId`);

--
-- Indexes for table `stock_level`
--
ALTER TABLE `stock_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_7fc20486b8cfd33dc84c96e168` (`productVariantId`,`stockLocationId`),
  ADD KEY `IDX_9950eae3180f39c71978748bd0` (`productVariantId`),
  ADD KEY `IDX_984c48572468c69661a0b7b049` (`stockLocationId`);

--
-- Indexes for table `stock_location`
--
ALTER TABLE `stock_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_location_channels_channel`
--
ALTER TABLE `stock_location_channels_channel`
  ADD PRIMARY KEY (`stockLocationId`,`channelId`),
  ADD KEY `IDX_39513fd02a573c848d23bee587` (`stockLocationId`),
  ADD KEY `IDX_ff8150fe54e56a900d5712671a` (`channelId`);

--
-- Indexes for table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_e65ba3882557cab4febb54809b` (`productVariantId`),
  ADD KEY `IDX_a2fe7172eeae9f1cca86f8f573` (`stockLocationId`),
  ADD KEY `IDX_d2c8d5fca981cc820131f81aa8` (`orderLineId`),
  ADD KEY `IDX_94e15d5f12d355d117390131ac` (`discriminator`);

--
-- Indexes for table `surcharge`
--
ALTER TABLE `surcharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_154eb685f9b629033bd266df7f` (`orderId`),
  ADD KEY `IDX_a49c5271c39cc8174a0535c808` (`orderModificationId`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_category`
--
ALTER TABLE `tax_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7ee3306d7638aa85ca90d67219` (`categoryId`),
  ADD KEY `IDX_9872fc7de2f4e532fd3230d191` (`zoneId`),
  ADD KEY `IDX_8b5ab52fc8887c1a769b9276ca` (`customerGroupId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD PRIMARY KEY (`userId`,`roleId`),
  ADD KEY `IDX_5f9286e6c25594c6b88c108db7` (`userId`),
  ADD KEY `IDX_4be2f7adf862634f5f803d246b` (`roleId`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_members_region`
--
ALTER TABLE `zone_members_region`
  ADD PRIMARY KEY (`zoneId`,`regionId`),
  ADD KEY `IDX_433f45158e4e2b2a2f344714b2` (`zoneId`),
  ADD KEY `IDX_b45b65256486a15a104e17d495` (`regionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `authentication_method`
--
ALTER TABLE `authentication_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `collection_asset`
--
ALTER TABLE `collection_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `collection_translation`
--
ALTER TABLE `collection_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facet`
--
ALTER TABLE `facet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facet_translation`
--
ALTER TABLE `facet_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facet_value`
--
ALTER TABLE `facet_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `fulfillment`
--
ALTER TABLE `fulfillment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history_entry`
--
ALTER TABLE `history_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_record`
--
ALTER TABLE `job_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_record_buffer`
--
ALTER TABLE `job_record_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_line_reference`
--
ALTER TABLE `order_line_reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_modification`
--
ALTER TABLE `order_modification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_method_translation`
--
ALTER TABLE `payment_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_asset`
--
ALTER TABLE `product_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_option_group`
--
ALTER TABLE `product_option_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_translation`
--
ALTER TABLE `product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion_translation`
--
ALTER TABLE `promotion_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `region_translation`
--
ALTER TABLE `region_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_line`
--
ALTER TABLE `shipping_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_level`
--
ALTER TABLE `stock_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `stock_location`
--
ALTER TABLE `stock_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock_movement`
--
ALTER TABLE `stock_movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `surcharge`
--
ALTER TABLE `surcharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_category`
--
ALTER TABLE `tax_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_d87215343c3a3a67e6a0b7f3ea9` FOREIGN KEY (`countryId`) REFERENCES `region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_dc34d382b493ade1f70e834c4d3` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `FK_1966e18ce6a39a82b19204704d7` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD CONSTRAINT `FK_16ca9151a5153f1169da5b7b7e3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dc4e7435f9f5e9e6436bebd33bb` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD CONSTRAINT `FK_9e412b00d4c6cee1a4b3d920716` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fb5e800171ffbe9823f2cc727fd` FOREIGN KEY (`tagId`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD CONSTRAINT `FK_00cbe87bc0d4e36758d61bd31d6` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `channel`
--
ALTER TABLE `channel`
  ADD CONSTRAINT `FK_af2116c7e176b6b88dceceeb74b` FOREIGN KEY (`sellerId`) REFERENCES `seller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_afe9f917a1c82b9e9e69f7c6129` FOREIGN KEY (`defaultTaxZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_c9ca2f58d4517460435cbd8b4c9` FOREIGN KEY (`defaultShippingZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK_4257b61275144db89fa0f5dc059` FOREIGN KEY (`parentId`) REFERENCES `collection` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7256fef1bb42f1b38156b7449f5` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD CONSTRAINT `FK_1ed9e48dfbf74b5fcbb35d3d686` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_51da53b26522dc0525762d2de8e` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD CONSTRAINT `FK_7216ab24077cf5cbece7857dbbd` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_cdbf33ffb5d4519161251520083` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `collection_closure`
--
ALTER TABLE `collection_closure`
  ADD CONSTRAINT `FK_457784c710f8ac9396010441f6c` FOREIGN KEY (`id_descendant`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_c309f8cd152bbeaea08491e0c66` FOREIGN KEY (`id_ancestor`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD CONSTRAINT `FK_6faa7b72422d9c4679e2f186ad1` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fb05887e2867365f236d7dd95ee` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD CONSTRAINT `FK_e329f9036210d75caa1d8f2154a` FOREIGN KEY (`baseId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_3f62b42ed23958b120c235f74df` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD CONSTRAINT `FK_a842c9fe8cd4c8ff31402d172d7` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dc9f69207a8867f83b0fd257e30` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD CONSTRAINT `FK_85feea3f0e5e82133605f78db02` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_b823a3c8bf3b78d3ed68736485c` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD CONSTRAINT `FK_2a8ea404d05bf682516184db7d3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ca796020c6d097e251e5d6d2b02` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD CONSTRAINT `FK_eaea53f44bf9e97790d38a3d68f` FOREIGN KEY (`baseId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_value`
--
ALTER TABLE `facet_value`
  ADD CONSTRAINT `FK_d101dc2265a7341be3d94968c5b` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD CONSTRAINT `FK_ad690c1b05596d7f52e52ffeedd` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e1d54c0b9db3e2eb17faaf5919c` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD CONSTRAINT `FK_3d6e45823b65de808a66cb1423b` FOREIGN KEY (`baseId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `history_entry`
--
ALTER TABLE `history_entry`
  ADD CONSTRAINT `FK_3a05127e67435b4d2332ded7c9e` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_43ac602f839847fdb91101f30ec` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_92f8c334ef06275f9586fd01832` FOREIGN KEY (`administratorId`) REFERENCES `administrator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_124456e637cca7a415897dce659` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_73a78d7df09541ac5eba620d181` FOREIGN KEY (`aggregateOrderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD CONSTRAINT `FK_0d8e5c204480204a60e151e4853` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d0d16db872499e83b15999f8c7a` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_fulfillments_fulfillment`
--
ALTER TABLE `order_fulfillments_fulfillment`
  ADD CONSTRAINT `FK_4add5a5796e1582dec2877b2898` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_f80d84d525af2ffe974e7e8ca29` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `FK_239cfca2a55b98b90b6bef2e44f` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6901d8715f5ebadd764466f7bde` FOREIGN KEY (`sellerChannelId`) REFERENCES `channel` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_77be94ce9ec6504466179462275` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9f065453910ea77d4be8e92618f` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cbcd22193eda94668e84d33f185` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_dc9ac68b47da7b62249886affba` FOREIGN KEY (`shippingLineId`) REFERENCES `shipping_line` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `order_line_reference`
--
ALTER TABLE `order_line_reference`
  ADD CONSTRAINT `FK_06b02fb482b188823e419d37bd4` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_22b818af8722746fb9f206068c2` FOREIGN KEY (`modificationId`) REFERENCES `order_modification` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_30019aa65b17fe9ee9628931991` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7d57857922dfc7303604697dbe9` FOREIGN KEY (`orderLineId`) REFERENCES `order_line` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_modification`
--
ALTER TABLE `order_modification`
  ADD CONSTRAINT `FK_1df5bc14a47ef24d2e681f45598` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ad2991fa2933ed8b7f86a716338` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cb66b63b6e97613013795eadbd5` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD CONSTRAINT `FK_2c26b988769c0e3b0120bdef31b` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_67be0e40122ab30a62a9817efe0` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_d09d285fe1645cd2f0db811e293` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD CONSTRAINT `FK_5bcb569635ce5407eb3f264487d` FOREIGN KEY (`paymentMethodId`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_c00e36f667d35031087b382e61b` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_method_translation`
--
ALTER TABLE `payment_method_translation`
  ADD CONSTRAINT `FK_66187f782a3e71b9e0f5b50b68b` FOREIGN KEY (`baseId`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_91a19e6613534949a4ce6e76ff8` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `product_asset`
--
ALTER TABLE `product_asset`
  ADD CONSTRAINT `FK_0d1294f5c22a56da7845ebab72c` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_5888ac17b317b93378494a10620` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD CONSTRAINT `FK_26d12be3b5fec6c4adb1d792844` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_a51dfbd87c330c075c39832b6e7` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD CONSTRAINT `FK_06e7d73673ee630e8ec50d0b29f` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6a0558e650d75ae639ff38e413a` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_option`
--
ALTER TABLE `product_option`
  ADD CONSTRAINT `FK_a6debf9198e2fbfa006aa10d710` FOREIGN KEY (`groupId`) REFERENCES `product_option_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD CONSTRAINT `FK_a6e91739227bf4d442f23c52c75` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD CONSTRAINT `FK_93751abc1451972c02e033b766c` FOREIGN KEY (`baseId`) REFERENCES `product_option_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD CONSTRAINT `FK_a79a443c1f7841f3851767faa6d` FOREIGN KEY (`baseId`) REFERENCES `product_option` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_translation`
--
ALTER TABLE `product_translation`
  ADD CONSTRAINT `FK_7dbc75cb4e8b002620c4dbfdac5` FOREIGN KEY (`baseId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD CONSTRAINT `FK_0e6f516053cf982b537836e21cf` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6e420052844edf3a5506d863ce6` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e38dca0d82fd64c7cf8aac8b8ef` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD CONSTRAINT `FK_10b5a2e3dee0e30b1e26c32f5c7` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_fa21412afac15a2304f3eb35feb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD CONSTRAINT `FK_beeb2b3cd800e589f2213ae99d6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d194bff171b62357688a5d0f559` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD CONSTRAINT `FK_0d641b761ed1dce4ef3cd33d559` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_69567bc225b6bbbd732d6c5455b` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD CONSTRAINT `FK_526f0131260eec308a3bd2b61b6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e96a71affe63c97f7fa2f076dac` FOREIGN KEY (`productOptionId`) REFERENCES `product_option` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD CONSTRAINT `FK_e6126cd268aea6e9b31d89af9ab` FOREIGN KEY (`variantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD CONSTRAINT `FK_420f4d6fb75d38b9dca79bc43b4` FOREIGN KEY (`baseId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD CONSTRAINT `FK_0eaaf0f4b6c69afde1e88ffb52d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6d9e2c39ab12391aaa374bcdaa4` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotion_translation`
--
ALTER TABLE `promotion_translation`
  ADD CONSTRAINT `FK_1cc009e9ab2263a35544064561b` FOREIGN KEY (`baseId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `FK_1c6932a756108788a361e7d4404` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `FK_ed0c8098ce6809925a437f42aec` FOREIGN KEY (`parentId`) REFERENCES `region` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `region_translation`
--
ALTER TABLE `region_translation`
  ADD CONSTRAINT `FK_1afd722b943c81310705fc3e612` FOREIGN KEY (`baseId`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD CONSTRAINT `FK_bfd2a03e9988eda6a9d11760119` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e09dfee62b158307404202b43a5` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FK_3d2f174ef04fb312fdebd0ddc53` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7a75399a4f4ffa48ee02e98c059` FOREIGN KEY (`activeOrderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_eb87ef1e234444728138302263b` FOREIGN KEY (`activeChannelId`) REFERENCES `channel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD CONSTRAINT `FK_c9f34a440d490d1b66f6829b86c` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e2e7642e1e88167c1dfc827fdf3` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD CONSTRAINT `FK_f0a17b94aa5a162f0d422920eb2` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_f2b98dfb56685147bed509acc3d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD CONSTRAINT `FK_85ec26c71067ebc84adcd98d1a5` FOREIGN KEY (`baseId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stock_level`
--
ALTER TABLE `stock_level`
  ADD CONSTRAINT `FK_984c48572468c69661a0b7b0494` FOREIGN KEY (`stockLocationId`) REFERENCES `stock_location` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9950eae3180f39c71978748bd08` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stock_location_channels_channel`
--
ALTER TABLE `stock_location_channels_channel`
  ADD CONSTRAINT `FK_39513fd02a573c848d23bee587d` FOREIGN KEY (`stockLocationId`) REFERENCES `stock_location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ff8150fe54e56a900d5712671a0` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD CONSTRAINT `FK_a2fe7172eeae9f1cca86f8f573a` FOREIGN KEY (`stockLocationId`) REFERENCES `stock_location` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_d2c8d5fca981cc820131f81aa83` FOREIGN KEY (`orderLineId`) REFERENCES `order_line` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e65ba3882557cab4febb54809bb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `surcharge`
--
ALTER TABLE `surcharge`
  ADD CONSTRAINT `FK_154eb685f9b629033bd266df7fa` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_a49c5271c39cc8174a0535c8088` FOREIGN KEY (`orderModificationId`) REFERENCES `order_modification` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD CONSTRAINT `FK_7ee3306d7638aa85ca90d672198` FOREIGN KEY (`categoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_8b5ab52fc8887c1a769b9276caf` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9872fc7de2f4e532fd3230d1915` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD CONSTRAINT `FK_4be2f7adf862634f5f803d246b8` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_5f9286e6c25594c6b88c108db77` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zone_members_region`
--
ALTER TABLE `zone_members_region`
  ADD CONSTRAINT `FK_433f45158e4e2b2a2f344714b22` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_b45b65256486a15a104e17d495c` FOREIGN KEY (`regionId`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
