-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2019 at 05:48 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `artist_table`
--

CREATE TABLE `artist_table` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `timestamp` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist_table`
--

INSERT INTO `artist_table` (`id`, `name`, `description`, `timestamp`) VALUES
(2, 'Sonu Nigam', 'He is a popular singer of India', '2019-09-23 18:33:52'),
(3, 'Arijit Singh', 'He is one of the most popular singer of India', '2019-09-23 18:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `favorites_table`
--

CREATE TABLE `favorites_table` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `song_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites_table`
--

INSERT INTO `favorites_table` (`id`, `user_id`, `song_id`) VALUES
(5, '1', '8'),
(7, '1', '5');

-- --------------------------------------------------------

--
-- Table structure for table `genre_table`
--

CREATE TABLE `genre_table` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `timestamp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre_table`
--

INSERT INTO `genre_table` (`id`, `name`, `description`, `timestamp`) VALUES
(1, 'Jazz', 'This is a song genre', '22-09-2019 04:38:26'),
(2, 'Blues', 'This is a song genre', '22-09-2019 04:39:07'),
(4, 'Metal', 'This is a song genre', '22-09-2019 05:28:28'),
(5, 'Pop', 'This is a song genre', '22-09-2019 05:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `home_table`
--

CREATE TABLE `home_table` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `artist` varchar(150) NOT NULL,
  `song_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_table`
--

INSERT INTO `home_table` (`id`, `name`, `artist`, `song_id`) VALUES
(1, 'Liar123', 'Camila Cabello', '5'),
(2, 'K-12', 'Cemela Johnson', '5'),
(3, 'Shameless', 'Antonilo Roberts', '5'),
(4, 'Thousand Nights', 'Christina Perry', '6'),
(5, 'Like The Way', 'Akon', '5'),
(6, 'Day N Night', 'Micheal Johnson', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mood_table`
--

CREATE TABLE `mood_table` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `timestamp` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mood_table`
--

INSERT INTO `mood_table` (`id`, `name`, `description`, `timestamp`) VALUES
(1, 'Sad', 'This is a dummy mood!', '2019-09-23 16:23:10'),
(2, 'Happy', 'This is a dummy mood.', '2019-09-30 18:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `songs_table`
--

CREATE TABLE `songs_table` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `length` varchar(10) NOT NULL,
  `artist_id` varchar(50) NOT NULL,
  `genre_id` varchar(50) NOT NULL,
  `mood_id` varchar(50) NOT NULL,
  `path` varchar(250) DEFAULT NULL,
  `timestamp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs_table`
--

INSERT INTO `songs_table` (`id`, `name`, `description`, `length`, `artist_id`, `genre_id`, `mood_id`, `path`, `timestamp`) VALUES
(5, 'Darksides', 'This is a popular song', '03:02', '2', '1', '1', 'files/songs/Orange_Foot.mp3', '2019-09-24 17:26:13'),
(6, 'Chimez', 'This is a popular song', '01:40', '2', '1', '1', 'files/songs/Chimez.mp3', '2019-09-24 17:27:00'),
(8, 'SongItem1', 'This is a popular song', '06:46', '3', '4', '1', 'files/songs/Orange_Foot.mp3', '2019-09-28 19:29:07'),
(9, 'Random Song', 'This is a song ', '05:35', '3', '4', '1', 'files/songs/Lights_Go_Down.mp3', '2019-09-28 19:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `path` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`id`, `name`, `email`, `password`, `gender`, `number`, `path`) VALUES
(1, 'Samprit Sarkar', 'sam@learncodeonline.in', '123', 'Male', '9563286365', '../images/profile-pic/home3.jpg'),
(2, 'Hitesh Sir', 'hitesh@learncodeonline.in', '12345', 'Male', '8525365145', NULL),
(3, 'Aman Roy', 'aman@gmail.com', '12345', 'Male', '9852365896', NULL),
(4, 'Raushan Jha', 'raushan@learncodeonline.in', '123456', 'Male', '8563256365', '../images/profile-pic/artist-black-and-white-black-and-white-878999.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist_table`
--
ALTER TABLE `artist_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites_table`
--
ALTER TABLE `favorites_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_table`
--
ALTER TABLE `genre_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_table`
--
ALTER TABLE `home_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mood_table`
--
ALTER TABLE `mood_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs_table`
--
ALTER TABLE `songs_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artist_table`
--
ALTER TABLE `artist_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `favorites_table`
--
ALTER TABLE `favorites_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `genre_table`
--
ALTER TABLE `genre_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_table`
--
ALTER TABLE `home_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mood_table`
--
ALTER TABLE `mood_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `songs_table`
--
ALTER TABLE `songs_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
