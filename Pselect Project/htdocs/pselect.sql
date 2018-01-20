-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 24, 2017 at 02:01 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pselect`
--

-- --------------------------------------------------------

--
-- Table structure for table `Applicant`
--

CREATE TABLE `Applicant` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `eduLevel` varchar(100) NOT NULL,
  `yrsExp` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `title`) VALUES
(1, 'Accounting & Banking'),
(2, 'Construction'),
(3, 'Fashion & Style'),
(4, 'Food & Restaurant'),
(5, 'Healthcare'),
(6, 'Retail & Sales'),
(7, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE `Company` (
  `id` int(11) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Company`
--

INSERT INTO `Company` (`id`, `companyName`, `address`) VALUES
(1, 'hello', 'houstoun'),
(2, 'hello', 'austion');

-- --------------------------------------------------------

--
-- Table structure for table `Forum`
--

CREATE TABLE `Forum` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `postedText` text NOT NULL,
  `postedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `JobApplied`
--

CREATE TABLE `JobApplied` (
  `id` int(11) NOT NULL,
  `jobs_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `AppliedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `Company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `category_id`, `user_id`, `type_id`, `company_name`, `title`, `description`, `city`, `state`, `contact_email`, `created`, `Company_id`) VALUES
(1, 7, 1, 1, 'Tech Guy Computer Services', 'Senior Graphic Designer', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dapibus risus at dapibus malesuada. Vestibulum euismod, velit sit amet tempor ornare, nulla augue mattis mi, nec ultricies dolor augue nec lectus. Integer bibendum enim ipsum, at eleifend nisl elementum sit amet. Etiam eget magna et nunc ultrices suscipit. Duis a ligula vel nisi auctor laoreet. Morbi varius suscipit purus, sed pretium nisl sagittis id. Aliquam vel nulla tempor, luctus quam nec, egestas sem. Nulla nulla ante, faucibus fringilla blandit non, porttitor at eros.\r\n</p>\r\n<p>\r\nCras luctus cursus pretium. Fusce rhoncus tortor at lectus dignissim, sed dignissim enim euismod. Pellentesque venenatis lacus diam. Nulla aliquam turpis vel lorem viverra consequat. Curabitur vitae vehicula lacus. Fusce quis imperdiet tortor. Fusce enim massa, tincidunt vel lobortis non, mattis quis turpis. Nam lobortis, lectus vitae iaculis bibendum, felis nulla consectetur leo, nec volutpat orci elit ut lorem. Nunc sagittis mauris quis tellus ullamcorper facilisis. Sed volutpat lacus in gravida condimentum. Maecenas sit amet massa vel neque suscipit porta. In luctus odio ante, a scelerisque tellus imperdiet id. Nunc in mollis lectus. Nam lobortis dui lorem, nec lacinia erat pellentesque non. In mattis eget massa sit amet elementum.</p>', 'Burlington', 'MA', 'contact@employer.com', '2014-07-14 00:00:00', 1),
(2, 7, 1, 1, 'Tech Guy Computer Services', 'UX Designer', '<p>Velit sit amet tempor ornare, nulla augue mattis mi, nec ultricies dolor augue nec lectus. Integer bibendum enim ipsum, at eleifend nisl elementum sit amet. Etiam eget magna et nunc ultrices suscipit. Duis a ligula vel nisi auctor laoreet. Morbi varius suscipit purus, sed pretium nisl sagittis id. Aliquam vel nulla tempor, luctus quam nec, egestas sem. Nulla nulla ante, faucibus fringilla blandit non, porttitor at eros.\n</p>\n<p>\nCras luctus cursus pretium. Fusce rhoncus tortor at lectus dignissim, sed dignissim enim euismod. Pellentesque venenatis lacus diam. Nulla aliquam turpis vel lorem viverra consequat. Curabitur vitae vehicula lacus. Fusce quis imperdiet tortor. Fusce enim massa, tincidunt vel lobortis non, mattis quis turpis. Nam lobortis, lectus vitae iaculis bibendum, felis nulla consectetur leo, nec volutpat orci elit ut lorem. Nunc sagittis mauris quis tellus ullamcorper facilisis. Sed volutpat lacus in gravida condimentum. Maecenas sit amet massa vel neque suscipit porta. In luctus odio ante, a scelerisque tellus imperdiet id. Nunc in mollis lectus. Nam lobortis dui lorem, nec lacinia erat pellentesque non. In mattis eget massa sit amet elementum.</p>', 'Newburyport', 'MA', 'contact@employer.om', '2014-07-14 00:00:00', 1),
(3, 5, 2, 2, 'Harborside Healthcare', 'Registered Nurse', '<p>Nec ultricies dolor augue nec lectus. Integer bibendum enim ipsum, at eleifend nisl elementum sit amet. Etiam eget magna et nunc ultrices suscipit. Duis a ligula vel nisi auctor laoreet. Morbi varius suscipit purus, sed pretium nisl sagittis id. Aliquam vel nulla tempor, luctus quam nec, egestas sem. Nulla nulla ante, faucibus fringilla blandit non, porttitor at eros.\r\n</p>\r\n<p>\r\nCras luctus cursus pretium. Fusce rhoncus tortor at lectus dignissim, sed dignissim enim euismod. Pellentesque venenatis lacus diam. Nulla aliquam turpis vel lorem viverra consequat. Curabitur vitae vehicula lacus. Fusce quis imperdiet tortor. Fusce enim massa, tincidunt vel lobortis non, mattis quis turpis. Nam lobortis, lectus vitae iaculis bibendum, felis nulla consectetur leo, nec volutpat orci elit ut lorem. Nunc sagittis mauris quis tellus ullamcorper facilisis. Sed volutpat lacus in gravida condimentum. Maecenas sit amet massa vel neque suscipit porta. In luctus odio ante, a scelerisque tellus imperdiet id. Nunc in mollis lectus. Nam lobortis dui lorem, nec lacinia erat pellentesque non. In mattis eget massa sit amet elementum.</p>', 'Brooklyn', 'NY', 'contact@employer.com', '2014-07-14 00:00:00', 1),
(4, 2, 3, 1, 'Smith Painting', 'House Painter', '<p>Eenim ipsum, at eleifend nisl elementum sit amet. Etiam eget magna et nunc ultrices suscipit. Duis a ligula vel nisi auctor laoreet. Morbi varius suscipit purus, sed pretium nisl sagittis id. Aliquam vel nulla tempor, luctus quam nec, egestas sem. Nulla nulla ante, faucibus fringilla blandit non, porttitor at eros.\r\n</p>\r\n<p>\r\nCras luctus cursus pretium. Fusce rhoncus tortor at lectus dignissim, sed dignissim enim euismod. Pellentesque venenatis lacus diam. Nulla aliquam turpis vel lorem viverra consequat. Curabitur vitae vehicula lacus. Fusce quis imperdiet tortor. Fusce enim massa, tincidunt vel lobortis non, mattis quis turpis. Nam lobortis, lectus vitae iaculis bibendum, felis nulla consectetur leo, nec volutpat orci elit ut lorem. Nunc sagittis mauris quis tellus ullamcorper facilisis. Sed volutpat lacus in gravida condimentum. Maecenas sit amet massa vel neque suscipit porta. In luctus odio ante, a scelerisque tellus imperdiet id. Nunc in mollis lectus. Nam lobortis dui lorem, nec lacinia erat pellentesque non. In mattis eget massa sit amet elementum.</p>', 'Boston', 'MA', 'contact@employer.com', '2014-07-14 00:00:00', 2),
(17, 7, 1, 2, 'Tech Guy Computer Services', 'Wordpress Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum, massa in placerat porta, dui purus placerat turpis, interdum facilisis metus velit id tellus. Nulla mattis dui id leo hendrerit eleifend in quis ligula. Curabitur eget ante massa. Cras at libero porta, rhoncus nunc a, pretium ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse facilisis massa sit amet tellus consequat, eu mattis arcu tempor. Aenean venenatis mollis enim sed vehicula. Morbi non diam enim. Fusce at luctus nisl, non pulvinar nisl. Aliquam cursus interdum erat, vitae pharetra purus egestas nec. Vivamus rhoncus rhoncus nisi, rhoncus rhoncus neque bibendum et. Aliquam nec volutpat nibh, nec volutpat risus. In mi nulla, congue quis blandit vitae, ullamcorper et dolor. Etiam vel fringilla elit. Pellentesque imperdiet eleifend blandit.', 'Merrimac', 'Massachusetts', 'brad@techguywebsolutions.com', '2014-07-15 16:18:30', 2),
(19, 1, 1, 1, 'company', 'title', 'description', 'city', 'sate', 'email', NULL, 0),
(20, 1, 1, 1, 'company', 'title', 'description', 'city', 'sate', 'email', '2017-04-23 18:49:41', 0),
(21, 1, 1, 1, 'new company', 'new job', 'new description', 'new city', 'new state', 'new email', '2017-04-23 18:50:28', 0),
(22, 1, 1, 1, 'adfa', 'dafsd', 'adfadsf', 'adfa', 'adfa', 'adfa', '2017-04-23 18:52:43', 1),
(23, 1, 1, 1, 'adfa', 'dafsd', 'adfadsf', 'adfa', 'adfa', 'adfa', '2017-04-23 18:55:03', 1),
(24, 1, 1, 1, 'adfa', 'asdf', 'adfasdf', 'adfa', 'adf', 'adfad', '2017-04-23 18:58:43', 1),
(25, 1, 1, 1, '', '', '', '', '', '', '2017-04-23 18:58:51', 1),
(26, 1, 1, 1, '', '', '', '', '', '', '2017-04-23 18:58:53', 1),
(27, 1, 1, 1, '', '', '', '', '', '', '2017-04-23 18:58:56', 1),
(28, 1, 1, 1, '', '', '', '', '', '', '2017-04-23 18:58:59', 1),
(29, 1, 1, 1, '', '', '', '', '', '', '2017-04-23 18:59:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_tag`
--

CREATE TABLE `newsletter_tag` (
  `id` int(11) NOT NULL,
  `newsletter_id` int(11) NOT NULL,
  `tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Recruiter`
--

CREATE TABLE `Recruiter` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Resume`
--

CREATE TABLE `Resume` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `coverLetter` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Types`
--

CREATE TABLE `Types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Types`
--

INSERT INTO `Types` (`id`, `name`, `color`) VALUES
(1, 'Full Time', '#81b800'),
(2, 'Part Time', '#4c9ef1'),
(3, 'Freelance', '#f4f4f4');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `first_name`, `last_name`, `email`, `role`, `created`, `username`, `password`) VALUES
(1, 'Brad', 'Traversy', 'techguyinfo@gmail.com', 'Employer', '2014-07-14 12:46:01', 'techguy1', 'b11e69e8f791ce2ca31c906df27b95285156f9b4'),
(2, 'Jane', 'Doe', 'janedoe@gmail.com', 'Employer', '2014-07-14 12:50:39', 'janed', '2b84997dcd67aba6feacc42c86458c05d3e98b1fa573389a63'),
(3, 'John', 'Doe', 'johndoe@gmail.com', 'Job Seeker', '2014-07-14 12:51:10', 'johnd', '2b84997dcd67aba6feacc42c86458c05d3e98b1fa573389a63'),
(16, 'Jennifer', 'Sheehan', 'jen.irish@hotmail.com', 'Job Seeker', '2014-07-15 21:04:23', 'jensheehan', 'b11e69e8f791ce2ca31c906df27b95285156f9b4'),
(89, 'Ali', 'Alhamadani', 'ali_mha2@yahoo.com', 'Employer', '2017-04-20 23:31:01', 'dataanalyst', 'Buddy1989#$'),
(90, 'Ali', 'ha', '', '', '0000-00-00 00:00:00', 'czdv', 'vxcv'),
(91, 'Ali', 'hamadani', 'alhamadania18@gator.uhd.edu', '', '0000-00-00 00:00:00', 'czdv', 'Buddy1989'),
(92, 'durga', 'sury', 'employer@somecompany.org', '', '0000-00-00 00:00:00', 'durgasury', '1234'),
(93, 'David', 'Howard', 'dhoward@companyx.com', '', '0000-00-00 00:00:00', 'dhoward', 'dd2211'),
(94, 'sally', 'jackson', 'sjackson@gmail.com', '', '2017-04-21 01:24:05', 'sjackson', 'ssjj22'),
(95, 'john', 'lee', 'lee@somecompany.com', '', '2017-04-21 03:43:05', 'Jlee', '1234'),
(96, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-21 21:15:48', 'jreacher', 'drifter'),
(97, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-21 21:16:46', 'jreacher', 'drifter'),
(98, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-21 21:17:47', 'jreacher', 'drifter'),
(99, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-21 21:20:41', 'jreacher', 'drifter'),
(100, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-21 21:22:05', 'jreacher', 'drifter'),
(101, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-21 21:22:09', 'jreacher', 'drifter'),
(102, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-21 21:22:17', 'jreacher', 'drifter'),
(103, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-21 21:35:23', 'jreacher', 'drifter'),
(104, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-21 21:43:32', 'jreacher', 'drifter'),
(105, 'Jason ', 'Bourne', 'jbourne@yahoo.com', 'Recruiter', '2017-04-21 21:47:37', 'jbourne', 'myidentity'),
(106, 'Jason ', 'Bourne', 'jbourne@yahoo.com', 'Recruiter', '2017-04-21 21:47:49', 'jbourne', 'myidentity'),
(107, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 15:48:13', 'jreacher', 'drifter'),
(108, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 15:49:37', 'jreacher', 'drifter'),
(109, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 15:56:26', 'jreacher', 'drifter'),
(110, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 15:56:40', 'jreacher', 'drifter'),
(111, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 15:58:35', 'Jlee', 'drifter'),
(112, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 16:03:51', 'jreacher', 'drifter'),
(113, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 16:05:39', 'jreacher', 'drifter'),
(114, 'Jason ', 'Bourne', 'jbourne@yahoo.com', 'Recruiter', '2017-04-22 16:07:08', 'jbourne', 'myidentity'),
(115, 'Jason ', 'Bourne', 'jbourne@yahoo.com', 'Recruiter', '2017-04-22 16:09:34', 'jbourne', 'myidentity'),
(116, 'Jason ', 'Bourne', 'jbourne@yahoo.com', 'Recruiter', '2017-04-22 16:10:16', 'jbourne', 'myidentity'),
(117, 'Jason ', 'Bourne', 'jbourne@yahoo.com', 'Recruiter', '2017-04-22 16:10:28', 'jbourne', 'myidentity'),
(118, 'Jason ', 'Bourne', 'jbourne@yahoo.com', 'Recruiter', '2017-04-22 16:10:39', 'jbourne', 'myidentity'),
(119, 'Jason ', 'Bourne', 'jbourne@yahoo.com', 'Recruiter', '2017-04-22 16:11:01', 'jbourne', 'myidentity'),
(120, 'Jason ', 'Bourne', 'jbourne@yahoo.com', 'Recruiter', '2017-04-22 16:13:03', 'jbourne', 'myidentity'),
(121, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 16:16:46', 'jreacher', 'drifter'),
(122, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 16:28:04', 'jreacher', 'drifter'),
(123, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 16:33:57', 'jreacher', 'drifter'),
(124, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 18:04:06', 'jreacher', 'drifter'),
(125, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 18:05:47', 'jreacher', 'drifter'),
(126, 'Jack', 'Reacher', 'jreacher@yahoo.com', 'Applicant', '2017-04-22 18:08:01', 'jreacher', 'drifter'),
(127, 'robin', 'hood', 'rhood@yahoo.com', 'Applicant', '2017-04-23 01:12:23', 'rhood', 'hatesql'),
(128, 'robin', 'hood', 'rhood@yahoo.com', 'Applicant', '2017-04-23 01:13:28', 'rhood', 'hatesql');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Applicant`
--
ALTER TABLE `Applicant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Forum`
--
ALTER TABLE `Forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `JobApplied`
--
ALTER TABLE `JobApplied`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_id` (`jobs_id`),
  ADD KEY `applicant_id` (`applicant_id`),
  ADD KEY `resume_id` (`resume_id`),
  ADD KEY `applicant_id_2` (`applicant_id`),
  ADD KEY `applicant_id_3` (`applicant_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `company_name` (`company_name`),
  ADD KEY `Company_id` (`Company_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `newsletter_tag`
--
ALTER TABLE `newsletter_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nl_fk1` (`newsletter_id`);

--
-- Indexes for table `Recruiter`
--
ALTER TABLE `Recruiter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `Resume`
--
ALTER TABLE `Resume`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicant_id` (`applicant_id`);

--
-- Indexes for table `Types`
--
ALTER TABLE `Types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Applicant`
--
ALTER TABLE `Applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Company`
--
ALTER TABLE `Company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Forum`
--
ALTER TABLE `Forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `JobApplied`
--
ALTER TABLE `JobApplied`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `newsletter_tag`
--
ALTER TABLE `newsletter_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Recruiter`
--
ALTER TABLE `Recruiter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Resume`
--
ALTER TABLE `Resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Types`
--
ALTER TABLE `Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Applicant`
--
ALTER TABLE `Applicant`
  ADD CONSTRAINT `user_id_fk	` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `Forum`
--
ALTER TABLE `Forum`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `JobApplied`
--
ALTER TABLE `JobApplied`
  ADD CONSTRAINT `applicant_id_fk` FOREIGN KEY (`applicant_id`) REFERENCES `Applicant` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_id_fk` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `resume_id_fk` FOREIGN KEY (`resume_id`) REFERENCES `Resume` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_fk2` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`),
  ADD CONSTRAINT `jobs_fk3` FOREIGN KEY (`type_id`) REFERENCES `Types` (`id`),
  ADD CONSTRAINT `jobs_fk4` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`),
  ADD CONSTRAINT `type_id_fk` FOREIGN KEY (`type_id`) REFERENCES `Types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id.fk` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD CONSTRAINT `category_id.fk` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `nl_fk2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `user_id_fkk` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `newsletter_tag`
--
ALTER TABLE `newsletter_tag`
  ADD CONSTRAINT `nl_fk1` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletter` (`id`);

--
-- Constraints for table `Recruiter`
--
ALTER TABLE `Recruiter`
  ADD CONSTRAINT `company_id_fkkk` FOREIGN KEY (`company_id`) REFERENCES `Company` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_fkkk` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `Resume`
--
ALTER TABLE `Resume`
  ADD CONSTRAINT `applicant_id.fkk` FOREIGN KEY (`applicant_id`) REFERENCES `Applicant` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
