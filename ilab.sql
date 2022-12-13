-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 06:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ilab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` text DEFAULT NULL,
  `pass` text DEFAULT NULL,
  `admin_name` text DEFAULT NULL,
  `admin_logo` text DEFAULT NULL,
  `admin_reg_date` text DEFAULT NULL,
  `admin_reg_ip` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`, `admin_name`, `admin_logo`, `admin_reg_date`, `admin_reg_ip`) VALUES
(1, 'ilab@ilab.com', 'cff96330be60d9d30d7672bc033bc7ff', 'ilab', 'admin/theme/default/dist/img/admin.jpg', '17th October 2022', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `admin_history`
--

CREATE TABLE `admin_history` (
  `id` int(11) NOT NULL,
  `last_date` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin_history`
--

INSERT INTO `admin_history` (`id`, `last_date`, `ip`, `browser`) VALUES
(2, '17th October 2022', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(3, '18th October 2022', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(4, '25th November 2022', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36'),
(5, '29th November 2022', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36'),
(6, '7th December 2022', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `text_ads` text DEFAULT NULL,
  `ad720x90` text DEFAULT NULL,
  `ad250x300` text DEFAULT NULL,
  `ad250x125` text DEFAULT NULL,
  `ad480x60` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `text_ads`, `ad720x90`, `ad250x300`, `ad250x125`, `ad480x60`) VALUES
(1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `banned_ip`
--

CREATE TABLE `banned_ip` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `added_at` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `capthca`
--

CREATE TABLE `capthca` (
  `id` int(11) NOT NULL,
  `cap_options` text DEFAULT NULL,
  `cap_data` text DEFAULT NULL,
  `cap_type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `capthca`
--

INSERT INTO `capthca` (`id`, `cap_options`, `cap_data`, `cap_type`) VALUES
(1, '{\"register_page\":true,\"login_page\":true,\"contact_page\":true,\"allseo_page\":false,\"reset_pass_page\":true,\"resend_act_page\":true,\"admin_login_page\":false}', '{\"recap\":{\"cap_name\":\"Google Recaptcha v2 (Tickbox Method)\",\"recap_seckey\":\"\",\"recap_sitekey\":\"\"},\"phpcap\":{\"cap_name\":\"Built-in PHP Image Verification\",\"mode\":\"Normal\",\"allowed\":\"ABCDEFGHJKLMNPRSTUVWXYZabcdefghjkmnprstuvwxyz234567891\",\"color\":\"#ffffff\",\"mul\":\"yes\"}}', 'recap');

-- --------------------------------------------------------

--
-- Table structure for table `ddos`
--

CREATE TABLE `ddos` (
  `id` int(11) NOT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `banned` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interface`
--

CREATE TABLE `interface` (
  `id` int(11) NOT NULL,
  `theme` text DEFAULT NULL,
  `lang` text DEFAULT NULL,
  `available_languages` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `interface`
--

INSERT INTO `interface` (`id`, `theme`, `lang`, `available_languages`) VALUES
(1, 'default', 'en', 'a:1:{i:0;a:7:{i:0;s:1:\"1\";i:1;b:1;i:2;s:2:\"en\";i:3;s:7:\"English\";i:4;s:6:\"Balaji\";i:5;b:1;i:6;s:3:\"ltr\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `code` text DEFAULT NULL,
  `default_text` text DEFAULT NULL,
  `lang_en` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`id`, `code`, `default_text`, `lang_en`) VALUES
(1, 'RF1', 'Home', 'Home'),
(2, 'RF2', 'Contact US', 'Contact US'),
(3, 'RF3', 'Image Verification', 'Image Verification'),
(4, 'RF4', 'Your image verification code is wrong!', 'Your image verification code is wrong!'),
(5, 'RF5', 'Submit', 'Submit'),
(6, 'RF6', 'True', 'True'),
(7, 'RF7', 'Try New Site', 'Try New Site'),
(8, 'RF8', 'Captcha', 'Captcha'),
(9, 'RF9', 'We value all the feedbacks received from our customers.', 'We value all the feedbacks received from our customers.'),
(10, 'RF10', 'If you have any queries, comments, suggestions or have anything to talk about.', 'If you have any queries, comments, suggestions or have anything to talk about.'),
(11, 'RF11', 'Please enter your fullname *', 'Please enter your fullname *'),
(12, 'RF12', 'Fullname is required', 'Fullname is required'),
(13, 'RF13', 'Please enter your email *', 'Please enter your email *'),
(14, 'RF14', 'Valid email is required', 'Valid email is required'),
(15, 'RF15', 'Subject is required', 'Subject is required'),
(16, 'RF16', 'Please enter your subject *', 'Please enter your subject *'),
(17, 'RF17', 'Please enter your message *', 'Please enter your message *'),
(18, 'RF18', 'Please leave some message', 'Please leave some message'),
(19, 'RF19', 'Send message', 'Send message'),
(20, 'RF20', 'Alert!', 'Alert!'),
(21, 'RF21', 'Name *', 'Name *'),
(22, 'RF22', 'Email *', 'Email *'),
(23, 'RF23', 'Subject *', 'Subject *'),
(24, 'RF24', 'Message *', 'Message *'),
(25, 'RF25', 'Some fields are missing or empty', 'Some fields are missing or empty'),
(26, 'RF26', 'Guest Visitor', 'Guest Visitor'),
(27, 'RF27', 'Your message has been sent successfully', 'Your message has been sent successfully'),
(28, 'RF28', 'Failed to send your message', 'Failed to send your message'),
(29, 'RF29', 'Please verify your image verification', 'Please verify your image verification'),
(30, 'RF30', 'User Message', 'User Message'),
(31, 'RF31', 'Additional Information', 'Additional Information'),
(32, 'RF32', 'Username', 'Username'),
(33, 'RF33', 'User IP', 'User IP'),
(34, 'RF34', 'Time & Date', 'Time & Date'),
(35, 'RF35', 'Login/Register', 'Login/Register'),
(36, 'RF36', 'You are already logged in', 'You are already logged in'),
(37, 'RF37', 'Activation link successfully sent to your mail id', 'Activation link successfully sent to your mail id'),
(38, 'RF38', 'Email ID already verified!', 'Email ID already verified!'),
(39, 'RF39', 'Email ID not found!', 'Email ID not found!'),
(40, 'RF40', 'Database Error! Contact Support!', 'Database Error! Contact Support!'),
(41, 'RF41', 'New password sent to your mail', 'New password sent to your mail'),
(42, 'RF42', 'You are already logged in', 'You are already logged in'),
(43, 'RF43', 'Login Successful..', 'Login Successful..'),
(44, 'RF44', 'Oh, no your account was banned! Contact Support..', 'Oh, no your account was banned! Contact Support..'),
(45, 'RF45', 'Oh, no account not verified', 'Oh, no account not verified'),
(46, 'RF46', 'Oh, no password is wrong', 'Oh, no password is wrong'),
(47, 'RF47', 'All fields must be filled out!', 'All fields must be filled out!'),
(48, 'RF48', 'Username not found', 'Username not found'),
(49, 'RF49', 'Username already taken', 'Username already taken'),
(50, 'RF50', 'Email ID already registered', 'Email ID already registered'),
(51, 'RF51', 'It looks like your IP has already been used to register an account today!', 'It looks like your IP has already been used to register an account today!'),
(52, 'RF52', 'Username not valid! Username can\'t contain special characters..', 'Username not valid! Username can\'t contain special characters..'),
(53, 'RF53', 'Email ID not valid!', 'Email ID not valid!'),
(54, 'RF54', 'Your account was successfully registered.', 'Your account was successfully registered.'),
(55, 'RF55', 'Redirecting to you index page...', 'Redirecting to you index page...'),
(56, 'RF56', 'An activation email has been sent to your email address, Please also check your Junk/Spam Folders', 'An activation email has been sent to your email address, Please also check your Junk/Spam Folders'),
(57, 'RF57', 'Sign In', 'Sign In'),
(58, 'RF58', 'Sign in using social network', 'Sign in using social network'),
(59, 'RF59', 'Sign in using Facebook', 'Sign in using Facebook'),
(60, 'RF60', 'Sign in using Google', 'Sign in using Google'),
(61, 'RF61', 'Sign in using Twitter', 'Sign in using Twitter'),
(62, 'RF62', 'Facebook', 'Facebook'),
(63, 'RF63', 'Google', 'Google'),
(64, 'RF64', 'Twitter', 'Twitter'),
(65, 'RF65', 'Sign in with your username', 'Sign in with your username'),
(66, 'RF66', 'Username', 'Username'),
(67, 'RF67', 'Password', 'Password'),
(68, 'RF68', 'Forgot Password', 'Forgot Password'),
(69, 'RF69', 'Resend Activation Email', 'Resend Activation Email'),
(70, 'RF70', 'Sign Up', 'Sign Up'),
(71, 'RF71', 'Sign up with your email address', 'Sign up with your email address'),
(72, 'RF72', 'Full Name', 'Full Name'),
(73, 'RF73', 'Email', 'Email'),
(74, 'RF74', 'Enter your email address', 'Enter your email address'),
(75, 'RF75', 'Options:', 'Options:'),
(76, 'RF76', 'Login to your Account', 'Login to your Account'),
(77, 'RF77', 'Register an account', 'Register an account'),
(78, 'RF78', 'Forgot Password', 'Forgot Password'),
(79, 'RF79', 'Resend activation email', 'Resend activation email'),
(80, 'RF80', 'Site is down for maintenance', 'Site is down for maintenance'),
(81, 'RF81', 'We are currently down for maintenance', 'We are currently down for maintenance'),
(82, 'RF82', 'Oops...', 'Oops...'),
(83, 'RF83', 'My Profile', 'My Profile'),
(84, 'RF84', 'Facebook Oauth', 'Facebook Oauth'),
(85, 'RF85', 'Google Oauth', 'Google Oauth'),
(86, 'RF86', 'Twitter Oauth', 'Twitter Oauth'),
(87, 'RF87', 'There was an error on Oauth service!', 'There was an error on Oauth service!'),
(88, 'RF88', 'There was a problem performing this request', 'There was a problem performing this request'),
(89, 'RF89', 'Log In', 'Log In'),
(90, 'RF90', 'Account already verified...', 'Account already verified...'),
(91, 'RF91', 'Something Went Wrong! Contact Support!', 'Something Went Wrong! Contact Support!'),
(92, 'RF92', 'Verification code is wrong..', 'Verification code is wrong..'),
(93, 'RF93', 'Account verified successfully. You can login now..', 'Account verified successfully. You can login now..'),
(94, 'RF94', 'New Password updated successfully!', 'New Password updated successfully!'),
(95, 'RF95', 'Current password is wrong!', 'Current password is wrong!'),
(96, 'RF96', 'New password & Retype password field can\'t matched!', 'New password & Retype password field can\'t matched!'),
(97, 'RF97', 'Sorry, your file is too large.', 'Sorry, your file is too large.'),
(98, 'RF98', 'Sorry, only JPG, JPEG, PNG & GIF files are allowed.', 'Sorry, only JPG, JPEG, PNG & GIF files are allowed.'),
(99, 'RF99', 'Sorry, there was an error uploading your file.', 'Sorry, there was an error uploading your file.'),
(100, 'RF100', 'File is not an image.', 'File is not an image.'),
(101, 'RF101', 'Profile details was successfully updated!', 'Profile details was successfully updated!'),
(102, 'RF102', 'Unknown', 'Unknown'),
(103, 'RF103', 'Dashboard', 'Dashboard'),
(104, 'RF104', 'Logout', 'Logout'),
(105, 'RF105', 'Restricted words found on your domain name', 'Restricted words found on your domain name'),
(106, 'RF106', 'Continue', 'Continue'),
(107, 'RF107', 'About Us', 'About Us'),
(108, 'RF108', 'Contact Info', 'Contact Info'),
(109, 'RF109', 'Navigation', 'Navigation'),
(110, 'RF110', 'Profile', 'Profile'),
(111, 'RF111', 'Update Information', 'Update Information'),
(112, 'RF112', 'Change Password', 'Change Password'),
(113, 'RF113', 'User Logo', 'User Logo'),
(114, 'RF114', 'Email ID', 'Email ID'),
(115, 'RF115', 'Registered At', 'Registered At'),
(116, 'RF116', 'User Country', 'User Country'),
(117, 'RF117', 'Membership', 'Membership'),
(118, 'RF118', 'Free', 'Free'),
(119, 'RF119', 'Personal Information:', 'Personal Information:'),
(120, 'RF120', 'First Name', 'First Name'),
(121, 'RF121', 'Last Name', 'Last Name'),
(122, 'RF122', 'Company', 'Company'),
(123, 'RF123', 'Address Line 1', 'Address Line 1'),
(124, 'RF124', 'Address Line 2', 'Address Line 2'),
(125, 'RF125', 'City', 'City'),
(126, 'RF126', 'State', 'State'),
(127, 'RF127', 'Country', 'Country'),
(128, 'RF128', 'Post Code', 'Post Code'),
(129, 'RF129', 'Telephone', 'Telephone'),
(130, 'RF130', 'General Information:', 'General Information:'),
(131, 'RF131', 'Avatar:', 'Avatar:'),
(132, 'RF132', 'Upload a new avatar: (JPEG 180x180px)', 'Upload a new avatar: (JPEG 180x180px)'),
(133, 'RF133', 'Region / State', 'Region / State'),
(134, 'RF134', 'Current Password', 'Current Password'),
(135, 'RF135', 'New Password', 'New Password'),
(136, 'RF136', 'Retype Password', 'Retype Password'),
(137, 'RF137', 'Change Password', 'Change Password'),
(138, 'RF138', 'Retype your new password', 'Retype your new password'),
(139, 'RF139', 'Enter your new password', 'Enter your new password'),
(140, 'RF140', 'Enter your current password', 'Enter your current password'),
(141, 'RF141', 'Enter your postal code', 'Enter your postal code'),
(142, 'RF142', 'Enter your city', 'Enter your city'),
(143, 'RF143', 'Address line 2 (optional)', 'Address line 2 (optional)'),
(144, 'RF144', 'Enter your home address', 'Enter your home address'),
(145, 'RF145', 'Enter your phone no.', 'Enter your phone no.'),
(146, 'RF146', 'Enter your company name (optional)', 'Enter your company name (optional)'),
(147, 'RF147', 'Enter your last name', 'Enter your last name'),
(148, 'RF148', 'Enter your first name', 'Enter your first name'),
(149, 'RF149', 'Enter your full name', 'Enter your full name'),
(150, 'RF150', 'Enter your user name', 'Enter your user name'),
(151, 'RF151', 'Enter your email id', 'Enter your email id'),
(152, 'RF152', 'Domain is banned for following reason:', 'Domain is banned for following reason:'),
(153, '1', 'Home', 'Home'),
(154, '2', 'Blog', 'Blog'),
(155, '3', 'Contact US', 'Contact US'),
(156, '4', 'Malformed Request!', 'Malformed Request!'),
(157, '5', 'Your image verification code is wrong!', 'Your image verification code is wrong!'),
(158, '6', 'Paste (Ctrl + V) your article below then click Submit to watch this article rewriter do it\'s thing! ', 'Paste (Ctrl + V) your article below then click Submit to watch this article rewriter do it\'s thing! '),
(159, '7', 'Image Verification', 'Image Verification'),
(160, '8', 'Submit', 'Submit'),
(161, '9', 'Try New Document', 'Try New Document'),
(162, '10', 'Output', 'Output'),
(163, '11', 'About', 'About'),
(164, '12', 'Try Again', 'Try Again'),
(165, '13', 'Given Text', 'Given Text'),
(166, '14', 'MD5 Hash', 'MD5 Hash'),
(167, '15', 'Your IP', 'Your IP'),
(168, '16', 'City', 'City'),
(169, '17', 'Region', 'Region'),
(170, '18', 'Country', 'Country'),
(171, '19', 'ISP', 'ISP'),
(172, '20', 'Latitude', 'Latitude'),
(173, '21', 'Longitude', 'Longitude'),
(174, '22', 'Country Code', 'Country Code'),
(175, '23', 'Enter a URL', 'Enter a URL'),
(176, '24', 'Page URL', 'Page URL'),
(177, '25', 'Page Size(Bytes)', 'Page Size(Bytes)'),
(178, '26', 'Page Size(KB)', 'Page Size(KB)'),
(179, '27', 'Try New URL', 'Try New URL'),
(180, '28', 'Enter your domain name', 'Enter your domain name'),
(181, '29', 'Page URL', 'Page URL'),
(182, '30', 'Meta Title', 'Meta Title'),
(183, '31', 'Meta Description', 'Meta Description'),
(184, '32', 'Meta Keywords', 'Meta Keywords'),
(185, '33', 'Select Screen Resolution', 'Select Screen Resolution'),
(186, '34', 'Pixels', 'Pixels'),
(187, '35', 'Check', 'Check'),
(188, '36', 'URL entered does not seem to be a dynamic URL', 'URL entered does not seem to be a dynamic URL'),
(189, '37', 'Type 1 - Single Page URL', 'Type 1 - Single Page URL'),
(190, '38', 'Generated URL', 'Generated URL'),
(191, '39', 'Example URL', 'Example URL'),
(192, '40', 'Create a .htaccess file with the code below', 'Create a .htaccess file with the code below'),
(193, '41', 'The .htaccess file needs to be placed in', 'The .htaccess file needs to be placed in'),
(194, '42', 'Type 2 - Directory Type URL', 'Type 2 - Directory Type URL'),
(195, '43', 'Enter the text that you wish to encode or decode', 'Enter the text that you wish to encode or decode'),
(196, '44', 'Encoded URL', 'Encoded URL'),
(197, '45', 'Decoded URL', 'Decoded URL'),
(198, '46', 'Links', 'Links'),
(199, '47', 'Count', 'Count'),
(200, '48', 'Total Links', 'Total Links'),
(201, '49', 'Internal Links', 'Internal Links'),
(202, '50', 'External Links', 'External Links'),
(203, '51', 'NoFollow Links', 'NoFollow Links'),
(204, '52', 'Links inside the current website', 'Links inside the current website'),
(205, '53', 'Link\'s URL', 'Link\'s URL'),
(206, '54', 'NoFollow/DoFollow', 'NoFollow/DoFollow'),
(207, '55', 'Links going to outside websites', 'Links going to outside websites'),
(208, '56', 'Paste (Ctrl + V) your article below then click Check for Plagiarism! ', 'Paste (Ctrl + V) your article below then click Check for Plagiarism! '),
(209, '57', 'Check for Plagiarism', 'Check for Plagiarism'),
(210, '58', 'Total Words', 'Total Words'),
(211, '59', 'Maximum', 'Maximum'),
(212, '60', 'words limit per search', 'words limit per search'),
(213, '61', 'Copy and paste your article here and click \"Check for Plagiarism\"', 'Copy and paste your article here and click \"Check for Plagiarism\"'),
(214, '62', 'Enter up to 100 URLs (Each URL must be on separate line)', 'Enter up to 100 URLs (Each URL must be on separate line)'),
(215, '63', 'Try New Sites', 'Try New Sites'),
(216, '64', 'Result', 'Result'),
(217, '65', 'Status of each sites', 'Status of each sites'),
(218, '66', 'URLs', 'URLs'),
(219, '67', 'HTTP Code', 'HTTP Code'),
(220, '68', 'Response Time', 'Response Time'),
(221, '69', 'Status', 'Status'),
(222, '70', 'Enter your text/paragraph here', 'Enter your text/paragraph here'),
(223, '71', 'Count Words', 'Count Words'),
(224, '72', 'Total Words', 'Total Words'),
(225, '73', 'Total Characters', 'Total Characters'),
(226, '74', 'How popular is', 'How popular is'),
(227, '75', 'Stats', 'Stats'),
(228, '76', 'Global Rank', 'Global Rank'),
(229, '77', 'Popularity at', 'Popularity at'),
(230, '78', 'Regional Rank', 'Regional Rank'),
(231, '79', 'Backlinks', 'Backlinks'),
(232, '80', 'Traffic Rank', 'Traffic Rank'),
(233, '81', 'Search Engine Traffic', 'Search Engine Traffic'),
(234, '82', 'Price of each sites', 'Price of each sites'),
(235, '83', 'URLs', 'URLs'),
(236, '84', 'Approximate Price', 'Approximate Price'),
(237, '85', 'WHOIS DATA', 'WHOIS DATA'),
(238, '86', 'Get WHOIS Data', 'Get WHOIS Data'),
(239, '87', 'Get Domain Age', 'Get Domain Age'),
(240, '88', 'Value', 'Value'),
(241, '89', 'Domain', 'Domain'),
(242, '90', 'Domain Created Date', 'Domain Created Date'),
(243, '91', 'Domain Updated Date', 'Domain Updated Date'),
(244, '92', 'Domain Expiry Date', 'Domain Expiry Date'),
(245, '93', 'Try New Domain', 'Try New Domain'),
(246, '94', 'Get Page Ranks', 'Get Page Ranks'),
(247, '95', 'Page Rank of each sites', 'Page Rank of each sites'),
(248, '96', 'PageRank', 'PageRank'),
(249, '97', 'Something Went Wrong!', 'Something Went Wrong!'),
(250, '98', 'URL', 'URL'),
(251, '99', 'Time Taken', 'Time Taken'),
(252, '100', 'CSS Links', 'CSS Links'),
(253, '101', 'Script Links', 'Script Links'),
(254, '102', 'Image Links', 'Image Links'),
(255, '103', 'Other Resource Links', 'Other Resource Links'),
(256, '104', 'Link Type', 'Link Type'),
(257, '105', 'Load Time', 'Load Time'),
(258, '106', 'Domain Geo Information', 'Domain Geo Information'),
(259, '107', 'Domain IP', 'Domain IP'),
(260, '108', 'IP', 'IP'),
(261, '109', 'Get Source Code', 'Get Source Code'),
(262, '110', 'Source Code', 'Source Code'),
(263, '111', 'Listed', 'Listed'),
(264, '112', 'Not Listed', 'Not Listed'),
(265, '113', 'Generate MetaTags', 'Generate MetaTags'),
(266, '114', 'Site Title', 'Site Title'),
(267, '115', 'Site Description', 'Site Description'),
(268, '116', 'Site Keywords (Separate with commas)', 'Site Keywords (Separate with commas)'),
(269, '117', 'Allow robots to index your website?', 'Allow robots to index your website?'),
(270, '118', 'Yes', 'Yes'),
(271, '119', 'No', 'No'),
(272, '120', 'What type of content will your site display?', 'What type of content will your site display?'),
(273, '121', 'Allow robots to follow all links?', 'Allow robots to follow all links?'),
(274, '122', 'Title must be within 70 Characters', 'Title must be within 70 Characters'),
(275, '123', 'Description must be within 320 Characters', 'Description must be within 320 Characters'),
(276, '124', 'keywords1, keywords2, keywords3', 'keywords1, keywords2, keywords3'),
(277, '125', 'What is your site primary language?', 'What is your site primary language?'),
(278, '126', '(Optional Meta Tags)', '(Optional Meta Tags)'),
(279, '127', 'Search engines should revisit this page after', 'Search engines should revisit this page after'),
(280, '128', 'days', 'days'),
(281, '129', 'Author', 'Author'),
(282, '130', 'Copy and paste into your site.', 'Copy and paste into your site.'),
(283, '131', 'Generate sitemap', 'Generate sitemap'),
(284, '132', 'Modified date', 'Modified date'),
(285, '133', 'Change frequency', 'Change frequency'),
(286, '134', 'Default priority', 'Default priority'),
(287, '135', 'Do not include', 'Do not include'),
(288, '136', 'Server response date', 'Server response date'),
(289, '137', 'Todays date', 'Todays date'),
(290, '138', 'Custom date', 'Custom date'),
(291, '139', 'Enter a domain name', 'Enter a domain name'),
(292, '140', 'How many pages do I need to crawl?', 'How many pages do I need to crawl?'),
(293, '141', 'Crawling', 'Crawling'),
(294, '142', 'Links Found', 'Links Found'),
(295, '143', 'Success', 'Success'),
(296, '144', 'Error', 'Error'),
(297, '145', 'Error, Try again later!', 'Error, Try again later!'),
(298, '146', 'Processing', 'Processing'),
(299, '147', 'Pages contain backlink', 'Pages contain backlink'),
(300, '148', 'Pagerank', 'Pagerank'),
(301, '149', 'Status', 'Status'),
(302, '150', 'Default -  All Robots are', 'Default -  All Robots are'),
(303, '151', 'Allowed', 'Allowed'),
(304, '152', 'Refused', 'Refused'),
(305, '153', 'Crawl-Delay', 'Crawl-Delay'),
(306, '154', 'Default - No Delay', 'Default - No Delay'),
(307, '155', 'Sitemap', 'Sitemap'),
(308, '156', '(leave blank if you don\'t have)', '(leave blank if you don\'t have)'),
(309, '157', 'Search Robots', 'Search Robots'),
(310, '158', 'Same as Default', 'Same as Default'),
(311, '159', 'Restricted Directories', 'Restricted Directories'),
(312, '160', 'The path is relative to root and must contain a trailing slash', 'The path is relative to root and must contain a trailing slash'),
(313, '161', 'Create Robots.txt', 'Create Robots.txt'),
(314, '162', 'Now, Create \'robots.txt\' file at your root directory. Copy above text and paste into the text file.', 'Now, Create \'robots.txt\' file at your root directory. Copy above text and paste into the text file.'),
(315, '163', 'Create robots.txt file ?', 'Create robots.txt file ?'),
(316, '164', 'robots.txt generated by atozseotools.com', 'robots.txt generated by atozseotools.com'),
(317, '165', 'Enter your domain name', 'Enter your domain name'),
(318, '166', 'Find Keyword Position', 'Find Keyword Position'),
(319, '167', 'Not Found within', 'Not Found within'),
(320, '168', 'Empty Request', 'Empty Request'),
(321, '169', 'position', 'position'),
(322, '170', 'Keyword field cannot be empty!', 'Keyword field cannot be empty!'),
(323, '171', 'Keywords', 'Keywords'),
(324, '172', 'Check Positions upto', 'Check Positions upto'),
(325, '173', 'Enter keywords in separate line', 'Enter keywords in separate line'),
(326, '174', 'Example', 'Example'),
(327, '175', 'Your Browser', 'Your Browser'),
(328, '176', 'Browser Version', 'Browser Version'),
(329, '177', 'Your OS', 'Your OS'),
(330, '178', 'User Agent', 'User Agent'),
(331, '179', 'Good', 'Good'),
(332, '180', 'Bad - Not Redirecting!', 'Bad - Not Redirecting!'),
(333, '181', 'Domain', 'Domain'),
(334, '182', 'WWW Redirect Status', 'WWW Redirect Status'),
(335, '183', 'Requested URL looks down!', 'Requested URL looks down!'),
(336, '184', 'Code to Text Ratio is', 'Code to Text Ratio is'),
(337, '185', 'Text content size', 'Text content size'),
(338, '186', 'Total HTML size', 'Total HTML size'),
(339, '187', 'Host', 'Host'),
(340, '188', 'Class C', 'Class C'),
(341, '189', 'Enter up to 40 Domains (Each Domain must be on separate line)', 'Enter up to 40 Domains (Each Domain must be on separate line)'),
(342, '190', 'No Email Found!', 'No Email Found!'),
(343, '191', 'Email Found!', 'Email Found!'),
(344, '192', 'Email', 'Email'),
(345, '193', 'Google Indexed', 'Google Indexed'),
(346, '194', 'Pages', 'Pages'),
(347, '195', 'Hosting Provider', 'Hosting Provider'),
(348, '196', 'Hosting Info', 'Hosting Info'),
(349, '197', 'Safe Site', 'Safe Site'),
(350, '198', 'Not a harmfull site, but take care', 'Not a harmfull site, but take care'),
(351, '199', 'Potentially harmful site', 'Potentially harmful site'),
(352, '200', 'Unknown', 'Unknown'),
(353, '201', 'Enter up to 20 URLs (Each URL must be on separate line)', 'Enter up to 20 URLs (Each URL must be on separate line)'),
(354, '202', 'Antivirus stats of each sites', 'Antivirus stats of each sites'),
(355, '203', 'Percentage', 'Percentage'),
(356, '204', 'Total Keywords', 'Total Keywords'),
(357, '205', 'Listed', 'Listed'),
(358, '206', 'Not Listed', 'Not Listed'),
(359, '207', 'Overall', 'Overall'),
(360, '208', 'SPAM Database Server', 'SPAM Database Server'),
(361, '209', 'Moz access id missing on database!', 'Moz access id missing on database!'),
(362, '210', 'Moz secret key missing on database!', 'Moz secret key missing on database!'),
(363, '211', 'MozRank', 'MozRank'),
(364, '212', 'Page Authority Score', 'Page Authority Score'),
(365, '213', 'Domain Authority Score', 'Domain Authority Score'),
(366, '214', 'Backlinks (As per Alexa)', 'Backlinks (As per Alexa)'),
(367, '215', 'Backlinks (As per Google)', 'Backlinks (As per Google)'),
(368, '216', 'Backlinks', 'Backlinks'),
(369, '217', 'Screenshot of', 'Screenshot of'),
(370, '218', 'No reverse domain name detected!', 'No reverse domain name detected!'),
(371, '219', 'Reverse Domain Names', 'Reverse Domain Names'),
(372, '220', 'Domain Name', 'Domain Name'),
(373, '221', 'Failed extended and basic XML-RPC ping!', 'Failed extended and basic XML-RPC ping!'),
(374, '222', 'Enter your blog url', 'Enter your blog url'),
(375, '223', 'Enter your blog name', 'Enter your blog name'),
(376, '224', 'Enter your blog updated url', 'Enter your blog updated url'),
(377, '225', 'Enter your blog RSS feed url', 'Enter your blog RSS feed url'),
(378, '226', 'Ping Server List', 'Ping Server List'),
(379, '227', 'Email ID looks not valid!', 'Email ID looks not valid!'),
(380, '228', 'All fields must be filled out', 'All fields must be filled out'),
(381, '229', 'Message Sent Successfully', 'Message Sent Successfully'),
(382, '230', 'Captcha code is wrong!', 'Captcha code is wrong!'),
(383, '231', 'Error - Try Again (Message Failed)', 'Error - Try Again (Message Failed)'),
(384, '232', 'Contact Us', 'Contact Us'),
(385, '233', 'We value all the feedbacks received from our customers.', 'We value all the feedbacks received from our customers.'),
(386, '234', 'If you have any queries, comments, suggestions or have anything to talk about.', 'If you have any queries, comments, suggestions or have anything to talk about.'),
(387, '235', 'Name', 'Name'),
(388, '236', 'Email ID', 'Email ID'),
(389, '237', 'Subject', 'Subject'),
(390, '238', 'Message', 'Message'),
(391, '239', 'Send Message', 'Send Message'),
(392, '240', 'Enter your full name', 'Enter your full name'),
(393, '241', 'Enter your email id', 'Enter your email id'),
(394, '242', 'Enter your subject', 'Enter your subject'),
(395, '243', 'Enter your message', 'Enter your message'),
(396, '244', 'Contact Form', 'Contact Form'),
(397, '245', 'Name (required)', 'Name (required)'),
(398, '246', 'E-mail (required)', 'E-mail (required)'),
(399, '247', 'Send', 'Send'),
(400, '248', 'Redirecting to you index page...', 'Redirecting to you index page...'),
(401, '249', 'Login Success.. Redirecting to you index page...', 'Login Success.. Redirecting to you index page...'),
(402, '250', 'Almost signup process over. One step need to go..', 'Almost signup process over. One step need to go..'),
(403, '251', 'Auto generated name', 'Auto generated name'),
(404, '252', 'Set your Username', 'Set your Username'),
(405, '253', 'No thanks keep auto generated name', 'No thanks keep auto generated name'),
(406, '254', 'Username not vaild', 'Username not vaild'),
(407, '255', 'Username already taken', 'Username already taken'),
(408, '256', 'Unable to post on database! Contact Support!', 'Unable to post on database! Contact Support!'),
(409, '257', 'Username changed successfully', 'Username changed successfully'),
(410, '258', 'Username not vaild', 'Username not vaild'),
(411, '259', 'Oauth Login System', 'Oauth Login System'),
(412, '260', 'Oh, no your account was banned! Contact Support..', 'Oh, no your account was banned! Contact Support..'),
(413, '261', 'There was an error on Oauth service!', 'There was an error on Oauth service!'),
(414, '262', 'Domain Age', 'Domain Age'),
(415, '263', 'Sign In', 'Sign In'),
(416, '264', 'Sign Up', 'Sign Up'),
(417, '265', 'Oauth Login System', 'Oauth Login System'),
(418, '266', 'Logout', 'Logout'),
(419, '267', 'Sign in using social network', 'Sign in using social network'),
(420, '268', 'Sign in using Facebook', 'Sign in using Facebook'),
(421, '269', 'Sign in using Google', 'Sign in using Google'),
(422, '270', 'Sign in with your username', 'Sign in with your username'),
(423, '271', 'Username', 'Username'),
(424, '272', 'Password', 'Password'),
(425, '273', 'Forgot Password', 'Forgot Password'),
(426, '274', 'Resend activation email', 'Resend activation email'),
(427, '275', 'Email', 'Email'),
(428, '276', 'Full Name', 'Full Name'),
(429, '277', 'Sign up with your email address', 'Sign up with your email address'),
(430, '278', 'Account Confirmation', 'Account Confirmation'),
(431, '279', 'Activation code successfully sent to your mail id', 'Activation code successfully sent to your mail id'),
(432, '280', 'Email ID already verified!', 'Email ID already verified!'),
(433, '281', 'Email ID not found!', 'Email ID not found!'),
(434, '282', 'Unable to post on database! Contact Support!', 'Unable to post on database! Contact Support!'),
(435, '283', 'Password changed successfully and Sent to your mail', 'Password changed successfully and Sent to your mail'),
(436, '284', 'Password Reset', 'Password Reset'),
(437, '285', 'You are already logged in', 'You are already logged in'),
(438, '286', 'Login Successful..', 'Login Successful..'),
(439, '287', 'Oh, no your account was banned! Contact Support..', 'Oh, no your account was banned! Contact Support..'),
(440, '288', 'Oh, no account not verified', 'Oh, no account not verified'),
(441, '289', 'Oh, no password is wrong', 'Oh, no password is wrong'),
(442, '290', 'Username not found', 'Username not found'),
(443, '291', 'All fields must be filled out!', 'All fields must be filled out!'),
(444, '292', 'Username already taken', 'Username already taken'),
(445, '293', 'Email ID already registered', 'Email ID already registered'),
(446, '294', 'Your account was successfully registered', 'Your account was successfully registered'),
(447, '295', 'Username not valid! Username can\'t contain special characters..', 'Username not valid! Username can\'t contain special characters..'),
(448, '296', 'Database Error', 'Database Error'),
(449, '297', 'Login/Register', 'Login/Register'),
(450, '298', 'An activation email has been sent to your email address, Please also check your Junk/Spam Folders', 'An activation email has been sent to your email address, Please also check your Junk/Spam Folders'),
(451, '299', 'Login to your Account', 'Login to your Account'),
(452, '300', 'Register an account', 'Register an account'),
(453, '301', 'Enter your email address', 'Enter your email address'),
(454, '302', 'Options:', 'Options:'),
(455, '303', 'Account already verified...', 'Account already verified...'),
(456, '304', 'Something Went Wrong! Contact Support!', 'Something Went Wrong! Contact Support!'),
(457, '305', 'Account verified successfully.. <br /> <br /> You can login now..', 'Account verified successfully.. <br /> <br /> You can login now..'),
(458, '306', 'Verification code is wrong..', 'Verification code is wrong..'),
(459, '307', 'Username not found', 'Username not found'),
(460, '308', 'Site is down for maintenance', 'Site is down for maintenance'),
(461, '309', 'We are currently down for maintenance', 'We are currently down for maintenance'),
(462, '310', 'Maintenance Notice', 'Maintenance Notice'),
(463, '311', 'Guest user limit is reached!', 'Guest user limit is reached!'),
(464, '312', 'to use SEO tools anymore..', 'to use SEO tools anymore..'),
(465, '313', 'Login required to access this tool!', 'Login required to access this tool!'),
(466, '314', 'Top 5 Tools', 'Top 5 Tools'),
(467, '315', 'Latest Tweets', 'Latest Tweets'),
(468, '316', 'Links', 'Links'),
(469, '317', 'Search Engine Optimization', 'Search Engine Optimization'),
(470, '318', 'Get Started', 'Get Started'),
(471, '319', 'More than 50 SEO Tools to keep track of your SEO issues <br/> and help to improve the visibility of a website in search <br/> engines.', 'More than 50 SEO Tools to keep track of your SEO issues <br/> and help to improve the visibility of a website in search <br/> engines.'),
(472, '320', 'Enter up to 20 Links (Each Links must be on separate line)', 'Enter up to 20 Links (Each Links must be on separate line)'),
(473, '321', 'Not Cached', 'Not Cached'),
(474, '322', 'Status Code', 'Status Code'),
(475, '323', 'Broken Link', 'Broken Link'),
(476, '324', 'Okay', 'Okay'),
(477, '325', 'Enquiry', 'Enquiry'),
(478, '326', 'No Subject', 'No Subject'),
(479, '327', 'Input Site is not valid!', 'Input Site is not valid!'),
(480, '328', 'Enter your keyword', 'Enter your keyword'),
(481, '329', 'Suggest Queries', 'Suggest Queries'),
(482, '330', 'Enter your domain names', 'Enter your domain names'),
(483, '331', 'Meta Content', 'Meta Content'),
(484, '332', 'H1 to H4 Tags', 'H1 to H4 Tags'),
(485, '333', 'Tags', 'Tags'),
(486, '334', 'Readable Text Content', 'Readable Text Content'),
(487, '335', 'Indexable Links', 'Indexable Links'),
(488, '336', 'It looks like your IP has already been used to register an account today!', 'It looks like your IP has already been used to register an account today!'),
(489, '337', 'Save As XML File', 'Save As XML File'),
(490, '338', 'Save Sitemap File', 'Save Sitemap File'),
(491, '339', 'Save the Screenshot', 'Save the Screenshot'),
(492, 'AS1', 'Export as CSV', 'Export as CSV'),
(493, 'AS2', 'Custom date field cannot be empty', 'Custom date field cannot be empty'),
(494, 'AS3', 'Crawler Limit Reached!', 'Crawler Limit Reached!'),
(495, 'AS4', 'Sitemap generated for [count] links!', 'Sitemap generated for [count] links!'),
(496, 'AS5', 'Input data field can\'t be empty', 'Input data field can\'t be empty'),
(497, 'AS6', 'Either input site is not valid or offline!', 'Either input site is not valid or offline!'),
(498, 'AS7', 'Page Speed Score', 'Page Speed Score'),
(499, 'AS8', 'Page Code Analysis', 'Page Code Analysis'),
(500, 'AS9', 'Page Optimization Suggestions', 'Page Optimization Suggestions'),
(501, 'AS10', 'Checking...', 'Checking...'),
(502, 'AS11', 'Browse More Tools', 'Browse More Tools'),
(503, 'AS12', 'Open Graph meta tags is present', 'Open Graph meta tags is present'),
(504, 'AS13', 'Open Graph meta tags is not present', 'Open Graph meta tags is not present'),
(505, 'AS14', 'Open Graph', 'Open Graph'),
(506, 'AS15', 'Ideally, your title tag should contain between 10 and 70 characters (Yours [count] characters)', 'Ideally, your title tag should contain between 10 and 70 characters (Yours [count] characters)'),
(507, 'AS16', 'Meta descriptions contains between 160 and 320 characters (Yours [count] characters)', 'Meta descriptions contains between 160 and 320 characters (Yours [count] characters)'),
(508, 'AS17', 'Meta Viewport', 'Meta Viewport'),
(509, 'AS18', 'Site Name', 'Site Name'),
(510, 'AS19', 'No Title', 'No Title'),
(511, 'AS20', 'No Description', 'No Description'),
(512, 'AS21', 'No Keywords', 'No Keywords'),
(513, 'AS22', 'Guest', 'Guest'),
(514, 'AS23', 'Your article must be [limit] characters or more', 'Your article must be [limit] characters or more'),
(515, 'AS24', 'Maximum [limit] words allowed per search', 'Maximum [limit] words allowed per search'),
(516, 'AS25', 'String', 'String'),
(517, 'AS26', 'Uniqueness', 'Uniqueness'),
(518, 'AS27', 'Already Exists', 'Already Exists'),
(519, 'AS28', 'Unique Content', 'Unique Content'),
(520, 'AS29', 'Crawling Link', 'Crawling Link'),
(521, 'AS30', 'Type any word to search SEO tools', 'Type any word to search SEO tools'),
(522, 'AS31', 'Domain name field can\'t be empty!', 'Domain name field can\'t be empty!'),
(523, 'AS32', 'Enter a valid URL', 'Enter a valid URL'),
(524, 'AS33', 'Characters left', 'Characters left'),
(525, 'AS34', 'Loading...', 'Loading...'),
(526, 'AS35', 'Site title field can\'t be empty!', 'Site title field can\'t be empty!'),
(527, 'AS36', 'Site dscription field can\'t be empty!', 'Site dscription field can\'t be empty!'),
(528, 'AS37', 'Site keywords field can\'t be empty!', 'Site keywords field can\'t be empty!'),
(529, 'AS38', 'No result found related to your keyword...', 'No result found related to your keyword...'),
(530, 'AS39', 'Search SEO tools', 'Search SEO tools');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `smtp_host` text DEFAULT NULL,
  `smtp_username` text DEFAULT NULL,
  `smtp_password` text DEFAULT NULL,
  `smtp_port` text DEFAULT NULL,
  `protocol` text DEFAULT NULL,
  `smtp_auth` text DEFAULT NULL,
  `smtp_socket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_port`, `protocol`, `smtp_auth`, `smtp_socket`) VALUES
(1, '', '', '', '', '1', 'true', 'ssl');

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` int(11) NOT NULL,
  `subject` text DEFAULT NULL,
  `body` blob DEFAULT NULL,
  `code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `subject`, `body`, `code`) VALUES
(1, 'e1NpdGVOYW1lfSAtIEFjY291bnQgQWN0aXZhdGlvbg==', 0x4a6d78304f33416d5a33513756325673593239745a534268626d516764476868626d73676557393149475a76636942795a5764706333526c636d6c755a7942686443423755326c305a553568625756394a6d78304f324a794943386d5a33513744516f6d62485137596e49674c795a6e6444734e436b6c6d49486c7664534268636d55676447686c49474e795a57463062334967623259676447686c494874546158526c546d46745a58306759574e6a62335675644377676347786c59584e6c49474e7361574e7249486c766458496759574e3061585a6864476c7662694231636d77364a6d78304f324a794943386d5a33513744516f6d624851375953426f636d566d50535a78645739304f3374575a584a705a6d6c6a5958527062323556636d78394a6e46316233513749485268636d646c6444306d6358567664447466633256735a695a78645739304f795a6e64447437566d567961575a70593246306157397556584a7366535a736444737659535a6e6444736d62485137596e49674c795a6e6444734e43695a7364447469636941764a6d64304f77304b51575a305a58496759574e6a623356756443426a6232356d61584a74595852706232347349466c766453426a595734676247396e49476c7549474a354948567a6157356e49486c766458496764584e6c636d3568625755675957356b4948426863334e3362334a6b49474a3549485a7063326c306157356e49473931636942335a574a7a6158526c4c695a7364447469636941764a6d64304f77304b4a6d78304f324a794943386d5a335137445170556147467561794235623355734a6d78304f324a794943386d5a33513744516f744946526f5a53423755326c305a553568625756394946526c5957306d624851374c33416d5a335137, 'account_activation'),
(3, 'e1NpdGVOYW1lfSAtIFBhc3N3b3JkIGNoYW5nZWQgc3VjY2Vzc2Z1bGx5', 0x4a6d78304f33416d5a33513753475673624738734a6d78304f324a794943386d5a33513744516f6d62485137596e49674c795a6e6444734e436c4a6c593256756447783549486c766458496759574e6a623356756443427759584e7a643239795a43426f59584d67596d566c626942795a584e6c64434269655342356233567949484a6c6358566c63335175494642735a57467a5a5342305957746c4947356c6479427759584e7a643239795a43423062794273623264706269346d62485137596e49674c795a6e6444734e43695a7364447469636941764a6d64304f77304b575739316369424f5a5863675547467a63336476636d51364948744f5a58645159584e7a643239795a48306d62485137596e49674c795a6e6444734e43695a7364447469636941764a6d64304f77304b5757393149474e68626942736232636761573467596e6b6764584e70626d6367655739316369423163325679626d46745a534268626d5167626d56334948426863334e3362334a6b49474a3549485a7063326c306157356e49473931636942335a574a7a6158526c4c695a7364447469636941764a6d64304f77304b4a6d78304f324a794943386d5a335137445170556147467561794235623355734a6d78304f324a794943386d5a33513744516f744946526f5a53423755326c305a553568625756394946526c5957306d624851374c33416d5a335137, 'password_reset');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` text DEFAULT NULL,
  `sort_order` text DEFAULT NULL,
  `posted_date` text DEFAULT NULL,
  `page_name` text DEFAULT NULL,
  `meta_des` text DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `page_title` text DEFAULT NULL,
  `page_content` text DEFAULT NULL,
  `header_show` text DEFAULT NULL,
  `footer_show` text DEFAULT NULL,
  `page_url` text DEFAULT NULL,
  `lang` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `access` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `sort_order`, `posted_date`, `page_name`, `meta_des`, `meta_tags`, `page_title`, `page_content`, `header_show`, `footer_show`, `page_url`, `lang`, `status`, `access`) VALUES
(1, 'internal', '1', '6th May 2017', '{{lang[RF1]}}', '-', '-', '{{lang[RF1]}}', 'YToyOntpOjA7czo0OiJub25lIjtpOjE7czo0OiJub25lIjt9', 'on', 'on', '{{baseLink}}', 'all', 'on', 'all'),
(2, 'internal', '2', '17th October 2022', 'Contact', '-', '-', 'Contact', 'YToyOntpOjA7czo0OiJub25lIjtpOjE7czo0OiJub25lIjt9', 'on', 'on', '{{baseLink}}contact', 'all', 'on', 'all'),
(3, 'page', '3', '10/09/2022 6:00 PM', '{{lang[RF107]}}', '', '', '{{lang[RF107]}}', '&lt;p&gt;This page is under development.&lt;/p&gt;', 'on', 'on', 'about-us', 'all', 'on', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `execution_type` text DEFAULT NULL,
  `privilege` text DEFAULT NULL,
  `plugin_active` text DEFAULT NULL,
  `plugin_con_name` text DEFAULT NULL,
  `con_name` text DEFAULT NULL,
  `plugin_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pr02`
--

CREATE TABLE `pr02` (
  `id` int(11) NOT NULL,
  `api_type` text DEFAULT NULL,
  `wordLimit` text DEFAULT NULL,
  `minChar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pr02`
--

INSERT INTO `pr02` (`id`, `api_type`, `wordLimit`, `minChar`) VALUES
(1, '1', '1000', '30');

-- --------------------------------------------------------

--
-- Table structure for table `pr24`
--

CREATE TABLE `pr24` (
  `id` int(11) NOT NULL,
  `moz_access_id` text DEFAULT NULL,
  `moz_secret_key` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pr24`
--

INSERT INTO `pr24` (`id`, `moz_access_id`, `moz_secret_key`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rainbowphp_temp`
--

CREATE TABLE `rainbowphp_temp` (
  `id` int(11) NOT NULL,
  `task` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rainbowphp_temp`
--

INSERT INTO `rainbowphp_temp` (`id`, `task`, `data`) VALUES
(1, 'ddos', '{\"maxcount\":\"15\",\"2017-04-19\":{\"117.248.4.88\":{\"time\":\"1492552482\",\"hit\":\"6\"},\"banned\":[]},\"2017-05-27\":{\"127.0.0.1\":{\"time\":1495836926,\"hit\":\"1\"},\"banned\":[]}}'),
(2, 'quick_login', '{\"2017-04-08\":{\"127.0.0.1\":{\"time\":\"1491592940\"},\"117.88.44.22\":{\"time\":\"1491593688\"},\"117.88.44.11\":{\"time\":\"1491593810\"}},\"2017-04-15\":{\"22.52.1.107\":{\"time\":\"1492201266\"}},\"2017-04-30\":{\"44.248.4.88\":{\"time\":\"1493502485\"}},\"2017-05-03\":{\"117.248.4.88\":{\"time\":\"1493806652\"}},\"2017-05-09\":{\"117.248.4.88\":{\"time\":\"1494305715\"}},\"2017-05-11\":{\"117.248.4.88\":{\"time\":\"1494505528\"}},\"2017-05-14\":{\"117.248.4.88\":{\"time\":\"1494773943\"}},\"2022-10-17\":{\"::1\":{\"time\":1665989271}}}'),
(3, 'adblock', '{\"options\":\"force\",\"link\":\"{{baseLink}}test\",\"close\":{\"title\":\"Adblock detected!\",\"msg\":\"&lt;div class=&quot;text-center&quot;&gt;\\\\r\\\\n&lt;br&gt;\\\\r\\\\n&lt;i style=&quot;color: #e74c3c; font-size: 120px;&quot; class=&quot;fa fa-frown-o&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\\\r\\\\n&lt;p class=&quot;bold&quot;&gt;We have detected that you are using adblocking plugin in your browser.&lt;\\/p&gt;\\\\r\\\\n\\\\r\\\\n&lt;p  class=&quot;bold&quot;&gt;\\\\r\\\\nThe revenue we earn by the advertisements is used to manage this website, we request you to whitelist our website in your adblocking plugin.&lt;\\/p&gt;\\\\r\\\\n&lt;p&gt;&lt;button onclick=&quot;location.reload();&quot; class=&quot;btn btn-success&quot;&gt;Refresh this Page&lt;\\/button&gt;&lt;\\/p&gt;\\\\r\\\\n&lt;br&gt;\\\\r\\\\n&lt;\\/div&gt;\"},\"force\":{\"title\":\"Adblock detected!\",\"msg\":\"&lt;div class=&quot;text-center&quot;&gt;\\\\r\\\\n&lt;br&gt;\\\\r\\\\n&lt;i style=&quot;color: #e74c3c; font-size: 120px;&quot; class=&quot;fa fa-frown-o&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\\\r\\\\n&lt;p class=&quot;bold&quot;&gt;We have detected that you are using adblocking plugin in your browser.&lt;\\/p&gt;\\\\r\\\\n\\\\r\\\\n&lt;p  class=&quot;bold&quot;&gt;\\\\r\\\\nThe revenue we earn by the advertisements is used to manage this website, we request you to whitelist our website in your adblocking plugin.&lt;\\/p&gt;\\\\r\\\\n&lt;p&gt;&lt;button onclick=&quot;location.reload();&quot; class=&quot;btn btn-success&quot;&gt;Refresh this Page&lt;\\/button&gt;&lt;\\/p&gt;\\\\r\\\\n&lt;br&gt;\\\\r\\\\n&lt;\\/div&gt;\"},\"enable\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `rainbow_track`
--

CREATE TABLE `rainbow_track` (
  `id` int(11) NOT NULL,
  `date` text DEFAULT NULL,
  `h0` blob DEFAULT NULL,
  `h2` blob DEFAULT NULL,
  `h4` blob DEFAULT NULL,
  `h6` blob DEFAULT NULL,
  `h8` blob DEFAULT NULL,
  `h10` blob DEFAULT NULL,
  `h12` blob DEFAULT NULL,
  `h14` blob DEFAULT NULL,
  `h16` blob DEFAULT NULL,
  `h18` blob DEFAULT NULL,
  `h20` blob DEFAULT NULL,
  `h22` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rainbow_track`
--

INSERT INTO `rainbow_track` (`id`, `date`, `h0`, `h2`, `h4`, `h6`, `h8`, `h10`, `h12`, `h14`, `h16`, `h18`, `h20`, `h22`) VALUES
(1, '2022-10-17', NULL, NULL, NULL, NULL, NULL, NULL, 0x7b5c223a3a315c223a7b5c226a397073376339617266686f386c70336967686c6c336233316e5c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a35352c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c5c2231305c222c5c22313636353939303834355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f776f72642d636f756e7465725c222c5c22315c222c5c22313636353938383635315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6f6e6c696e652d70696e672d776562736974652d746f6f6c5c222c5c22315c222c5c22313636353938383732355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6b6579776f72642d706f736974696f6e2d636865636b65725c222c5c22325c222c5c22313636353939313333375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d6167652d636865636b65725c222c5c22335c222c5c22313636353938393436355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d792d69702d616464726573735c222c5c22325c222c5c22313636353938393638375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d6167652d636865636b65725c5c2f6f75747075745c222c5c22345c222c5c22313636353938393738395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f77686f69732d636865636b65725c222c5c22315c222c5c22313636353938383937395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f77686f69732d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313636353938383938375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d696e746f2d69705c222c5c22315c222c5c22313636353938393032375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d696e746f2d69705c5c2f6f75747075745c222c5c22315c222c5c22313636353938393033375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6f7a72616e6b2d636865636b65725c222c5c22315c222c5c22313636353938393037325c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6f7a72616e6b2d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313636353938393038335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7365727665722d7374617475732d636865636b65725c222c5c22315c222c5c22313636353938393130375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7365727665722d7374617475732d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313636353938393132395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f776562706167652d73637265656e2d7265736f6c7574696f6e2d73696d756c61746f725c222c5c22315c222c5c22313636353938393134385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6163636f756e745c5c2f6c6f67696e5c222c5c22355c222c5c22313636353938393239345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6163636f756e745c5c2f72656769737465725c222c5c22335c222c5c22313636353938393335315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706c616769617269736d2d636865636b65725c222c5c22355c222c5c22313636353939313037305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167652d73706565642d636865636b65725c222c5c22315c222c5c22313636353939303732335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167652d73706565642d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313636353939303735385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f61727469636c652d72657772697465725c222c5c22315c222c5c22313636353939303837335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f61727469636c652d72657772697465725c5c2f6f75747075745c222c5c22315c222c5c22313636353939303839375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6261636b6c696e6b2d6d616b65725c222c5c22315c222c5c22313636353939313039355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6574612d7461672d67656e657261746f725c222c5c22315c222c5c22313636353939313230335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6574612d7461672d67656e657261746f725c5c2f6f75747075745c222c5c22315c222c5c22313636353939313239375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6574612d746167732d616e616c797a65725c222c5c22315c222c5c22313636353939313331345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6574612d746167732d616e616c797a65725c5c2f6f75747075745c222c5c22315c222c5c22313636353939313332345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f786d6c2d736974656d61702d67656e657261746f725c222c5c22315c222c313636353939313338305d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130362e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231323830783830305c222c5c2274696d655c223a5c22313636353938383634315c222c5c226c6173745f76697369745c223a313636353939313338307d7d7d, NULL, NULL, 0x7b5c223a3a315c223a7b5c2268347565677637323069743774376d38747137616a67377030385c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a34372c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c33312c313636363031373734395d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f636f6e746163745c222c5c22335c222c5c22313636363031373535395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167655c5c2f61626f75742d75735c222c5c22345c222c5c22313636363031373535345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6f6e6c696e652d70696e672d776562736974652d746f6f6c5c222c5c22315c222c5c22313636363031343830395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706c616769617269736d2d636865636b65725c222c5c22315c222c5c22313636363031373536365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f776861742d69732d6d792d62726f777365725c222c5c22315c222c5c22313636363031373539305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f77686f69732d636865636b65725c222c5c22325c222c5c22313636363031373633395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f77686f69732d636865636b65725c5c2f6f75747075745c222c5c22325c222c5c22313636363031373635325c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d6167652d636865636b65725c222c5c22315c222c5c22313636363031373637375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d6167652d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313636363031373638355c225d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130362e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231323830783830305c222c5c2274696d655c223a5c22313636363031333634335c222c5c226c6173745f76697369745c223a313636363031373734397d7d7d, NULL, NULL),
(2, '2022-10-18', NULL, NULL, NULL, 0x7b5c223a3a315c223a7b5c22373537707334383231326f37313131396f7433753234716e37655c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a332c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c5c22325c222c5c22313636363035373033395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d617574686f726974792d636865636b65725c222c5c22315c222c313636363035373039375d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130362e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231323830783830305c222c5c2274696d655c223a5c22313636363035373033365c222c5c226c6173745f76697369745c223a313636363035373039377d7d7d, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2022-11-25', NULL, NULL, NULL, NULL, 0x7b5c223a3a315c223a7b5c227266767370366e7576337635346a613270377464386a39726a305c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a322c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c5c22315c222c5c22313636393335303231345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f726f626f74732d7478742d67656e657261746f725c222c5c22315c222c313636393335303235365d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130372e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231303234783736385c222c5c2274696d655c223a5c22313636393335303231345c222c5c226c6173745f76697369745c223a313636393335303235367d7d7d, 0x7b5c223a3a315c223a7b5c22657462726f72326638316a75386b706165317134336a336962375c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a5c22385c222c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c5c22365c222c5c22313636393335333238375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f636f6e746163745c222c5c22315c222c5c22313636393335323836355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167655c5c2f61626f75742d75735c222c5c22315c222c5c22313636393335323837325c225d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130372e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231303234783736385c222c5c2274696d655c223a5c22313636393335313230395c222c5c226c6173745f76697369745c223a5c22313636393335333238375c227d2c5c22707336313937693975387466316f64356d736f356935616272335c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a32322c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c32322c313636393335353538315d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130372e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231303234783736385c222c5c2274696d655c223a5c22313636393335333536325c222c5c226c6173745f76697369745c223a313636393335353538317d7d7d, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2022-11-29', 0x7b5c223a3a315c223a7b5c2263723567716b7637746734396a61703562306f6a7668337665755c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a5c22345c222c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c5c22335c222c5c22313636393636313933395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f636f6e746163745c222c5c22315c222c5c22313636393636313738395c225d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130372e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231303234783736385c222c5c2274696d655c223a5c22313636393636313736385c222c5c226c6173745f76697369745c223a5c22313636393636313933395c227d2c5c227636356a3873347435316c716935743075753562727169716e695c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a5c22315c222c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c5c22315c222c5c22313636393636333633335c225d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130372e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231303234783736385c222c5c2274696d655c223a5c22313636393636333633335c222c5c226c6173745f76697369745c223a5c22313636393636333633335c227d2c5c226b6162726a376a616b33647470386272693731713436346c66655c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a34352c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c31302c313636393636353032325d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7061676573706565642d696e7369676874732d636865636b65725c222c5c22365c222c5c22313636393636343332325c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7061676573706565642d696e7369676874732d636865636b65725c5c2f6f75747075745c222c5c22365c222c5c22313636393636343335305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f77686f69732d636865636b65725c222c5c22335c222c5c22313636393636343437395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f77686f69732d636865636b65725c5c2f6f75747075745c222c5c22325c222c5c22313636393636343435335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d6167652d636865636b65725c222c5c22335c222c5c22313636393636343534385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d6167652d636865636b65725c5c2f6f75747075745c222c5c22325c222c5c22313636393636343532355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f61727469636c652d72657772697465725c222c5c22315c222c5c22313636393636343536325c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f61727469636c652d72657772697465725c5c2f6f75747075745c222c5c22315c222c5c22313636393636343635385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706c616769617269736d2d636865636b65725c222c5c22315c222c5c22313636393636343734355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6f6e6c696e652d70696e672d776562736974652d746f6f6c5c222c5c22315c222c5c22313636393636343739385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d617574686f726974792d636865636b65725c222c5c22325c222c5c22313636393636343837365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6765742d736f757263652d636f64652d6f662d776562706167655c222c5c22315c222c5c22313636393636343932315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6765742d736f757263652d636f64652d6f662d776562706167655c5c2f6f75747075745c222c5c22315c222c5c22313636393636343933335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7365727665722d7374617475732d636865636b65725c222c5c22335c222c5c22313636393636353031345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7365727665722d7374617475732d636865636b65725c5c2f6f75747075745c222c5c22325c222c5c22313636393636353030355c225d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130372e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231303234783736385c222c5c2274696d655c223a5c22313636393636343032385c222c5c226c6173745f76697369745c223a313636393636353032327d7d7d, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2022-12-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7b5c223a3a315c223a7b5c226369716c66396c66386e3535323774706e3573743971313139695c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a3232342c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c33322c313637303431363732335d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f776f72642d636f756e7465725c222c5c22325c222c5c22313637303431303330315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f61727469636c652d72657772697465725c222c5c22325c222c5c22313637303430353436315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f61727469636c652d72657772697465725c5c2f6f75747075745c222c5c22315c222c5c22313637303430353439395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706c616769617269736d2d636865636b65725c222c5c22335c222c5c22313637303430363230365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6261636b6c696e6b2d6d616b65725c222c5c22335c222c5c22313637303430363138335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6574612d7461672d67656e657261746f725c222c5c22325c222c5c22313637303430363531325c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6574612d7461672d67656e657261746f725c5c2f6f75747075745c222c5c22315c222c5c22313637303430363338375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6574612d746167732d616e616c797a65725c222c5c22335c222c5c22313637303430363631365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6574612d746167732d616e616c797a65725c5c2f6f75747075745c222c5c22335c222c5c22313637303430363632355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6b6579776f72642d706f736974696f6e2d636865636b65725c222c5c22325c222c5c22313637303430363739335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f726f626f74732d7478742d67656e657261746f725c222c5c22355c222c5c22313637303430383832385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f786d6c2d736974656d61702d67656e657261746f725c222c5c22335c222c5c22313637303430393033355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6261636b6c696e6b2d636865636b65725c222c5c22315c222c5c22313637303430393137335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f616c6578612d72616e6b2d636865636b65725c222c5c22375c222c5c22313637303430393732365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f616c6578612d72616e6b2d636865636b65725c5c2f6f75747075745c222c5c22375c222c5c22313637303430393733345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6f6e6c696e652d70696e672d776562736974652d746f6f6c5c222c5c22315c222c5c22313637303431303431325c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6c696e6b2d616e616c797a65722d746f6f6c5c222c5c22335c222c5c22313637303431303633315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6c696e6b2d616e616c797a65722d746f6f6c5c5c2f6f75747075745c222c5c22335c222c5c22313637303431303634335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d792d69702d616464726573735c222c5c22315c222c5c22313637303431303730305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6b6579776f72642d64656e736974792d636865636b65725c222c5c22385c222c5c22313637303431303936395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6b6579776f72642d64656e736974792d636865636b65725c5c2f6f75747075745c222c5c22345c222c5c22313637303431303935385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f676f6f676c652d6d616c776172652d636865636b65725c222c5c22315c222c5c22313637303431313038345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d6167652d636865636b65725c222c5c22345c222c5c22313637303431313631355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d6167652d636865636b65725c5c2f6f75747075745c222c5c22345c222c5c22313637303431313633335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f77686f69732d636865636b65725c222c5c22365c222c5c22313637303431313930375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f77686f69732d636865636b65725c5c2f6f75747075745c222c5c22365c222c5c22313637303431313931385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d696e746f2d69705c222c5c22365c222c5c22313637303431323138385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d696e746f2d69705c5c2f6f75747075745c222c5c22365c222c5c22313637303431323230315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f75726c2d726577726974696e672d746f6f6c5c222c5c22315c222c5c22313637303431323234385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f75726c2d726577726974696e672d746f6f6c5c5c2f6f75747075745c222c5c22315c222c5c22313637303431323236385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7777772d72656469726563742d636865636b65725c222c5c22335c222c5c22313637303431323336325c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7777772d72656469726563742d636865636b65725c5c2f6f75747075745c222c5c22335c222c5c22313637303431323339315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6f7a72616e6b2d636865636b65725c222c5c22315c222c5c22313637303431323436375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6d6f7a72616e6b2d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313637303431323437385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f75726c2d656e636f6465722d6465636f6465725c222c5c22315c222c5c22313637303431323531395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f75726c2d656e636f6465722d6465636f6465725c5c2f6f75747075745c222c5c22315c222c5c22313637303431323533395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7365727665722d7374617475732d636865636b65725c222c5c22325c222c5c22313637303431323832365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7365727665722d7374617475732d636865636b65725c5c2f6f75747075745c222c5c22325c222c5c22313637303431323833395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f776562706167652d73637265656e2d7265736f6c7574696f6e2d73696d756c61746f725c222c5c22315c222c5c22313637303431333033305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167652d73697a652d636865636b65725c222c5c22325c222c5c22313637303431333232315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167652d73697a652d636865636b65725c5c2f6f75747075745c222c5c22325c222c5c22313637303431333235385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f726576657273652d69702d646f6d61696e2d636865636b65725c222c5c22325c222c5c22313637303431333338375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f626c61636b6c6973742d6c6f6f6b75705c222c5c22325c222c5c22313637303431333437385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f626c61636b6c6973742d6c6f6f6b75705c5c2f6f75747075745c222c5c22325c222c5c22313637303431333530355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f737573706963696f75732d646f6d61696e2d636865636b65725c222c5c22325c222c5c22313637303431333734365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f737573706963696f75732d646f6d61696e2d636865636b65725c5c2f6f75747075745c222c5c22325c222c5c22313637303431333739375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6c696e6b2d70726963652d63616c63756c61746f725c222c5c22345c222c5c22313637303431333930365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6c696e6b2d70726963652d63616c63756c61746f725c5c2f6f75747075745c222c5c22345c222c5c22313637303431333935345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f776562736974652d73637265656e73686f742d67656e657261746f725c222c5c22325c222c5c22313637303431343035305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d686f7374696e672d636865636b65725c222c5c22335c222c5c22313637303431343134355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d686f7374696e672d636865636b65725c5c2f6f75747075745c222c5c22335c222c5c22313637303431343236355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6765742d736f757263652d636f64652d6f662d776562706167655c222c5c22315c222c5c22313637303431343239305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6765742d736f757263652d636f64652d6f662d776562706167655c5c2f6f75747075745c222c5c22315c222c5c22313637303431343335325c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f676f6f676c652d696e6465782d636865636b65725c222c5c22315c222c5c22313637303431343438345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f676f6f676c652d696e6465782d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313637303431343439375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f776562736974652d6c696e6b732d636f756e742d636865636b65725c222c5c22315c222c5c22313637303431343537305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f776562736974652d6c696e6b732d636f756e742d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313637303431343537395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f636c6173732d632d69702d636865636b65725c222c5c22315c222c5c22313637303431343636345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f636c6173732d632d69702d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313637303431343730325c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6f6e6c696e652d6d64352d67656e657261746f725c222c5c22325c222c5c22313637303431343830345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6f6e6c696e652d6d64352d67656e657261746f725c5c2f6f75747075745c222c5c22325c222c5c22313637303431343831355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167652d73706565642d636865636b65725c222c5c22315c222c5c22313637303431343931345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167652d73706565642d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313637303431343932365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f636f64652d746f2d746578742d726174696f2d636865636b65725c222c5c22335c222c5c22313637303431353035385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f636f64652d746f2d746578742d726174696f2d636865636b65725c5c2f6f75747075745c222c5c22335c222c5c22313637303431353037305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f66696e642d646e732d7265636f7264735c222c5c22315c222c5c22313637303431353130345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f66696e642d646e732d7265636f7264735c5c2f6f75747075745c222c5c22315c222c5c22313637303431353131345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f776861742d69732d6d792d62726f777365725c222c5c22315c222c5c22313637303431353235315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f656d61696c2d707269766163795c222c5c22335c222c5c22313637303431353336375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f656d61696c2d707269766163795c5c2f6f75747075745c222c5c22335c222c5c22313637303431353339315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f676f6f676c652d63616368652d636865636b65725c222c5c22315c222c5c22313637303431353532315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f62726f6b656e2d6c696e6b732d66696e6465725c222c5c22315c222c5c22313637303431353633395c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f62726f6b656e2d6c696e6b732d66696e6465725c5c2f6f75747075745c222c5c22315c222c5c22313637303431353639305c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7370696465722d73696d756c61746f725c222c5c22315c222c5c22313637303431353834315c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6b6579776f7264732d73756767657374696f6e2d746f6f6c5c222c5c22325c222c5c22313637303431363031345c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f6b6579776f7264732d73756767657374696f6e2d746f6f6c5c5c2f6f75747075745c222c5c22325c222c5c22313637303431363032365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f646f6d61696e2d617574686f726974792d636865636b65725c222c5c22315c222c5c22313637303431363130385c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167652d617574686f726974792d636865636b65725c222c5c22335c222c5c22313637303431363231375c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7061676573706565642d696e7369676874732d636865636b65725c222c5c22315c222c5c22313637303431363234365c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f7061676573706565642d696e7369676874732d636865636b65725c5c2f6f75747075745c222c5c22315c222c5c22313637303431363237335c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f706167655c5c2f61626f75742d75735c222c5c22315c222c5c22313637303431363632355c225d2c5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f636f6e746163745c222c5c22335c222c5c22313637303431363730365c225d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130382e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231303234783736385c222c5c2274696d655c223a5c22313637303430343132315c222c5c226c6173745f76697369745c223a313637303431363732337d7d7d, NULL, NULL, NULL, 0x7b5c223a3a315c223a7b5c227071713071316b316930736a39376636713936696971676166755c223a7b5c22757365726e616d655c223a5c2247756573745c222c5c2270616765766965775c223a5c22315c222c5c2270616765735c223a5b5b5c22687474703a5c5c2f5c5c2f6c6f63616c686f73745c5c2f696c61625c5c2f5c222c5c22315c222c313637303433353639315d5d2c5c227265665c223a5c224469726563745c222c5c226b6579776f72645c223a7b5c22676f6f676c655c223a5c225c222c5c227961686f6f5c223a5c225c222c5c2262696e675c223a5c225c222c5c2261736b5c223a5c225c227d2c5c2275615c223a5c224d6f7a696c6c615c5c2f352e30202857696e646f7773204e542031302e303b2057696e36343b2078363429204170706c655765624b69745c5c2f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d655c5c2f3130382e302e302e30205361666172695c5c2f3533372e33365c222c5c2273637265656e5c223a5c2231303234783736385c222c5c2274696d655c223a313637303433353639312c5c226c6173745f76697369745c223a313637303433353639317d7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `recent_history`
--

CREATE TABLE `recent_history` (
  `id` int(11) NOT NULL,
  `visitor_ip` text DEFAULT NULL,
  `tool_name` text DEFAULT NULL,
  `user` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `intDate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `recent_history`
--

INSERT INTO `recent_history` (`id`, `visitor_ip`, `tool_name`, `user`, `date`, `intDate`) VALUES
(1, '::1', 'Word Counter', 'Guest', '10/17/2022 12:07:28PM', '10/17/2022'),
(2, '::1', 'Online Ping Website Tool', 'Guest', '10/17/2022 12:08:43PM', '10/17/2022'),
(3, '::1', 'Keyword Position Checker', 'Guest', '10/17/2022 12:09:05PM', '10/17/2022'),
(4, '::1', 'Domain Age Checker', 'Guest', '10/17/2022 12:10:33PM', '10/17/2022'),
(5, '::1', 'My IP Address', 'Guest', '10/17/2022 12:10:34PM', '10/17/2022'),
(6, '::1', 'Domain Age Checker', 'Guest', '10/17/2022 12:11:15PM', '10/17/2022'),
(7, '::1', 'Whois Checker', 'Guest', '10/17/2022 12:12:57PM', '10/17/2022'),
(8, '::1', 'Domain into IP', 'Guest', '10/17/2022 12:13:45PM', '10/17/2022'),
(9, '::1', 'Mozrank Checker', 'Guest', '10/17/2022 12:14:29PM', '10/17/2022'),
(10, '::1', 'Server Status Checker', 'Guest', '10/17/2022 12:15:05PM', '10/17/2022'),
(11, '::1', 'Webpage Screen Resolution Simulator', 'Guest', '10/17/2022 12:15:46PM', '10/17/2022'),
(12, '::1', 'Domain Age Checker', 'Guest', '10/17/2022 12:21:03PM', '10/17/2022'),
(13, '::1', 'My IP Address', 'Guest', '10/17/2022 12:24:45PM', '10/17/2022'),
(14, '::1', 'Plagiarism Checker', 'Guest', '10/17/2022 12:39:22PM', '10/17/2022'),
(15, '::1', 'Plagiarism Checker', 'Guest', '10/17/2022 12:39:35PM', '10/17/2022'),
(16, '::1', 'Page Speed Checker', 'Guest', '10/17/2022 12:42:01PM', '10/17/2022'),
(17, '::1', 'Article Rewriter', 'Guest', '10/17/2022 12:44:31PM', '10/17/2022'),
(18, '::1', 'Plagiarism Checker', 'Guest', '10/17/2022 12:45:14PM', '10/17/2022'),
(19, '::1', 'Plagiarism Checker', 'Guest', '10/17/2022 12:45:47PM', '10/17/2022'),
(20, '::1', 'Plagiarism Checker', 'Guest', '10/17/2022 12:47:48PM', '10/17/2022'),
(21, '::1', 'Backlink Maker', 'Guest', '10/17/2022 12:48:13PM', '10/17/2022'),
(22, '::1', 'Meta Tag Generator', 'Guest', '10/17/2022 12:50:02PM', '10/17/2022'),
(23, '::1', 'Meta Tags Analyzer', 'Guest', '10/17/2022 12:51:51PM', '10/17/2022'),
(24, '::1', 'Keyword Position Checker', 'Guest', '10/17/2022 12:52:15PM', '10/17/2022'),
(25, '::1', 'XML Sitemap Generator', 'Guest', '10/17/2022 12:52:58PM', '10/17/2022'),
(26, '::1', 'Online Ping Website Tool', 'Guest', '10/17/2022 07:23:28PM', '10/17/2022'),
(27, '::1', 'Plagiarism Checker', 'Guest', '10/17/2022 08:09:23PM', '10/17/2022'),
(28, '::1', 'What is my Browser', 'Guest', '10/17/2022 08:09:48PM', '10/17/2022'),
(29, '::1', 'Whois Checker', 'Guest', '10/17/2022 08:10:11PM', '10/17/2022'),
(30, '::1', 'Whois Checker', 'Guest', '10/17/2022 08:10:37PM', '10/17/2022'),
(31, '::1', 'Domain Age Checker', 'Guest', '10/17/2022 08:11:15PM', '10/17/2022'),
(32, '::1', 'Domain Authority Checker', 'Guest', '10/18/2022 07:08:15AM', '10/18/2022'),
(33, '::1', 'Robots.txt Generator', 'Guest', '11/25/2022 09:54:14AM', '11/25/2022'),
(34, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:04:31AM', '11/29/2022'),
(35, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:05:29AM', '11/29/2022'),
(36, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:06:22AM', '11/29/2022'),
(37, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:06:58AM', '11/29/2022'),
(38, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:07:50AM', '11/29/2022'),
(39, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:08:41AM', '11/29/2022'),
(40, '::1', 'Whois Checker', 'Guest', '11/29/2022 01:10:16AM', '11/29/2022'),
(41, '::1', 'Whois Checker', 'Guest', '11/29/2022 01:10:42AM', '11/29/2022'),
(42, '::1', 'Whois Checker', 'Guest', '11/29/2022 01:11:17AM', '11/29/2022'),
(43, '::1', 'Domain Age Checker', 'Guest', '11/29/2022 01:11:34AM', '11/29/2022'),
(44, '::1', 'Domain Age Checker', 'Guest', '11/29/2022 01:11:50AM', '11/29/2022'),
(45, '::1', 'Domain Age Checker', 'Guest', '11/29/2022 01:12:27AM', '11/29/2022'),
(46, '::1', 'Article Rewriter', 'Guest', '11/29/2022 01:12:41AM', '11/29/2022'),
(47, '::1', 'Plagiarism Checker', 'Guest', '11/29/2022 01:15:44AM', '11/29/2022'),
(48, '::1', 'Online Ping Website Tool', 'Guest', '11/29/2022 01:16:36AM', '11/29/2022'),
(49, '::1', 'Domain Authority Checker', 'Guest', '11/29/2022 01:17:34AM', '11/29/2022'),
(50, '::1', 'Domain Authority Checker', 'Guest', '11/29/2022 01:17:54AM', '11/29/2022'),
(51, '::1', 'Get Source Code of Webpage', 'Guest', '11/29/2022 01:18:39AM', '11/29/2022'),
(52, '127.0.0.1', 'Get Source Code of Webpage', 'Guest', '11/29/2022 01:18:42AM', '11/29/2022'),
(53, '::1', 'Server Status Checker', 'Guest', '11/29/2022 01:19:23AM', '11/29/2022'),
(54, '::1', 'Server Status Checker', 'Guest', '11/29/2022 01:19:39AM', '11/29/2022'),
(55, '::1', 'Server Status Checker', 'Guest', '11/29/2022 01:20:13AM', '11/29/2022'),
(56, '::1', 'Word Counter', 'Guest', '12/07/2022 02:39:19PM', '12/07/2022'),
(57, '::1', 'Article Rewriter', 'Guest', '12/07/2022 02:56:43PM', '12/07/2022'),
(58, '::1', 'Article Rewriter', 'Guest', '12/07/2022 03:00:59PM', '12/07/2022'),
(59, '::1', 'Plagiarism Checker', 'Guest', '12/07/2022 03:02:09PM', '12/07/2022'),
(60, '::1', 'Plagiarism Checker', 'Guest', '12/07/2022 03:02:45PM', '12/07/2022'),
(61, '::1', 'Backlink Maker', 'Guest', '12/07/2022 03:06:40PM', '12/07/2022'),
(62, '::1', 'Backlink Maker', 'Guest', '12/07/2022 03:07:51PM', '12/07/2022'),
(63, '::1', 'Backlink Maker', 'Guest', '12/07/2022 03:13:00PM', '12/07/2022'),
(64, '::1', 'Plagiarism Checker', 'Guest', '12/07/2022 03:13:25PM', '12/07/2022'),
(65, '::1', 'Meta Tag Generator', 'Guest', '12/07/2022 03:14:19PM', '12/07/2022'),
(66, '::1', 'Meta Tag Generator', 'Guest', '12/07/2022 03:18:30PM', '12/07/2022'),
(67, '::1', 'Meta Tags Analyzer', 'Guest', '12/07/2022 03:19:05PM', '12/07/2022'),
(68, '::1', 'Meta Tags Analyzer', 'Guest', '12/07/2022 03:19:28PM', '12/07/2022'),
(69, '::1', 'Meta Tags Analyzer', 'Guest', '12/07/2022 03:20:14PM', '12/07/2022'),
(70, '::1', 'Keyword Position Checker', 'Guest', '12/07/2022 03:22:40PM', '12/07/2022'),
(71, '::1', 'Keyword Position Checker', 'Guest', '12/07/2022 03:23:11PM', '12/07/2022'),
(72, '::1', 'Robots.txt Generator', 'Guest', '12/07/2022 03:28:17PM', '12/07/2022'),
(73, '::1', 'Robots.txt Generator', 'Guest', '12/07/2022 03:30:49PM', '12/07/2022'),
(74, '::1', 'Robots.txt Generator', 'Guest', '12/07/2022 03:51:21PM', '12/07/2022'),
(75, '::1', 'Robots.txt Generator', 'Guest', '12/07/2022 03:53:38PM', '12/07/2022'),
(76, '::1', 'Robots.txt Generator', 'Guest', '12/07/2022 03:55:37PM', '12/07/2022'),
(77, '::1', 'Robots.txt Generator', 'Guest', '12/07/2022 03:57:06PM', '12/07/2022'),
(78, '::1', 'XML Sitemap Generator', 'Guest', '12/07/2022 03:58:24PM', '12/07/2022'),
(79, '::1', 'XML Sitemap Generator', 'Guest', '12/07/2022 03:59:40PM', '12/07/2022'),
(80, '::1', 'XML Sitemap Generator', 'Guest', '12/07/2022 04:00:33PM', '12/07/2022'),
(81, '::1', 'Backlink Checker', 'Guest', '12/07/2022 04:02:51PM', '12/07/2022'),
(82, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:06:13PM', '12/07/2022'),
(83, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:06:32PM', '12/07/2022'),
(84, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:07:00PM', '12/07/2022'),
(85, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:07:42PM', '12/07/2022'),
(86, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:08:14PM', '12/07/2022'),
(87, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:11:42PM', '12/07/2022'),
(88, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:12:04PM', '12/07/2022'),
(89, '::1', 'Word Counter', 'Guest', '12/07/2022 04:21:39PM', '12/07/2022'),
(90, '::1', 'Online Ping Website Tool', 'Guest', '12/07/2022 04:23:27PM', '12/07/2022'),
(91, '::1', 'Link Analyzer', 'Guest', '12/07/2022 04:24:36PM', '12/07/2022'),
(92, '::1', 'Link Analyzer', 'Guest', '12/07/2022 04:25:07PM', '12/07/2022'),
(93, '::1', 'Link Analyzer', 'Guest', '12/07/2022 04:27:09PM', '12/07/2022'),
(94, '::1', 'My IP Address', 'Guest', '12/07/2022 04:28:18PM', '12/07/2022'),
(95, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:29:21PM', '12/07/2022'),
(96, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:30:19PM', '12/07/2022'),
(97, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:30:43PM', '12/07/2022'),
(98, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:30:46PM', '12/07/2022'),
(99, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:31:03PM', '12/07/2022'),
(100, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:31:52PM', '12/07/2022'),
(101, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:32:22PM', '12/07/2022'),
(102, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:32:47PM', '12/07/2022'),
(103, '::1', 'Google Malware Checker', 'Guest', '12/07/2022 04:34:42PM', '12/07/2022'),
(104, '::1', 'Domain Age Checker', 'Guest', '12/07/2022 04:39:24PM', '12/07/2022'),
(105, '::1', 'Domain Age Checker', 'Guest', '12/07/2022 04:39:44PM', '12/07/2022'),
(106, '::1', 'Domain Age Checker', 'Guest', '12/07/2022 04:39:55PM', '12/07/2022'),
(107, '::1', 'Domain Age Checker', 'Guest', '12/07/2022 04:43:34PM', '12/07/2022'),
(108, '::1', 'Whois Checker', 'Guest', '12/07/2022 04:44:36PM', '12/07/2022'),
(109, '::1', 'Whois Checker', 'Guest', '12/07/2022 04:45:09PM', '12/07/2022'),
(110, '::1', 'Whois Checker', 'Guest', '12/07/2022 04:45:21PM', '12/07/2022'),
(111, '::1', 'Whois Checker', 'Guest', '12/07/2022 04:45:36PM', '12/07/2022'),
(112, '::1', 'Whois Checker', 'Guest', '12/07/2022 04:47:02PM', '12/07/2022'),
(113, '::1', 'Whois Checker', 'Guest', '12/07/2022 04:48:25PM', '12/07/2022'),
(114, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:50:40PM', '12/07/2022'),
(115, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:51:04PM', '12/07/2022'),
(116, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:51:29PM', '12/07/2022'),
(117, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:52:08PM', '12/07/2022'),
(118, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:52:41PM', '12/07/2022'),
(119, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:53:07PM', '12/07/2022'),
(120, '::1', 'URL Rewriting Tool', 'Guest', '12/07/2022 04:54:06PM', '12/07/2022'),
(121, '::1', 'www Redirect Checker', 'Guest', '12/07/2022 04:55:33PM', '12/07/2022'),
(122, '::1', 'www Redirect Checker', 'Guest', '12/07/2022 04:55:48PM', '12/07/2022'),
(123, '::1', 'www Redirect Checker', 'Guest', '12/07/2022 04:56:01PM', '12/07/2022'),
(124, '::1', 'Mozrank Checker', 'Guest', '12/07/2022 04:57:46PM', '12/07/2022'),
(125, '::1', 'URL Encoder / Decoder', 'Guest', '12/07/2022 04:58:37PM', '12/07/2022'),
(126, '::1', 'Server Status Checker', 'Guest', '12/07/2022 04:59:21PM', '12/07/2022'),
(127, '::1', 'Server Status Checker', 'Guest', '12/07/2022 05:03:44PM', '12/07/2022'),
(128, '::1', 'Webpage Screen Resolution Simulator', 'Guest', '12/07/2022 05:07:08PM', '12/07/2022'),
(129, '::1', 'Page Size Checker', 'Guest', '12/07/2022 05:09:54PM', '12/07/2022'),
(130, '::1', 'Page Size Checker', 'Guest', '12/07/2022 05:10:20PM', '12/07/2022'),
(131, '::1', 'Reverse IP Domain Checker', 'Guest', '12/07/2022 05:12:52PM', '12/07/2022'),
(132, '::1', 'Reverse IP Domain Checker', 'Guest', '12/07/2022 05:13:06PM', '12/07/2022'),
(133, '::1', 'Blacklist Lookup', 'Guest', '12/07/2022 05:13:32PM', '12/07/2022'),
(134, '::1', 'Blacklist Lookup', 'Guest', '12/07/2022 05:14:37PM', '12/07/2022'),
(135, '::1', 'Suspicious Domain Checker', 'Guest', '12/07/2022 05:18:01PM', '12/07/2022'),
(136, '::1', 'Suspicious Domain Checker', 'Guest', '12/07/2022 05:19:05PM', '12/07/2022'),
(137, '::1', 'Link Price Calculator', 'Guest', '12/07/2022 05:20:45PM', '12/07/2022'),
(138, '::1', 'Link Price Calculator', 'Guest', '12/07/2022 05:21:02PM', '12/07/2022'),
(139, '::1', 'Link Price Calculator', 'Guest', '12/07/2022 05:21:20PM', '12/07/2022'),
(140, '::1', 'Link Price Calculator', 'Guest', '12/07/2022 05:21:44PM', '12/07/2022'),
(141, '::1', 'Website Screenshot Generator', 'Guest', '12/07/2022 05:23:45PM', '12/07/2022'),
(142, '::1', 'Website Screenshot Generator', 'Guest', '12/07/2022 05:24:08PM', '12/07/2022'),
(143, '::1', 'Domain Hosting Checker', 'Guest', '12/07/2022 05:25:02PM', '12/07/2022'),
(144, '::1', 'Domain Hosting Checker', 'Guest', '12/07/2022 05:25:24PM', '12/07/2022'),
(145, '::1', 'Domain Hosting Checker', 'Guest', '12/07/2022 05:25:43PM', '12/07/2022'),
(146, '::1', 'Get Source Code of Webpage', 'Guest', '12/07/2022 05:28:09PM', '12/07/2022'),
(147, '::1', 'Google Index Checker', 'Guest', '12/07/2022 05:31:21PM', '12/07/2022'),
(148, '::1', 'Website Links Count Checker', 'Guest', '12/07/2022 05:32:47PM', '12/07/2022'),
(149, '::1', 'Class C Ip Checker', 'Guest', '12/07/2022 05:34:23PM', '12/07/2022'),
(150, '::1', 'Online Md5 Generator', 'Guest', '12/07/2022 05:36:29PM', '12/07/2022'),
(151, '::1', 'Online Md5 Generator', 'Guest', '12/07/2022 05:36:42PM', '12/07/2022'),
(152, '::1', 'Page Speed Checker', 'Guest', '12/07/2022 05:38:32PM', '12/07/2022'),
(153, '::1', 'Code to Text Ratio Checker', 'Guest', '12/07/2022 05:40:08PM', '12/07/2022'),
(154, '::1', 'Code to Text Ratio Checker', 'Guest', '12/07/2022 05:40:37PM', '12/07/2022'),
(155, '::1', 'Code to Text Ratio Checker', 'Guest', '12/07/2022 05:40:57PM', '12/07/2022'),
(156, '::1', 'Find DNS records', 'Guest', '12/07/2022 05:41:42PM', '12/07/2022'),
(157, '::1', 'What is my Browser', 'Guest', '12/07/2022 05:44:09PM', '12/07/2022'),
(158, '::1', 'Email Privacy', 'Guest', '12/07/2022 05:45:22PM', '12/07/2022'),
(159, '::1', 'Email Privacy', 'Guest', '12/07/2022 05:45:40PM', '12/07/2022'),
(160, '::1', 'Email Privacy', 'Guest', '12/07/2022 05:46:06PM', '12/07/2022'),
(161, '::1', 'Google Cache Checker', 'Guest', '12/07/2022 05:48:39PM', '12/07/2022'),
(162, '::1', 'Broken Links Finder', 'Guest', '12/07/2022 05:50:37PM', '12/07/2022'),
(163, '::1', 'Search Engine Spider Simulator', 'Guest', '12/07/2022 05:53:59PM', '12/07/2022'),
(164, '::1', 'Keywords Suggestion Tool', 'Guest', '12/07/2022 05:56:30PM', '12/07/2022'),
(165, '::1', 'Keywords Suggestion Tool', 'Guest', '12/07/2022 05:56:52PM', '12/07/2022'),
(166, '::1', 'Domain Authority Checker', 'Guest', '12/07/2022 05:58:25PM', '12/07/2022'),
(167, '::1', 'Page Authority Checker', 'Guest', '12/07/2022 05:59:25PM', '12/07/2022'),
(168, '::1', 'Page Authority Checker', 'Guest', '12/07/2022 05:59:49PM', '12/07/2022'),
(169, '::1', 'Page Authority Checker', 'Guest', '12/07/2022 06:00:16PM', '12/07/2022'),
(170, '::1', 'Pagespeed Insights Checker', 'Guest', '12/07/2022 06:00:44PM', '12/07/2022');

-- --------------------------------------------------------

--
-- Table structure for table `seo_tools`
--

CREATE TABLE `seo_tools` (
  `id` int(11) NOT NULL,
  `tool_name` text DEFAULT NULL,
  `tool_url` text DEFAULT NULL,
  `uid` text DEFAULT NULL,
  `icon_name` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_des` text DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `about_tool` text DEFAULT NULL,
  `captcha` text DEFAULT NULL,
  `tool_show` text DEFAULT NULL,
  `tool_no` text DEFAULT NULL,
  `tool_login` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `seo_tools`
--

INSERT INTO `seo_tools` (`id`, `tool_name`, `tool_url`, `uid`, `icon_name`, `meta_title`, `meta_des`, `meta_tags`, `about_tool`, `captcha`, `tool_show`, `tool_no`, `tool_login`) VALUES
(1, 'Article Rewriter', 'article-rewriter', 'PR01', 'icons/article_rewriter.png', '100% Free Article Rewriter', '', 'article rewriter, spinner, article rewriter online', '&lt;p&gt;Information about the Article Rewriter tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Article Rewriter is a free, automatic article rewriter that will rewrite any given text into readable text along. To use this Article Rewriter, please copy and paste your content into the text box below, and then click on the &amp;lsquo;Re-write Article&amp;rsquo; button.&lt;/p&gt;', 'no', 'yes', '1', 'no'),
(2, 'Plagiarism Checker', 'plagiarism-checker', 'PR02', 'icons/plagiarism_checker.png', 'Advance Plagiarism Checker', '', 'seo plagiarism checker, detector, plagiarism, plagiarism seo tools', '&lt;p&gt;Information about the Plagiarism Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;To use this plagiarism checker, please copy and paste your text in the box below, then click on the &amp;ldquo;Check Plagiarism&amp;rdquo; button, sit back and watch as your article undergoes a free plagiarism scan.&lt;/p&gt;', 'no', 'yes', '2', 'no'),
(3, 'Backlink Maker', 'backlink-maker', 'PR03', 'icons/backlink_maker.png', 'Backlink Maker', '', 'backlink maker, backlinks, link maker, backlink maker online', '&lt;p&gt;Information about the Backlink Maker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Quality backlinks are critical for SEO. Use this free Backlink Maker to generate a large number of quality backlinks in a matter of seconds. Enter the website URL and click &amp;lsquo;Make Backlink&amp;rsquo;.&lt;/p&gt;', 'no', 'yes', '3', 'no'),
(4, 'Meta Tag Generator', 'meta-tag-generator', 'PR04', 'icons/meta_tag_generator.png', 'Easy Meta Tag Generator', '', 'meta generator, seo tags, online meta tag generator, meta tag generator free', '&lt;p&gt;Information about the Meta Tag Generator tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Meta tags are the type of HTML tag products that provide metadata about your site, for example, representation and other sorts of description. These Meta tags are utilized via web crawlers and search engines to help the index and to give important and relevant information in their query items.&lt;/p&gt;', 'no', 'yes', '4', 'no'),
(5, 'Meta Tags Analyzer', 'meta-tags-analyzer', 'PR05', 'icons/meta_tags_analyzer.png', 'Meta Tags Analyzer', '', 'analyze meta tags, get meta tags', '&lt;p&gt;Information about the Meta Tags Analyzer tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;The Meta tag analyzer tool is there to give website owners an inside and out analysis of their Meta labels and pages. This kind of Meta Tag checker breaks down the Meta labels as well as the catchphrases on the page, from the pictures, from the heading labels, and from the required URLs.&lt;/p&gt;', 'no', 'no', '5', 'no'),
(6, 'Keyword Position Checker', 'keyword-position-checker', 'PR06', 'icons/keyword_position_checker.png', 'Free Keyword Position Checker', '', 'keyword position, keywords position checker, online keywords position checker', '&lt;p&gt;Information about the Keyword Position Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;To check the keyword rank in Google ranking, use our free Keyword Position Checker. Just enter the domain name, keywords and search engine and click the blue &amp;lsquo;Check Position&amp;rsquo; button.&lt;/p&gt;', 'no', 'no', '6', 'no'),
(7, 'Robots.txt Generator', 'robots-txt-generator', 'PR07', 'icons/robots_txt_generator.png', 'Robots.txt Generator', '', 'robots.txt generator, online robots.txt generator, generate robots.txt free', '&lt;p&gt;Information about the Robots.txt Generator tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Robots.txt is a file that contains instructions on how to crawl a website. It is also known as robots exclusion protocol, and this standard is used by sites to tell the bots which part of their website needs indexing. Also, you can specify which areas you don&amp;rsquo;t want to get processed by these crawlers; such areas contain duplicate content or are under development. Bots like malware detectors, email harvesters don&amp;rsquo;t follow this standard and will scan for weaknesses in your securities, and there is a considerable probability that they will begin examining your site from the areas you don&amp;rsquo;t want to be indexed.&lt;/p&gt;', 'no', 'yes', '7', 'no'),
(8, 'XML Sitemap Generator', 'xml-sitemap-generator', 'PR08', 'icons/sitemap.png', 'Free Online XML Sitemap Generator', '', 'generate xml sitemap free, seo sitemap, xml', '&lt;p&gt;Information about the XML Sitemap Generator tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Use our free tool to easily generate XML sitemap to notify search engines including Google, Bing, and Yandex, about all your web pages and any changes in them, and make sure all your pages are correctly indexed.&lt;/p&gt;', 'no', 'yes', '8', 'no'),
(9, 'Backlink Checker', 'backlink-checker', 'PR09', 'icons/backlink_checker.png', '100% Free Backlink Checker', '', 'free backlink checker online, online backlink checker', '<p>Enter more information about the Backlink Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '9', 'no'),
(10, 'Alexa Rank Checker', 'alexa-rank-checker', 'PR10', 'icons/alexa.png', 'Alexa Rank Checker', '', 'get world rank, alexa, alexa site rank', '&lt;p&gt;Information about the Alexa Rank Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;If you want to get an idea of how popular a website is, one of the most well-known ways to check for that is to find out the &amp;ldquo;Alexa Rank&amp;rdquo; of the website. Owned by Amazon.com, Alexa is a web analytics company that provides web traffic data and other marketing metrics based on the information it picks up from around the web via various toolbars and web browser extensions.&lt;/p&gt;', 'no', 'yes', '10', 'no'),
(11, 'Word Counter', 'word-counter', 'PR11', 'icons/word_counter.png', 'Simple Word Counter', '', 'word calculator, word counter, character counter online', '&lt;p&gt;Information about the Word Counter tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;To use this Word Count Checker, please copy and paste your content into the box below, and then sit back and watch as Word Count Checker will run a real-time scan.&lt;/p&gt;', 'no', 'yes', '11', 'no'),
(12, 'Online Ping Website Tool', 'online-ping-website-tool', 'PR12', 'icons/ping_tool.png', 'Online Ping Website Tool', '', 'website ping tool, free website ping tool, online ping tool', '&lt;p&gt;Enter more information about the Online Ping Website Tool tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'no', 'no', '12', 'no'),
(13, 'Link Analyzer', 'link-analyzer-tool', 'PR13', 'icons/link_analyzer.png', 'Free Link Analyzer Tool', '', 'link analysis tool, analyse links website, analyze links free, online link analyzer,', '&lt;p&gt;Information about the Link Analyzer tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;This Link Analyzer tool will generate the results instantly. It will display a report that includes all inbound and outbound links as well as the associated anchor text. Should there be any hyperlinked images on the page, the alt attribute of that image will be shown as the anchor text.&lt;/p&gt;', 'no', 'yes', '13', 'no'),
(15, 'My IP Address', 'my-ip-address', 'PR15', 'icons/my_IP_address.png', 'Your IP Address Information', '', 'ip address locator, my static ip, my ip', '<p>Enter more information about the My IP Address tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '15', 'no'),
(16, 'Keyword Density Checker', 'keyword-density-checker', 'PR16', 'icons/keyword_density_checker.png', 'Keyword Density Checker', '', 'keyword density formula, online keyword density checker, wordpress keyword density checker', '&lt;p&gt;Information about the Keyword Density Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Did you you know that the percentage of times a keyword appears on your web page compared to the total number of words on that page can have an impact on the page&amp;#39;s ranking? Sure it does, and it&amp;#39;s called &amp;ldquo;Keyword Density.&amp;rdquo;&lt;/p&gt;', 'no', 'yes', '16', 'no'),
(17, 'Google Malware Checker', 'google-malware-checker', 'PR17', 'icons/google_malware.png', 'Google Malware Checker', '', 'google malicious site check, google request malware review, malware site finder', '&lt;p&gt;information about the Google Malware Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Malware is the short term for Malicious Software. This kind of software is dangerous because it can secretly access a device without the user&amp;rsquo;s knowledge to steal information.&lt;/p&gt;\r\n\r\n&lt;p&gt;There are different types of malware; it can be in the form of adware, spyware, phishing, viruses, worms, trojan horses, ransomware, rootkits, and browser hijackers.&lt;/p&gt;\r\n\r\n&lt;p&gt;A sign that your computer is infected by malware is when it is running slower than usual. It also involves frequent crashes on your browser, pop-ups, and spam. To help you know if you are infected you can use a free malware scanner.&lt;/p&gt;', 'no', 'yes', '17', 'no'),
(18, 'Domain Age Checker', 'domain-age-checker', 'PR18', 'icons/domain_age_checker.png', 'Domain Age Checker', '', 'get domain age, aged domain finder, domain age finder', '&lt;p&gt;Information about the Domain Age Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Domain Age Checker is a tool we built primarily for the purpose of checking the age of any domain name on the Internet.&lt;/p&gt;', 'no', 'yes', '18', 'no'),
(19, 'Whois Checker', 'whois-checker', 'PR19', 'icons/whois_checker.png', 'Online Whois Checker', '', 'whois lookup, domain whois, whois checker', '&lt;p&gt;Information about the Whois Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Whois lookup tool gives you the ability to search the current registration data for domain names. Whois search results data are shown to help users who obtain the information about any domain name registration records.&lt;/p&gt;', 'no', 'yes', '19', 'no'),
(20, 'Domain into IP', 'domain-into-ip', 'PR20', 'icons/domain_into_IP.png', 'Domain into IP', '', 'host ip, domain into ip, host ip lookup', '<p>Enter more information about the Domain into IP tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '20', 'no'),
(22, 'URL Rewriting Tool', 'url-rewriting-tool', 'PR22', 'icons/url_rewriting.png', 'URL Rewriting Tool', '', 'htaccess rewriting, url rewriting, seo urls', '<p>Enter more information about the URL Rewriting Tool tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '22', 'no'),
(23, 'www Redirect Checker', 'www-redirect-checker', 'PR23', 'icons/www_redirect_checker.png', 'www Redirect Checker', '', '302 redirect checker, seo friendly redirect, www redirect', '<p>Enter more information about the www Redirect Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '23', 'no'),
(24, 'Mozrank Checker', 'mozrank-checker', 'PR24', 'icons/moz.png', 'Mozrank Checker', '', 'moz rank, seo moz, seo rank checker', '<p>Enter more information about the Mozrank Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '24', 'no'),
(25, 'URL Encoder / Decoder', 'url-encoder-decoder', 'PR25', 'icons/url_encoder_decoder.png', 'Online URL Encoder / Decoder', '', 'online urlencode, urldecode online, http encoder', '<p>Enter more information about the URL Encoder / Decoder tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '25', 'no'),
(26, 'Server Status Checker', 'server-status-checker', 'PR26', 'icons/server_status_checker.png', 'Server Status Checker', '', 'check server status, my server status, status of my server', '&lt;p&gt;Information about the Server Status Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Check the status of your favorite website. Just enter the URL in the below HTTP, HTTPS server status checker tool and test tool will perform a test on the URLs in real time using our online HTTP status codes checker.&lt;/p&gt;', 'no', 'yes', '26', 'no'),
(27, 'Webpage Screen Resolution Simulator', 'webpage-screen-resolution-simulator', 'PR27', 'icons/webpage_screen_resolution_simulator.png', 'Webpage Screen Resolution Simulator', '', 'browser size simulator, test browser resolution, screen size tester', '&lt;p&gt;Information about the Webpage Screen Resolution Simulator tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;This responsive web design tester is the only tool you need if you want to take a good look at your website from different screen resolutions. We can guarantee you that our screen resolution simulator tool is the best developed so far. It is very useful for all website owners who want to view their website at different resolutions and make a few modifications to their website so that it looks better from every angle!&lt;/p&gt;', 'no', 'yes', '27', 'no'),
(28, 'Page Size Checker', 'page-size-checker', 'PR28', 'icons/page_size_checker.png', 'Page Size Checker', '', 'check website size, find web page size, webpage size calculator', '&lt;p&gt;Information about the Page Size Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;The performance of any website is measured on the basis of the time it takes to open a particular web page. Website total size checker is a tool that will help you to check website size online and improve the performance of your website by letting you know the size of your individual web pages.&lt;/p&gt;', 'no', 'yes', '28', 'no'),
(29, 'Reverse IP Domain Checker', 'reverse-ip-domain-checker', 'PR29', 'icons/reverse_ip_domain.png', 'Reverse IP Domain Checker', '', 'reverse ip lookup, reverse dns lookup, lookup website', '<p>Enter more information about the Reverse IP Domain Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '29', 'no'),
(30, 'Blacklist Lookup', 'blacklist-lookup', 'PR30', 'icons/denied.png', 'Blacklist Lookup', '', 'blacklist checker, site blacklist, spamhaus blacklist lookup', '<p>Enter more information about the Blacklist Lookup tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '30', 'no'),
(31, 'Suspicious Domain Checker', 'suspicious-domain-checker', 'PR31', 'icons/avg_antivirus.png', 'Free AVG Antivirus Checker', '', 'antivirus lookup, free virus checker, avg online', '<p>Enter more information about the AVG Antivirus Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '31', 'no'),
(32, 'Link Price Calculator', 'link-price-calculator', 'PR32', 'icons/link_price_calculator.png', 'Link Price Calculator', '', 'seo price calculator, link worth calculator, check price of domain', '&lt;p&gt;Information about the Link Price Calculator tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Link Price Calculator will help you to find out the estimated price that should be charged or paid for a particular domain. Just enter the URL and click on &amp;#39;Calculate Link Price&amp;#39; button.&lt;/p&gt;', 'no', 'yes', '32', 'no'),
(33, 'Website Screenshot Generator', 'website-screenshot-generator', 'PR33', 'icons/website_screenshot_generator.png', 'Website Screenshot Generator', '', 'browser screenshot generator, website snapshot generator, website thumbnail', '<p>Enter more information about the Website Screenshot Generator tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '33', 'no'),
(34, 'Domain Hosting Checker', 'domain-hosting-checker', 'PR34', 'icons/domain_hosting_checker.png', 'Get your Domain Hosting Checker', '', 'get hosting name, hosting isp name, domain hosting', '<p>Enter more information about the Domain Hosting Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '34', 'no'),
(35, 'Get Source Code of Webpage', 'get-source-code-of-webpage', 'PR35', 'icons/source_code.png', 'Get Source Code of Webpage', '', 'web page source code, source of web page, get source code', '&lt;p&gt;Information about the Get Source Code of Webpage tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Source code is&amp;nbsp;a human-readable text written in a specific programming language. The goal of the source code is to set exact rules and specifications for the computer that can be translated into the machine&amp;#39;s language.&lt;/p&gt;', 'no', 'yes', '35', 'no'),
(36, 'Google Index Checker', 'google-index-checker', 'PR36', 'icons/google_index_checker.png', 'Google Index Checker', '', 'google site index checker, google index search, check google index online', '&lt;p&gt;Information about the Google Index Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Google continuously visits millions of websites and creates an index for each website that gets its interest. However, it may not index every site that it visits. If Google does not find keywords, names, or topics that are of interest, it will likely not index it.&lt;/p&gt;', 'no', 'yes', '36', 'no'),
(37, 'Website Links Count Checker', 'website-links-count-checker', 'PR37', 'icons/links_count_checker.png', 'Website Links Count Checker', '', 'online links counter, get webpage links, link extract', '&lt;p&gt;Information about the Website Links Count Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most important aspects of a website that most website owners worry about is the number link they have on their web pages, both internal and external links. Because the more and quality links a website has, the higher it will be ranked by search engines like Google.&lt;/p&gt;', 'no', 'yes', '37', 'no'),
(38, 'Class C Ip Checker', 'class-c-ip-checker', 'PR38', 'icons/class_c_ip.png', 'Class C Ip Checker', '', 'class c ip address, class c rang, get class c ip', '<p>Enter more information about the Class C Ip Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '38', 'no'),
(39, 'Online Md5 Generator', 'online-md5-generator', 'PR39', 'icons/online_md5_generator.png', 'Online Md5 Generator', '', 'create md5 hash, calculate md5 hash online, md5 key generator', '&lt;p&gt;Information about the Online Md5 Generator tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;This is an easy to use tool that enables you to generate the MD5 hash of a string. In order to use the tool, enter the text you want to convert to MD5 below and click on &amp;lsquo;Generate&amp;rsquo; button.&lt;/p&gt;', 'no', 'yes', '39', 'no'),
(40, 'Page Speed Checker', 'page-speed-checker', 'PR40', 'icons/page_speed.png', 'Page Speed Checker', '', 'page load speed, web page speed, faster page load', '&lt;p&gt;Information about the Page Speed Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;Website Speed&amp;rdquo; is also known as the &amp;ldquo;Website Load Time&amp;rdquo; this refers to the amount of time that a user needs to spend to show all the content of a specific web page. It is also the time that a web browser takes to get the information from the server. Internet users don&amp;rsquo;t want to wait too long that is why website speed is one of the critical components when it comes to classifying the pagespeed insights.&lt;/p&gt;', 'no', 'yes', '40', 'no'),
(41, 'Code to Text Ratio Checker', 'code-to-text-ratio-checker', 'PR41', 'icons/code_to_text.png', 'Code to Text Ratio Checker', '', 'code to text ratio html, webpage text ratio, online ratio checker', '<p>Enter more information about the Code to Text Ratio Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '41', 'no'),
(42, 'Find DNS records', 'find-dns-records', 'PR42', 'icons/dns.png', 'Find DNS records', '', 'dns record checker, get dns of my domain, dns lookup', '&lt;p&gt;Information about the Find DNS records tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;There are millions of websites live and operational on the internet. They are hosted and managed by web servers that are located all over the world. To find a website and where it&amp;rsquo;s being hosted from requires a directory, without which it would be virtually impossible to find websites. DNS stands for Domain Name System which is the largest digital database for the internet in the world. This database contains information about every website in the world. Every website and every machine that comes on the internet has an IP address which is a digital address. The domain name of a website is stored along with its IP address in this database. The data files that tell a web server how to respond to a request by a search browser are known as DNS records.&lt;/p&gt;', 'no', 'yes', '42', 'no'),
(43, 'What is my Browser', 'what-is-my-browser', 'PR43', 'icons/what_is_my_browser.png', 'What is my Browser', '', 'what is a browser, get browser info, detect browser', '&lt;p&gt;Information about the What is my Browser tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;The browser is a software application that allows you to visit web pages while using the internet. Some of the most popular browsers include Google Chrome, Safari, Firefox, and Internet Explorer. At present, Google Chrome is the most widely used browser in the world, and it is also considered as one of the most convenient, secure, and fastest browser.&lt;/p&gt;', 'no', 'yes', '43', 'no'),
(44, 'Email Privacy', 'email-privacy', 'PR44', 'icons/email_privacy.png', 'Email Privacy', '', 'email privacy issues, email security, email privacy at web page', '&lt;p&gt;Information about the Email Privacy tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Giving out an email address openly make the websites as well as webmasters highly vulnerable. Email address search is the tool that searches for email address that is available on a particular website while helping the websites owners and SEOs to ensure complete security. The email finder helps webmasters to address the privacy concerns that can possibly lead unexpected situations.&lt;/p&gt;', 'no', 'yes', '44', 'no'),
(45, 'Google Cache Checker', 'google-cache-checker', 'PR45', 'icons/google_cache.png', 'Google Cache Checker', '', 'cache checker, google cache, web page cache', '&lt;p&gt;Information about the Google Cache Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Google Cache checker is a tool to view cached pages and to find out the exact date and time your web page was cached. Google&amp;#39;s cache is a snapshot of the page. Google takes a snapshot of each web page and stores (caches) that snapshot as a back-up.&lt;/p&gt;', 'no', 'yes', '45', 'no'),
(46, 'Broken Links Finder', 'broken-links-finder', 'PR46', 'icons/broken_links.png', 'Broken Links Finder', '', '404 links, broken links, broken web page links', '&lt;p&gt;Information about the Broken Links Finder tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Broken links make the user experience very unpleasant, and can damage the reputation of your website.&amp;nbsp;When you click on a link that is supposed to take you to a particular page, yet instead it takes you to another page that shows a 404 error message - this is called a broken link.&lt;/p&gt;', 'no', 'yes', '46', 'no'),
(47, 'Search Engine Spider Simulator', 'spider-simulator', 'PR47', 'icons/spider_simulator.png', 'Search Engine Spider Simulator', '', 'spider simulator, web crawler simulator, search engine spider', '&lt;p&gt;Information about the Search Engine Spider Simulator tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Search engine spider simulator shows how the Search Engine &amp;ldquo;See&amp;rdquo; a website page. It simulates information regarding your website&amp;rsquo;s page that how Google search engine spiders read a website page and display all the results as it is seen by search engine spiders.&lt;/p&gt;', 'no', 'yes', '47', 'no'),
(48, 'Keywords Suggestion Tool', 'keywords-suggestion-tool', 'PR48', 'icons/keywords_suggestion.png', 'Keywords Suggestion Tool', '', 'keywords suggestion, suggestion tool, keywords maker', '&lt;p&gt;Information about the Keywords Suggestion Tool tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;Our free&amp;nbsp;Keyword Analysis Tool&amp;nbsp;will automatically tap from our industry-leading database of billions of keywords to provide you with a list of suggested keywords for the seed keyword you entered. With these, you can expect an extensive, unique, and actionable keyword suggestions for free to grow your search traffic and expand your reach.&lt;/p&gt;', 'no', 'yes', '48', 'no'),
(49, 'Domain Authority Checker', 'domain-authority-checker', 'PR49', 'icons/domain_authority.png', 'Bulk Domain Authority Checker', '', 'domain authority, seo moz, domain score', '<p>Enter more information about the Domain Authority Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '49', 'no'),
(50, 'Page Authority Checker', 'page-authority-checker', 'PR50', 'icons/page_authority.png', 'Bulk Page Authority Checker', '', 'page authority, moz rank check, page score', '<p>Enter more information about the Page Authority Checker tool! </p> <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>', 'no', 'no', '50', 'no'),
(51, 'Pagespeed Insights Checker', 'pagespeed-insights-checker', 'SD51', 'icons/google_pagespeed.png', 'Google Pagespeed Insights Checker', '', 'pagespeed, pagespeed google, insights score', '&lt;p&gt;Information about the Pagespeed Insights Checker tool!&lt;/p&gt;\r\n\r\n&lt;p&gt;As a search engine, Google has billions of webpages in its indexing system. For it to be able to appropriately rank each of these pages, it does use a mathematical algorithm called PageRank (or PR for short). Given that PageRank plays an important role in how Google ranks websites, it&amp;#39;s always a good thing to find out the PR of your website and even that of your competition to know where you stand, so that you are better equipped to navigate your webpages to the top of search engine results pages (SERPs).&lt;/p&gt;', 'no', 'yes', '51', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `site_info`
--

CREATE TABLE `site_info` (
  `id` int(11) NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `des` text DEFAULT NULL,
  `keyword` mediumtext DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `social_links` text DEFAULT NULL,
  `doForce` text DEFAULT NULL,
  `copyright` text DEFAULT NULL,
  `other_settings` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `site_info`
--

INSERT INTO `site_info` (`id`, `title`, `des`, `keyword`, `site_name`, `email`, `social_links`, `doForce`, `copyright`, `other_settings`) VALUES
(1, 'InstructorsLab', '', '', 'InstructorsLab', 'ilab@ilab.com', '{\"face\":\"https:\\/\\/facebook.com\\/\",\"twit\":\"https:\\/\\/twitter.com\",\"gplus\":\"https:\\/\\/plus.google.com\",\"linkedin\":\"https:\\/\\/linkedin.com\"}', '[\"\",\"\"]', 'Copyright © 2022 InstructorsLab. All rights reserved.', '{\"other\":{\"ga\":\"\",\"footer_tags\":\"seo, turbo, balaji\",\"ddos_check\":\"\",\"ddos\":\"\",\"maintenance\":\"\",\"maintenance_mes\":\"We expect to be back within the hour.&lt;br\\/&gt;Sorry for the inconvenience.\",\"dbbackup\":{\"cronopt\":\"daily\"},\"ddosLimit\":\"15\",\"sitemap\":{\"cronopt\":\"daily\",\"freqrange\":\"daily\",\"priority\":\"0.9\",\"gzip\":\"\",\"cron\":\"\",\"multilingual\":\"\",\"auto\":\"\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `themes_data`
--

CREATE TABLE `themes_data` (
  `id` int(11) NOT NULL,
  `default_theme` text DEFAULT NULL,
  `simpleX_theme` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `themes_data`
--

INSERT INTO `themes_data` (`id`, `default_theme`, `simpleX_theme`) VALUES
(1, '{\"general\":{\"imgLogo\":\"on\",\"htmlLogo\":\"{{site_name}}\",\"logo\":\"uploads\\/51165355_ilab-logo.png\",\"favicon\":\"uploads\\/favicon.ico\",\"langSwitch\":\"\",\"sidebar\":\"right\",\"sSearch\":\"\",\"iSearch\":\"1\",\"browseBtn\":\"1\",\"topTools\":[\"PR02\",\"PR08\",\"PR19\",\"PR22\",\"PR24\"]},\"contact\":{\"about\":\"Our aim to make search engine optimization (SEO) easy. We provide simple, professional-quality SEO analysis and critical SEO monitoring for websites. By making our tools intuitive and easy to understand, we&#039;ve helped thousands of small-business owners, webmasters and SEO professionals improve their online presence.\"},\"custom\":{\"css\":\".col-md-8 {\\\\r\\\\n    width: 100%;\\\\r\\\\n}\"}}', '{\"general\":{\"imgLogo\":\"on\",\"htmlLogo\":\"&lt;i class=&quot;fa fa-cubes iconBig&quot;&gt;&lt;\\/i&gt; {{site_name}}\",\"logo\":\"theme\\/default\\/img\\/logo.png\",\"favicon\":\"theme\\/default\\/img\\/favicon.ico\",\"langSwitch\":true,\"sidebar\":\"right\",\"sSearch\":true,\"iSearch\":true,\"browseBtn\":false,\"topTools\":[\"PR02\",\"PR08\",\"PR19\",\"PR22\",\"PR24\"]},\"contact\":{\"about\":\"Our aim to make search engine optimization (SEO) easy. We provide simple, professional-quality SEO analysis and critical SEO monitoring for websites. By making our tools intuitive and easy to understand, we\\\\\'ve helped thousands of small-business owners, webmasters and SEO professionals improve their online presence.\"},\"custom\":{\"css\":\"\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_uid` text DEFAULT NULL,
  `username` text DEFAULT NULL,
  `email_id` text DEFAULT NULL,
  `full_name` text DEFAULT NULL,
  `platform` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `verified` text DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `added_date` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `telephone` text DEFAULT NULL,
  `address1` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `statestr` text DEFAULT NULL,
  `postcode` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `userdata` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_input_history`
--

CREATE TABLE `user_input_history` (
  `id` int(11) NOT NULL,
  `visitor_ip` text DEFAULT NULL,
  `tool_name` text DEFAULT NULL,
  `user` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `user_input` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_input_history`
--

INSERT INTO `user_input_history` (`id`, `visitor_ip`, `tool_name`, `user`, `date`, `user_input`) VALUES
(1, '::1', 'Domain Age Checker', 'Guest', '10/17/2022 06:41:03AM', 'http://google.com'),
(2, '::1', 'Domain Age Checker', 'Guest', '10/17/2022 06:41:25AM', 'http://alimul.com'),
(3, '::1', 'Whois Checker', 'Guest', '10/17/2022 06:43:05AM', 'http://alimul.com'),
(4, '::1', 'Domain into IP', 'Guest', '10/17/2022 12:13:55PM', 'http://alimul.com'),
(5, '::1', 'Mozrank Checker', 'Guest', '10/17/2022 12:14:41PM', 'NULL'),
(6, '::1', 'Server Status Checker', 'Guest', '10/17/2022 12:15:27PM', 'google.com'),
(7, '::1', 'Domain Age Checker', 'Guest', '10/17/2022 06:51:12AM', 'http://alimul.com'),
(8, '::1', 'Domain Age Checker', 'Guest', '10/17/2022 06:56:27AM', 'http://alimul.com'),
(9, '::1', 'Page Speed Checker', 'Guest', '10/17/2022 12:42:36PM', 'http://alimul.com'),
(10, '::1', 'Article Rewriter', 'Guest', '10/17/2022 12:44:56PM', 'Something nice need to study for me.'),
(11, '::1', 'Meta Tag Generator', 'Guest', '10/17/2022 12:51:35PM', 'NULL'),
(12, '::1', 'Meta Tags Analyzer', 'Guest', '10/17/2022 12:52:02PM', 'http://alimul.com'),
(13, '::1', 'Whois Checker', 'Guest', '10/17/2022 02:40:26PM', 'http://facebook.com'),
(14, '::1', 'Whois Checker', 'Guest', '10/17/2022 02:40:51PM', 'http://google.com'),
(15, '::1', 'Domain Age Checker', 'Guest', '10/17/2022 02:41:23PM', 'http://google.com'),
(16, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:05:02AM', 'http://google.com'),
(17, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:06:13AM', 'http://uttarauniversity.edu.bd'),
(18, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:06:49AM', 'http://facebook.com'),
(19, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:07:40AM', 'http://uttarauniversity.edu.bd'),
(20, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:08:34AM', 'http://youtube.com'),
(21, '::1', 'Pagespeed Insights Checker', 'Guest', '11/29/2022 01:09:08AM', 'http://google.com'),
(22, '::1', 'Whois Checker', 'Guest', '11/29/2022 01:10:33AM', 'http://uttarauniversity.edu.bd'),
(23, '::1', 'Whois Checker', 'Guest', '11/28/2022 07:40:51PM', 'http://google.com'),
(24, '::1', 'Domain Age Checker', 'Guest', '11/29/2022 01:11:40AM', 'http://uttarauniversity.edu.bd'),
(25, '::1', 'Domain Age Checker', 'Guest', '11/28/2022 07:42:03PM', 'http://google.com'),
(26, '::1', 'Article Rewriter', 'Guest', '11/29/2022 01:14:17AM', 'Monkeypox can spread from person to person through direct contact with the infectious rash, scabs, or body fluids. It also can be spread by respiratory secretions during...'),
(27, '::1', 'Get Source Code of Webpage', 'Guest', '11/29/2022 01:18:50AM', 'http://google.com'),
(28, '::1', 'Server Status Checker', 'Guest', '11/29/2022 01:19:33AM', 'google.com'),
(29, '::1', 'Server Status Checker', 'Guest', '11/29/2022 01:20:03AM', 'facebook.com facebook.commmm...'),
(30, '::1', 'Article Rewriter', 'Guest', '12/07/2022 03:01:38PM', 'Article Rewriter is a free, automatic article rewriter that will rewrite any given text into readable text along. To use this Article Rewriter, please copy and paste your content...'),
(31, '::1', 'Meta Tag Generator', 'Guest', '12/07/2022 03:16:25PM', 'NULL'),
(32, '::1', 'Meta Tags Analyzer', 'Guest', '12/07/2022 03:19:15PM', 'http://google.com'),
(33, '::1', 'Meta Tags Analyzer', 'Guest', '12/07/2022 03:19:45PM', 'http://uttarauniversity.edu.bd'),
(34, '::1', 'Meta Tags Analyzer', 'Guest', '12/07/2022 03:20:23PM', 'http://facebook.com'),
(35, '::1', 'Backlink Checker', 'Guest', '12/07/2022 04:03:01PM', 'http://google.com'),
(36, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:06:22PM', 'http://www.google.com'),
(37, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:06:47PM', 'http://www.prothoalo.com'),
(38, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:07:11PM', 'http://www.wordpress.org'),
(39, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:07:50PM', 'http://www.prothomalo.com/'),
(40, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:08:29PM', 'http://www.10minuteschool.com'),
(41, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:11:56PM', 'http://www.uttarauniversity.edu.bd'),
(42, '::1', 'Alexa Rank Checker', 'Guest', '12/07/2022 04:12:14PM', 'http://www.buet.ac.bd'),
(43, '::1', 'Link Analyzer', 'Guest', '12/07/2022 04:24:48PM', 'http://google.com'),
(44, '::1', 'Link Analyzer', 'Guest', '12/07/2022 04:25:32PM', 'http://uttarauniversity.edu.bd'),
(45, '::1', 'Link Analyzer', 'Guest', '12/07/2022 04:27:21PM', 'http://10minuteschool.com'),
(46, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:29:36PM', 'http://10minuteschool.com'),
(47, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:31:21PM', 'http://uttarauniversity.edu.bd'),
(48, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:32:05PM', 'http://facebook.com'),
(49, '::1', 'Keyword Density Checker', 'Guest', '12/07/2022 04:32:37PM', 'http://buet.ac.bd'),
(50, '::1', 'Domain Age Checker', 'Guest', '12/07/2022 04:39:40PM', 'http://uttarauniversity.edu.bd'),
(51, '::1', 'Domain Age Checker', 'Guest', '12/07/2022 04:39:51PM', 'http://buet.ac.bd'),
(52, '::1', 'Domain Age Checker', 'Guest', '12/07/2022 11:10:03AM', 'http://facebook.com'),
(53, '::1', 'Domain Age Checker', 'Guest', '12/07/2022 11:13:51AM', 'http://youtube.com'),
(54, '::1', 'Whois Checker', 'Guest', '12/07/2022 11:14:50AM', 'http://youtube.com'),
(55, '::1', 'Whois Checker', 'Guest', '12/07/2022 04:45:17PM', 'http://buet.ac.bd'),
(56, '::1', 'Whois Checker', 'Guest', '12/07/2022 04:45:32PM', 'http://uttarauniversity.edu.bd'),
(57, '::1', 'Whois Checker', 'Guest', '12/07/2022 11:15:58AM', 'http://prothomalo.com'),
(58, '::1', 'Whois Checker', 'Guest', '12/07/2022 11:17:15AM', 'http://10minuteschool.com'),
(59, '::1', 'Whois Checker', 'Guest', '12/07/2022 11:18:36AM', 'http://bdjobs.com'),
(60, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:50:54PM', 'http://bdjobs.com'),
(61, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:51:15PM', 'http://google.com'),
(62, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:51:48PM', 'http://uttarauniversity.edu.bd'),
(63, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:52:20PM', 'http://prothomalo.com'),
(64, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:52:51PM', 'http://google.com'),
(65, '::1', 'Domain into IP', 'Guest', '12/07/2022 04:53:20PM', 'http://youtube.com'),
(66, '::1', 'URL Rewriting Tool', 'Guest', '12/07/2022 04:54:26PM', 'http://www.example.com/test.php?firstid=1&amp;amp;secondid=10'),
(67, '::1', 'www Redirect Checker', 'Guest', '12/07/2022 04:55:42PM', 'NULL'),
(68, '::1', 'www Redirect Checker', 'Guest', '12/07/2022 04:55:57PM', 'NULL'),
(69, '::1', 'www Redirect Checker', 'Guest', '12/07/2022 04:56:30PM', 'NULL'),
(70, '::1', 'Mozrank Checker', 'Guest', '12/07/2022 04:57:56PM', 'NULL'),
(71, '::1', 'URL Encoder / Decoder', 'Guest', '12/07/2022 04:58:57PM', 'facebook.com/nice-man'),
(72, '::1', 'Server Status Checker', 'Guest', '12/07/2022 04:59:46PM', 'facebook.com google.com prothomalo.com youtube.com...'),
(73, '::1', 'Server Status Checker', 'Guest', '12/07/2022 05:03:57PM', 'uttarauniversity.edu.bd'),
(74, '::1', 'Page Size Checker', 'Guest', '12/07/2022 05:10:12PM', 'http://google.com'),
(75, '::1', 'Page Size Checker', 'Guest', '12/07/2022 05:10:56PM', 'http://prothomalo.com'),
(76, '::1', 'Blacklist Lookup', 'Guest', '12/07/2022 05:14:07PM', 'http://youtube.com'),
(77, '::1', 'Blacklist Lookup', 'Guest', '12/07/2022 05:15:03PM', 'http://iptorrents.com'),
(78, '::1', 'Suspicious Domain Checker', 'Guest', '12/07/2022 05:18:23PM', 'youtube.com facebook.com...'),
(79, '::1', 'Suspicious Domain Checker', 'Guest', '12/07/2022 05:19:55PM', 'http://www.bpsc.gov.bd'),
(80, '::1', 'Link Price Calculator', 'Guest', '12/07/2022 05:20:55PM', 'youtube.com'),
(81, '::1', 'Link Price Calculator', 'Guest', '12/07/2022 05:21:14PM', 'uttarauniversity.edu.bd'),
(82, '::1', 'Link Price Calculator', 'Guest', '12/07/2022 05:21:33PM', 'prothomalo.com'),
(83, '::1', 'Link Price Calculator', 'Guest', '12/07/2022 05:22:32PM', 'buet.ac.bd'),
(84, '::1', 'Domain Hosting Checker', 'Guest', '12/07/2022 05:25:17PM', 'http://prothomalo.com'),
(85, '::1', 'Domain Hosting Checker', 'Guest', '12/07/2022 05:25:39PM', 'http://youtube.com'),
(86, '::1', 'Domain Hosting Checker', 'Guest', '12/07/2022 05:27:42PM', 'http://trickbd.com'),
(87, '::1', 'Get Source Code of Webpage', 'Guest', '12/07/2022 05:29:03PM', 'http://youtube.com'),
(88, '::1', 'Google Index Checker', 'Guest', '12/07/2022 05:31:36PM', 'http://10minuteschool.com'),
(89, '::1', 'Website Links Count Checker', 'Guest', '12/07/2022 05:32:57PM', 'http://google.com'),
(90, '::1', 'Class C Ip Checker', 'Guest', '12/07/2022 05:35:00PM', 'youtube.com facebook.com google.com 10minuteschool.com prothomalo.com...'),
(91, '::1', 'Online Md5 Generator', 'Guest', '12/07/2022 05:36:36PM', 'text'),
(92, '::1', 'Online Md5 Generator', 'Guest', '12/07/2022 05:36:53PM', 'someting'),
(93, '::1', 'Page Speed Checker', 'Guest', '12/07/2022 05:38:44PM', 'http://google.com'),
(94, '::1', 'Code to Text Ratio Checker', 'Guest', '12/07/2022 05:40:23PM', 'http://google.com'),
(95, '::1', 'Code to Text Ratio Checker', 'Guest', '12/07/2022 05:40:51PM', 'http://prothomalo.com'),
(96, '::1', 'Code to Text Ratio Checker', 'Guest', '12/07/2022 05:41:09PM', 'http://10minuteschool.com'),
(97, '::1', 'Find DNS records', 'Guest', '12/07/2022 05:41:52PM', 'http://bdjobs.com'),
(98, '::1', 'Email Privacy', 'Guest', '12/07/2022 05:45:34PM', 'http://10minuteschool.com'),
(99, '::1', 'Email Privacy', 'Guest', '12/07/2022 05:46:01PM', 'http://uttarauniversity.edu.bd'),
(100, '::1', 'Email Privacy', 'Guest', '12/07/2022 05:46:30PM', 'http://prothomalo.com'),
(101, '::1', 'Broken Links Finder', 'Guest', '12/07/2022 05:51:29PM', 'http://10minuteschool.com'),
(102, '::1', 'Search Engine Spider Simulator', 'Guest', '12/07/2022 05:54:46PM', 'http://prothomalo.com'),
(103, '::1', 'Keywords Suggestion Tool', 'Guest', '12/07/2022 05:56:44PM', 'social media marketing'),
(104, '::1', 'Keywords Suggestion Tool', 'Guest', '12/07/2022 05:57:05PM', 'project ideas'),
(105, '::1', 'Pagespeed Insights Checker', 'Guest', '12/07/2022 06:01:11PM', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` int(11) NOT NULL,
  `enable_reg` text DEFAULT NULL,
  `enable_oauth` text DEFAULT NULL,
  `enable_quick` text DEFAULT NULL,
  `oauth_keys` text DEFAULT NULL,
  `other_settings` text DEFAULT NULL,
  `visitors_limit` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `enable_reg`, `enable_oauth`, `enable_quick`, `oauth_keys`, `other_settings`, `visitors_limit`) VALUES
(1, '', '', '', '{\"oauth\":{\"g_client_id\":\"\",\"g_client_secret\":\"\",\"g_redirect_uri\":\"http:\\/\\/localhost\\/ilab\\/?route=google\",\"fb_app_id\":\"\",\"fb_app_secret\":\"\",\"fb_redirect_uri\":\"http:\\/\\/localhost\\/ilab\\/?route=facebook\",\"twitter_key\":\"\",\"twitter_secret\":\"\",\"twitter_redirect_uri\":\"http:\\/\\/localhost\\/ilab\\/twitter\"}}', '', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_history`
--
ALTER TABLE `admin_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banned_ip`
--
ALTER TABLE `banned_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capthca`
--
ALTER TABLE `capthca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ddos`
--
ALTER TABLE `ddos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interface`
--
ALTER TABLE `interface`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pr02`
--
ALTER TABLE `pr02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pr24`
--
ALTER TABLE `pr24`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainbowphp_temp`
--
ALTER TABLE `rainbowphp_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainbow_track`
--
ALTER TABLE `rainbow_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_history`
--
ALTER TABLE `recent_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_tools`
--
ALTER TABLE `seo_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_info`
--
ALTER TABLE `site_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes_data`
--
ALTER TABLE `themes_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_input_history`
--
ALTER TABLE `user_input_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_history`
--
ALTER TABLE `admin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banned_ip`
--
ALTER TABLE `banned_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `capthca`
--
ALTER TABLE `capthca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ddos`
--
ALTER TABLE `ddos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interface`
--
ALTER TABLE `interface`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pr02`
--
ALTER TABLE `pr02`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pr24`
--
ALTER TABLE `pr24`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainbowphp_temp`
--
ALTER TABLE `rainbowphp_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rainbow_track`
--
ALTER TABLE `rainbow_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recent_history`
--
ALTER TABLE `recent_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `seo_tools`
--
ALTER TABLE `seo_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `site_info`
--
ALTER TABLE `site_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `themes_data`
--
ALTER TABLE `themes_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_input_history`
--
ALTER TABLE `user_input_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
