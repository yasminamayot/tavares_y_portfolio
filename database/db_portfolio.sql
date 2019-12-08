-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2019 at 08:45 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aboutMe`
--

CREATE TABLE `tbl_aboutMe` (
  `Id` tinyint(4) NOT NULL,
  `Header` varchar(30) NOT NULL,
  `subHeader` text NOT NULL,
  `icon_ps` varchar(20) NOT NULL,
  `icon_ai` varchar(20) NOT NULL,
  `icon_id` varchar(20) NOT NULL,
  `icon_xd` varchar(20) NOT NULL,
  `icon_ae` varchar(20) NOT NULL,
  `icon_pr` varchar(20) NOT NULL,
  `icon_lr` varchar(20) NOT NULL,
  `icon_c4d` varchar(20) NOT NULL,
  `icon_html5` varchar(20) NOT NULL,
  `icon_css3` varchar(20) NOT NULL,
  `icon_js` varchar(20) NOT NULL,
  `headerMsg` text NOT NULL,
  `portfolioDesc` text NOT NULL,
  `videoMP4` varchar(30) NOT NULL,
  `videoOGG` varchar(30) NOT NULL,
  `videoWEBM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_aboutMe`
--

INSERT INTO `tbl_aboutMe` (`Id`, `Header`, `subHeader`, `icon_ps`, `icon_ai`, `icon_id`, `icon_xd`, `icon_ae`, `icon_pr`, `icon_lr`, `icon_c4d`, `icon_html5`, `icon_css3`, `icon_js`, `headerMsg`, `portfolioDesc`, `videoMP4`, `videoOGG`, `videoWEBM`) VALUES
(1, 'headerImage.jpg', 'My name is Yasmina and I’m a fourth year interactive media design student. I chose to specialize in IMD because I’ve always been extremely passionate and drawn to digital marketing, UI/UX design and web development. Initially self-taught, I learned Photoshop and Illustrator in 2014  to create digital art, advertisements, and marketing content. I knew from then on that this was the world I wanted to surround myself and my career in. \r\nSince then I’ve continued to hone my understanding in principles of design and web development.', 'ps.png', 'ai.png', 'id.png', 'xd.png', 'ae.png', 'pr.png', 'lr.png', 'cinema.png', 'html.png', 'css.png', 'js.png', 'My goal is to create beautiful visual designs to create stunning websites, logos, and graphic content that will give my clients the wings they need to fly.\r\n\r\n-Yas ', 'Below are a highlight of my favourite personal, academic, and internship related design jobs I\'ve done over the years. Each piece carries its own sentimental meaning and learning process.', 'demo_reel_portfolio.mp4', 'demo_reel_portfolio.ogg', 'demo_reel_portfolio.webm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projectDetails`
--

