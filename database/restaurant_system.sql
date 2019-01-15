-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2019 at 09:29 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `Ip_address` varchar(45) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `Ip_address`, `timestamp`, `data`) VALUES
('e7reolna6b79qdopr1gu5h46kame5v34', '::1', 1547135627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373133353632373b),
('566760sfbdpmiffjuihkjjn36dop41hk', '::1', 1547202591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230323539313b),
('0og11v2v2hcqmki7p4jkaq0kudbr7j72', '::1', 1547202088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230323038383b),
('8su0mn4084nb41fbdqffn8fqab7tugr8', '::1', 1547202417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230323431373b),
('1pipu5hhrj54npllct8moc8pao9dpkea', '::1', 1547202840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230323834303b),
('plpt77vvcs2e7joaq0kvs8j72j3ueval', '::1', 1547202591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230323539313b),
('0hcb4e5t5bgdus3rme8kuj7136hmjq1n', '::1', 1547203182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230333138323b),
('7h23mc1gmuupfa5bcgk4t0h8rcjkbov3', '::1', 1547203523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230333532333b),
('93so5ioesci7bchebl0fr8dnqlv3hrgs', '::1', 1547205004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230353030343b),
('7cul8ab30c8i75p9ipg1t74bpf6kkmpf', '::1', 1547205716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230353731363b),
('5jonrjvpe7g6n9194rei6eererhdg1ji', '::1', 1547206102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230363130323b),
('kjdj1c7oh8knogfkbk1v5odbf5h41ga6', '::1', 1547206841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230363834313b),
('2tmt42u12kn7p0mjnckutpbfts10r18j', '::1', 1547207353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230373335333b),
('lre1uft9hf4ao7a1gc4eur8tsll2sbl7', '::1', 1547207711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230373731313b),
('3l6pol97d33jdp1odv4omv5otdogg394', '::1', 1547208208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230383230383b),
('k797p1m1i1jers8n3e8hmtqfv1sgcaej', '::1', 1547210349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373231303334393b),
('6u0jlun027nsj7679vtrn6q3am5rntkm', '::1', 1547210661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373231303636313b),
('m522jkdnkoksb9jnp6fsvsgtiram18p2', '::1', 1547211009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373231313030393b),
('todirprsdv1enstdc61t8h44vq2bscvp', '::1', 1547211575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373231313537353b),
('9vm8ill6e3jseplai4or9oiq0sqbiie1', '::1', 1547211881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373231313838313b),
('cit95ma8kh5aho1pmblmdmtq3k2paodn', '::1', 1547212449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373231323434393b),
('r1g4cubcm8hak0tc5d75hn93lusslgs1', '::1', 1547212449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373231323434393b),
('oidn05va85k7hf30aec0t64gem850qlg', '::1', 1547219440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373231393434303b),
('jjuctn1a9q47aa2084nkk9tqlqbtf3qb', '::1', 1547225335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373232353333353b),
('h0v215qirug7t4r89e5a91epkg96v8o1', '::1', 1547225702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373232353730323b),
('2hcf6etks4etq778b9ug1gcr16inie76', '::1', 1547226063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373232363036333b),
('krbjsmouveepbu1vaemjh4f9frek7go1', '::1', 1547229155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373232393135353b),
('snb6ug8tg3j1bb4b7n1km3p1kmsi7hsv', '::1', 1547229607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373232393630373b),
('egqbplpqm2g4r6s04nfm0kr1bmtap7n6', '::1', 1547230584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373233303538343b),
('359hnp2et4669vheggg0jk7a6vmfljq3', '::1', 1547231295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373233313239353b),
('nu2dd882i67k9p8n2q3ann28mv242m1f', '::1', 1547231608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373233313630383b),
('1tp83dfda51tdrt6ph25pl80glp888ud', '::1', 1547231921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373233313932313b),
('m6j9seoqgvskrrgdc3tciqb5mrrtqfvn', '::1', 1547231922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373233313932313b);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remarks` text,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category_name`, `created_by`, `created_at`, `updated_by`, `updated_at`, `remarks`, `status`) VALUES
(1, 'Cheeps', 'Uzzal Roy', '2019-01-10 22:01:34', NULL, NULL, NULL, 1),
(2, 'Barger', 'Uzzal Roy', '2019-01-10 22:02:38', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `name`, `last_login`, `created_at`, `updated_at`, `status`) VALUES
(1, 'uzzalroy', '0192023a7bbd73250516f069df18b500', 'Uzzal Roy', '2019-01-11 17:11:00', '2019-01-11 15:57:32', '2019-01-11 15:57:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_authentication`
--

INSERT INTO `users_authentication` (`id`, `users_id`, `token`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, '5b999ac7d2f87a1325213bd7a571f0e9', '2019-01-12 05:11:11', '2019-01-11 18:59:35', '2019-01-11 17:11:11'),
(2, 1, '996a5eaa287cd64a08fc0d817bcdb771', '2019-01-12 07:38:42', '2019-01-11 22:11:00', '2019-01-11 19:38:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
