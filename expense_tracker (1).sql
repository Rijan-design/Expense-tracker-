-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 03:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expense_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add messages', 7, 'add_messages'),
(26, 'Can change messages', 7, 'change_messages'),
(27, 'Can delete messages', 7, 'delete_messages'),
(28, 'Can view messages', 7, 'view_messages'),
(29, 'Can add expense', 8, 'add_expense'),
(30, 'Can change expense', 8, 'change_expense'),
(31, 'Can delete expense', 8, 'delete_expense'),
(32, 'Can view expense', 8, 'view_expense'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add admin', 10, 'add_admin'),
(38, 'Can change admin', 10, 'change_admin'),
(39, 'Can delete admin', 10, 'delete_admin'),
(40, 'Can view admin', 10, 'view_admin'),
(41, 'Can add category', 11, 'add_category'),
(42, 'Can change category', 11, 'change_category'),
(43, 'Can delete category', 11, 'delete_category'),
(44, 'Can view category', 11, 'view_category'),
(45, 'Can add product_user', 9, 'add_product_user'),
(46, 'Can change product_user', 9, 'change_product_user'),
(47, 'Can delete product_user', 9, 'delete_product_user'),
(48, 'Can view product_user', 9, 'view_product_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$bJ5F8ZXXLsHLzyvEeNLT8v$ul4krdzz3nOyEUoeEP8Jw/+0ebDttAD0808RYWiVir0=', '2021-09-19 11:10:13.444651', 1, 'my_user', '', '', 'myuser@gmail.com', 1, 1, '2021-09-19 11:09:19.449348'),
(2, 'pbkdf2_sha256$260000$ME4g8HPxEjSVpcKZZcefY7$2ETakOSBjt9w519JfCdztx64GdiD37bhZTl/Y4Kp6fY=', NULL, 0, 'Romall', '', '', '', 0, 1, '2021-09-19 14:33:39.039779');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-19 12:13:52.654123', '1', 'User1', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'expense', 'admin'),
(11, 'expense', 'category'),
(8, 'expense', 'expense'),
(7, 'expense', 'messages'),
(9, 'expense', 'product_user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-19 11:06:58.795394'),
(2, 'auth', '0001_initial', '2021-09-19 11:07:16.517814'),
(3, 'admin', '0001_initial', '2021-09-19 11:07:20.756938'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-19 11:07:20.801601'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-19 11:07:20.840951'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-19 11:07:21.526924'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-19 11:07:23.065280'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-19 11:07:23.579085'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-19 11:07:23.674032'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-19 11:07:24.961974'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-19 11:07:24.988796'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-19 11:07:25.072682'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-19 11:07:25.178753'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-19 11:07:25.311299'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-19 11:07:25.515141'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-19 11:07:25.725398'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-19 11:07:25.925132'),
(18, 'sessions', '0001_initial', '2021-09-19 11:07:26.917549'),
(19, 'expense', '0001_initial', '2021-09-19 12:01:35.932833'),
(20, 'expense', '0002_alter_user_user_passcode', '2021-09-19 12:13:12.367853'),
(21, 'expense', '0003_alter_user_user_passcode', '2021-09-19 13:43:04.256839'),
(22, 'expense', '0004_auto_20210919_1947', '2021-09-19 14:48:06.473468'),
(23, 'expense', '0005_auto_20210919_1951', '2021-09-19 14:52:00.615946'),
(24, 'expense', '0006_auto_20210921_0155', '2021-09-20 20:55:26.062068'),
(25, 'expense', '0007_alter_expense_exp_category', '2021-09-21 00:32:57.182877'),
(26, 'expense', '0008_alter_messages_msg_time', '2021-09-21 00:33:00.297861'),
(27, 'expense', '0009_rename_exp_category_expense_exp_category_id', '2021-09-21 00:33:07.190072'),
(28, 'expense', '0010_rename_exp_category_id_expense_exp_category', '2021-09-21 00:33:11.393335'),
(29, 'expense', '0011_rename_exp_category_expense_exp_category_id', '2021-09-21 00:33:46.365669'),
(30, 'expense', '0012_rename_exp_category_id_expense_exp_category', '2021-09-21 00:34:09.719974'),
(31, 'expense', '0013_messages_msg_reciever', '2021-09-21 00:37:37.741983');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('y6flymzw9hy1qnoxkmb0qmk3aohxs45q', '.eJxVjEEOwiAQRe_C2pCZAVpx6b5nIFOYStVAUtqV8e7apAvd_vfef6nA25rD1mQJc1IXher0u40cH1J2kO5cblXHWtZlHvWu6IM2PdQkz-vh_h1kbvlbk52EgEhAvGOPk-uxAwOu90Ae8AyWLSVw0UgnToxFFnAeyXpj0Kr3B6QWNdc:1mRui5:2aVdOKoAxZyhG4rHnxLuSQLK_NGN3OLgRCpexo8Z7CE', '2021-10-03 11:10:13.473712');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` bigint(20) NOT NULL,
  `cat_name` varchar(20) DEFAULT NULL,
  `cat_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `cat_name`, `cat_desc`) VALUES
(1, 'BBQ', 'We Love BBQ'),
(3, 'Swiming', 'Swimming can be tiresome, but it is also a very important excercise for muscles of our body.');

-- --------------------------------------------------------

--
-- Table structure for table `expense_expense`
--

