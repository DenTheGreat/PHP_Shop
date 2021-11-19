-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 08, 2020 at 09:27 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`id`, `id_user`, `id_goods`, `quantity`) VALUES
(1, 3, 17, 1),
(10, 3, 14, 2);

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
(1, 'Комп\'ютерна техніка'),
(2, 'Комп\'ютерні комплектуючі'),
(3, 'Телефонія'),
(4, 'Аксесуари');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `textfeed`, `id_goods`) VALUES
(7, 'Denis', '12/10', 1),
(3, 'Den', 'sad', 14),
(4, 'Zhenya', 'fff', 26),
(8, 'Denis', '22/10', 1),
(9, 'Denis', '12/10\r\n', 4),
(10, 'Denis', '12/10', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `image`, `descr`, `category`) VALUES
(1, 'Artline WorkStation W78', 32550, 'img/1/1.jpeg', 'Бренд: Artline Графічний адаптер: дискретний GeForce GTX1050 Ti, 4ГБ Оперативна пам\'ять: 16 ГБ DDR4-2666 МГц Процесор: шестиядерний Intel Core i7-8700K (3.7-4.7 ГГц) Об\'єм накопичувача: 2250 ГБ Гарантія: 38 міс.', 1),
(2, 'Artline Gaming X37', 20310, 'img/2/1.jpeg', 'Бренд: Artline Графічний адаптер: дискретний GeForce GTX1660 Ti, 6ГБ Оперативна пам\'ять: 16 ГБ DDR4-2666 МГц Процесор: чотириядерний Intel Core i3-9100F (3.6-4.2 ГГц) Об\'єм накопичувача: 480 ГБ Гарантія: 38 міс.', 1),
(3, 'ASRock DeskMini 310', 4899, 'img/3/1.jpeg', 'Бренд: ASRock\r\nГрафічний адаптер: відсутня\r\nОперативна пам\'ять: відсутня\r\nГарантія: 24 міс.', 1),
(4, 'Artline Gaming X53', 23268, 'img/4/1.jpeg', 'Бренд: Artline\r\nГрафічний адаптер: дискретний GeForce GTX1660, 6ГБ\r\nОперативна пам\'ять: 16 ГБ DDR4-2666 МГц\r\nПроцесор: шестиядерний Intel Core i5-9400F (2.9-4.1 ГГц)\r\nОб\'єм накопичувача: 480 ГБ\r\nГарантія: 38 міс.', 1),
(5, 'Acer Aspire 3', 5999, 'img/5/1.jpeg', 'Графічний адаптер: інтегрований Intel UHD Graphics 600 Процесор: Intel Celeron N4000 (1.1 ГГц - 2.6 ГГц) Об\'єм накопичувача HDD: 500 ГБ Оперативна пам\'ять: 4 ГБ Діагональ: 15,6\" Гарантія: 12 міс.', 2),
(6, 'Lenovo ThinkPad E590', 26072, 'img/6/1.jpeg', 'Графічний адаптер: інтегрований Intel UHD Graphics 620\r\nПроцесор: Intel Core i5-8265U (1,6 ГГц – 3,9 ГГц)\r\nОб\'єм накопичувача SSD: 256 ГБ\r\nОперативна пам\'ять: 8 ГБ\r\nДіагональ: 15,6\"\r\nГарантія: 12 міс.', 2),
(7, 'HP Pavilion 15-cw1009ua', 10966, 'img/7/1.jpeg', 'Графічний адаптер: AMD Radeon Vega 6\r\nПроцесор: AMD Ryzen 3 3300U (2.1 - 3.5 ГГц)\r\nОб\'єм накопичувача SSD: 128 ГБ\r\nОперативна пам\'ять: 4 ГБ\r\nДіагональ: 15,6\"\r\nГарантія: 12 міс.', 2),
(8, 'Asus X543MA-GQ495', 5299, 'img/8/1.jpeg', 'Графічний адаптер: інтегрований Intel HD Graphics 600\r\nПроцесор: двоядерний Intel Celeron N4000 (1.1 - 2.6 ГГц)\r\nОб\'єм накопичувача HDD: 500 ГБ\r\nОперативна пам\'ять: 4 ГБ\r\nДіагональ: 15,6\"\r\nГарантія: 12 міс.', 2),
(9, 'Artline Home G71', 24342, 'img/9/1.jpeg', 'Процесор: Intel Core i3-8100 (3.6 ГГц)\r\nОперативна пам\'ять: 16 ГБ\r\nОб\'єм накопичувача: 480 ГБ\r\nГарантія: 38 міс.', 3),
(10, 'Моноблок HP 23,8\" (4PR94EA)', 20230, 'img/10/1.jpeg', 'Тип екрана: звичайний\r\nПроцесор: Intel Core i5\r\nОперативна пам\'ять: 4 ГБ\r\nОб\'єм накопичувача: 1000 ГБ\r\nГарантія: 12 міс.', 3),
(11, 'Artline Business G42 23,8', 15816, 'img/11/1.jpeg', 'Тип екрана: звичайний\r\nПроцесор: чотириядерний AMD Ryzen 3 3200G (3.6 - 4.0 ГГц)\r\nОперативна пам\'ять: 8 ГБ\r\nОб\'єм накопичувача: 240 ГБ\r\nГарантія: 38 міс.', 3),
(12, 'Asus Vivo AiO 21,5\"', 11999, 'img/12/1.jpeg', 'Тип екрана: звичайний\r\nПроцесор: Intel Pentium 4417U\r\nОперативна пам\'ять: 4 ГБ\r\nОб\'єм накопичувача: 256 ГБ\r\nГарантія: 12 міс.', 3),
(13, 'AMD Ryzen 5 3600 ', 7029, 'img/13/1.jpeg', 'Процессор • Socket AM4 • 3,6 (4,2 Turbo) ГГц • кэш-память третьего уровня: 32 МБ • Количество ядер: 6 • число потоков: 12 • технология: 7 нм • Box...\r\n', 4),
(14, 'AMD Ryzen Threadripper 1900X 3.80GHz', 4686, 'img/14/1.jpeg', 'Виробник :AMD\r\nТип:Процесор\r\nТип роз\'єму:Socket sTR4\r\nТактова частота, ГГц:3,8 (Turbo 4,0)\r\nОб\'єм кеш-пам\'яті третього рівня, МБ:16\r\nНазва ядра:Summit Ridge\r\nКількість ядер:8\r\nВиробнича технологія, нм:14', 4),
(15, 'AMD Ryzen 7 3800X', 12342, 'img/15/1.jpeg', 'Процессор • Socket AM4 • 3,9 (4,5 Turbo) ГГц • кэш-память третьего уровня: 32 МБ • Количество ядер: 8 • число потоков: 16 • технология: 7 нм • Box...\r\n', 4),
(16, 'Intel Core i7-9700KF ', 14916, 'img/16/1.jpeg', 'Процессор • Socket 1151-V2 • 3,6 (4,9 Turbo) ГГц • кэш-память третьего уровня: 12 МБ • Количество ядер: 8 • число потоков: 8 • технология: 14 нм • Box...\r\n', 4),
(17, 'Crucial Ballistix Sport LT DDR4 16Gb 3000Mz', 2004, 'img/17/1.jpeg', 'Оперативная память Crucial 16 GB DDR4 3000 MHz Ballistix Sport (BLS16G4D30AESC) поедает 1,35 В рабочего напряжения, выдавая впоследствии эффективную рабочую частоту до 3000 МГц. Вдобавок, устройство уходит на «перерывы» (тайминги) CL15, а при задействовании технологии XMP может повысить вышеупомянутую частоту. Созданная по DDR4 типу, в форм-факторе 288-pin DIMM, оперативная память Crucial 16 GB DDR4 3000 MHz Ballistix Sport (BLS16G4D30AESC) также оснащена пассивным радиатором охлаждения, что оберегает ее от смертельно опасных высоких температур....\r\n', 5),
(18, 'Kingston DDR4 SDRAM 16 GB (2x8GB) 3000 MHz', 2956, 'img/18/1.jpeg', 'Ціна: 2956 грн Об’єм пам’яті: 16 ГБ Кіт: 2x8 ГБ Тип пам\'яті: DDR4 SDRAM Бренд: Kingston Частота пам\'яті: 3000 МГц Кількість планок: 2 Призначення: для настільних ПК Штатні таймінги: CL15 Перевірка і корекція помилок (ECC): non-ECC Охолодження: радіатор Країна-виробник: Китай Гарантія: 60 міс....\r\n\r\n', 5),
(19, 'Patriot DDR4 16GB 3200 MHz Viper Steel', 2805, 'img/19/1.jpeg', 'Оперативная память Patriot DDR4 16GB 3200 MHz Viper Steel (PVS416G320C6) (F00185298) Память для настольных компьютеров • 16 ГБ • DDR4 • 3200 МГц • PC4-25600 • штатные тайминги: 16-18-18-36 • рабочее напряжение: 1,35 В....\r\n', 5),
(20, 'Corsair DDR4 SDRAM 8 GB (2x4GB) 2400 MHz', 1345, 'img/20/1.jpeg', 'Ціна: 1345 грн Об’єм пам’яті: 8 ГБ Кіт: 2x4 ГБ Тип пам\'яті: DDR4 SDRAM Бренд: Corsair Частота пам\'яті: 2400 МГц Кількість планок: 2 Призначення: для настільних ПК Штатні таймінги: CL16 Перевірка і корекція помилок (ECC): non-ECC Охолодження: радіатор Країна-виробник: Китай Гарантія: 36 міс....\r\n', 5),
(21, 'Asus ROG Crosshair VII Hero', 8457, 'img/21/1.jpeg', 'Ціна: 8457 грн Сокет: Socket AM4 Формфактор: ATX Бренд: Asus Підтримка процесорів: AMD Ryzen Чипсет (Північний міст): AMD X470 Вбудоване відео: немає Модель аудіокодека: SupremeFX S1220 Підтримувані типи пам\'яті: DDR4 Максимальний об\'єм оперативної пам\'яті: 64 Гб Контролер RAID: є Контролер RAID: 0, 1, 10 Слоти: PCI-E 2.x x1, PCI-E 2.x x16, PCI-E 3.x x16 Конектори живлення: CPU Power 4-pin, CPU Power 8-pin Призначення: Геймерська Кількість роз\'ємів M.2 (NGFF): 2 шт. Кількість роз\'ємів SATA IIІ: 6 шт. Роз\'єми задньої панелі: 1 x USB BIOS Flashback button, 1 x PS/2, 1 x Clear CMOS button, 5 х mini-jack 3,5 мм, 1 x USB Type-C, 2 x USB 2.0, 1 x LAN (RJ-45), 1 x S/PDIF, 9 x USB 3.1 Тип BIOS: UEFI Особливості материнської плати: USB 3.1, USB 3.0 Країна-виробник: Китай Гарантія: 36 міс....\r\n', 6),
(22, 'MSI B450M PRO-VDH MAX', 2219, 'img/22/1.jpeg', 'Ціна: 2219 грн Сокет: Socket AM4 Формфактор: mirco ATX Бренд: MSI Підтримка процесорів: AMD Ryzen Чипсет (Північний міст): AMD B450 Вбудоване відео: немає Модель аудіокодека: Realtek ALC892 Підтримувані типи пам\'яті: DDR4 Максимальний об\'єм оперативної пам\'яті: 64 Гб Контролер RAID: є Контролер RAID: 0, 1, 10 Слоти: PCI-E 2.x x1, PCI-E 3.x x16 Конектори живлення: CPU Power 8-pin Призначення: Звичайна Кількість роз\'ємів M.2 (NGFF): 1 шт. Кількість підтримуваних відеокарт: 1 шт. Кількість роз\'ємів SATA IIІ: 4 шт. Роз\'єми задньої панелі: 1 x PS/2, 1 x DVI-D, 4 x USB 2.0, 1 x USB 3.2, 1 x VGA, 1 x HDMI, 1 x VGA, 3 x mini-jack 3,5 мм Тип BIOS: UEFI Країна-виробник: Китай Гарантія: 36 міс....\r\n', 6),
(23, 'ASRock H310CM-HDV/M.2', 1851, 'img/23/1.jpeg', 'Ціна: 1851 грн Сокет: Socket 1151 Формфактор: mirco ATX Бренд: ASRock Підтримка процесорів: Intel Core i9, Intel Core i7, Intel Core i5, Intel Core i3 Чипсет (Північний міст): Intel H310 Вбудоване відео: немає Модель аудіокодека: Realtek ALC887 Підтримувані типи пам\'яті: DDR4 Максимальний об\'єм оперативної пам\'яті: 32 Гб Контролер RAID: немає Слоти: PCI-E 2.x x1, PCI-E 3.x x16 Конектори живлення: CPU Power 8-pin Призначення: Звичайна Кількість підтримуваних відеокарт: 1 шт. Кількість роз\'ємів SATA IIІ: 4 шт. Роз\'єми задньої панелі: 1 x PS/2, 2 x USB 3.1, 4 x USB 2.0, 1 x HDMI, 1 х D-Sub, 1 x DVI, 3 x mini-jack 3,5 мм, 1 x LAN (RJ-45) Тип BIOS: UEFI Особливості материнської плати: USB 3.1 Країна-виробник: Китай Гарантія: 24 міс....\r\n', 6),
(24, 'Gigabyte B450M H', 1650, 'img/24/1.jpeg', 'Ціна: 1650 грн Сокет: Socket AM4 Формфактор: mirco ATX Бренд: Gigabyte Підтримка процесорів: AMD Ryzen Чипсет (Північний міст): AMD B450 Вбудоване відео: немає Модель аудіокодека: Realtek ALC887 Підтримувані типи пам\'яті: DDR4 Максимальний об\'єм оперативної пам\'яті: 32 Гб Контролер RAID: є Контролер RAID: 0, 1, 10 Слоти: PCI-E 2.x x1, PCI-E 3.x x16 Конектори живлення: Main Power 24-pin, CPU Power 8-pin Призначення: Звичайна Кількість роз\'ємів M.2 (NGFF): 1 шт. Кількість підтримуваних відеокарт: 1 шт. Кількість роз\'ємів SATA IIІ: 4 шт. Роз\'єми задньої панелі: 4 x USB 3.1, 2 x PS/2, 1 х D-Sub, 1 x HDMI, 2 x USB 2.0, 1 x LAN (RJ-45), 3 x mini-jack 3,5 мм Тип BIOS: UEFI Особливості материнської плати: USB 3.1 Країна-виробник: Китай Гарантія: 36 міс....\r\n', 6),
(25, 'Apple iPhone XR 64Gb Product Red', 23826, 'img/25/1.jpeg', 'iPhone XR - представитель новой линейки смартфонов Apple. В версии XR (читается как \"десять R\") смартфон получил дизайн от стандартной модели iPhone X, но задняя панель выполнена по образу iPhone 8 из стекла. В линейке теперь есть выбор из 6 цветов. В отличии от X, XR оснащен IPS-матрицей, а не AMOLED, но это по-прежнему качественный экран с расширенной цветовой гаммой, пусть и с относительно невысоким разрешением. Начинка у смартфона новая. В качестве процессора используется чип Apple A12 Bionic, не просто быстрый, но и достаточно умный, благодаря поддержке машинного обучения. Фотографировать смартфон тоже умеет неплохо, в качестве основной камеры используется 12-мегапиrсельный модуль со светосилой f/1.9, в числе способностей которого запись видео в разрешение 4К с частотой 60 кадров в секунду....\r\n', 7),
(26, 'Samsung Galaxy A31 4/64GB blue', 6199, 'img/26/1.jpeg', 'Бренд: Samsung Бездротові технології: 2G, 3G (UMTS), 4G (LTE), Wi-Fi, NFC, GLONASS, GPS, Bluetooth Параметри дисплея: Super AMOLED, 1080 x 2400 (FHD+) Процесор: MediaTek MT6768 (2,0 ГГц + 1,7 ГГц) Модель: Galaxy A31 Матеріал корпусу: пластик Комплектація: смартфон, зарядний пристрій, інструкція, гарантійний талон Клас: флагман Додаткові характеристики: Beidou, Galileo, формати відео: MP4,M4V,3GP,3G2,WMV,ASF,AVI,FLV,MKV,WEBM, формати аудіо: MP3,M4A,3GA,AAC,OGG,OGA,WAV,WMA,AMR,AWB,FLAC,MID,MIDI,XMF,MXMF,IMY,RTTTL,RTX,OTA, Galaxy Buds+,Galaxy Buds,Galaxy Fit,Galaxy Fit e,Galaxy Watch,Galaxy Watch Active,Galaxy Watch Active2,Gear Fit,Gear Fit2,Gear Fit2 Pro,Gear Sport,Gear1,Gear2,Gear2 Neo,Gear S,Gear S2,Gear S3,Gear IconX,Gear IconX (2018) Рік випуску: 2020 Біометричний захист: сканер обличчя, сканер відбитків пальців Стандарт Bluetooth: 5.0 Основні характеристики Samsung SM-A315FZBUSEK Ціна: 6199 грн Корпус: сенсорний моноблок Діагональ: 6,4\" Тилова камера: 48 Мп Фронтальна камера: 20 Мп Камера: основна камера 48.0 Mп + 5.0 Mп + 8.0 Mп + 5.0 Mп, діафрагма f/2.0, f/2.4, f/2.2, f/2.4, запис відео FHD (1920 x 1080)@30fps, спалах основної камери, цифрове збільшення до 8x, фронтальна камера 20.0 Мп f/2.2 Оперативна пам\'ять: 4 ГБ Вбудована пам\'ять: 64 ГБ Підтримка карт пам\'яті: microSD Макс. об’єм карти пам\'яті: 512 ГБ Підтримка SIM-карт: 2x Бездротові технології: Wi-Fi IEEE 802.11 a/b/g/n/ac, A-GPS, GPS, GPS, ГЛОНАСС, Bluetooth v5.0, NFC, FM Інтернет: 2G: GSM 850 / 900 / 1800 / 1900, 3G: HSDPA 850 / 900 / 1900 / 2100, 4G: LTE band 1(2100), 2(1900), 3(1800), 5(850), 7(2600), 8(900), 20(800), 38(2600), 40(2300), 41(2500) Живлення: акумулятор 5000 мА/год ОС: Android 10 Прошивка: One UI 2.1 Тип SIM-карти: nanoSIM Розмір та вага Вага: 185 г Глибина: 0,9 см Висота: 15,9 см Ширина: 7,3 см Додаткова інформація...\r\n', 7),
(27, 'Xiaomi Redmi Note 9S 4/64GB Interstellar Grey', 5999, 'img/27/1.jpeg', 'Бренд: Xiaomi Бездротові технології: Bluetooth, Wi-Fi, GPS, інфрачервоний порт Процесор: Qualcomm Snapdragon 720G (2 х 2.3 ГГц + 6 x 1.8 ГГц) Модель: Redmi Note 9S Матеріал корпусу: скло, пластик Комплектація: Смартфон, адаптер живлення, кабель USB Type-C, скріпка для SIM-карти, гарантійний талон, керівництво користувача Біометричний захист: сканер відбитків пальців Стандарт Bluetooth: 5.0 Основні характеристики Xiaomi 629686 Ціна: 5999 грн Корпус: сенсорний моноблок Діагональ: 6,67\" Тилова камера: 48 Мп Фронтальна камера: 16 Мп Камера: 48 Мп + 8 Мп + 5 Мп + 2 Мп Оперативна пам\'ять: 4 ГБ Вбудована пам\'ять: 64 ГБ Підтримка карт пам\'яті: немає Підтримка SIM-карт: 2x Бездротові технології: Wi-Fi, GPS, Bluetooth, інфрачервоний порт ОС: Android 10 Тип SIM-карти: nanoSIM...\r\n', 7),
(28, 'Xiaomi Amazfit GTS Rose pink', 3499, 'img/28/1.jpeg', 'Ціна: 3499 грн Тип пристрою: смарт-годинник Сумісність з ОС: iOS 9.0 і вище, Android 4.4 і вище Інтерфейс підключення: Bluetooth Моніторинг: відстеження сну, кроки, серцевий ритм, будильник, тренувальне навантаження Датчики: акселерометр, гіроскоп, серцевого ритму, датчик освітлення, барометр, геомагнітний датчик Захист корпусу: від води та пилу (IP68) Бренд: Amazfit Колір: рожевий Живлення Тип батареї: Li-pol Ємність батареї: 220 мА/год Час роботи: 336 год Зарядка: від USB Екран Діагональ дисплея: 1,65\" Роздільна здатність екрана: 348x442 Відображення інформації: дисплей Тип дисплею/індикатора: AMOLED Тип дисплею (кольоровість): кольоровий...\r\n', 8),
(29, 'Xiaomi Mi Band 4 black', 659, 'img/29/1.jpeg', 'Ціна: 659 грн Тип пристрою: фітнес-браслет Сумісність з ОС: Android 4.4 і вище, iOS 9.0 і вище Інтерфейс підключення: Bluetooth Моніторинг: відстеження сну, кроки, серцевий ритм, плавання, будильник, підрахунок витрачених калорій, акселерометр, повідомлення, електронна пошта Датчики: акселерометр, гіроскоп, серцевого ритму, крокомір Захист корпусу: від води (5ATM) Бренд: Xiaomi Колір: чорний Живлення Ємність батареї: 135 мА/год Час роботи: 480 год Зарядка: від USB Екран Діагональ дисплея: 0,95\" Роздільна здатність екрана: 120x240 Відображення інформації: дисплей Тип дисплею/індикатора: AMOLED Тип дисплею (кольоровість): монохромний...\r\n', 8),
(30, 'Samsung Galaxy Watch 46mm silver', 305, 'img/30/1.jpeg', 'Ціна: 8799 грн Тип пристрою: смарт-годинник Сумісність з ОС: Tizen, Android, iOS Інтерфейс підключення: Bluetooth, Wi-Fi Датчики: акселерометр, гіроскоп, вимірювач пульсу, барометр, датчик освітлення Захист корпусу: від води та пилу (IP68) Бренд: Samsung Процесор: Exynos 9110 1.15 ГГц Об\'єм пам\'яті: 4 Гб Колір: сірий Оперативна пам\'ять: 0,75 ГБ Живлення Ємність батареї: 472 мА/год Зарядка: від зарядного пристрою Екран Діагональ дисплея: 1,3\" Роздільна здатність екрана: 360x360 Тип дисплею/індикатора: Super AMOLED Тип дисплею (кольоровість): кольоровий Додаткова інформація Країна-виробник: Китай Повідомлення: вібрація, SMS, виклики, електронна пошта, звукове, події календаря, соціальні мережі Матеріал корпусу: пластик, скло, метал Гарантія: 12 міс....\r\nДетальніше на epicentrk.ua\r\nhttps://epicentrk.ua/ua/shop/smart-chasy-samsung-chornyy-sm-r800nzsasek.html', 8),
(31, 'RED POINT Flip luxe для Samsung Galaxy J5', 127, 'img/31/1.jpeg', 'Ціна: 127 грн Тип чохла: чохол-фліп Сумісність пристрою: Samsung Сумісність із моделями: Samsung Galaxy J5 (2017) J530 Матеріал виготовлення: шкірозамінник...\r\n', 9),
(32, 'MakeFuture Air Case (Clear TPU)', 74, 'img/32/1.jpeg', 'Бренд: MakeFuture Основні характеристики MakeFuture MCA-SA10S Ціна: 199 грн Тип чохла: накладка на корпус Сумісність пристрою: Samsung Сумісність із моделями: Samsung A10s Матеріал виготовлення: термополіуретан Особливості: протипилова заглушка для захисту зарядного отвору, потовщення навколо отвору камери знижує ризик подряпин, безшовний дизайн, тривалий час зберігає прозорість і не жовтіє, підвищений захист від УФ-випромінювання...\r\n', 9),
(33, 'MakeFuture Air Case (Clear TPU) для Samsung', 105, 'img/33/1.jpeg', 'Бренд: MakeFuture\r\nСумісність пристрою: Samsung\r\nМатеріал виготовлення: термополіуретан\r\nТип чохла: накладка на корпус\r\nГарантія: від виробника', 9),
(34, 'PowerPlant для Samsung Galaxy', 52, 'img/34/1.jpeg', 'Бренд: PowerPlant\r\nСумісна модель: Samsung Galaxy A3 2016 Duos SM-A310\r\nВид: протиударні\r\nТип виробу: захисне скло\r\nСумісність пристрою: Samsung\r\nГарантія: від виробника', 10),
(35, 'PowerPlant для Lenovo P2', 96, 'img/35/1.jpeg', 'Бренд: PowerPlant\r\nСумісна модель: Lenovo P2\r\nВид: прозорі\r\nТип виробу: захисне скло\r\nСумісність пристрою: Lenovo\r\nГарантія: від виробника', 10),
(36, 'MakeFuture для Apple iPhone 7 Plus/8 Plus', 305, 'img/36/1.jpeg', 'Бренд: MakeFuture\r\nСумісна модель: Apple iPhone 7 Plus/8 Plus\r\nВид: прозорі\r\nТип виробу: захисне скло\r\nСумісність пристрою: Apple\r\nГарантія: від виробника', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_good` int(11) NOT NULL,
  `price` int(111) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adress` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `id_good`, `price`, `firstname`, `secondname`, `email`, `adress`) VALUES
