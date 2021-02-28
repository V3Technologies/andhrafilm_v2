-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2021 at 02:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `breakingnews`
--

CREATE TABLE `breakingnews` (
  `BreakingNewsName` varchar(400) NOT NULL,
  `Is_Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `breakingnewstable`
--

CREATE TABLE `breakingnewstable` (
  `NewsId` int(11) NOT NULL,
  `BreakingNewsName` longtext NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `breakingnewstable`
--

INSERT INTO `breakingnewstable` (`NewsId`, `BreakingNewsName`, `Is_Active`, `CreatedTime`) VALUES
(3, 'Chakka Jam: Internet suspended again at Singhu, Tikri, Ghazipur', 1, '2021-02-06 11:23:51'),
(4, 'Shiv Sena expresses displeasure over Nana Patole resignation', 1, '2021-02-06 11:24:09'),
(5, 'Andhra poll panel chief orders minister’s house arrest for threatening officials', 1, '2021-02-06 11:26:12'),
(6, 'AndhraFIlm breaking news', 1, '2021-02-06 11:27:09'),
(7, 'Shiv Sena expresses displeasure over Nana Patole\'s resignation', 1, '2021-02-05 20:32:02'),
(8, 'Shiv Sena expresses displeasure over Nana Patole\'s resignation', 0, '2021-02-06 11:34:17'),
(9, 'Breaking News Live', 1, '2021-02-07 15:01:05'),
(10, 'Government\'s 2022 J&K plan: Resettlement of Kashmiri Pan ..  ', 1, '2021-02-13 17:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'phpgurukulofficial@gmail.com', 1, '2018-05-27 17:51:00', '2018-10-24 18:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblads`
--

CREATE TABLE `tblads` (
  `id` int(100) NOT NULL,
  `AdTitle` longtext NOT NULL,
  `ShortDesc` longtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Is_Active` int(1) NOT NULL,
  `PostImage` longtext NOT NULL,
  `ApprovedDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblads`
--

INSERT INTO `tblads` (`id`, `AdTitle`, `ShortDesc`, `PostingDate`, `Is_Active`, `PostImage`, `ApprovedDate`) VALUES
(1, 'Ad 1', 'desc', '2021-02-28 11:13:56', 1, '4a8abcecde02ccbbdfd40805435f2d18.jpg', '2021-02-28 12:45:16'),
(2, 'Ad 2', 'Short desc 2', '2021-02-28 12:46:38', 0, '2d73bb11b0761730f65fe52cd4004446.jpg', NULL),
(3, 'Andhra Pradesh Power Generation Corporation Limited is power generating organization', 'desc', '2021-02-28 13:02:34', 0, 'b1e9910aa81b4eb91361e9babe39d3b8.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Bollywood', 'Bollywood News', '2018-06-06 10:28:09', '2018-06-30 18:41:07', 1),
(3, 'Sports', 'Related to sports news', '2018-06-06 10:35:09', '2018-06-14 11:11:55', 1),
(5, 'Entertainment', 'Entertainment related  News', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Politics', 'Politics', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'Business', 'Business', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `approveddate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `postTitle` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `comment`, `postingDate`, `status`, `approveddate`, `postTitle`) VALUES
(1, '12', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 1, '2021-02-28 06:13:41', ''),
(2, '12', 'This is sample text for testing.', '2018-11-21 11:25:56', 1, NULL, ''),
(3, '7', 'This is sample text for testing.', '2018-11-21 11:27:06', 1, NULL, ''),
(4, '65', 'Comment 1', '2021-02-28 06:05:00', 0, NULL, 'Post Title 1');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `CategoryId`, `SubCategoryId`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`) VALUES
(1, 4, 1, '2021-02-09 18:46:24', '2021-02-15 15:08:57', 1, '300x250x2.jpg'),
(2, 4, 1, '2021-02-09 18:46:24', '2021-02-10 18:06:54', 1, '300x250x3.jpg'),
(4, 4, 2, '2021-02-09 18:47:00', '2021-02-10 18:07:12', 1, '6d08a26c92cf30db69197a1fb7230626.jpg'),
(5, 4, 2, '2021-02-09 18:47:00', '2021-02-10 18:23:20', 1, '8a878b9512723759ba66d03e26ddaf8f.gif'),
(6, 4, 2, '2021-02-09 18:47:00', NULL, 1, '70x70.jpg'),
(7, 5, 3, '2021-02-09 18:47:17', NULL, 1, '300x250x6.jpg'),
(8, 4, 2, '2021-02-09 19:38:14', NULL, 1, '300x250.jpg'),
(9, 4, 2, '2021-02-09 19:38:14', NULL, 1, '300x250x2.jpg'),
(10, 4, 2, '2021-02-09 19:38:14', NULL, 1, '300x250x3.jpg'),
(11, 4, 2, '2021-02-09 19:38:14', NULL, 1, '300x250x4.jpg'),
(12, 4, 2, '2021-02-09 19:38:14', NULL, 1, '300x250x5.jpg'),
(13, 4, 2, '2021-02-09 19:38:14', NULL, 1, '300x250x6.jpg'),
(14, 4, 2, '2021-02-09 19:38:14', NULL, 1, '505e59c459d38ce4e740e3c9f5c6caf7.jpg'),
(15, 4, 2, '2021-02-09 19:38:14', NULL, 1, '550x400.jpg'),
(16, 4, 2, '2021-02-09 19:38:14', NULL, 1, '27095ab35ac9b89abb8f32ad3adef56a.jpg'),
(17, 5, 3, '2021-02-10 18:22:20', '2021-02-10 18:23:24', 1, '7fdc1a630c238af0815181f9faa190f5.jpg'),
(18, 5, 3, '2021-02-10 18:22:20', NULL, 1, '270x150x4.jpg'),
(19, 4, 1, '2021-02-13 15:39:30', NULL, 1, 'photograph_img2.jpg'),
(20, 4, 1, '2021-02-13 15:47:23', NULL, 1, 'vijay.jpg'),
(21, 4, 2, '2021-02-13 15:47:33', NULL, 1, 'vijay-sethupathi.jpg'),
(22, 5, 3, '2021-02-13 15:47:46', NULL, 1, 'nayanthara.jpg'),
(23, 4, 1, '2021-02-13 15:49:54', NULL, 1, 'nayanthara.jpg'),
(24, 4, 1, '2021-02-13 15:49:54', NULL, 1, 'vijay.jpg'),
(25, 4, 1, '2021-02-13 16:26:40', NULL, 1, 'photograph_img2.jpg'),
(26, 4, 1, '2021-02-13 16:40:48', NULL, 1, 'slider_img4.jpg'),
(27, 4, 2, '2021-02-13 16:46:20', NULL, 1, 'slider_img2.jpg'),
(28, 4, 2, '2021-02-13 16:48:08', NULL, 1, 'slider_img2.jpg'),
(29, 5, 3, '2021-02-13 16:48:20', NULL, 1, 'slider_img3.jpg'),
(30, 5, 3, '2021-02-13 16:49:35', NULL, 1, 'slider_img4.jpg'),
(31, 5, 3, '2021-02-13 16:51:46', NULL, 1, 'photograph_img4.jpg'),
(32, 5, 3, '2021-02-13 16:53:29', NULL, 1, '6028040950379.jpg'),
(33, 5, 3, '2021-02-13 16:54:09', NULL, 1, '60280431975e2.jpg'),
(34, 5, 3, '2021-02-13 16:54:09', NULL, 1, '60280431b19d6.jpg'),
(35, 5, 3, '2021-02-13 16:54:09', NULL, 1, '60280431c4b67.jpg'),
(36, 5, 3, '2021-02-13 16:54:10', NULL, 1, '60280431df9d7.jpg'),
(37, 5, 3, '2021-02-13 16:54:10', NULL, 1, '6028043210df1.jpg'),
(38, 5, 3, '2021-02-13 16:57:46', NULL, 1, '6028050a7512a.jpg'),
(39, 5, 3, '2021-02-13 16:57:46', NULL, 1, '6028050a9d6e5.jpg'),
(40, 5, 3, '2021-02-13 16:57:47', NULL, 1, '6028050ac6deb.jpg'),
(41, 5, 3, '2021-02-13 16:57:47', NULL, 1, '6028050b0395e.jpg'),
(42, 4, 1, '2021-02-13 16:59:53', NULL, 1, '60280589174e3.jpg'),
(43, 4, 1, '2021-02-13 16:59:53', NULL, 1, '6028058935429.jpg'),
(44, 4, 1, '2021-02-13 16:59:53', NULL, 1, '602805894f51a.jpg'),
(45, 4, 1, '2021-02-13 16:59:53', NULL, 1, '602805897131e.jpg'),
(46, 4, 1, '2021-02-13 17:00:12', NULL, 1, '6028059c7d462.jpg'),
(47, 4, 1, '2021-02-13 17:00:12', NULL, 1, '6028059c998c5.jpg'),
(48, 4, 1, '2021-02-13 17:00:12', NULL, 1, '6028059cb1032.jpg'),
(49, 4, 1, '2021-02-13 17:00:12', NULL, 1, '6028059cd327b.jpg'),
(50, 4, 1, '2021-02-13 17:07:33', NULL, 1, '602807559b589.jpg'),
(51, 4, 1, '2021-02-13 17:15:22', NULL, 1, '6028092a7ec35.jpg'),
(52, 4, 1, '2021-02-13 17:15:52', NULL, 1, '60280947eeddd.jpg'),
(53, 4, 1, '2021-02-13 17:15:57', NULL, 1, '6028094cd575c.jpg'),
(54, 5, 3, '2021-02-13 17:30:53', NULL, 1, '60280ccd60831.jpg'),
(55, 5, 3, '2021-02-13 17:30:53', NULL, 1, '60280ccd86f8d.jpg'),
(56, 4, 1, '2021-02-13 19:12:14', NULL, 1, '6028248e95fb3.jpg'),
(57, 4, 1, '2021-02-13 19:12:14', NULL, 1, '6028248ea281b.jpg'),
(58, 4, 1, '2021-02-13 19:12:14', NULL, 1, '6028248ea92fc.jpg'),
(59, 7, 4, '2021-02-13 19:48:58', NULL, 1, '60282d2ac1609.jpg'),
(60, 7, 4, '2021-02-13 19:48:58', NULL, 1, '60282d2acb6c5.jpg'),
(61, 7, 4, '2021-02-13 19:48:58', NULL, 1, '60282d2ad31ed.jpg'),
(62, 7, 4, '2021-02-13 19:48:58', '2021-02-13 19:56:07', 0, '60282d2ad56f2.png'),
(63, 7, 4, '2021-02-13 19:55:22', NULL, 1, '60282eaa0a49b.jpg'),
(64, 7, 4, '2021-02-14 08:31:59', NULL, 1, '6028dfffedbc5.jpg'),
(65, 4, 1, '2021-02-14 08:41:04', NULL, 1, '6028e220adb63.jpg'),
(66, 7, 4, '2021-02-14 10:30:19', NULL, 1, '6028fbbb59991.jpg'),
(67, 4, 1, '2021-02-15 15:27:28', NULL, 1, '602a92e04bda9.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallerycategory`
--

CREATE TABLE `tblgallerycategory` (
  `id` int(11) NOT NULL,
  `GalleryCategoryName` varchar(200) NOT NULL,
  `GalleryDescription` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblgallerycategory`
--

INSERT INTO `tblgallerycategory` (`id`, `GalleryCategoryName`, `GalleryDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 'Vijay', 'Vijay Gallery 1', '2021-02-09 14:13:45', '2021-02-09 16:29:29', 0),
(2, 'Vijay Sethupathi', 'Vijay Sethupathi Gallery', '2021-02-09 16:19:15', NULL, 0),
(3, 'Ajith', 'Ajith Gallery 1', '2021-02-09 16:30:18', '2021-02-09 16:30:26', 0),
(4, 'Heroes', 'Heroes Gallery', '2021-02-09 17:33:15', NULL, 1),
(5, 'Heroines', 'Heroines Gallery', '2021-02-09 17:33:42', NULL, 1),
(6, 'General', 'General Gallery', '2021-02-09 17:33:55', NULL, 1),
(7, 'Tamil Heroes', 'Tamil Heroes Photos', '2021-02-13 19:47:23', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblgallerysubcategory`
--

CREATE TABLE `tblgallerysubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblgallerysubcategory`
--

INSERT INTO `tblgallerysubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 4, 'Vijay', 'Vijay Gallery', '2021-02-09 17:34:37', NULL, 1),
(2, 4, 'Vijay Sethupathi', 'Hero - Vijay Sethupathi Gallery', '2021-02-09 17:47:19', '2021-02-09 17:48:35', 1),
(3, 5, 'Nayantara', 'Heroine - Nayantara Gallery', '2021-02-09 17:47:37', NULL, 1),
(4, 7, 'Vijay Master Pics', 'Master ', '2021-02-13 19:47:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblinterviews`
--

CREATE TABLE `tblinterviews` (
  `id` int(11) NOT NULL,
  `ShortDescription` varchar(500) DEFAULT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `PostDetails` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT 0,
  `PostUrl` longtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinterviews`
--

INSERT INTO `tblinterviews` (`id`, `ShortDescription`, `PostTitle`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `status`) VALUES
(1, 'How to handle pressure', 'Interview with Avinash', '<p>Avinash - I dont know</p>', '2021-02-20 18:04:24', '2021-02-21 14:46:47', 1, 'Interview-with-Avinash', '60314f2865369.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">About AndhraFilm.com</span></font>', '2018-06-30 18:01:03', '2021-02-28 13:08:57'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2018-06-30 18:01:36', '2018-06-30 19:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `ShortDescription` varchar(500) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `isExclusiveNews` int(1) DEFAULT NULL,
  `isNewsFeed` int(1) DEFAULT NULL,
  `isLatestNews` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `ShortDescription`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `isExclusiveNews`, `isNewsFeed`, `isLatestNews`) VALUES
(7, '', 'Jasprit Bumrah ruled out of England T20I series due to injury', 3, 4, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">The Indian Cricket Team has received a huge blow right ahead of the commencement of the much-awaited series against England. Star speedster Jasprit Bumrah has been ruled out of the forthcoming 3-match T20I series as he suffered an injury in his left thumb.</span></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style=\"padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2018-06-30 18:49:23', '2021-02-14 19:25:25', 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', '5836c01303e2c498ebd8b28f5c1042b4.jpg', NULL, NULL, NULL),
(10, '', 'Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal', 7, 9, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><span itemprop=\"headline\" style=\"box-sizing: inherit;\">Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal</span>Tata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel Deal</h1>', '2018-06-30 19:08:56', '2018-08-28 15:59:59', 1, 'Tata-Steel,-Thyssenkrupp-Finalise-Landmark-Steel-Deal', '505e59c459d38ce4e740e3c9f5c6caf7.jpg', NULL, NULL, NULL),
(11, '', 'UNs Jean Pierre Lacroix thanks India for contribution to peacekeeping', 6, 8, '<p>UNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeeping<br></p>', '2018-06-30 19:10:36', '2018-08-28 16:01:35', 1, 'UNs-Jean-Pierre-Lacroix-thanks-India-for-contribution-to-peacekeeping', '27095ab35ac9b89abb8f32ad3adef56a.jpg', NULL, NULL, NULL),
(12, '', 'Shah holds meeting with NE states leaders in Manipur', 6, 7, '<p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">New Delhi: BJP president Amit Shah today held meetings with his party leaders who are in-charge of 11 Lok Sabha seats spread across seven northeast states as part of a drive to ensure that it wins the maximum number of these constituencies in the general election next year.</span><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><webviewcontentdata style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">Shah held separate meetings with Lok Sabha toli (group) of Arunachal Pradesh, Tripura, Meghalaya, Mizoram, Nagaland, Sikkim and Manipur in Manipur, the partys media head Anil Baluni said.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">Baluni said that Shah was in West Bengal for two days before he arrived in Manipur. The BJP chief would reach Odisha tomorrow.</webviewcontentdata><br></p>', '2018-06-30 19:11:44', '2018-08-28 16:01:43', 1, 'Shah-holds-meeting-with-NE-states-leaders-in-Manipur', '7fdc1a630c238af0815181f9faa190f5.jpg', NULL, NULL, NULL),
(14, 'His last visit to both the poll-bound states was on January 23, on the birth anniversary of Netaji Subhash Chandra Bose.', '\'Glad to see enthusiasm\': PM Modi ahead of his visit to Assam, Bengal tomorrow', 6, 7, '<p><span style=\"color: rgb(66, 66, 66); font-family: pt_serifregular; font-size: 16px;\">Prime Minister Narendra Modi on Sunday will visit both Assam and West Bengal and will inaugurate a host of development projects in the two poll-bound states. His last visit to both the states was on January 23, on the birth anniversary of Netaji Subhash Chandra Bose.</span><br></p>', '2021-02-06 16:48:37', NULL, 1, '\'Glad-to-see-enthusiasm\':-PM-Modi-ahead-of-his-visit-to-Assam,-Bengal-tomorrow', 'f8c2646af84a8c89cdda1ec9461f9a86.jpg', NULL, NULL, NULL),
(15, 'The water level in Dhauliganga river rose suddenly following an avalanche near a power project at Raini village in Tapovan area.', 'U\'khand flood live updates: Army sets up control room in Joshimath to aid rescue', 6, 7, '<p><img src=\"https://images.hindustantimes.com/img/2021/02/07/550x309/Chamoli_flood_1612687695088_1612687718893.jpg\" alt=\"ITBP officials survey Tapoban and Reni, these areas were affected by the flash flood.\"></p><p><span style=\"color: rgb(66, 66, 66); font-family: open_sansregular;\">ITBP officials survey Tapoban and Reni, these areas were affected by the flash flood.(ANI)&nbsp;</span><span style=\"color: rgb(66, 66, 66); font-family: pt_serifregular; font-size: 16px;\">Massive floods were caused in Dhauli ganga river in Uttarakhand, causing large scale damage to nearby villages, after a glacier broke off in Joshimath, Chamoli district on Sunday. The Rishi Ganga power project near the Raini village was completely devastated due to the floods, according to sources in the Indo Tibetan Border Police (ITBP).</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding-right: 0px; padding-bottom: 10px; padding-left: 0px; list-style-type: none; overflow-wrap: break-word; color: rgb(66, 66, 66); font-size: 16px; font-family: pt_serifregular;\">Several districts, including Pauri, Tehri, Rudraprayag, Haridwar and Dehradun have been put on alert as they are highly likely to be affected.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding-right: 0px; padding-bottom: 10px; padding-left: 0px; list-style-type: none; overflow-wrap: break-word; color: rgb(66, 66, 66); font-size: 16px; font-family: pt_serifregular;\">Indian army team, three army choppers and 250 personnel from the ITBP have been deployed for rescue operations, along with the police and the State Disaster Relief Force (SDRF). Medical teams have been rushed to the spot and hospitals at multiple cities have been kept in stand by for any emergencies.</p><p><br></p><p><br></p>', '2021-02-07 14:45:36', NULL, 1, 'U\'khand-flood-live-updates:-Army-sets-up-control-room-in-Joshimath-to-aid-rescue', '78ca1ffc54334a62f9fa2f102e49b145.jpg', NULL, NULL, NULL),
(16, 'TEst', 'Test1', 5, 6, 'Content', '2021-02-07 15:29:23', '2021-02-10 19:00:49', 0, 'Test1', 'fd7f69845b6e9e7c4d47e7e0b220d9cd.jpg', NULL, NULL, NULL),
(18, 'Testing', 'Test', 3, 5, '<p>cc</p>', '2021-02-07 16:32:17', NULL, 1, 'Test', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL),
(19, 'An emergency meeting of the National Crisis Management Committee, headed by Cabinet Secretary Rajiv Gauba, was held in New Delhi to monitor the progress in rescue operation.', 'Test', 3, 4, '<p>qwr</p>', '2021-02-08 13:15:37', NULL, 1, 'Test', 'fd7f69845b6e9e7c4d47e7e0b220d9cd.jpg', NULL, NULL, NULL),
(20, 'Testing', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', 5, 3, 'cc', '2021-02-08 14:04:40', NULL, 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', 'a1bdfb8dbd53254008c214a4b0f9cbd7.jpg', NULL, NULL, NULL),
(21, 'Testing', 'Test', 5, 3, 'cc', '2021-02-08 14:05:28', NULL, 1, 'Test', '3d8fe2c18ee484249b7d6f0f90c7001f.jpg', NULL, NULL, NULL),
(22, 'Testing', 'Test', 5, 3, 'cc', '2021-02-08 14:06:06', NULL, 1, 'Test', '3d8fe2c18ee484249b7d6f0f90c7001f.jpg', NULL, NULL, NULL),
(23, 'Testing', 'Test', 5, 3, 'cc', '2021-02-08 14:07:25', NULL, 1, 'Test', '3d8fe2c18ee484249b7d6f0f90c7001f.jpg', NULL, NULL, NULL),
(24, 'Testing', 'Test', 3, 4, '<p>dffg</p>', '2021-02-08 14:23:43', NULL, 1, 'Test', 'fd7f69845b6e9e7c4d47e7e0b220d9cd.jpg', NULL, NULL, NULL),
(25, 'Testing', 'Test', 5, 3, '<p>vv</p>', '2021-02-08 20:12:18', NULL, 1, 'Test', '60219b22919ad.jpg', NULL, NULL, NULL),
(26, 'Testing', 'Test', 5, 3, '<p>xx</p>', '2021-02-09 13:24:53', NULL, 1, 'Test', '2a62b3017417d23e6276587e96f989f4.jpg', NULL, NULL, NULL),
(27, 'Testing', 'Test', 3, 4, '<p>xx</p>', '2021-02-09 13:31:46', NULL, 1, 'Test', '60228ec248ada.jpg', NULL, NULL, NULL),
(28, 'Testing', 'Test', 5, 6, '<p>ss</p>', '2021-02-09 13:33:01', NULL, 1, 'Test', '60228f0d15a47.jpg', NULL, NULL, NULL),
(29, 'Testing', 'Test', 3, 4, '<p>qq</p>', '2021-02-09 13:33:31', NULL, 1, 'Test', '60228f2b739db.jpg', NULL, NULL, NULL),
(30, 'Testing', 'Test', 3, 4, '<p>qq</p>', '2021-02-09 13:34:27', NULL, 1, 'Test', '60228f630a8d0.jpg', NULL, NULL, NULL),
(31, 'Testing', 'Test', 5, 3, '<p>qq</p>', '2021-02-09 13:34:42', NULL, 1, 'Test', '60228f721260c.jpg', NULL, NULL, NULL),
(32, 'Testing', 'Test', 5, 3, '<p>qq</p>', '2021-02-09 13:35:05', NULL, 1, 'Test', '60228f8923b9e.jpg', NULL, NULL, NULL),
(33, 'Testing', 'Test', 5, 3, '<p>ww</p>', '2021-02-09 13:38:26', NULL, 1, 'Test', '60229051d24a8.jpg', NULL, NULL, NULL),
(34, 'Testing', 'Test', 3, 4, '<p>qq</p>', '2021-02-09 13:39:26', NULL, 1, 'Test', '6022908e86dcf.jpg', NULL, NULL, NULL),
(35, 'Testing', 'Test', 5, 3, '<p>tt</p>', '2021-02-09 13:42:58', NULL, 1, 'Test', '602291625602a.jpg', NULL, NULL, NULL),
(36, 'Testing', 'Test', 5, 3, '<p>tt</p>', '2021-02-09 13:43:33', NULL, 1, 'Test', '6022918553737.jpg', NULL, NULL, NULL),
(37, 'Testing', 'Test', 5, 3, '<p>tt</p>', '2021-02-09 13:43:55', NULL, 1, 'Test', '6022919b8116e.jpg', NULL, NULL, NULL),
(38, 'Testing', 'Test', 5, 3, '<p>tt</p>', '2021-02-09 13:44:08', NULL, 1, 'Test', '602291a8cf383.jpg', NULL, NULL, NULL),
(39, 'Testing', 'Test', 3, 4, '<p>yy</p>', '2021-02-09 13:44:25', NULL, 1, 'Test', '602291b8e7178.jpg', NULL, NULL, NULL),
(40, 'Testing', 'Test', 3, 4, '<p>yy</p>', '2021-02-09 13:45:07', NULL, 1, 'Test', '602291e39c76d.jpg', NULL, NULL, NULL),
(41, 'Testing', 'Test', 5, 3, '<p>qq</p>', '2021-02-09 13:45:26', NULL, 1, 'Test', '602291f634fe8.jpg', NULL, NULL, NULL),
(42, 'Testing', 'Test', 5, 6, '<p>aa</p>', '2021-02-09 13:50:53', NULL, 1, 'Test', '6022933ce4c04.jpg', NULL, NULL, NULL),
(43, 'Testing', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', 3, 4, '<p>gg</p>', '2021-02-09 13:55:12', NULL, 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '60229440da824.jpg', NULL, NULL, NULL),
(44, 'Testing', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', 3, 4, '<p>gg</p>', '2021-02-09 13:57:53', NULL, 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '602294e196734.jpg', NULL, NULL, NULL),
(45, 'Testing', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', 3, 4, '<p>gg</p>', '2021-02-09 14:02:36', NULL, 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '602295fcda5ca.jpg', NULL, NULL, NULL),
(46, 'Testing', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', 3, 4, '<p>gg</p>', '2021-02-09 14:04:32', NULL, 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '602296703bc2c.jpg', NULL, NULL, NULL),
(47, 'Testing', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', 3, 4, '<p>gg</p>', '2021-02-09 14:06:07', NULL, 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '602296cf40ed9.jpg', NULL, NULL, NULL),
(48, 'Testing', 'Testing video', 5, 3, '<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/op5aHic6uic\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></p>', '2021-02-11 12:05:21', NULL, 1, 'Testing-video', '60251d81e1c45.jpg', NULL, NULL, NULL),
(49, 'An emergency meeting of the National Crisis Management Committee, headed by Cabinet Secretary Rajiv Gauba, was held in New Delhi to monitor the progress in rescue operation.', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', 3, 4, '<p>Testing</p>', '2021-02-13 13:24:36', NULL, 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '6027d31478c86.jpg', NULL, NULL, NULL),
(50, 'Testing', 'Test', 5, 3, 'Content', '2021-02-13 13:25:23', NULL, 1, 'Test', '6027d34395911.jpg', NULL, NULL, NULL),
(51, 'Testing', 'Test', 5, 3, '<p>vv</p>', '2021-02-13 13:26:05', NULL, 1, 'Test', '6027d36d6f503.jpg', NULL, NULL, NULL),
(52, 'Testing', 'Test', 5, 3, '<p>vv</p>', '2021-02-13 13:31:05', NULL, 1, 'Test', '6027d49960b78.jpg', NULL, NULL, NULL),
(53, 'Testing', 'Test', 5, 3, '<p>bb</p>', '2021-02-13 13:32:32', NULL, 1, 'Test', '6027d4efd1175.jpg', NULL, NULL, NULL),
(54, 'An emergency meeting of the National Crisis Management Committee, headed by Cabinet Secretary Rajiv Gauba, was held in New Delhi to monitor the progress in rescue operation.', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', 6, 7, '<p>dh</p>', '2021-02-13 17:33:45', NULL, 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '60280d798096a.jpg', NULL, NULL, NULL),
(55, 'Government\'s 2022 J&K plan: Resettlement of Kashmiri Pandits, 25,000 jobs, train link', 'Government\'s 2022 J&K plan: Resettlement of Kashmiri Pandits, 25,000 jobs, train link', 6, 7, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">NEW DELHI: Union home&nbsp;</span><a href=\"https://timesofindia.indiatimes.com/topic/amit-shah\" styleobj=\"[object Object]\" class=\"\" data-ga=\"within_article-topic_link|topic_amit-shah\" frmappuse=\"1\" style=\"margin: 0px; padding: 0px; color: rgb(0, 116, 194); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">minister</a><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">&nbsp;Amit Shah on Saturday said that the&nbsp;</span><a href=\"https://www.speakingtree.in/topics/life/government\" styleobj=\"[object Object]\" class=\"\" data-ga=\"within_article-topic_link|topic_https://www.speakingtree.in/topics/life/government\" rel=\"noopener nofollow noreferrer\" frmappuse=\"1\" style=\"margin: 0px; padding: 0px; color: rgb(0, 116, 194); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">government</a><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">&nbsp;has decided to resettle all displaced&nbsp;</span><a href=\"https://timesofindia.indiatimes.com/topic/Kashmiri-Pandits\" styleobj=\"[object Object]\" class=\"\" data-ga=\"within_article-topic_link|topic_Kashmiri-Pandits\" frmappuse=\"1\" style=\"margin: 0px; padding: 0px; color: rgb(0, 116, 194); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">Kashmiri Pandits</a><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">&nbsp;in the Valley by 2022 along with creating 25,000 jobs for the people there and train connectivity to the region.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">NEW DELHI: Union home&nbsp;</span><a href=\"https://timesofindia.indiatimes.com/topic/amit-shah\" styleobj=\"[object Object]\" class=\"\" data-ga=\"within_article-topic_link|topic_amit-shah\" frmappuse=\"1\" style=\"margin: 0px; padding: 0px; color: rgb(0, 116, 194); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">minister</a><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">&nbsp;Amit Shah on Saturday said that the&nbsp;</span><a href=\"https://www.speakingtree.in/topics/life/government\" styleobj=\"[object Object]\" class=\"\" data-ga=\"within_article-topic_link|topic_https://www.speakingtree.in/topics/life/government\" rel=\"noopener nofollow noreferrer\" frmappuse=\"1\" style=\"margin: 0px; padding: 0px; color: rgb(0, 116, 194); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">government</a><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">&nbsp;has decided to resettle all displaced&nbsp;</span><a href=\"https://timesofindia.indiatimes.com/topic/Kashmiri-Pandits\" styleobj=\"[object Object]\" class=\"\" data-ga=\"within_article-topic_link|topic_Kashmiri-Pandits\" frmappuse=\"1\" style=\"margin: 0px; padding: 0px; color: rgb(0, 116, 194); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">Kashmiri Pandits</a><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">&nbsp;in the Valley by 2022 along with creating 25,000 jobs for the people there and train connectivity to the region.</span><br style=\"margin: 8px 0px; padding: 0px; content: &quot;&quot;; display: flex; color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">The minister said that the government provides Rs 13,000 per month to the families of 44,000 Kashmiri Pandits who have relief cards. \"The government also provides free ration and has plans to settle them back in their houses in the Valley by 2022.\"</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\"><br></span><br style=\"margin: 8px 0px; padding: 0px; content: &quot;&quot;; display: flex; color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: proximanova, Verdana, sans-serif; font-size: 18px;\">The minister said that the government provides Rs 13,000 per month to the families of 44,000 Kashmiri Pandits who have relief cards. \"The government also provides free ration and has plans to settle them back in their houses in the Valley by 2022.\"</span><br></p>', '2021-02-13 17:35:33', NULL, 1, 'Government\'s-2022-J&K-plan:-Resettlement-of-Kashmiri-Pandits,-25,000-jobs,-train-link', '60280de5468ef.jpg', NULL, NULL, NULL),
(56, 'Testing', 'Test', 5, 6, '<p>vv</p>', '2021-02-14 08:32:20', NULL, 1, 'Test', '6028e014878ad.jpg', NULL, NULL, NULL),
(57, 'Testing', 'Test', 3, 5, '<p>ff</p>', '2021-02-14 08:34:21', NULL, 1, 'Test', '6028e08d4d136.jpg', NULL, NULL, NULL),
(58, 'Testing', 'Test', 3, 4, '<p>qq</p>', '2021-02-14 08:35:24', NULL, 1, 'Test', '6028e0cc87618.jpg', NULL, NULL, NULL),
(59, 'Testing', 'Test', 3, 4, '<p>qq</p>', '2021-02-14 08:36:05', NULL, 1, 'Test', '6028e0f5959a1.jpg', NULL, NULL, NULL),
(60, 'Testing', 'Test', 3, 4, '<p>qq</p>', '2021-02-14 08:40:14', '2021-02-14 19:58:39', 1, 'Test', '602980ef0d47c.jpg', NULL, NULL, NULL),
(61, 'Testing', 'Test', 5, 6, '<p>lk</p>', '2021-02-15 11:48:05', NULL, 1, 'Test', '602a5f75cd4e9.jpg', NULL, NULL, NULL),
(62, 'The Indian Cricket Team has received a huge blow right ahead of the commencement of the much-awaited series against England. Star speedster Jasprit Bumrah has been ruled out of the forthcoming 3-match T20I series as he suffered an injury in his left thumb.', 'Jasprit Bumrah ruled out of England T20I series due to injury', 3, 4, '<p style=\"margin-bottom: 15px; color: rgb(51, 51, 51); padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style=\"margin-bottom: 15px; color: rgb(51, 51, 51); padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style=\"margin-bottom: 15px; color: rgb(51, 51, 51); padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style=\"margin-bottom: 15px; color: rgb(51, 51, 51); padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2021-02-15 13:52:52', NULL, 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', '602a7cb46ec90.png', NULL, NULL, NULL),
(63, '\'\'', '\'\'', 3, 4, '<p>\'\'</p>', '2021-02-15 14:47:28', NULL, 1, '\'\'', '602a89803bec7.png', NULL, NULL, NULL),
(64, 'Testing', 'Test', 5, 3, '<p>qq</p>', '2021-02-20 16:42:10', NULL, 1, 'Test', '60313be2337f5.jpg', NULL, NULL, NULL),
(65, 'An emergency meeting of the National Crisis Management Committee, headed by Cabinet Secretary Rajiv Gauba, was held in New Delhi to monitor the progress in rescue operation.', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', 3, 5, '<p>yy</p>', '2021-02-20 16:43:11', NULL, 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '60313c1fbb439.jpg', NULL, NULL, NULL),
(66, 'An emergency meeting of the National Crisis Management Committee, headed by Cabinet Secretary Rajiv Gauba, was held in New Delhi to monitor the progress in rescue operation.', 'Test', 5, 6, '<p>yy</p>', '2021-02-20 16:45:09', NULL, 1, 'Test', '60313c957a3d0.jpg', 0, 1, 0),
(67, 'Short desc 2', 'Andhra Pradesh Power Generation Corporation Limited is power generating organization', 5, 6, '<p>News Details</p>', '2021-02-28 13:04:40', NULL, 1, 'Andhra-Pradesh-Power-Generation-Corporation-Limited-is-power-generating-organization', '603b94e8537e6.jpg', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblreviews`
--

CREATE TABLE `tblreviews` (
  `id` int(11) NOT NULL,
  `ShortDescription` varchar(500) DEFAULT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `PostDetails` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` longtext NOT NULL DEFAULT '',
  `PostImage` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblreviews`
--

INSERT INTO `tblreviews` (`id`, `ShortDescription`, `PostTitle`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `status`) VALUES
(1, 'Testing', 'Test', '<p>cc</p>', '2021-02-14 19:02:18', '2021-02-21 14:48:43', 1, 'Test', '603270f359133.png', 1),
(2, 'Testing..', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', '<p>tr</p>', '2021-02-14 19:16:25', '2021-02-21 14:42:12', 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '602977092635c.jpg', 0),
(3, 'Testing', 'Testing 1', '<p>cc</p>', '2021-02-14 20:08:38', '2021-02-15 12:38:59', 1, 'Testing-1', '60298346734df.png', 1),
(4, 'An emergency meeting of the National Crisis Management Committee, headed by Cabinet Secretary Rajiv Gauba, was held in New Delhi to monitor the progress in rescue operation.', 'Night ops to continue in Uttarakhand, says ITBP; alert in UP: 10 points', '<p>dd</p>', '2021-02-15 12:36:28', '2021-02-15 12:38:58', 1, 'Night-ops-to-continue-in-Uttarakhand,-says-ITBP;-alert-in-UP:-10-points', '602a6acc84693.png', 1),
(5, 'His last visit to both the poll-bound states was on January 23, on the birth anniversary of Netaji Subhash Chandra Bose.', 'U\'khand flood live updates: Army sets up control room in Joshimath to aid rescue', '<p>qq</p>', '2021-02-15 12:36:39', '2021-02-15 12:38:57', 1, 'U\'khand-flood-live-updates:-Army-sets-up-control-room-in-Joshimath-to-aid-rescue', '602a6ad784805.png', 1),
(6, 'The water level in Dhauliganga river rose suddenly following an avalanche near a power project at Raini village in Tapovan area.', '\'Glad to see enthusiasm\': PM Modi ahead of his visit to Assam, Bengal tomorrow', '<p>ww</p>', '2021-02-15 12:36:52', '2021-02-15 12:38:56', 1, '\'Glad-to-see-enthusiasm\':-PM-Modi-ahead-of-his-visit-to-Assam,-Bengal-tomorrow', '602a6ae48a9a2.png', 1),
(7, 'PM Modi, during a rally, also held the 3 parties responsible for the woes of the people and lack of development in Bengal.', 'PM Modi’s \'match-fixing\' remark draws criticism from TMC, Left and Congress', '<p>qq</p>', '2021-02-15 12:37:14', '2021-02-15 12:38:55', 1, 'PM-Modi’s-\'match-fixing\'-remark-draws-criticism-from-TMC,-Left-and-Congress', '602a6afac6463.png', 1),
(8, 'How to handle pressure', 'Interview with Avinash', 'Avinash - I dont know', '2021-02-20 18:03:07', '2021-02-21 14:32:48', 1, 'Interview-with-Avinash', '60314edb27cec.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Football', 'Football', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'India', 'India', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `UserName` varchar(255) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  `MobileNumber` int(15) NOT NULL,
  `Address` longtext NOT NULL,
  `UserRole` int(1) NOT NULL DEFAULT 2,
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`UserName`, `EmailId`, `UserPassword`, `MobileNumber`, `Address`, `UserRole`, `CreatedDate`, `UpdationDate`, `id`) VALUES
('Avinash Vadivel', 'avinash.vadivel@andhrafilm.com', '$2y$12$M5EzQ9CX9pEakA7zgCZZ8OtcgTWV9TPivKdMbpNm./CYqKQIA6OMC', 987, '1/1, Chennai, Tamil Nadu', 1, '2021-02-27 18:20:59', NULL, 1),
('Mythili', 'mythili11', '$2y$12$/ACPZyaP7TmZBV8.u742RuMMnqSVbDmcNT8ZMLvSm9i740..kUPr.', 0, '1', 1, '2021-02-27 19:10:50', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblvideos`
--

CREATE TABLE `tblvideos` (
  `Id` int(11) NOT NULL,
  `VideoUrl` longtext DEFAULT NULL,
  `VideoShortDescription` mediumtext DEFAULT NULL,
  `Is_Active` int(1) NOT NULL DEFAULT 1,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblvideos`
--

INSERT INTO `tblvideos` (`Id`, `VideoUrl`, `VideoShortDescription`, `Is_Active`, `PostingDate`, `UpdationDate`, `Views`) VALUES
(5, 'tgbNymZ7vqY', 'video 1', 1, '2021-02-11 12:46:57', NULL, 0),
(6, 'op5aHic6uic', 'video 2', 1, '2021-02-11 12:47:06', '2021-02-13 19:14:26', 1),
(7, 'zsaff26T4Wg', 'video 3', 1, '2021-02-11 12:47:32', NULL, 0),
(9, 'tgbNymZ7vqY', 'enter video id alone. eg: youtube Link: \"https://youtu.be/zsaff26T4Wg\" enter only \"zsaff26T4Wg\"', 1, '2021-02-11 12:51:45', NULL, 0),
(10, 'Nvpx77eOJrU', 'Master Telugu Teaser', 1, '2021-02-13 19:50:25', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breakingnewstable`
--
ALTER TABLE `breakingnewstable`
  ADD PRIMARY KEY (`NewsId`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblads`
--
ALTER TABLE `tblads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallerycategory`
--
ALTER TABLE `tblgallerycategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallerysubcategory`
--
ALTER TABLE `tblgallerysubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `tblinterviews`
--
ALTER TABLE `tblinterviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreviews`
--
ALTER TABLE `tblreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvideos`
--
ALTER TABLE `tblvideos`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breakingnewstable`
--
ALTER TABLE `breakingnewstable`
  MODIFY `NewsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblads`
--
ALTER TABLE `tblads`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tblgallerycategory`
--
ALTER TABLE `tblgallerycategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblgallerysubcategory`
--
ALTER TABLE `tblgallerysubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblinterviews`
--
ALTER TABLE `tblinterviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tblreviews`
--
ALTER TABLE `tblreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblvideos`
--
ALTER TABLE `tblvideos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
