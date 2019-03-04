-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 04, 2019 at 09:22 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `egn_match`
--

CREATE TABLE `egn_match` (
  `id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(10) UNSIGNED NOT NULL,
  `team_a` int(11) NOT NULL,
  `team_b` int(11) NOT NULL,
  `final_team_a_score` int(11) NOT NULL DEFAULT '0',
  `final_team_b_score` int(11) NOT NULL DEFAULT '0',
  `started_at` int(11) NOT NULL,
  `finished_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `egn_match`
--

INSERT INTO `egn_match` (`id`, `tournament_id`, `team_a`, `team_b`, `final_team_a_score`, `final_team_b_score`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES
(11, 11, 11, 8, 0, 0, 1544007600, 1544022000, 1543980354, 1543980354),
(13, 15, 24, 25, 3, 0, 1544210460, 1544296860, 1544012495, 1544984073),
(15, 12, 1, 5, 0, 0, 1544115600, 1544119200, 1544080851, 1544080851),
(18, 12, 1, 5, 0, 0, 1544763600, 0, 1544123118, 1544123118),
(19, 44, 19, 20, 6, 0, 1545750000, 0, 1545620060, 1548064657),
(20, 15, 0, 0, 0, 0, 1545750000, 1545840000, 1545621272, 1545627000),
(21, 15, 0, 0, 0, 0, 1547056800, 1547064000, 1547024013, 1547025106),
(22, 12, 24, 25, 9, 1, 1547064000, 1547071200, 1547026989, 1548064672),
(23, 15, 8, 8, 0, 0, 1548082800, 1548086400, 1548041803, 1548064370),
(24, 32, 8, 8, 0, 0, 1548097200, 1548104400, 1548061929, 1548062445);

-- --------------------------------------------------------

--
-- Table structure for table `egn_team`
--

CREATE TABLE `egn_team` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_ensign` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `egn_team`
--

INSERT INTO `egn_team` (`id`, `name`, `logo`, `country_ensign`, `country`, `created_at`, `updated_at`) VALUES
(8, 'đội thử', 'https://static.gamota.com/gamota/20181128/Tt1rEphpkHppMM', 'flag-of-Albania.png', NULL, 1543392201, 1543565013),
(11, 'NRG eSports', 'https://static.gamota.com/gamota/20181203/xjuO8phpEAbAam', 'flag-of-United-States-of-America.png', NULL, 1543810205, 1543810205),
(12, 'Hường test', 'https://static.gamota.com/gamota/20181205/YClOqphpnDlNDD', 'flag-of-Vietnam.png', NULL, 1543982827, 1543982867),
(13, 'team cá hồi', 'https://static.gamota.com/gamota/20181206/DjUyOphpfGcIgL', 'flag-of-Vietnam.png', NULL, 1544036894, 1544036934),
(14, 'đôi snowman', 'https://static.gamota.com/gamota/20181206/eU6FsphpKnkBkj', 'flag-of-Afghanistan.png', NULL, 1544068536, 1544068569),
(15, 'abc', 'https://static.gamota.com/gamota/20181207/KRq5IphpeMPfnm', 'flag-of-Cyprus.png', NULL, 1544086138, 1544152026),
(16, 'hường2', 'https://static.gamota.com/gamota/20181207/NOWQ4phpKcKeIF', 'flag-of-Afghanistan.png', NULL, 1544152177, 1544152177),
(17, 'Cs go Đội 1', 'https://static.gamota.com/gamota/20181207/uHS0OphppaMblm', 'flag-of-Algeria.png', NULL, 1544170510, 1544686809),
(18, 'đôi cs go 22', 'https://static.gamota.com/gamota/20181207/haVf6phpcMNBoH', 'flag-of-Vietnam.png', NULL, 1544170600, 1544174081),
(19, 'SODA CHANH', 'https://static.gamota.com/gamota/20181213/HPTsmphpEDOifA', 'flag-of-Vietnam.png', NULL, 1544692414, 1544692414),
(20, 'L. Hydra', 'https://static.gamota.com/gamota/20181213/u6uaOphpPEhFKo', 'flag-of-Thailand.png', NULL, 1544692530, 1544692530),
(21, 'AVANGAR', 'https://static.gamota.com/gamota/20181213/Qy6VcphpoCiNli', 'flag-of-Kazakhstan.png', NULL, 1544704721, 1544704721),
(22, 'ShotCallers', 'https://static.gamota.com/gamota/20181213/gweMyphphdLpaf', 'flag-of-United-Arab-Emirates.png', NULL, 1544704773, 1544704773),
(23, 'Rate Me 5 Stars', 'https://static.gamota.com/gamota/20181213/xIguephpnpgFmo', 'flag-of-Vietnam.png', NULL, 1544704994, 1544704994),
(24, 'Divine Esports', 'https://static.gamota.com/gamota/20181213/X7EnIphpfDPNPL', 'flag-of-Vietnam.png', NULL, 1544705055, 1544705055),
(25, 'LinGan e-Sports', 'https://static.gamota.com/gamota/20181213/VuboWphpCdNLHl', 'flag-of-China.png', NULL, 1544705132, 1544705132);

-- --------------------------------------------------------

--
-- Table structure for table `egn_tournament`
--

CREATE TABLE `egn_tournament` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` int(11) NOT NULL,
  `finished_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `egn_tournament`
--

INSERT INTO `egn_tournament` (`id`, `name`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES
(11, 'ECS Season 6 Finals', 1547078400, 0, 1543223054, 1543223054),
(12, 'VEPL Vietnam Esport Premier Leagues', 1547078400, 0, 1543227978, 1543892320),
(13, 'ESL Pro League Season 8: Finals', 1547078400, 0, 1543228291, 1543228291),
(15, 'PUBG Asia Invitational 2019', 1547078400, 1546387200, 1543291839, 1547017816),
(32, 'PUBG Europe League - Phase 1', 1546300800, 1553990400, 1544079539, 1544703381),
(33, '2018 CWL Las Vegas Open', 1547078400, 1544313600, 1544163035, 1544163035),
(35, 'All-Star Las Vegas 2018', 1544054400, 1544227200, 1544165396, 1544165396),
(40, 'PUBG VIETNAM SCRIM', 1543622400, 1546560000, 1544585842, 1545966145),
(41, 'PUBG SEA SCRIM 2018', 1543622400, 1546560000, 1544585976, 1545966164),
(43, 'PLG Grand Slam 2018', 1544659200, 1544832000, 1544690996, 1546495661),
(44, 'WESG SEA Vainglory Grand Final 2018', 1544659200, 1544918400, 1544692154, 1548405166),
(45, 'The Chongqing Major', 1545177600, 1545868800, 1544702884, 1548404022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `egn_match`
--
ALTER TABLE `egn_match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `egn_match_tournament_id_index` (`tournament_id`);

--
-- Indexes for table `egn_team`
--
ALTER TABLE `egn_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `egn_tournament`
--
ALTER TABLE `egn_tournament`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `egn_match`
--
ALTER TABLE `egn_match`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `egn_team`
--
ALTER TABLE `egn_team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `egn_tournament`
--
ALTER TABLE `egn_tournament`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `egn_match`
--
ALTER TABLE `egn_match`
  ADD CONSTRAINT `egn_match_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `egn_tournament` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