(18, 2, 15, 24684, 'Денис', 'Бондар', 'example1@gmail.com', 'Харківська 1/2');

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
(1, 1, 'Комп\'ютери'),
(2, 1, 'Ноутбуки'),
(3, 1, 'Моноблоки'),
(4, 2, 'Процесори'),
(5, 2, 'Оперативна пам\'ять'),
(6, 2, 'Материнські плати'),
(7, 3, 'Смартфони'),
(8, 3, 'Смарт-годинники'),
(9, 4, 'Захисні плівки'),
(10, 4, 'Чохли');

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
  `status` int(11) NOT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `uidUsers`, `emailUsers`, `pwdUsers`, `uidGrand`, `status`) VALUES
(1, 'Zhenya', 'example@gmail.com', '$2y$10$uLiLjKBdc5Bgioi7pVAMdOeB0wUm5XCC03CqCC8p6eOEeVhQqF8Tq', 'Admin', 10),
(2, 'Denis', 'example1@gmail.com', '$2y$10$dmbwiQrhGSs5EyBY1PEiAeHiurjQAucCnG88SMFuwQyZk90p1txfu', 'user', 1),
(5, 'Admin', 'example2@gmail.com', '$2y$10$N0ET9yvZY/GwN3lIefXsge0w2dMPS0GDJ5HpGhq/UnHesj1LPBxHi', 'Admin', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