CREATE TABLE `expense_expense` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `exp_category_id` bigint(20) NOT NULL,
  `exp_expense` varchar(11) DEFAULT NULL,
  `exp_status` varchar(5) DEFAULT NULL,
  `exp_time` date NOT NULL,
  `exp_desc` longtext NOT NULL,
  `exp_user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_expense`
--

INSERT INTO `expense_expense` (`id`, `product_name`, `exp_category_id`, `exp_expense`, `exp_status`, `exp_time`, `exp_desc`, `exp_user_id_id`) VALUES
(1, 'Beef', 1, '230', '1', '2021-09-16', 'Beef was expensive', 1),
(2, 'Beef', 1, '254', '0', '2020-02-01', 'Beef was expensive', 1),
(4, 'Popcorns', 3, '223', '0', '2021-09-14', 'Yayyy', 1),
(5, 'Ketchup', 1, '10', '0', '2021-09-08', 'Ketchup is a must.', 1),
(6, 'Cheese', 1, '4', '0', '2021-09-21', 'Cheesy', 1),
(7, 'Yogurt Cans', 1, '478', '0', '2021-08-29', 'Yogurt cans required for huge BBQ party', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense_messages`
--

CREATE TABLE `expense_messages` (
  `id` bigint(20) NOT NULL,
  `msg_content` longtext NOT NULL,
  `msg_time` datetime(6) NOT NULL,
  `msg_reciever_id_id` int(11) NOT NULL,
  `msg_sender_id_id` bigint(20) NOT NULL,
  `msg_reciever` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_messages`
--

INSERT INTO `expense_messages` (`id`, `msg_content`, `msg_time`, `msg_reciever_id_id`, `msg_sender_id_id`, `msg_reciever`) VALUES
(1, 'asfasgfa', '2021-09-08 00:00:00.000000', 1, 1, 'admin'),
(2, 'Hi admin. i need help please.', '2021-09-21 00:00:00.000000', 1, 1, 'admin'),
(3, 'Answer me pls', '2021-09-21 00:00:00.000000', 1, 1, 'admin'),
(5, 'Admin please reply me', '2021-09-21 05:34:41.589322', 1, 1, 'admin'),
(6, 'yes?', '2021-09-16 05:38:59.000000', 1, 1, 'user'),
(7, 'Sorry for late', '2021-09-21 13:38:59.000000', 1, 1, 'user'),
(8, 'Admin please reply me', '2021-09-21 05:41:39.629097', 1, 1, 'admin'),
(12, 'Admin dear??', '2021-09-21 05:45:25.810816', 1, 1, 'admin'),
(16, 'Admin dear??', '2021-09-21 05:49:51.316430', 1, 1, 'admin'),
(17, 'dear?', '2021-09-21 05:50:02.735367', 1, 1, 'admin'),
(18, 'are you listening?', '2021-09-21 05:50:17.733874', 1, 1, 'admin'),
(19, 'Admin please tell me the price of product', '2021-09-21 06:06:57.844905', 1, 1, 'admin'),
(20, 'ADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMINADMIN', '2021-09-21 06:15:57.454262', 1, 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `expense_product_user`
--

CREATE TABLE `expense_product_user` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_email` varchar(40) DEFAULT NULL,
  `user_pass` varchar(20) DEFAULT NULL,
  `user_passcode` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_product_user`
--

INSERT INTO `expense_product_user` (`id`, `user_name`, `user_email`, `user_pass`, `user_passcode`, `user_status`) VALUES
(1, 'User1', 'user1@gmail.com', 'user1123', '123456', '0'),
(2, 'userx', 'userx@gmail.com', 'userx123', NULL, '0'),
(3, 'usery', 'usery@gmail.com', 'usery123', NULL, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_expense`
--
ALTER TABLE `expense_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_expense_exp_user_id_id_10510df2_fk_expense_p` (`exp_user_id_id`),
  ADD KEY `expense_expense_exp_category_id_5a4a4355` (`exp_category_id`);

--
-- Indexes for table `expense_messages`
--
ALTER TABLE `expense_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_messages_msg_reciever_id_id_a9d4d87a_fk_auth_user_id` (`msg_reciever_id_id`),
  ADD KEY `expense_messages_msg_sender_id_id_f204567c_fk_expense_p` (`msg_sender_id_id`);

--
-- Indexes for table `expense_product_user`
--
ALTER TABLE `expense_product_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_expense`
--
ALTER TABLE `expense_expense`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense_messages`
--
ALTER TABLE `expense_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `expense_product_user`
--
ALTER TABLE `expense_product_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `expense_expense`
--
ALTER TABLE `expense_expense`
  ADD CONSTRAINT `expense_expense_exp_category_id_5a4a4355_fk_expense_category_id` FOREIGN KEY (`exp_category_id`) REFERENCES `expense_category` (`id`),
  ADD CONSTRAINT `expense_expense_exp_user_id_id_10510df2_fk_expense_p` FOREIGN KEY (`exp_user_id_id`) REFERENCES `expense_product_user` (`id`);

--
-- Constraints for table `expense_messages`
--
ALTER TABLE `expense_messages`
  ADD CONSTRAINT `expense_messages_msg_reciever_id_id_a9d4d87a_fk_auth_user_id` FOREIGN KEY (`msg_reciever_id_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `expense_messages_msg_sender_id_id_f204567c_fk_expense_p` FOREIGN KEY (`msg_sender_id_id`) REFERENCES `expense_product_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
