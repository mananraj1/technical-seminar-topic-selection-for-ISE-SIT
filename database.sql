-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2022 at 10:00 PM
-- Server version: 10.3.37-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mananise_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(28) NOT NULL,
  `topic_name` text DEFAULT NULL,
  `usn` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `UDT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic_name`, `usn`, `ip`, `UDT`) VALUES
(1, 'PARAM Ananta - Super computer', '1SI19IS014', '122.172.86.194', '2022-12-22 02:43:11'),
(2, 'Hybrid cloud computing', '1SI19IS024', '61.1.116.149', '2022-12-21 07:30:27'),
(3, 'Rapid miner and Presto', '1SI19IS032', '14.97.164.38', '2022-12-21 08:02:52'),
(4, 'Federated learning', '1SI19IS041', '2409:4071:2003:2cd3::1666:d0a1', '2022-12-21 07:36:01'),
(5, 'Audio fingerprinting', '1SI19IS018', '117.230.183.2', '2022-12-21 07:30:56'),
(6, 'Wi-fi 6 and 5G technology', '1SI19IS040', '2409:4071:4e8a:1152:25ec:c848:16c4:6128', '2022-12-21 07:30:30'),
(7, 'V2X wireless technology', '1SI19IS006', '2409:4071:6e1e:d6ce:cff9:5101:69fb:44ca', '2022-12-21 07:37:55'),
(8, 'Extended reality', '1SI19IS061', '122.172.86.194', '2022-12-21 07:30:17'),
(9, 'Pervasive automation', '1SI19IS054', '2405:204:5407:d4d1:f077:c5ff:fec0:5e27', '2022-12-21 07:52:53'),
(10, 'Zero trust in information security', '1SI19IS035', '2401:4900:49a2:e15d:940c:9530:d4a9:46', '2022-12-21 07:30:19'),
(11, 'Blockchain application in adaptive security', '1si19is013', '2401:4900:4bcf:2bdc:b5d7:ecdd:8574:7593', '2022-12-21 07:30:30'),
(12, 'Bioinformatics in healthcare', '1SI19IS049', '61.1.116.149', '2022-12-21 07:30:36'),
(13, 'Kotlin -A general-purpose programming language', '1SI19IS028', '2405:204:551a:de57:53dd:a31a:6ce6:b922', '2022-12-21 07:30:22'),
(14, '\"Hack the box\" in cybersecurity.', '1si19is066', '2409:4071:248e:30c5:f1c6:fc57:8db6:6959', '2022-12-21 07:33:42'),
(15, 'Kotlin: Demonstrate the salient features of Kotlin. Conduct suitable literature survey to justify your demonstration.', '1SI19IS023', '2409:4071:d09:763c:d070:9105:5dd7:aa91', '2022-12-21 07:30:27'),
(16, 'DevOps: Present the key concept of DevOps and identify its strength and suitability.', '1SI19IS060 ', '2401:4900:33b1:e170:2:1:99f8:1677', '2022-12-21 07:30:22'),
(17, 'RevWay sort Algorithm.', '1SI19IS019', '2401:4900:33b8:ed5e:b445:9c20:8569:acf0', '2022-12-21 07:32:47'),
(18, 'Memoryless computation.', '1SI19IS026', '61.1.116.149', '2022-12-21 07:30:59'),
(19, 'Tianjic Neuromorphic Chip.', '1SI19IS063', '61.1.116.149', '2022-12-21 07:33:52'),
(20, 'Futex', '1SI19IS012 ', '2401:4900:4bc4:6fec:1:0:4d0d:504d', '2022-12-21 07:30:22'),
(21, 'iTwin', '1SI19IS029', '2409:4071:6e1f:b29e:4f4c:15e8:32:5a20', '2022-12-21 07:58:25'),
(22, 'Iris Scanning', '1SI19IS004 ', '117.230.183.2', '2022-12-21 07:30:19'),
(23, 'Finger Reader', '1si19is005', '2409:4071:6e1e:d6ce:cff9:5101:69fb:44ca', '2022-12-21 07:30:31'),
(24, 'Voice Browser', '1SI19IS039', '122.172.84.54', '2022-12-21 07:30:46'),
(25, 'Haptic Technology', '1SI19IS003', '2409:4071:209d:cfbe:b8aa:5012:d8f5:5d7d', '2022-12-21 07:30:58'),
(26, 'Crypto watermarking', '1SI19IS051', '122.172.84.54', '2022-12-21 07:31:18'),
(27, 'Crypto currency', '1SI19IS042', '2401:4900:4a68:326c:b4ec:212f:969d:3fe6', '2022-12-21 07:30:26'),
(28, 'Pill camera in medicine', '1si19is031', '2405:201:d022:806b:94f3:2ef4:d1a1:f7ed', '2022-12-21 07:30:31'),
(29, 'Silverlight.', '1SI20IS402', '2401:4900:16f3:6a14:1:2:2d1e:ed82', '2022-12-21 07:32:03'),
(30, 'E-Mine: A Novel Web Mining Approach', '1SI20IS405', '2401:4900:32b9:c7d0::63e:d5a', '2022-12-21 07:35:37'),
(31, 'Brain Gate Technology', ' 1si20is052', '2405:204:5207:1e54:58f5:6cff:fe9c:2901', '2022-12-21 07:32:49'),
(32, 'Biometrics In Secure E-Transaction', '1SI19IS007 ', '2401:4900:63fe:9e58::430:15a8', '2022-12-21 07:31:13'),
(33, 'Aspect-Oriented Programming (AOP)', '1SI19IS008', '2409:4071:4e1f:b01b:5eba:9d2e:c12b:a0a7', '2022-12-21 07:30:18'),
(34, 'Aqua Communication Using Modem', '1SI19IS009', '2401:4900:63fe:9e58:5dab:ec49:fe36:2b72', '2022-12-21 07:32:44'),
(35, 'Advanced Web Development Techniques', '1si19is016', '2405:201:d010:e0fe:689d:5188:b857:3436', '2022-12-21 07:31:57'),
(36, '3d Searching', '1SI19IS044', '2401:4900:63e2:2032:f172:1caa:ceb8:a809', '2022-12-21 07:31:28'),
(37, 'Biometric Voting System', '1SI19IS057', '2401:4900:1cbd:5df4:49bf:e3ee:7855:c0bf', '2022-12-21 07:30:36'),
(38, 'Convolutional Neural Network Architectures and Variants', '1SI19IS037', '61.1.116.149', '2022-12-21 07:30:22'),
(39, 'Graph Convolutional Networks', '1SI19IS021', '2405:201:d011:b5:e925:afd3:b2ec:88cd', '2022-12-21 07:30:58'),
(40, 'Precision Agriculture: Influence of Drones and Robots', '1SI19IS045', '2401:4900:16ec:3ae8:1:2:97a9:ea47', '2022-12-21 07:31:02'),
(41, 'Smart Agriculture Automation Using Advanced Technologies', '1SI19IS064', '2401:4900:1cbd:408b:4c1b:c175:c066:8023', '2022-12-21 07:30:37'),
(42, 'Faster R-CNN for tiny object detection', '1SI20IS400', '2401:4900:26f4:fdc4:2866:29b7:9222:2f05', '2022-12-21 07:30:30'),
(43, 'Acoustic event detection and classification', '1SI19IS036', '2402:3a80:11ca:f7a9:94d0:91a1:7220:492d', '2022-12-21 07:33:01'),
(44, 'yolo-object-detection-using-opencv-with-python', '1SI19IS025', '61.1.116.149', '2022-12-21 07:30:54'),
(45, 'Edge Computing.', '1SI19IS046', NULL, '2022-12-21 04:45:24'),
(46, 'Data Extraction techniques', '1si19is030', '2401:4900:6406:af88:189f:a33c:5d1c:5327', '2022-12-21 07:30:44'),
(47, 'Screenless display technology.', '1SI20IS401', '2409:4071:4e06:50a7:c820:8153:5a90:14b7', '2022-12-21 07:30:38'),
(48, 'Topics on Blockchain Technology - Consensus algorithms, Cryptocurrencies, Hyperledger, Blockchain Elements etc.', '1si19is050', '112.79.225.216', '2022-12-21 07:30:44'),
(49, 'Human Area Network Technology', '1si19is011', '2401:4900:33c7:eb21:1:1:1857:11d1', '2022-12-21 07:32:39'),
(50, 'Palm Operating System', '1SI19IS062', '2401:4900:63ec:241c:1226:2e0d:2c2d:acd0', '2022-12-21 07:35:25'),
(51, 'Tizen Operating System - One OS For Everything - Features, Technology.', '1SI19IS017', '2409:4071:d9d:8655:f173:a4e6:61b7:bb4a', '2022-12-21 07:30:27'),
(52, 'Voice Morphing.', '1SI19IS055', '2409:4071:221f:4d10::1fec:70a4', '2022-12-21 07:30:26'),
(53, 'Crypto Watermarking.', '1SI191S047', '2401:4900:16fd:8d7:1:1:11f8:2e8b', '2022-12-21 07:31:00'),
(54, 'Wireless USB.', '1SI19IS034 ', '2405:204:5005:dcee::2098:b8b0', '2022-12-21 07:31:04'),
(55, 'Hamming Cut Matching Algorithm.', NULL, '2401:4900:33b3:4a8f:6887:486f:17af:a0fb', '2022-12-22 02:44:06'),
(56, 'GeForce RTX 3060 Ti', '1SI20IS404', '2405:204:5207:1e54:58f5:6cff:fe9c:2901', '2022-12-21 07:30:55'),
(57, 'Brain Chips.', '1si19is043 ', '106.206.61.45', '2022-12-21 07:30:25'),
(58, 'Night Vision Technology.', '1SI19IS033', NULL, '2022-12-21 04:45:43'),
(59, 'Screenless Display.', '1SI19IS010', '2405:201:d010:dd63:98f2:bb88:109a:a3cc', '2022-12-21 07:30:38'),
(60, 'Content Based Image Retrieval.', '1SI19IS058', '2401:4900:369d:6590:1426:c7c1:174c:7489', '2022-12-21 07:30:51'),
(61, 'Packet sniffers.', '1SI19IS001', '122.172.84.54', '2022-12-21 07:30:44'),
(62, 'Google APP engine.', '1si19is002', '2401:4900:336c:6793:e079:8c93:34dd:65f', '2022-12-21 07:31:12'),
(63, 'Swarm intelligence.', '1SI19IS056', '2401:4900:640d:31e8::1037:f733', '2022-12-21 07:32:04'),
(64, 'Gesture Recognition.', '1SI19IS065 ', '122.172.84.54', '2022-12-21 07:30:19'),
(65, 'Detecting Phishing.', '1SI19IS027', '2401:4900:49a2:b70d::629:facc', '2022-12-21 07:30:28'),
(66, 'Colouring old B&W photos', '1si20is403', '2405:204:5605:4297:d47d:83c5:2afd:22d3', '2022-12-21 07:30:44'),
(67, 'User conditional Hashtag prediction for images', '1SI19IS053', '2405:201:d029:820:5da0:5356:8dd:fdcf', '2022-12-21 07:32:14'),
(68, 'Plagiarism detection tools and techniques.', '1SI19IS020', '2401:4900:16f2:36bd:e95f:f30e:c448:807b', '2022-12-21 07:30:24'),
(69, 'Graphical Password Authentication', '1SI19I059', '2409:4071:6e1b:dddf:67a:e9bc:aab9:ab8c', '2022-12-21 07:30:36'),
(70, 'Microsoft HoloLens', '1SI19IS022', '2409:4071:2300:75e3::1abe:28a1', '2022-12-21 07:30:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(28) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
