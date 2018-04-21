-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2018 年 04 月 21 日 15:16
-- 伺服器版本: 5.7.19
-- PHP 版本： 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `Mobile`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add maker', 7, 'add_maker'),
(20, 'Can change maker', 7, 'change_maker'),
(21, 'Can delete maker', 7, 'delete_maker'),
(22, 'Can add p model', 8, 'add_pmodel'),
(23, 'Can change p model', 8, 'change_pmodel'),
(24, 'Can delete p model', 8, 'delete_pmodel'),
(25, 'Can add pphoto', 9, 'add_pphoto'),
(26, 'Can change pphoto', 9, 'change_pphoto'),
(27, 'Can delete pphoto', 9, 'delete_pphoto'),
(28, 'Can add product', 10, 'add_product'),
(29, 'Can change product', 10, 'change_product'),
(30, 'Can delete product', 10, 'delete_product');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$zPoidq23Zdki$4pcbavQjDenpSBoKzomJv0bDUG1Km8kCoJyu6x3OOLY=', '2018-04-07 17:30:02.228516', 1, 'web_user', '', '', '', 1, 1, '2018-04-07 17:29:44.428045');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-04-07 17:30:19.542197', '1', 'Maker object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2018-04-07 17:31:55.384335', '2', 'Samsung', 1, '[{\"added\": {}}]', 7, 1),
(3, '2018-04-07 17:32:00.258521', '2', 'Samsung', 2, '[]', 7, 1),
(4, '2018-04-07 17:32:14.808764', '3', 'Sony', 1, '[{\"added\": {}}]', 7, 1),
(5, '2018-04-07 17:32:31.210295', '4', 'Apple', 1, '[{\"added\": {}}]', 7, 1),
(6, '2018-04-07 17:33:23.602773', '1', '紅茶店', 1, '[{\"added\": {}}]', 8, 1),
(7, '2018-04-07 17:34:17.676100', '2', '三爽', 1, '[{\"added\": {}}]', 8, 1),
(8, '2018-04-07 17:34:56.937617', '3', '索尼', 1, '[{\"added\": {}}]', 8, 1),
(9, '2018-04-07 17:35:50.221868', '4', '蘋果', 1, '[{\"added\": {}}]', 8, 1),
(10, '2018-04-11 14:46:02.035292', '1', 'U11', 1, '[{\"added\": {}}]', 10, 1),
(11, '2018-04-11 14:46:46.617859', '2', 'U12', 1, '[{\"added\": {}}]', 10, 1),
(12, '2018-04-11 16:27:31.581809', '1', '全新 HTC UltraPixel 3', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'MobileApp', 'maker'),
(8, 'MobileApp', 'pmodel'),
(9, 'MobileApp', 'pphoto'),
(10, 'MobileApp', 'product'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-04-07 16:56:42.626892'),
(2, 'auth', '0001_initial', '2018-04-07 16:56:43.000000'),
(3, 'admin', '0001_initial', '2018-04-07 16:56:43.083137'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-04-07 16:56:43.121620'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-04-07 16:56:43.208006'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-04-07 16:56:43.239691'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-04-07 16:56:43.274375'),
(8, 'auth', '0004_alter_user_username_opts', '2018-04-07 16:56:43.286674'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-04-07 16:56:43.326269'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-04-07 16:56:43.329067'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-04-07 16:56:43.345137'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-04-07 16:56:43.382517'),
(13, 'sessions', '0001_initial', '2018-04-07 16:56:43.430498'),
(14, 'MobileApp', '0001_initial', '2018-04-07 17:24:39.451715'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2018-04-07 17:24:39.491120');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('xlcd1ofrwer8iphzsln24xgfvz8ivvjc', 'MzYzNmNmYWVmZWQxMzQyZmRmNDk3NGI4YjZmN2RjMDVkODMyMWRhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0OTdiMjE1OGQwOGQ1MDc0NmFjM2JlOGUwYTVhMmJjMGVkMmUzNDhlIn0=', '2018-04-21 17:30:02.231971');

-- --------------------------------------------------------

--
-- 資料表結構 `MAKER`
--

CREATE TABLE `MAKER` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) COLLATE utf8_bin NOT NULL,
  `COUNTRY` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `MobileApp_maker`
--

CREATE TABLE `MobileApp_maker` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `country` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `MobileApp_maker`
--

INSERT INTO `MobileApp_maker` (`id`, `name`, `country`) VALUES
(1, 'HTC', '台灣'),
(2, 'Samsung', '韓國'),
(3, 'Sony', '日本'),
(4, 'Apple', '韓國'),
(5, 'OPPO', '大陸');

-- --------------------------------------------------------

--
-- 資料表結構 `MobileApp_pmodel`
--

CREATE TABLE `MobileApp_pmodel` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `url` varchar(200) COLLATE utf8_bin NOT NULL,
  `maker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `MobileApp_pmodel`
--

INSERT INTO `MobileApp_pmodel` (`id`, `name`, `url`, `maker_id`) VALUES
(1, '紅茶店', 'http://www.htc.com/tw/', 1),
(2, '三爽', 'http://www.samsung.com/', 2),
(3, '索尼', 'https://www.sony-xperia.com.tw', 3),
(4, '蘋果', 'https://www.apple.com/', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `MobileApp_pphoto`
--

CREATE TABLE `MobileApp_pphoto` (
  `id` int(11) NOT NULL,
  `description` varchar(20) COLLATE utf8_bin NOT NULL,
  `url` varchar(200) COLLATE utf8_bin NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `MobileApp_pphoto`
--

INSERT INTO `MobileApp_pphoto` (`id`, `description`, `url`, `product_id`) VALUES
(1, '全新 HTC UltraPixel 3', 'http://www.htc.com/assets/layout/img/pdp-2017/kv.jpg', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `MobileApp_product`
--

CREATE TABLE `MobileApp_product` (
  `id` int(11) NOT NULL,
  `nickname` varchar(15) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL,
  `year` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `MobileApp_product`
--

INSERT INTO `MobileApp_product` (`id`, `nickname`, `description`, `year`, `price`, `model_id`) VALUES
(1, 'U11', 'U11', 2017, 19600, 1),
(2, 'U12', 'U21', 2018, 21900, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `PMODEL`
--

CREATE TABLE `PMODEL` (
  `ID` int(11) NOT NULL,
  `MAKER` int(11) NOT NULL,
  `NAME` varchar(20) COLLATE utf8_bin NOT NULL,
  `URL` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `PPHOTO`
--

CREATE TABLE `PPHOTO` (
  `ID` int(11) NOT NULL,
  `PRODUCT` int(11) NOT NULL,
  `DESCRIPTION` varchar(20) COLLATE utf8_bin NOT NULL,
  `URL` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `ID` int(11) NOT NULL,
  `NICKNAME` varchar(15) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` text COLLATE utf8_bin NOT NULL,
  `YEAR` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `MODEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 資料表索引 `MAKER`
--
ALTER TABLE `MAKER`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `MobileApp_maker`
--
ALTER TABLE `MobileApp_maker`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `MobileApp_pmodel`
--
ALTER TABLE `MobileApp_pmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MobileApp_pmodel_maker_id_7c47fdb1_fk_MobileApp_maker_id` (`maker_id`);

--
-- 資料表索引 `MobileApp_pphoto`
--
ALTER TABLE `MobileApp_pphoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MobileApp_pphoto_product_id_05dd9f48_fk_MobileApp_product_id` (`product_id`);

--
-- 資料表索引 `MobileApp_product`
--
ALTER TABLE `MobileApp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MobileApp_product_model_id_b28d44bd_fk_MobileApp_pmodel_id` (`model_id`);

--
-- 資料表索引 `PMODEL`
--
ALTER TABLE `PMODEL`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MAKER` (`MAKER`);

--
-- 資料表索引 `PPHOTO`
--
ALTER TABLE `PPHOTO`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PRODUCT` (`PRODUCT`);

--
-- 資料表索引 `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MODEL` (`MODEL`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表 AUTO_INCREMENT `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表 AUTO_INCREMENT `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表 AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表 AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表 AUTO_INCREMENT `MAKER`
--
ALTER TABLE `MAKER`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `MobileApp_maker`
--
ALTER TABLE `MobileApp_maker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表 AUTO_INCREMENT `MobileApp_pmodel`
--
ALTER TABLE `MobileApp_pmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表 AUTO_INCREMENT `MobileApp_pphoto`
--
ALTER TABLE `MobileApp_pphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表 AUTO_INCREMENT `MobileApp_product`
--
ALTER TABLE `MobileApp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表 AUTO_INCREMENT `PMODEL`
--
ALTER TABLE `PMODEL`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `PPHOTO`
--
ALTER TABLE `PPHOTO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `PRODUCT`
--
ALTER TABLE `PRODUCT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的 Constraints `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的 Constraints `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的 Constraints `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的 Constraints `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的 Constraints `MobileApp_pmodel`
--
ALTER TABLE `MobileApp_pmodel`
  ADD CONSTRAINT `MobileApp_pmodel_maker_id_7c47fdb1_fk_MobileApp_maker_id` FOREIGN KEY (`maker_id`) REFERENCES `MobileApp_maker` (`id`);

--
-- 資料表的 Constraints `MobileApp_pphoto`
--
ALTER TABLE `MobileApp_pphoto`
  ADD CONSTRAINT `MobileApp_pphoto_product_id_05dd9f48_fk_MobileApp_product_id` FOREIGN KEY (`product_id`) REFERENCES `MobileApp_product` (`id`);

--
-- 資料表的 Constraints `MobileApp_product`
--
ALTER TABLE `MobileApp_product`
  ADD CONSTRAINT `MobileApp_product_model_id_b28d44bd_fk_MobileApp_pmodel_id` FOREIGN KEY (`model_id`) REFERENCES `MobileApp_pmodel` (`id`);

--
-- 資料表的 Constraints `PMODEL`
--
ALTER TABLE `PMODEL`
  ADD CONSTRAINT `FK_MAKER` FOREIGN KEY (`MAKER`) REFERENCES `MAKER` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `PPHOTO`
--
ALTER TABLE `PPHOTO`
  ADD CONSTRAINT `FK_PHOTO` FOREIGN KEY (`PRODUCT`) REFERENCES `PRODUCT` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`MODEL`) REFERENCES `PMODEL` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
