-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 06, 2021 at 07:13 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES cp1251 */;

--
-- Database: `loginsystem1`
--

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
CREATE TABLE IF NOT EXISTS `basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_goods` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`id`, `id_user`, `id_goods`, `quantity`) VALUES
(1, 3, 17, 1),
(10, 3, 14, 2),
(40, 2, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, '�����'),
(2, '����������� ��� ������ � �������'),
(3, '����� ���\'���'),
(4, '˳���� �������� ��� ���');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `textfeed` text NOT NULL,
  `id_goods` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `textfeed`, `id_goods`) VALUES
(7, 'Zhenya', 'asd', 17),
(2, 'bb', 'sss', 14),
(3, 'Den', 'sad', 14),
(4, 'Zhenya', 'fff', 26),
(8, 'Denis', 'asdas', 26);

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `descr` text NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `image`, `descr`, `category`) VALUES
(1, '����� ������������� Expert Power ����', 7, '../img/1/1.jfif', 'ʳ������ ���: 1;\r\n������: 0,5 ��^2;\r\n��������: �������� (���);\r\n����: �� �����������.\r\n', 1),
(2, '����� ������������� Expert Power ���� 2x0,5', 52, 'img/2/1.jfif', '', 1),
(3, '����� ������������� UP!', 10, 'img/3/1.jfif', '��� ������: �\'�������� ������� ����: ��� ��� ����: ������������� ������� ��������: ��� �����: ������� ĳ������ ������� ����������: �� -25 �� +40 �C ʳ������ ���: 2 ��. ������ ����: 1,5 ��.��.', 1),
(4, '����� Expert Power ��-3 1,5', 5, 'img/4/1.jfif', '��� ������: ��-3 ������� ����: ��� ��� ����: ������������� ������� ��������: ��� �����: ������ ĳ������ ������� ����������: �� -50 �� +35 �C ʳ������ ���: 1 ��. ������ ����: 1,5 ��.��.', 1),
(5, 'o', 11, 'img/5/1.jfif', '', 4),
(6, '������ ����\'������� Vektor 5 ���. FTP', 7, 'img/6/1.jfif', '��� ������: ����������� ������� ����: ��� ������� ��������: ��� �����: ������ �������� ������: � ������� ĳ������ ������� ����������: �� -25 �� +60 �C ʳ������ ���: 8 ��', 2),
(7, '������ ����\'������� ���������� 5����.UTP', 11, 'img/7/1.jfif', '��� ������: ����������� ������� ����: ��� ��� ����: ������������� ������� ��������: ��� �����: ������ ĳ������ ������� ����������: �� - 20 �� + 60 �C ʳ������ ���: 8 ��. ������ ����: 0,51 ��.��.', 2),
(8, '������ 3M ScotchLok 6018VOL-5EUP4-1', 19, 'img/8/1.jfif', '��� ������: ����������� ������� ����: ��� ��� ����: ������������� ʳ������ ��� �������: 4 ��. ������� ��������: ��� ĳ������ ������� ����������: 0 +50 �C ʳ������ ���: 8 ��.', 2),
(9, '������ ������� Expert Power �� 2x0,75', 10, 'img/9/1.jfif', '��� ������: ������� ������� ����: ��� ��� ����: ������������� ������� ��������: ���� �����: ������ ����������: ��� ������� � ������� �������� ĳ������ ������� ����������: �� -40 �� +50 �C ʳ������ ���: 2 ��. ������ ����: 0,75 ��.��.', 3),
(10, '������ ������� ���������� ���� 2x2,5', 6, 'img/10/1.jfif', '��� ������: ������� ������� ����: ������ ��� ����: ������ ������� ��������: ��� �����: ������ ����������: �� �������������� ������� ��� ��������� ��������� ĳ������ ������� ����������: �� -60 �� +50 �C ʳ������ ���: 2 ��. ������ ����: 2,5 ��.��.', 3),
(11, '����� ������������� ���� ���� 2x1,5', 11, 'img/11/1.jfif', '��� ������: ������� ������� ����: ��� ��� ����: ������������� ������� ��������: ��� �����: ������� ĳ������ ������� ����������: �� -25 �� +40 �C ʳ������ ���: 2 ��. ������ ����: 1,5 ��.��.', 3),
(12, '����� ������������� Expert Power ��� 2x2', 23, 'img/12/1.jfif', '��� ������: ������� ������� ����: ��� ��� ����: ������������� ������� ��������: ��� �����: ������ ĳ������ ������� ����������: �� -25 �� +40 �C ʳ������ ���: 2 ��. ������ ����: 2 ��.��.', 3),
(13, '���� ������� E.next t006003', 290, 'img/13/1.jfif', '��� �������: �������������������� ����������: ������ ����������: ��� RJ-45, RJ-25, RJ-14, RJ-11, ��� ������������ �����������, ��� ������� ���������� ����������� �����: E.NEXT �����-��������: �����l', 4),
(14, '���� ������� ��� ������� ������� RJ45 195 ��', 122, 'img/14/1.jfif', '��� �������: ����������� ����������� ����������: ������, ������ �����, ������ �������� ����������: ������� - 195 ��, ������ ������� RJ45 (Ethernet), ������� ��������: ������� �����: MASTERTOOL �����-��������: �����', 4),
(15, '���� ������� YATO YT-22422', 678, 'img/15/1.jfif', '��� �������: ����������� ����������� ����������: ������ ����������: ��� ������������� ���� RJ11, RJ12 � RJ45 � ��������� ������ � �������� �������� �����: YATO �����-��������: ������', 4),
(16, '���� ������� Gross 17719', 647, 'img/16/1.jfif', '��� �������: �������������������� ����������: ������ ����������: ��� ����������� ��������� ���\'���� ��������� �����: 8P, 6P/RJ-45, 8P, 6P / RJ-12, RJ-11, ������ �������� ������, ����� �������� ���� ����� ���� ���������, ���������� � ����� 8-�� ���������� ��������� ������ �����: Gross', 4),
(17, '����� �������� YATO YT-2294', 94, 'img/17/1.jfif', '������� ��������: ������� ����������: ��� ���������� � ������� 8-12 AWG �����: YATO �����-��������: ������l', 5),
(18, '����� i������� Topex 32D406', 164, 'img/18/1.jfif', '����������: ������� ����������� 175 ��, ������� ������� 0,5 - 6��2 �����: Topex �����-��������: ������', 5),
(19, '����� �������� S&R ������������ 580010020', 311, 'img/19/1.jfif', '������� ��������: ������� ����������: � ����������� ������ SAT/RG6 �� RG59, ������ �������� � ������ 10-20AWG (0,5-6 ��.��)INYM 8-13 �� �����: S&R �����-��������: �����', 5),
(20, '���� ��� ������ �������� � ������ 59217', 171, 'img/20/1.jfif', '�����: Electraline �����-��������: �����', 5),
(21, '���� �������� Montero � ������� ������� MN-40286', 509, 'img/21/1.jfif', '��� ��������: ���� �������� ��� ��������: ���������� ��� ����: PH (��������), SL (�������), TORX, HEX (�����������), S (�������) �����: Montero �����-��������: �����', 6),
(22, '���� �������� Expert Tools 75 �� ET-SD-Set-6', 186, 'img/22/1.jfif', '��� ��������: ���� �������� ��� ��������: ���������� ��� ����: PH (��������), SL (�������) �������: 75 �� �����: Expert Tools �����-��������: �����', 6),
(23, '�������� � ������� ��������� Stanley Standart', 230, 'img/23/1.jfif', '��� ��������: �������� � ������� ��������� �����: Stanley �����-��������: �������', 6),
(24, '���� �������� Montero 85114', 199, 'img/24/1.jfif', '��� ��������: ���� �������� �����: Montero �����-��������: �����', 6),
(25, '����� ��������� (������) Lezard', 34, 'img/25/1.jfif', '���: ������� ������������ �������: TPE� ���� �������: IP 44 ���� ������: 16A �������: 250V ʳ������ ������: 2P + E', 7),
(26, '������� �����. ���-�� ������� � ����������', 55, 'img/26/1.jfif', '������������ �������: TPE ���� �������: IP 44 ���� ������: 16A �������: 250V ʳ������ ������: 2P + E ʳ������ ���: 1 ��� �������� ��������� ������� �������: ���������� ������', 7),
(27, '����� � ������ (������) Lezard', 34, 'img/27/1.jfif', '���: ����� � ������ ������������ �������: TPE ���� �������: IP 44 ���� ������: 16A �������: 250V ʳ������ ������: 2P + E', 7),
(28, '������� ������ ����������� �� ����������� UP!', 131, 'img/28/1.jfif', '�������: 380 � ������ ������� (IP): 44 ��� �����, ��������: ��������� �������� ����������: �� ����������� ���������� �����: 32 � ��� �������: ��������� ����: ���� ʳ������ ������: 5 ��.', 8),
(29, '������� ������ ����������� �� ����������� E.NEXT', 305, 'img/29/1.jfif', '�������: 400 � ������ ������� (IP): 67 ��� �����, ��������: ��������� �������� ����������: �� ����������� ���������� �����: 32 � ��� �������: ��������� ����: ���� �� �������� ʳ������ ������: 5 ��.', 8),
(30, '������� �� ����������� Legrand ', 305, 'img/30/1.jfif', '����: Tempra ����������� ���������: 7000 �� �������: 230 � ������ ������� (IP): 44 ��� �����, ��������: ��������� �������� ����������: �� ����������� ���������� �����: 32 � ��� �������: ��������� ����: ���� �� ���� ʳ������ ������: 3 ��.', 8),
(31, '�\'����������� �������� MJPB 16 Sicame', 57, 'img/31/1.jfif', '������� E, ��: 14. ������� ��� �������: 16 ��^2. �����: 82 ��. �������: 5.3 ��. �������� ����������: �������.', 9),
(32, '³�������������� ��������� ��������', 74, 'img/32/1.jfif', '������� ��������� ����������: 6-70 ��^2. ������� ���������� ������������ �����: 6-70 ��^2.', 9),
(33, '�\'����������� �������� MJPT 50 Sicame', 105, 'img/33/1.jfif', '������� E, ��: 17.3. ������� ��� �������: 50 ��^2. �����: 108 ��. �������: 9 ��. �������� ����������: ������.', 9),
(34, '�������� �������� �������� ��� ����������', 52, 'img/34/1.jfif', '���������� ���: 2 ��� 4. ������� ��������: 16-25 ��^2. ������������� ���������: NFC 33-042', 10),
(35, '�������� �������� GUKp4 ��� ��������', 96, 'img/35/1.jfif', '���������� ���: 4 . ������� ��������: 16-35 ��^2.', 10),
(36, 'ϳ���������� �������� ��� ������������ ���', 305, 'img/36/', '������� �������: 2/4 � (16-120) ��^2.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_good` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adress` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `id_good`, `price`, `firstname`, `secondname`, `email`, `adress`) VALUES
(9, 2, 29, 610, '�������', '����������', 'cool.zheck@gmail.com', 'Ivana Sirca 15'),
(8, 2, 18, 164, 'asd', 'asd', 'example1@gmail.com', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

DROP TABLE IF EXISTS `sub`;
CREATE TABLE IF NOT EXISTS `sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cat` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`id`, `id_cat`, `name`) VALUES
(1, 1, '�\'��������'),
(2, 1, '����\'�����'),
(3, 1, '�����'),
(4, 2, '������'),
(5, 2, '������ ��������'),
(6, 2, '��������'),
(7, 3, '�������'),
(8, 3, '������'),
(9, 4, '�������� ��������'),
(10, 4, '�������-������ ��������');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idUsers` int(11) NOT NULL AUTO_INCREMENT,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `uidGrand` varchar(11) NOT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `uidUsers`, `emailUsers`, `pwdUsers`, `uidGrand`) VALUES
(1, 'Zhenya', 'example@gmail.com', '$2y$10$uLiLjKBdc5Bgioi7pVAMdOeB0wUm5XCC03CqCC8p6eOEeVhQqF8Tq', 'Admin'),
(2, 'Denis', 'example1@gmail.com', '$2y$10$dmbwiQrhGSs5EyBY1PEiAeHiurjQAucCnG88SMFuwQyZk90p1txfu', 'user'),
(4, 'fff', 'example2@gmail.com', '$2y$10$XfMIQDPi.AUg/CdUX0iB8ee6lGGHVKZm1BbQvjyy1dkONLlrR0CG6', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
