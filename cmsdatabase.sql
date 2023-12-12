-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 01:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmsdatabase`
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
  `id` int(11) NOT NULL,
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add attendance', 7, 'add_attendance'),
(26, 'Can change attendance', 7, 'change_attendance'),
(27, 'Can delete attendance', 7, 'delete_attendance'),
(28, 'Can view attendance', 7, 'view_attendance'),
(29, 'Can add courses', 8, 'add_courses'),
(30, 'Can change courses', 8, 'change_courses'),
(31, 'Can delete courses', 8, 'delete_courses'),
(32, 'Can view courses', 8, 'view_courses'),
(33, 'Can add session year model', 9, 'add_sessionyearmodel'),
(34, 'Can change session year model', 9, 'change_sessionyearmodel'),
(35, 'Can delete session year model', 9, 'delete_sessionyearmodel'),
(36, 'Can view session year model', 9, 'view_sessionyearmodel'),
(37, 'Can add subjects', 10, 'add_subjects'),
(38, 'Can change subjects', 10, 'change_subjects'),
(39, 'Can delete subjects', 10, 'delete_subjects'),
(40, 'Can view subjects', 10, 'view_subjects'),
(41, 'Can add students', 11, 'add_students'),
(42, 'Can change students', 11, 'change_students'),
(43, 'Can delete students', 11, 'delete_students'),
(44, 'Can view students', 11, 'view_students'),
(45, 'Can add student result', 12, 'add_studentresult'),
(46, 'Can change student result', 12, 'change_studentresult'),
(47, 'Can delete student result', 12, 'delete_studentresult'),
(48, 'Can view student result', 12, 'view_studentresult'),
(49, 'Can add staffs', 13, 'add_staffs'),
(50, 'Can change staffs', 13, 'change_staffs'),
(51, 'Can delete staffs', 13, 'delete_staffs'),
(52, 'Can view staffs', 13, 'view_staffs'),
(53, 'Can add online class room', 14, 'add_onlineclassroom'),
(54, 'Can change online class room', 14, 'change_onlineclassroom'),
(55, 'Can delete online class room', 14, 'delete_onlineclassroom'),
(56, 'Can view online class room', 14, 'view_onlineclassroom'),
(57, 'Can add notification student', 15, 'add_notificationstudent'),
(58, 'Can change notification student', 15, 'change_notificationstudent'),
(59, 'Can delete notification student', 15, 'delete_notificationstudent'),
(60, 'Can view notification student', 15, 'view_notificationstudent'),
(61, 'Can add notification staffs', 16, 'add_notificationstaffs'),
(62, 'Can change notification staffs', 16, 'change_notificationstaffs'),
(63, 'Can delete notification staffs', 16, 'delete_notificationstaffs'),
(64, 'Can view notification staffs', 16, 'view_notificationstaffs'),
(65, 'Can add leave report student', 17, 'add_leavereportstudent'),
(66, 'Can change leave report student', 17, 'change_leavereportstudent'),
(67, 'Can delete leave report student', 17, 'delete_leavereportstudent'),
(68, 'Can view leave report student', 17, 'view_leavereportstudent'),
(69, 'Can add leave report staff', 18, 'add_leavereportstaff'),
(70, 'Can change leave report staff', 18, 'change_leavereportstaff'),
(71, 'Can delete leave report staff', 18, 'delete_leavereportstaff'),
(72, 'Can view leave report staff', 18, 'view_leavereportstaff'),
(73, 'Can add feed back student', 19, 'add_feedbackstudent'),
(74, 'Can change feed back student', 19, 'change_feedbackstudent'),
(75, 'Can delete feed back student', 19, 'delete_feedbackstudent'),
(76, 'Can view feed back student', 19, 'view_feedbackstudent'),
(77, 'Can add feed back staffs', 20, 'add_feedbackstaffs'),
(78, 'Can change feed back staffs', 20, 'change_feedbackstaffs'),
(79, 'Can delete feed back staffs', 20, 'delete_feedbackstaffs'),
(80, 'Can view feed back staffs', 20, 'view_feedbackstaffs'),
(81, 'Can add attendance report', 21, 'add_attendancereport'),
(82, 'Can change attendance report', 21, 'change_attendancereport'),
(83, 'Can delete attendance report', 21, 'delete_attendancereport'),
(84, 'Can view attendance report', 21, 'view_attendancereport'),
(85, 'Can add admin hod', 22, 'add_adminhod'),
(86, 'Can change admin hod', 22, 'change_adminhod'),
(87, 'Can delete admin hod', 22, 'delete_adminhod'),
(88, 'Can view admin hod', 22, 'view_adminhod');

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_adminhod`
--

