-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 06:52 AM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctordoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add user', 7, 'add_mycustomuser'),
(26, 'Can change user', 7, 'change_mycustomuser'),
(27, 'Can delete user', 7, 'delete_mycustomuser'),
(28, 'Can view user', 7, 'view_mycustomuser'),
(29, 'Can add doctor profile', 8, 'add_doctorprofile'),
(30, 'Can change doctor profile', 8, 'change_doctorprofile'),
(31, 'Can delete doctor profile', 8, 'delete_doctorprofile'),
(32, 'Can view doctor profile', 8, 'view_doctorprofile'),
(33, 'Can add patient', 9, 'add_patient'),
(34, 'Can change patient', 9, 'change_patient'),
(35, 'Can delete patient', 9, 'delete_patient'),
(36, 'Can view patient', 9, 'view_patient'),
(37, 'Can add appointment', 10, 'add_appointment'),
(38, 'Can change appointment', 10, 'change_appointment'),
(39, 'Can delete appointment', 10, 'delete_appointment'),
(40, 'Can view appointment', 10, 'view_appointment'),
(41, 'Can add medication', 11, 'add_medication'),
(42, 'Can change medication', 11, 'change_medication'),
(43, 'Can delete medication', 11, 'delete_medication'),
(44, 'Can view medication', 11, 'view_medication'),
(45, 'Can add prescription', 12, 'add_prescription'),
(46, 'Can change prescription', 12, 'change_prescription'),
(47, 'Can delete prescription', 12, 'delete_prescription'),
(48, 'Can view prescription', 12, 'view_prescription'),
(49, 'Can add query', 13, 'add_query'),
(50, 'Can change query', 13, 'change_query'),
(51, 'Can delete query', 13, 'delete_query'),
(52, 'Can view query', 13, 'view_query'),
(53, 'Can add doctor_ query', 14, 'add_doctor_query'),
(54, 'Can change doctor_ query', 14, 'change_doctor_query'),
(55, 'Can delete doctor_ query', 14, 'delete_doctor_query'),
(56, 'Can view doctor_ query', 14, 'view_doctor_query');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$uooOa1cCuEoHASPoClPpj7$6hQ4BUNY4660UOyV4ilIpgbHq0SX9V2+4yimdkmC4oA=', '2024-09-09 16:09:31.330339', 0, 'admin', '', '', '', 0, 1, '2024-09-09 15:40:08.129054'),
(2, 'pbkdf2_sha256$320000$0zJX8bj9dlA93Ccml4EZCo$GxLSYnAf4PURiwyro1ORNupuZhKcH+dPxPRR4VONz1M=', '2024-09-09 15:57:08.832731', 0, 'doctor', '', '', '', 0, 1, '2024-09-09 15:41:52.097435'),
(3, 'pbkdf2_sha256$320000$4h6v5PNRH4XkhkeQm6nZ7g$kDXa8cUp6F4e9JXnYhVOV5tfh6tOwJmu56ayqgkBf48=', '2024-09-09 16:03:47.592329', 0, 'user', '', '', '', 0, 1, '2024-09-09 15:47:04.111676'),
(4, 'pbkdf2_sha256$870000$IjuIdR4GmBVfKquo8RKNQS$HWNejKc4uczgnzzbvFeRJGq3zFjrGOtX/kCW2+6j+eM=', '2024-09-15 08:04:02.020220', 0, 'suryachetty68', '', '', '', 0, 1, '2024-09-12 02:57:23.003662'),
(5, 'pbkdf2_sha256$870000$Dp4ghyDDQKhS2rm7gRmONM$tuVuaYt45E91TA6ZU50sy8UjgRros93UzXnEQKSYi6k=', '2024-09-16 04:04:33.225768', 0, 'drArjunreddy', '', '', '', 0, 1, '2024-09-12 03:08:12.142801'),
(6, 'pbkdf2_sha256$870000$fjnvWYAti9nSsavtpc674d$JM6LjfPAo34AHelJfsV5xZwGoa7axwDyqGaNhUE6q3M=', '2024-09-13 03:15:28.703211', 0, 'drMunna', '', '', '', 0, 1, '2024-09-12 03:38:41.356406'),
(7, 'pbkdf2_sha256$870000$r2zdH2vwAVPwR48Hnd7a5p$4mpr/JhAjSDXiV4GsFqjDcisNM3WljfxQi8WR9MHJyg=', '2024-09-13 08:54:57.036424', 0, 'drShilpa', '', '', '', 0, 1, '2024-09-12 03:56:16.657454'),
(8, 'pbkdf2_sha256$870000$cXLEhvDf33cgaX0wQLuDM4$IJy3eThQUUwnBz/cyhMU7A5fy2ykv1qM+OxXvksMhys=', '2024-09-13 08:56:17.739905', 0, 'drRamya', '', '', '', 0, 1, '2024-09-12 04:07:43.599211'),
(9, 'pbkdf2_sha256$870000$cykJQnXZKCmWAirX6xsahs$BUYcNsq74s4hdSXc7SrLSYsw/YOHGpSljpNmyYqAwVI=', '2024-09-13 05:53:01.732341', 0, 'Ramesh Kumar', '', '', '', 0, 1, '2024-09-12 09:09:51.955061'),
(10, 'pbkdf2_sha256$870000$XGdym8jtBoKoLtVwft0YwR$i3QikECZZNYgMvi0Mr7iaC0RDkvwkGVVyD4fcFoycmY=', '2024-09-15 07:58:04.600251', 0, 'Srinivasan', '', '', '', 0, 1, '2024-09-12 09:21:23.152257'),
(11, 'pbkdf2_sha256$870000$3gudTLJNOaJbVCbf98XHXK$7ypwwK/hyD4u0fBXcehRyk95eHWd6Y9GSfBDQYQ9Sfw=', NULL, 0, 'Venkatesh', '', '', '', 0, 1, '2024-09-13 03:21:52.762473'),
(12, 'pbkdf2_sha256$870000$cKRGCCJty7XaHFvoF9idAf$NJUY5Cy4WZm3TtkldYDyCYs307i3m1e9TGShAYqvRf4=', NULL, 0, 'Divya', '', '', '', 0, 1, '2024-09-13 03:29:25.326220'),
(13, 'pbkdf2_sha256$870000$dlB1uchjBd1K5RqT56Vh8T$mur3+m/aLQatqjj993pU9g9SE4Pj5Cfdj0gkSnSt/HE=', '2024-09-13 08:58:47.772768', 0, 'Dr_Chinmaie', '', '', '', 0, 1, '2024-09-13 08:58:31.515090'),
(14, 'pbkdf2_sha256$870000$PrHyfk9xjtrrcjhvpvzJZi$mB+6AfZxVdOPohmSf2TwsYFgeFLPr89VwaEaftVS6HA=', '2024-09-13 09:27:12.084295', 0, 'drNijam', '', '', '', 0, 1, '2024-09-13 09:26:54.749417'),
(15, 'pbkdf2_sha256$870000$HIvNCDDDbEO5bKUu0UXrzU$T83X2GSKGsid7ZK4G0HpD24Ycil8Vi5ZUF11Wlhwl0s=', '2024-09-13 10:57:05.215570', 0, 'drJai', '', '', '', 0, 1, '2024-09-13 10:56:49.333056');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'doctorapp', 'appointment'),
(8, 'doctorapp', 'doctorprofile'),
(14, 'doctorapp', 'doctor_query'),
(11, 'doctorapp', 'medication'),
(7, 'doctorapp', 'mycustomuser'),
(9, 'doctorapp', 'patient'),
(12, 'doctorapp', 'prescription'),
(13, 'doctorapp', 'query'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-09 15:37:53.385139'),
(2, 'auth', '0001_initial', '2024-09-09 15:37:53.767334'),
(3, 'admin', '0001_initial', '2024-09-09 15:37:53.874069'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-09 15:37:53.894819'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-09 15:37:53.903886'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-09 15:37:53.977390'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-09 15:37:54.051443'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-09 15:37:54.069928'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-09 15:37:54.087397'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-09 15:37:54.145372'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-09 15:37:54.149877'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-09 15:37:54.166751'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-09 15:37:54.183210'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-09 15:37:54.212391'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-09 15:37:54.233561'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-09 15:37:54.246193'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-09 15:37:54.265666'),
(18, 'doctorapp', '0001_initial', '2024-09-09 15:37:54.317510'),
(19, 'doctorapp', '0002_mycustomuser_status_mycustomuser_user_type', '2024-09-09 15:37:54.351934'),
(20, 'doctorapp', '0003_mycustomuser_rejection_reason', '2024-09-09 15:37:54.376428'),
(21, 'doctorapp', '0004_doctorprofile', '2024-09-09 15:37:54.479638'),
(22, 'doctorapp', '0005_rename_experience_years_doctorprofile_experience_and_more', '2024-09-09 15:37:54.806324'),
(23, 'doctorapp', '0006_mycustomuser_doctor_id_patient', '2024-09-09 15:37:54.922502'),
(24, 'doctorapp', '0007_appointment', '2024-09-09 15:37:55.036825'),
(25, 'doctorapp', '0008_appointment_status', '2024-09-09 15:37:55.062408'),
(26, 'doctorapp', '0009_medication_prescription', '2024-09-09 15:37:55.204171'),
(27, 'doctorapp', '0010_query', '2024-09-09 15:37:55.300040'),
(28, 'sessions', '0001_initial', '2024-09-09 15:37:55.344111'),
(29, 'doctorapp', '0011_doctor_query', '2024-09-15 04:41:42.481376');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_appointment`
--

CREATE TABLE `doctorapp_appointment` (
  `id` bigint(20) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time(6) NOT NULL,
  `appointment_reason` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorapp_appointment`
--

INSERT INTO `doctorapp_appointment` (`id`, `appointment_date`, `appointment_time`, `appointment_reason`, `created_at`, `doctor_id`, `user_id`, `status`) VALUES
(1, '2024-09-08', '23:31:00.000000', 'regular check', '2024-09-09 16:00:05.829157', 2, 3, 'Completed'),
(2, '2024-09-17', '16:30:00.000000', 'General Checkup', '2024-09-12 09:12:52.138514', 5, 9, 'Pending'),
(3, '2024-09-12', '14:45:00.000000', 'Inject Antibodies and Give Medicines', '2024-09-12 09:14:09.210357', 5, 9, 'Completed'),
(4, '2024-09-13', '09:00:00.000000', 'General Checkup', '2024-09-13 03:21:06.709081', 5, 10, 'Pending'),
(5, '2024-09-25', '12:20:00.000000', 'General Checkup', '2024-09-13 03:32:16.772231', 5, 11, 'Cancelled'),
(6, '2024-09-16', '18:00:00.000000', 'Minor Surgery and Pre-check up', '2024-09-13 03:33:09.113454', 5, 12, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_doctorprofile`
--

CREATE TABLE `doctorapp_doctorprofile` (
  `id` bigint(20) NOT NULL,
  `license_number` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `work_contact_number` varchar(15) DEFAULT NULL,
  `address` longtext NOT NULL,
  `dob` date NOT NULL,
  `experience` int(11) NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `graduation_year` varchar(4) NOT NULL,
  `photo_id` varchar(100) DEFAULT NULL,
  `medical_license` varchar(100) DEFAULT NULL,
  `diploma_certificate` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `consultation_hours` varchar(100) DEFAULT NULL,
  `contact_number` varchar(15) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `medical_school` varchar(255) NOT NULL,
  `postgrad_training` longtext DEFAULT NULL,
  `work_address` longtext DEFAULT NULL,
  `workplace` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorapp_doctorprofile`
--

INSERT INTO `doctorapp_doctorprofile` (`id`, `license_number`, `email`, `work_contact_number`, `address`, `dob`, `experience`, `speciality`, `graduation_year`, `photo_id`, `medical_license`, `diploma_certificate`, `user_id`, `consultation_hours`, `contact_number`, `full_name`, `gender`, `medical_school`, `postgrad_training`, `work_address`, `workplace`) VALUES
(2, '0001234', 'drarjunreddy123@gmail.com', '123456789', '2/81-A, Bangalore Bypass Road, Hosur, Tamil Nadu', '2000-07-02', 4, 'Cardiac', '2020', '', 'doctor_licenses/license.jpeg', 'doctor_certificates/certificate.jpeg', 5, '5am to 9am', '9710779296', 'Dr.Arjun Reddy', 'male', 'RVS Medical College', 'General Medicine', 'Bangalore', 'St.Victoria Hospital'),
(3, '0001256', 'munnabhai123@gmail.com', '9384840407', '338, Bannerghatta Main Road, Bangalore', '1994-12-03', 8, 'Ortho', '2016', 'doctor_photos/munna.jpeg', 'doctor_licenses/license.jpeg', 'doctor_certificates/certifi.jpeg', 6, '5am to 6am', '8072721778', 'Dr.Munna Shankar', 'male', 'Saveetha Medical College', 'Forensic', 'Jayanagar', 'Nimhhans Hospital'),
(4, '0001263', 'drshilpa123@gmail.com', '09381202310', '59,Akshya Nagar, Near DLF Town, Arekere, Bangalore, Karnataka', '1986-09-23', 12, 'Gyneacology', '2010', 'doctor_photos/shilpa.jpeg', 'doctor_licenses/license_CsYJ3gb.jpeg', 'doctor_certificates/certifi_tyZbS16.jpeg', 7, '2pm to 5pm', '9494320186', 'Dr.Shilpa Shetty', 'female', 'KKC Medical College and Hospitals', 'Gynaecology', 'Bannerghatta Main Road', 'Apollo'),
(5, '0001295', 'drramyasrini123@gmail.com', '09384840407', '49,JP Nagar 2nd Cross, South City Layout, Bangalore, Karnataka', '1991-06-15', 6, 'Dermatalogy', '2013', 'doctor_photos/ramya.jpeg', 'doctor_licenses/license_MtnchoT.jpeg', 'doctor_certificates/certifi_9nfPyKl.jpeg', 8, '2pm to 4pm', '9944188621', 'Dr.Ramya Srinivas', 'male', 'Meenakashi Medical College', 'Dermatalogy', 'Bannerghatta Main Road', 'Fortis'),
(6, '00001234', 'suryachetty68@gmail.com', '08072717709', '2/81-A,Bangalore Bye Pass Road', '2000-09-13', 4, 'Cardiology', '2020', 'doctor_photos/Allegra.jpg', 'doctor_licenses/Allegra.jpg', 'doctor_certificates/Allegra.jpg', 13, '29201', '8072717709', 'Dr.Chinmaei', 'male', 'SAveetha', 'Cardio', '2/81-A,Bangalore Bye Pass Road', 'Apollo'),
(7, '00007899', 'drmohammednijam1986@gmail.com', '9021445783', 'Khalifa Road, Dubai', '1986-07-13', 15, 'Pulmnologist', '2008', 'doctor_photos/nijam_ZMqk49i.jpg', 'doctor_licenses/medical_license.jpeg', 'doctor_certificates/certificate_JFGXcIb.jpeg', 14, '5pm to 8pm', '9384332169', 'Dr.Mohammed Nijam', 'male', 'Princeton University', 'lungs', '115, Discovery Garden Communtiy Gate, Dubai', 'NMC Multispeciality');

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_doctor_query`
--

CREATE TABLE `doctorapp_doctor_query` (
  `id` bigint(20) NOT NULL,
  `query_text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_medication`
--

CREATE TABLE `doctorapp_medication` (
  `id` bigint(20) NOT NULL,
  `medication_name` varchar(255) NOT NULL,
  `about_medication` longtext NOT NULL,
  `usage` longtext NOT NULL,
  `dosage` longtext NOT NULL,
  `side_effects` longtext NOT NULL,
  `medication_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorapp_medication`
--

INSERT INTO `doctorapp_medication` (`id`, `medication_name`, `about_medication`, `usage`, `dosage`, `side_effects`, `medication_image`) VALUES
(3, 'Paracetamol', 'Fever Controlling Drug', 'For Fever, Temperature Rise, and Running Nose', 'After Food once', 'No Side Effect, take ', 'paracip_WqOmAJe.webp'),
(4, 'Allegra', 'Allegra is an antihistamine that reduces the effects of natural chemical histamine in the body. Histamine can produce symptoms of sneezing, itching, watery eyes, and runny nose.', 'Allegra is used to treat the symptoms of seasonal allergies (hay fever) in adults and children. Allegra is also used to treat ', 'Do not take Allegra with fruit juice ', 'Less serious Allegra side effects may include:\r\nnausea, diarrhea, upset stomach;\r\nmenstrual cramps;\r\ndrowsiness, tired feeling;\r\nheadache; or\r\nmuscle or back pain.', 'Allegra.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_mycustomuser`
--

CREATE TABLE `doctorapp_mycustomuser` (
  `user_ptr_id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `rejection_reason` longtext DEFAULT NULL,
  `doctor_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorapp_mycustomuser`
--

INSERT INTO `doctorapp_mycustomuser` (`user_ptr_id`, `status`, `user_type`, `rejection_reason`, `doctor_id_id`) VALUES
(1, NULL, 'admin', NULL, NULL),
(2, 'accepted', 'doctor', NULL, NULL),
(3, NULL, 'user', NULL, 2),
(4, NULL, 'admin', NULL, NULL),
(5, 'accepted', 'doctor', NULL, NULL),
(6, 'accepted', 'doctor', NULL, NULL),
(7, 'accepted', 'doctor', NULL, NULL),
(8, 'accepted', 'doctor', NULL, NULL),
(9, NULL, 'user', NULL, 5),
(10, NULL, 'user', NULL, 5),
(11, NULL, 'user', NULL, 5),
(12, NULL, 'user', NULL, 5),
(13, 'rejected', 'doctor', 'fake profile', NULL),
(14, 'pending', 'doctor', NULL, NULL),
(15, 'pending', 'doctor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_patient`
--

CREATE TABLE `doctorapp_patient` (
  `id` bigint(20) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `patient_age` int(11) NOT NULL,
  `patient_gender` varchar(10) NOT NULL,
  `patient_blood_group` varchar(5) NOT NULL,
  `patient_phone_number` varchar(15) NOT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `case_title` varchar(255) NOT NULL,
  `case_details` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorapp_patient`
--

INSERT INTO `doctorapp_patient` (`id`, `patient_name`, `patient_age`, `patient_gender`, `patient_blood_group`, `patient_phone_number`, `profile_image`, `case_title`, `case_details`, `user_id`) VALUES
(2, 'Ramesh Kumar', 45, 'male', 'B+', '8027717098', 'patients/ramesh.jpeg', 'Fever', 'Temporary increase in body temperature, often due to an illness or infection. It’s generally a sign that the body is fighting off infections.', 9),
(3, 'Srinivasan', 60, 'male', 'AB-', '8892660504', 'patients/srinivasan.jpeg', 'BP, Diabetic, Heart Surgery', 'Post-surgery, General Checkup', 10),
(4, 'Venkatesh', 47, 'male', 'A+', '8027717098', 'patients/venkatesh_Z1UUr7c.jpeg', 'Trauma', 'Patient has been suffering from trauma and is a regular patient since 2 years', 11),
(5, 'Divya', 38, 'female', 'B+', '7209402839', 'patients/divya_yp1jIlA.jpeg', 'Arrhythmia', 'An irregular heartbeat that can feel like fluttering in the chest, or cause dizziness, fainting, or shortness of breath.', 12);

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_prescription`
--

CREATE TABLE `doctorapp_prescription` (
  `id` bigint(20) NOT NULL,
  `tablet_count` int(10) UNSIGNED NOT NULL CHECK (`tablet_count` >= 0),
  `swift` varchar(20) NOT NULL,
  `before_after_food` varchar(20) NOT NULL,
  `medicine_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_query`
--

CREATE TABLE `doctorapp_query` (
  `id` bigint(20) NOT NULL,
  `query_text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorapp_query`
--

INSERT INTO `doctorapp_query` (`id`, `query_text`, `created_at`, `user_id`) VALUES
(1, 'Paracetamol is a medicine used to treat mild to moderate pain. Paracetamol can also be used to treat fever (high temperature). It\'s dangerous to take more than the recommended dose of paracetamol. Paracetamol overdose can damage your liver and cause death', '2024-09-09 16:04:49.449920', 3);

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
-- Indexes for table `doctorapp_appointment`
--
ALTER TABLE `doctorapp_appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorapp_appointment_doctor_id_8ed80d66_fk_auth_user_id` (`doctor_id`),
  ADD KEY `doctorapp_appointment_user_id_d0e8cc5f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `doctorapp_doctorprofile`
--
ALTER TABLE `doctorapp_doctorprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `doctorapp_doctor_query`
--
ALTER TABLE `doctorapp_doctor_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorapp_doctor_query_user_id_b22704d2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `doctorapp_medication`
--
ALTER TABLE `doctorapp_medication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorapp_mycustomuser`
--
ALTER TABLE `doctorapp_mycustomuser`
  ADD PRIMARY KEY (`user_ptr_id`),
  ADD KEY `doctorapp_mycustomus_doctor_id_id_7299fe55_fk_doctorapp` (`doctor_id_id`);

--
-- Indexes for table `doctorapp_patient`
--
ALTER TABLE `doctorapp_patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorapp_patient_user_id_c914d3fe_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `doctorapp_prescription`
--
ALTER TABLE `doctorapp_prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorapp_prescripti_medicine_id_30a145f0_fk_doctorapp` (`medicine_id`),
  ADD KEY `doctorapp_prescription_user_id_b62abf4e_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `doctorapp_query`
--
ALTER TABLE `doctorapp_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorapp_query_user_id_6031f7ee_fk_auth_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `doctorapp_appointment`
--
ALTER TABLE `doctorapp_appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctorapp_doctorprofile`
--
ALTER TABLE `doctorapp_doctorprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctorapp_doctor_query`
--
ALTER TABLE `doctorapp_doctor_query`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctorapp_medication`
--
ALTER TABLE `doctorapp_medication`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctorapp_patient`
--
ALTER TABLE `doctorapp_patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctorapp_prescription`
--
ALTER TABLE `doctorapp_prescription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorapp_query`
--
ALTER TABLE `doctorapp_query`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `doctorapp_appointment`
--
ALTER TABLE `doctorapp_appointment`
  ADD CONSTRAINT `doctorapp_appointment_doctor_id_8ed80d66_fk_auth_user_id` FOREIGN KEY (`doctor_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `doctorapp_appointment_user_id_d0e8cc5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctorapp_doctorprofile`
--
ALTER TABLE `doctorapp_doctorprofile`
  ADD CONSTRAINT `doctorapp_doctorprofile_user_id_a2c9b6a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctorapp_doctor_query`
--
ALTER TABLE `doctorapp_doctor_query`
  ADD CONSTRAINT `doctorapp_doctor_query_user_id_b22704d2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctorapp_mycustomuser`
--
ALTER TABLE `doctorapp_mycustomuser`
  ADD CONSTRAINT `doctorapp_mycustomus_doctor_id_id_7299fe55_fk_doctorapp` FOREIGN KEY (`doctor_id_id`) REFERENCES `doctorapp_mycustomuser` (`user_ptr_id`),
  ADD CONSTRAINT `doctorapp_mycustomuser_user_ptr_id_834449d2_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctorapp_patient`
--
ALTER TABLE `doctorapp_patient`
  ADD CONSTRAINT `doctorapp_patient_user_id_c914d3fe_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctorapp_prescription`
--
ALTER TABLE `doctorapp_prescription`
  ADD CONSTRAINT `doctorapp_prescripti_medicine_id_30a145f0_fk_doctorapp` FOREIGN KEY (`medicine_id`) REFERENCES `doctorapp_medication` (`id`),
  ADD CONSTRAINT `doctorapp_prescription_user_id_b62abf4e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctorapp_query`
--
ALTER TABLE `doctorapp_query`
  ADD CONSTRAINT `doctorapp_query_user_id_6031f7ee_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