CREATE TABLE `tbl_projectDetails` (
  `Id` tinyint(10) NOT NULL,
  `projectImage` varchar(30) NOT NULL,
  `projectTitle` varchar(150) NOT NULL,
  `projectSubtitle` varchar(150) NOT NULL,
  `projectDescription` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projectDetails`
--

INSERT INTO `tbl_projectDetails` (`Id`, `projectImage`, `projectTitle`, `projectSubtitle`, `projectDescription`) VALUES
(1, 'item1.jpg', 'Active Chequing with Alterna', 'Graphic Design', 'With the help of Alterna\'s Marketing Department, me and three others set out to create a campaign for Active Chequing that encouraged a younger demographic to sign up. Who wouldn\'t love some cash rewards?'),
(6, 'item6.jpg', 'Casino Themed Formal Poster', 'Event Marketing', 'In-residence poster designed to advertise Ontario Hall\'s formal event.\r\n'),
(2, 'item2.jpg', 'Prof Pop Culture Club ', 'Event Marketing', 'A colourful graphic to promote a student council run event. Mixing different domains of 2D and 3D was my favourite part of creating this.'),
(3, 'item3.jpg', 'Ontario Hall Soph T-Shirt Design ', 'Spirit Wear Clothing Design', 'Worn by over 40 Orientation leaders and over 900 first-year students, this design conceptualized in Illustrator represented the Ontario Hall Residence as a whole during Orientation Week.'),
(4, 'item4.png', 'Freestyle Arts Festival Official Logo', 'Logo Design', 'As chief of Graphics and Advertisements of the annual Freestyle Arts Festival, I was in charge of conceptualizing a logo with the year’s theme, which was vibrancy.'),
(5, 'item5.png', 'FIMSSC Formal Event Ticket', 'Ticket / Admissions Design', 'With a Back to the Future theme in mind, I was tasked as FIMSSC\'s Productions Coordinator to design an attractive retro formal ticket.'),
(7, 'item7.png', 'Ontario Hall Ocelots Jersey Design', 'Clothing / Logo Design', 'Now the official logo and Jersey for the Boy\'s Flag Football team of the Ontario Hall Residence, this favourite of mine made in Illustrator makes for an awesome portfolio piece.'),
(8, 'item8.jpg', 'Paint Authority Residence Snapchat Filter', 'Social Media Advertising', 'Designed in Illustrator, this fun and colourful Snapchat filter was used during Ontario Hall\'s annual paint fight. Now a permanent annual filter.'),
(9, 'item9.jpg', 'Rush Pup Creative Packaging Assignment', 'Brand Design / Conceptualization ', 'One of my favourite design-based assignments, we were tasked to create a stylish and modernized energy drink company that targeted a young adult demographic. Patent pending.'),
(10, 'item10.jpg', 'Moon Time Sisters Indigenous Charity Organization Poster', 'Event Marketing Graphic Design', 'Contacted by Moon Time Sisters to redesign their outdated logo and help advertise fundraisers on Western University\'s campus for Indigenous women on reserves who do not have accessible feminine hygiene products. One of my favourite projects to work on because it helped make a difference.'),
(11, 'item11.png', 'Team Meeting Advertising', 'Graphic Design', 'A quick but colourful graphic to remind exec and general members to attend weekly meetings.'),
(12, 'item12.png', 'Alterna Sticker Campaign', 'Sticker Design', 'Making a Credit Union sticker look cool is difficult. I like to think I made it work. Hopefully. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projectList`
--

CREATE TABLE `tbl_projectList` (
  `Id` tinyint(10) NOT NULL,
  `Header` varchar(100) NOT NULL,
  `subHeader` varchar(100) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `portfolioDesc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projectList`
--

INSERT INTO `tbl_projectList` (`Id`, `Header`, `subHeader`, `thumbnail`, `portfolioDesc`) VALUES
(1, 'Alterna Savings Campaign Poster', 'Graphic Design', 'gallery_tile1.jpg', ''),
(2, 'FIMSSC Prof Event Graphic', 'Promotional Marketing', 'gallery_tile2.jpg', ''),
(3, 'Official Ontario Soph Design', 'Clothing Design', 'gallery_tile3.jpg', ''),
(4, 'Freestyle Arts Festival Logo', 'Logo Design', 'gallery_tile4.jpg', ''),
(5, 'Themed Formal Ticket Design', 'Ticket / Admissions Design', 'gallery_tile5.jpg', ''),
(6, 'Casino Themed Formal Poster', 'Event Marketing', 'gallery_tile6.jpg', ''),
(7, 'Sports Team Jersey Design', 'Clothing Design', 'gallery_tile7.jpg', ''),
(8, 'Paint Authority Residence Snapchat Filter', 'Social Media Advertising', 'gallery_tile8.jpg', ''),
(9, 'Rush Pup Creative Packaging Assignment', 'Brand Design  ', 'gallery_tile9.jpg', ''),
(10, 'Moon Time Sisters Charity Poster', 'Charity Organization Outreach Graphic', 'gallery_tile10.jpg', ''),
(11, 'Meeting Advertising ', 'Graphic Design', 'gallery_tile11.jpg', ''),
(12, 'Alterna Savings 4% Sticker Campaign', 'Sticker Design', 'gallery_tile12.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aboutMe`
--
ALTER TABLE `tbl_aboutMe`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_projectDetails`
--
ALTER TABLE `tbl_projectDetails`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_projectList`
--
ALTER TABLE `tbl_projectList`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_aboutMe`
--
ALTER TABLE `tbl_aboutMe`
  MODIFY `Id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_projectDetails`
--
ALTER TABLE `tbl_projectDetails`
  MODIFY `Id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_projectList`
--
ALTER TABLE `tbl_projectList`
  MODIFY `Id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