CREATE TABLE `cms_app_adminhod` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_app_adminhod`
--

INSERT INTO `cms_app_adminhod` (`id`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, '2023-11-12 14:45:18.563345', '2023-11-12 14:45:18.563345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_attendance`
--

CREATE TABLE `cms_app_attendance` (
  `id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `session_year_id_id` int(11) NOT NULL,
  `subject_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_attendancereport`
--

CREATE TABLE `cms_app_attendancereport` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `attendance_id_id` int(11) NOT NULL,
  `student_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_courses`
--

CREATE TABLE `cms_app_courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_app_courses`
--

INSERT INTO `cms_app_courses` (`id`, `course_name`, `created_at`, `updated_at`) VALUES
(1, 'MSc Com Science', '2023-11-12 23:40:37.017554', '2023-11-12 23:40:37.017554');

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_customuser`
--

CREATE TABLE `cms_app_customuser` (
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
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_app_customuser`
--

INSERT INTO `cms_app_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`) VALUES
(1, 'pbkdf2_sha256$600000$mXljvrwr5tdvWtGillT5pj$dt53knMD1tNvd08uZZ/8JcLlmRqeThDAAFqWSOwGnrI=', '2023-12-06 12:37:29.833135', 1, 'admin@gmail.com', '', '', 'admin@gmail.com', 1, 1, '2023-11-12 14:45:17.675424', '1'),
(2, 'pbkdf2_sha256$600000$y8YWvTY4xHA6MfSTgEKFAu$9I9wspH7d1gvUTTkJKv0DwqUosAJ1BD7mGoa6OOn8MM=', '2023-11-12 23:16:16.642483', 0, 'uel1', 'UEL', 'UEL', 'uel1@gmail.com', 0, 1, '2023-11-12 23:15:37.551816', '2');

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_customuser_groups`
--

CREATE TABLE `cms_app_customuser_groups` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_customuser_user_permissions`
--

CREATE TABLE `cms_app_customuser_user_permissions` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_feedbackstaffs`
--

CREATE TABLE `cms_app_feedbackstaffs` (
  `id` int(11) NOT NULL,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_feedbackstudent`
--

CREATE TABLE `cms_app_feedbackstudent` (
  `id` int(11) NOT NULL,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_leavereportstaff`
--

CREATE TABLE `cms_app_leavereportstaff` (
  `id` int(11) NOT NULL,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_leavereportstudent`
--

CREATE TABLE `cms_app_leavereportstudent` (
  `id` int(11) NOT NULL,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_notificationstaffs`
--

CREATE TABLE `cms_app_notificationstaffs` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_notificationstudent`
--

CREATE TABLE `cms_app_notificationstudent` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_onlineclassroom`
--

CREATE TABLE `cms_app_onlineclassroom` (
  `id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `room_pwd` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `session_years_id` int(11) NOT NULL,
  `started_by_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_sessionyearmodel`
--

CREATE TABLE `cms_app_sessionyearmodel` (
  `id` int(11) NOT NULL,
  `session_start_year` date NOT NULL,
  `session_end_year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_app_sessionyearmodel`
--

INSERT INTO `cms_app_sessionyearmodel` (`id`, `session_start_year`, `session_end_year`) VALUES
(1, '2023-11-16', '2024-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_staffs`
--

CREATE TABLE `cms_app_staffs` (
  `id` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `fcm_token` longtext NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_app_staffs`
--

INSERT INTO `cms_app_staffs` (`id`, `address`, `created_at`, `updated_at`, `fcm_token`, `admin_id`) VALUES
(1, 'RM20', '2023-11-12 23:15:38.277346', '2023-11-12 23:15:38.277346', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_studentresult`
--

CREATE TABLE `cms_app_studentresult` (
  `id` int(11) NOT NULL,
  `subject_exam_marks` double NOT NULL,
  `subject_assignment_marks` double NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `student_id_id` int(11) NOT NULL,
  `subject_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_students`
--

CREATE TABLE `cms_app_students` (
  `id` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `fcm_token` longtext NOT NULL,
  `admin_id` int(11) NOT NULL,
  `course_id_id` int(11) NOT NULL,
  `session_year_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cms_app_subjects`
--

CREATE TABLE `cms_app_subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `course_id_id` int(11) NOT NULL,
  `staff_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_app_subjects`
--

INSERT INTO `cms_app_subjects` (`id`, `subject_name`, `created_at`, `updated_at`, `course_id_id`, `staff_id_id`) VALUES
(1, 'Software Engineering', '2023-11-12 23:41:45.962747', '2023-11-12 23:41:45.962747', 1, 2);

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
(22, 'cms_app', 'adminhod'),
(7, 'cms_app', 'attendance'),
(21, 'cms_app', 'attendancereport'),
(8, 'cms_app', 'courses'),
(6, 'cms_app', 'customuser'),
(20, 'cms_app', 'feedbackstaffs'),
(19, 'cms_app', 'feedbackstudent'),
(18, 'cms_app', 'leavereportstaff'),
(17, 'cms_app', 'leavereportstudent'),
(16, 'cms_app', 'notificationstaffs'),
(15, 'cms_app', 'notificationstudent'),
(14, 'cms_app', 'onlineclassroom'),
(9, 'cms_app', 'sessionyearmodel'),
(13, 'cms_app', 'staffs'),
(12, 'cms_app', 'studentresult'),
(11, 'cms_app', 'students'),
(10, 'cms_app', 'subjects'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-09 13:43:19.782063'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-11-09 13:43:22.951524'),
(3, 'auth', '0001_initial', '2023-11-09 13:43:33.943650'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-11-09 13:43:39.473180'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-11-09 13:43:39.695370'),
(6, 'auth', '0004_alter_user_username_opts', '2023-11-09 13:43:40.252025'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-11-09 13:43:40.716372'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-11-09 13:43:41.047399'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-11-09 13:43:41.534471'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-11-09 13:43:41.768273'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-11-09 13:43:41.893696'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-11-09 13:43:42.445463'),
(13, 'auth', '0011_update_proxy_permissions', '2023-11-09 13:43:42.804080'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-11-09 13:43:42.955080'),
(15, 'cms_app', '0001_initial', '2023-11-09 13:45:54.306095'),
(16, 'admin', '0001_initial', '2023-11-09 13:45:59.925898'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-11-09 13:46:00.031341'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-09 13:46:00.235571'),
(19, 'sessions', '0001_initial', '2023-11-09 13:46:01.533707');

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
('b60tq28smdp97f1g5d1owtmsftrir2qy', '.eJxVi0EOwiAQAP_C2RhggS0eTfoOsrBsaLRNI-3J-HfrzR5nJvNWifatpb3XV5pY3ZRRl3-XqTzq8gtl7onW9TrOND3vhx4XPsF5bNTbcaErFjBU9jqwSMYcrESsPlZNxYFGZm2FInqw4g1AzAIeB6eHYNCozxe-gzOh:1r2Jms:SDq_--lhuvZGb852F3BrdLcRhN405C7MLzpgUN5Nbhk', '2023-11-26 23:22:42.037158'),
('ek2ogs4h9eq5pxdrl8sgqlasm7kr7a8a', '.eJxVi0EOwiAQAP_C2RhggS0eTfoOsrBsaLRNI-3J-HfrzR5nJvNWifatpb3XV5pY3ZRRl3-XqTzq8gtl7onW9TrOND3vhx4XPsF5bNTbcaErFjBU9jqwSMYcrESsPlZNxYFGZm2FInqw4g1AzAIeB6eHYNCozxe-gzOh:1r2JZg:R0no9XLlbKIrctyUJkwJMuX7tDBQmHJgcmDuwUMcvBo', '2023-11-26 23:09:04.095198'),
('gqibkyxqr3m92tube5cd43nlyfveq2mi', '.eJxVi0EOwiAQAP_C2RhggS0eTfoOsrBsaLRNI-3J-HfrzR5nJvNWifatpb3XV5pY3ZRRl3-XqTzq8gtl7onW9TrOND3vhx4XPsF5bNTbcaErFjBU9jqwSMYcrESsPlZNxYFGZm2FInqw4g1AzAIeB6eHYNCozxe-gzOh:1rAr9d:APaPbOH5f2uMrypMCdpXQrmNqVtHvjeh0gs53RD1yTQ', '2023-12-20 12:37:29.919746');

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
-- Indexes for table `cms_app_adminhod`
--
ALTER TABLE `cms_app_adminhod`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `cms_app_attendance`
--
ALTER TABLE `cms_app_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_attendance_session_year_id_id_d9818a7b_fk_cms_app_s` (`session_year_id_id`),
  ADD KEY `cms_app_attendance_subject_id_id_0fbe3a51_fk_cms_app_subjects_id` (`subject_id_id`);

--
-- Indexes for table `cms_app_attendancereport`
--
ALTER TABLE `cms_app_attendancereport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_attendancere_attendance_id_id_38c876b8_fk_cms_app_a` (`attendance_id_id`),
  ADD KEY `cms_app_attendancere_student_id_id_4e1428a6_fk_cms_app_s` (`student_id_id`);

--
-- Indexes for table `cms_app_courses`
--
ALTER TABLE `cms_app_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_app_customuser`
--
ALTER TABLE `cms_app_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cms_app_customuser_groups`
--
ALTER TABLE `cms_app_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_app_customuser_groups_customuser_id_group_id_ef7b6c8b_uniq` (`customuser_id`,`group_id`),
  ADD KEY `cms_app_customuser_groups_group_id_ad9dacc4_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `cms_app_customuser_user_permissions`
--
ALTER TABLE `cms_app_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_app_customuser_user__customuser_id_permission_e1f9b7e9_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `cms_app_customuser_u_permission_id_c4949537_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cms_app_feedbackstaffs`
--
ALTER TABLE `cms_app_feedbackstaffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_feedbackstaffs_staff_id_id_cd80a141_fk_cms_app_staffs_id` (`staff_id_id`);

--
-- Indexes for table `cms_app_feedbackstudent`
--
ALTER TABLE `cms_app_feedbackstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_feedbackstud_student_id_id_d7c273b6_fk_cms_app_s` (`student_id_id`);

--
-- Indexes for table `cms_app_leavereportstaff`
--
ALTER TABLE `cms_app_leavereportstaff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_leavereports_staff_id_id_ec30cca4_fk_cms_app_s` (`staff_id_id`);

--
-- Indexes for table `cms_app_leavereportstudent`
--
ALTER TABLE `cms_app_leavereportstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_leavereports_student_id_id_9efb97ce_fk_cms_app_s` (`student_id_id`);

--
-- Indexes for table `cms_app_notificationstaffs`
--
ALTER TABLE `cms_app_notificationstaffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_notification_staff_id_id_1f747169_fk_cms_app_s` (`staff_id_id`);

--
-- Indexes for table `cms_app_notificationstudent`
--
ALTER TABLE `cms_app_notificationstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_notification_student_id_id_373f6b16_fk_cms_app_s` (`student_id_id`);

--
-- Indexes for table `cms_app_onlineclassroom`
--
ALTER TABLE `cms_app_onlineclassroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_onlineclassr_session_years_id_1f8a2ac9_fk_cms_app_s` (`session_years_id`),
  ADD KEY `cms_app_onlineclassr_started_by_id_2a43cb25_fk_cms_app_s` (`started_by_id`),
  ADD KEY `cms_app_onlineclassr_subject_id_95ef1abf_fk_cms_app_s` (`subject_id`);

--
-- Indexes for table `cms_app_sessionyearmodel`
--
ALTER TABLE `cms_app_sessionyearmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_app_staffs`
--
ALTER TABLE `cms_app_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `cms_app_studentresult`
--
ALTER TABLE `cms_app_studentresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_studentresul_student_id_id_47545d53_fk_cms_app_s` (`student_id_id`),
  ADD KEY `cms_app_studentresul_subject_id_id_48a87a72_fk_cms_app_s` (`subject_id_id`);

--
-- Indexes for table `cms_app_students`
--
ALTER TABLE `cms_app_students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `cms_app_students_course_id_id_681dd27b_fk_cms_app_courses_id` (`course_id_id`),
  ADD KEY `cms_app_students_session_year_id_id_699d9c7e_fk_cms_app_s` (`session_year_id_id`);

--
-- Indexes for table `cms_app_subjects`
--
ALTER TABLE `cms_app_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_app_subjects_course_id_id_039571ae_fk_cms_app_courses_id` (`course_id_id`),
  ADD KEY `cms_app_subjects_staff_id_id_64aa82e4_fk_cms_app_customuser_id` (`staff_id_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_cms_app_customuser_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `cms_app_adminhod`
--
ALTER TABLE `cms_app_adminhod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_app_attendance`
--
ALTER TABLE `cms_app_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_attendancereport`
--
ALTER TABLE `cms_app_attendancereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_courses`
--
ALTER TABLE `cms_app_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_app_customuser`
--
ALTER TABLE `cms_app_customuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_app_customuser_groups`
--
ALTER TABLE `cms_app_customuser_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_customuser_user_permissions`
--
ALTER TABLE `cms_app_customuser_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_feedbackstaffs`
--
ALTER TABLE `cms_app_feedbackstaffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_feedbackstudent`
--
ALTER TABLE `cms_app_feedbackstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_leavereportstaff`
--
ALTER TABLE `cms_app_leavereportstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_leavereportstudent`
--
ALTER TABLE `cms_app_leavereportstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_notificationstaffs`
--
ALTER TABLE `cms_app_notificationstaffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_notificationstudent`
--
ALTER TABLE `cms_app_notificationstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_onlineclassroom`
--
ALTER TABLE `cms_app_onlineclassroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_sessionyearmodel`
--
ALTER TABLE `cms_app_sessionyearmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_app_staffs`
--
ALTER TABLE `cms_app_staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_app_studentresult`
--
ALTER TABLE `cms_app_studentresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_students`
--
ALTER TABLE `cms_app_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_app_subjects`
--
ALTER TABLE `cms_app_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
-- Constraints for table `cms_app_adminhod`
--
ALTER TABLE `cms_app_adminhod`
  ADD CONSTRAINT `cms_app_adminhod_admin_id_50d4f55f_fk_cms_app_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `cms_app_customuser` (`id`);

--
-- Constraints for table `cms_app_attendance`
--
ALTER TABLE `cms_app_attendance`
  ADD CONSTRAINT `cms_app_attendance_session_year_id_id_d9818a7b_fk_cms_app_s` FOREIGN KEY (`session_year_id_id`) REFERENCES `cms_app_sessionyearmodel` (`id`),
  ADD CONSTRAINT `cms_app_attendance_subject_id_id_0fbe3a51_fk_cms_app_subjects_id` FOREIGN KEY (`subject_id_id`) REFERENCES `cms_app_subjects` (`id`);

--
-- Constraints for table `cms_app_attendancereport`
--
ALTER TABLE `cms_app_attendancereport`
  ADD CONSTRAINT `cms_app_attendancere_attendance_id_id_38c876b8_fk_cms_app_a` FOREIGN KEY (`attendance_id_id`) REFERENCES `cms_app_attendance` (`id`),
  ADD CONSTRAINT `cms_app_attendancere_student_id_id_4e1428a6_fk_cms_app_s` FOREIGN KEY (`student_id_id`) REFERENCES `cms_app_students` (`id`);

--
-- Constraints for table `cms_app_customuser_groups`
--
ALTER TABLE `cms_app_customuser_groups`
  ADD CONSTRAINT `cms_app_customuser_g_customuser_id_73b9434a_fk_cms_app_c` FOREIGN KEY (`customuser_id`) REFERENCES `cms_app_customuser` (`id`),
  ADD CONSTRAINT `cms_app_customuser_groups_group_id_ad9dacc4_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `cms_app_customuser_user_permissions`
--
ALTER TABLE `cms_app_customuser_user_permissions`
  ADD CONSTRAINT `cms_app_customuser_u_customuser_id_e44fa44c_fk_cms_app_c` FOREIGN KEY (`customuser_id`) REFERENCES `cms_app_customuser` (`id`),
  ADD CONSTRAINT `cms_app_customuser_u_permission_id_c4949537_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `cms_app_feedbackstaffs`
--
ALTER TABLE `cms_app_feedbackstaffs`
  ADD CONSTRAINT `cms_app_feedbackstaffs_staff_id_id_cd80a141_fk_cms_app_staffs_id` FOREIGN KEY (`staff_id_id`) REFERENCES `cms_app_staffs` (`id`);

--
-- Constraints for table `cms_app_feedbackstudent`
--
ALTER TABLE `cms_app_feedbackstudent`
  ADD CONSTRAINT `cms_app_feedbackstud_student_id_id_d7c273b6_fk_cms_app_s` FOREIGN KEY (`student_id_id`) REFERENCES `cms_app_students` (`id`);

--
-- Constraints for table `cms_app_leavereportstaff`
--
ALTER TABLE `cms_app_leavereportstaff`
  ADD CONSTRAINT `cms_app_leavereports_staff_id_id_ec30cca4_fk_cms_app_s` FOREIGN KEY (`staff_id_id`) REFERENCES `cms_app_staffs` (`id`);

--
-- Constraints for table `cms_app_leavereportstudent`
--
ALTER TABLE `cms_app_leavereportstudent`
  ADD CONSTRAINT `cms_app_leavereports_student_id_id_9efb97ce_fk_cms_app_s` FOREIGN KEY (`student_id_id`) REFERENCES `cms_app_students` (`id`);

--
-- Constraints for table `cms_app_notificationstaffs`
--
ALTER TABLE `cms_app_notificationstaffs`
  ADD CONSTRAINT `cms_app_notification_staff_id_id_1f747169_fk_cms_app_s` FOREIGN KEY (`staff_id_id`) REFERENCES `cms_app_staffs` (`id`);

--
-- Constraints for table `cms_app_notificationstudent`
--
ALTER TABLE `cms_app_notificationstudent`
  ADD CONSTRAINT `cms_app_notification_student_id_id_373f6b16_fk_cms_app_s` FOREIGN KEY (`student_id_id`) REFERENCES `cms_app_students` (`id`);

--
-- Constraints for table `cms_app_onlineclassroom`
--
ALTER TABLE `cms_app_onlineclassroom`
  ADD CONSTRAINT `cms_app_onlineclassr_session_years_id_1f8a2ac9_fk_cms_app_s` FOREIGN KEY (`session_years_id`) REFERENCES `cms_app_sessionyearmodel` (`id`),
  ADD CONSTRAINT `cms_app_onlineclassr_started_by_id_2a43cb25_fk_cms_app_s` FOREIGN KEY (`started_by_id`) REFERENCES `cms_app_staffs` (`id`),
  ADD CONSTRAINT `cms_app_onlineclassr_subject_id_95ef1abf_fk_cms_app_s` FOREIGN KEY (`subject_id`) REFERENCES `cms_app_subjects` (`id`);

--
-- Constraints for table `cms_app_staffs`
--
ALTER TABLE `cms_app_staffs`
  ADD CONSTRAINT `cms_app_staffs_admin_id_1403fd5c_fk_cms_app_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `cms_app_customuser` (`id`);

--
-- Constraints for table `cms_app_studentresult`
--
ALTER TABLE `cms_app_studentresult`
  ADD CONSTRAINT `cms_app_studentresul_student_id_id_47545d53_fk_cms_app_s` FOREIGN KEY (`student_id_id`) REFERENCES `cms_app_students` (`id`),
  ADD CONSTRAINT `cms_app_studentresul_subject_id_id_48a87a72_fk_cms_app_s` FOREIGN KEY (`subject_id_id`) REFERENCES `cms_app_subjects` (`id`);

--
-- Constraints for table `cms_app_students`
--
ALTER TABLE `cms_app_students`
  ADD CONSTRAINT `cms_app_students_admin_id_99ff7844_fk_cms_app_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `cms_app_customuser` (`id`),
  ADD CONSTRAINT `cms_app_students_course_id_id_681dd27b_fk_cms_app_courses_id` FOREIGN KEY (`course_id_id`) REFERENCES `cms_app_courses` (`id`),
  ADD CONSTRAINT `cms_app_students_session_year_id_id_699d9c7e_fk_cms_app_s` FOREIGN KEY (`session_year_id_id`) REFERENCES `cms_app_sessionyearmodel` (`id`);

--
-- Constraints for table `cms_app_subjects`
--
ALTER TABLE `cms_app_subjects`
  ADD CONSTRAINT `cms_app_subjects_course_id_id_039571ae_fk_cms_app_courses_id` FOREIGN KEY (`course_id_id`) REFERENCES `cms_app_courses` (`id`),
  ADD CONSTRAINT `cms_app_subjects_staff_id_id_64aa82e4_fk_cms_app_customuser_id` FOREIGN KEY (`staff_id_id`) REFERENCES `cms_app_customuser` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_cms_app_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `cms_app_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
