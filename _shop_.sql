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
(1, 'Кабелі'),
(2, 'Інструменти для роботи з кабелем'),
(3, 'Силові роз\'єми'),
(4, 'Лінійна арматура для СИП');

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
(1, 'Провід багатожильний Expert Power ШВВП', 7, '../img/1/1.jfif', 'Кількість жил: 1;\r\nПереріз: 0,5 мм^2;\r\nІзоляція: одинарна (ПВХ);\r\nКолір: за погодженням.\r\n', 1),
(2, 'Провід багатожильний Expert Power ШВВП 2x0,5', 52, 'img/2/1.jfif', '', 1),
(3, 'Провід багатожильний UP!', 10, 'img/3/1.jfif', 'Вид кабелю: з\'єднуваліні Матеріал жили: мідь Тип жили: багатожильний Матеріал ізоляції: ПВХ Форма: плоский Діапазон робочих температур: від -25 до +40 °C Кількість жил: 2 шт. Переріз жили: 1,5 кв.мм.', 1),
(4, 'Провід Expert Power ПВ-3 1,5', 5, 'img/4/1.jfif', 'Вид кабелю: ПВ-3 Матеріал жили: мідь Тип жили: багатожильний Матеріал ізоляції: ПВХ Форма: кругла Діапазон робочих температур: від -50 до +35 °C Кількість жил: 1 шт. Переріз жили: 1,5 кв.мм.', 1),
(5, 'o', 11, 'img/5/1.jfif', '', 4),
(6, 'Кабель комп\'ютерний Vektor 5 кат. FTP', 7, 'img/6/1.jfif', 'Вид кабелю: комп’ютерний Матеріал жили: мідь Матеріал ізоляції: ПВХ Форма: кругла Наявність екрана: з екраном Діапазон робочих температур: від -25 до +60 °C Кількість жил: 8 шт', 2),
(7, 'Кабель комп\'ютерний Одескабель 5Екат.UTP', 11, 'img/7/1.jfif', 'Вид кабелю: комп’ютерний Матеріал жили: мідь Тип жили: багатожильний Матеріал ізоляції: ПВХ Форма: кругла Діапазон робочих температур: від - 20 до + 60 °C Кількість жил: 8 шт. Переріз жили: 0,51 кв.мм.', 2),
(8, 'Кабель 3M ScotchLok 6018VOL-5EUP4-1', 19, 'img/8/1.jfif', 'Вид кабелю: комп’ютерний Матеріал жили: мідь Тип жили: багатожильний Кількість пар проводів: 4 шт. Матеріал ізоляції: ПВХ Діапазон робочих температур: 0 +50 °C Кількість жил: 8 шт.', 2),
(9, 'Кабель гнучкий Expert Power КГ 2x0,75', 10, 'img/9/1.jfif', 'Вид кабелю: силовий Матеріал жили: мідь Тип жили: багатожильний Матеріал ізоляції: гума Форма: кругла Особливості: для условий с частыми изгибами Діапазон робочих температур: від -40 до +50 °C Кількість жил: 2 шт. Переріз жили: 0,75 кв.мм.', 3),
(10, 'Кабель силовий Одескабель АВВГ 2x2,5', 6, 'img/10/1.jfif', 'Вид кабелю: силовий Матеріал жили: алюміній Тип жили: моноліт Матеріал ізоляції: ПВХ Форма: кругла Особливості: не распространяют горение при одиночной прокладке Діапазон робочих температур: від -60 до +50 °C Кількість жил: 2 шт. Переріз жили: 2,5 кв.мм.', 3),
(11, 'Провід багатожильний ЗЗКМ ШВВП 2x1,5', 11, 'img/11/1.jfif', 'Вид кабелю: силовий Матеріал жили: мідь Тип жили: багатожильний Матеріал ізоляції: ПВХ Форма: плоский Діапазон робочих температур: від -25 до +40 °C Кількість жил: 2 шт. Переріз жили: 1,5 кв.мм.', 3),
(12, 'Провід багатожильний Expert Power ПВС 2x2', 23, 'img/12/1.jfif', 'Вид кабелю: силовий Матеріал жили: мідь Тип жили: багатожильний Матеріал ізоляції: ПВХ Форма: кругла Діапазон робочих температур: від -25 до +40 °C Кількість жил: 2 шт. Переріз жили: 2 кв.мм.', 3),
(13, 'Кліщі обтискні E.next t006003', 290, 'img/13/1.jfif', 'Для обтиску: багатофункціональний Функціонал: обтиск Особливості: для RJ-45, RJ-25, RJ-14, RJ-11, для компьютерних наконечників, для обтиску телефонних наконечників Бренд: E.NEXT Країна-виробник: Китайl', 4),
(14, 'Кліщі обтискні для обтиску штекерів RJ45 195 мм', 122, 'img/14/1.jfif', 'Для обтиску: ізольованих наконечників Функціонал: обтиск, різання дротів, зняття ізоляції Особливості: довжина - 195 мм, обтиск штекерів RJ45 (Ethernet), матеріал рукоятки: пластик Бренд: MASTERTOOL Країна-виробник: Китай', 4),
(15, 'Кліщі обтискні YATO YT-22422', 678, 'img/15/1.jfif', 'Для обтиску: ізольованих наконечників Функціонал: обтиск Особливості: для опресовування типу RJ11, RJ12 і RJ45 з кабельним різаком і пристроєм зачистки Бренд: YATO Країна-виробник: Польща', 4),
(16, 'Кліщі обтискні Gross 17719', 647, 'img/16/1.jfif', 'Для обтиску: багатофункціональний Функціонал: обтиск Особливості: для опресування модульним роз\'ємом наступним чином: 8P, 6P/RJ-45, 8P, 6P / RJ-12, RJ-11, кругла зачистка кабелю, легке відрізання смуг дроту однією операцією, компактний і міцний 8-ми позиційний модульний тримач Бренд: Gross', 4),
(17, 'Знімач ізоляції YATO YT-2294', 94, 'img/17/1.jfif', 'Матеріал рукоятки: пластик Особливості: для накінечників в діапазоні 8-12 AWG Бренд: YATO Країна-виробник: Польщаl', 5),
(18, 'Знімач iзоляції Topex 32D406', 164, 'img/18/1.jfif', 'Особливості: Довжина інструмента 175 мм, Робочий діапазон 0,5 - 6мм2 Бренд: Topex Країна-виробник: Польща', 5),
(19, 'Знімач ізоляції S&R універсальний 580010020', 311, 'img/19/1.jfif', 'Матеріал рукоятки: пластик Особливості: з коаксіальних кабелів SAT/RG6 та RG59, зняття ізоляції з кабелів 10-20AWG (0,5-6 кв.мм)INYM 8-13 мм Бренд: S&R Країна-виробник: Китай', 5),
(20, 'Кліщі для зняття ізоляції з кабеля 59217', 171, 'img/20/1.jfif', 'Бренд: Electraline Країна-виробник: Китай', 5),
(21, 'Набір викруток Montero з набором насадок MN-40286', 509, 'img/21/1.jfif', 'Вид викрутки: набір викруток Тип викрутки: стандартна Тип шліца: PH (хрестова), SL (шліцьова), TORX, HEX (шестигранна), S (квадрат) Бренд: Montero Країна-виробник: Китай', 6),
(22, 'Набір викруток Expert Tools 75 мм ET-SD-Set-6', 186, 'img/22/1.jfif', 'Вид викрутки: набір викруток Тип викрутки: стандартна Тип шліца: PH (хрестова), SL (шліцьова) Довжина: 75 мм Бренд: Expert Tools Країна-виробник: Китай', 6),
(23, 'Викрутка зі змінними насадками Stanley Standart', 230, 'img/23/1.jfif', 'Вид викрутки: викрутка зі змінними насадками Бренд: Stanley Країна-виробник: Тайвань', 6),
(24, 'Набір викруток Montero 85114', 199, 'img/24/1.jfif', 'Вид викрутки: набір викруток Бренд: Montero Країна-виробник: Китай', 6),
(25, 'Вилка однофазна (каучук) Lezard', 34, 'img/25/1.jfif', 'Тип: Веделка Вогнетривкий матеріал: TPE– Клас захисту: IP 44 Сила струму: 16A Напруга: 250V Кількість полюсів: 2P + E', 7),
(26, 'Розетка зовніш. уст-ки подвійна з заглушками', 55, 'img/26/1.jfif', 'Вогнетривкий матеріал: TPE Клас захисту: IP 44 Сила струму: 16A Напруга: 250V Кількість полюсів: 2P + E Кількість фаз: 1 Для зовнішньої установки Матеріал корпусу: еластичний каучук', 7),
(27, 'Вилка з ручкою (каучук) Lezard', 34, 'img/27/1.jfif', 'Тип: Вилка з ручкою Вогнетривкий матеріал: TPE Клас захисту: IP 44 Сила струму: 16A Напруга: 250V Кількість полюсів: 2P + E', 7),
(28, 'Розетка силова стаціонарна із заземленням UP!', 131, 'img/28/1.jfif', 'Напруга: 380 В Ступінь захисту (IP): 44 Вид клеми, контакту: гвинтовий Наявність заземлення: із заземленням Номінальний струм: 32 А Тип монтажу: накладний Колір: сірий Кількість полюсів: 5 шт.', 8),
(29, 'Розетка силова стаціонарна із заземленням E.NEXT', 305, 'img/29/1.jfif', 'Напруга: 400 В Ступінь захисту (IP): 67 Вид клеми, контакту: гвинтовий Наявність заземлення: із заземленням Номінальний струм: 32 А Тип монтажу: накладний Колір: сірий із червоним Кількість полюсів: 5 шт.', 8),
(30, 'Розетка із заземленням Legrand ', 305, 'img/30/1.jfif', 'Серія: Tempra Максимальна потужність: 7000 Вт Напруга: 230 В Ступінь захисту (IP): 44 Вид клеми, контакту: гвинтовий Наявність заземлення: із заземленням Номінальний струм: 32 А Тип монтажу: накладний Колір: сірий із синім Кількість полюсів: 3 шт.', 8),
(31, 'З\'єднувальний затискач MJPB 16 Sicame', 57, 'img/31/1.jfif', 'Матрица E, мм: 14. Сечение жил кабелей: 16 мм^2. Длина: 82 мм. Диаметр: 5.3 мм. Цветовая маркировка: голубой.', 9),
(32, 'Відгалужувальний плашковий затискач', 74, 'img/32/1.jfif', 'Сечение основного проводника: 6-70 мм^2. Сечение проводника ответвляющей линии: 6-70 мм^2.', 9),
(33, 'З\'єднувальний затискач MJPT 50 Sicame', 105, 'img/33/1.jfif', 'Матрица E, мм: 17.3. Сечение жил кабелей: 50 мм^2. Длина: 108 мм. Диаметр: 9 мм. Цветовая маркировка: желтый.', 9),
(34, 'Клиновий натяжний затискач для відгалужень', 52, 'img/34/1.jfif', 'Количество жил: 2 или 4. Сечение проводов: 16-25 мм^2. Соответствует стандарту: NFC 33-042', 10),
(35, 'Натяжний затискач GUKp4 для кріплення', 96, 'img/35/1.jfif', 'Количество жил: 4 . Сечение проводов: 16-35 мм^2.', 10),
(36, 'Підтримуючий затискач для магістральних ліній', 305, 'img/36/', 'Сечение провода: 2/4 х (16-120) мм^2.', 10);

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
(9, 2, 29, 610, 'Евгений', 'Омельченко', 'cool.zheck@gmail.com', 'Ivana Sirca 15'),
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
(1, 1, 'З\'єднуваліні'),
(2, 1, 'Комп\'ютерні'),
(3, 1, 'Силові'),
(4, 2, 'Обтиск'),
(5, 2, 'Зняття ізоляції'),
(6, 2, 'Викрутки'),
(7, 3, 'Кабельні'),
(8, 3, 'Настінні'),
(9, 4, 'Сполучна арматура'),
(10, 4, 'Анкерно-підвісна арматура');

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
