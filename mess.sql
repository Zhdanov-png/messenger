-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 02 2019 г., 06:53
-- Версия сервера: 5.6.43
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mess`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messenges`
--

CREATE TABLE `messenges` (
  `id` int(11) NOT NULL,
  `from` varchar(50) DEFAULT NULL,
  `to` varchar(50) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `text` longtext,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messenges`
--

INSERT INTO `messenges` (`id`, `from`, `to`, `datetime`, `text`, `status`) VALUES
(1, 'фadmin', 'demo', '2019-11-30 22:27:40', 'Привет', 'wait'),
(2, 'admin', 'demo', '2019-12-02 12:06:14', '             \r\n         666', 'wait'),
(3, 'admin', 'demo', '2019-12-02 12:06:37', '45564576765          \r\n         rest', 'wait'),
(4, 'demo', 'admin', '2019-12-02 12:08:40', 'Отвечаю!             \r\n         ', 'wait');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messenges`
--
ALTER TABLE `messenges`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messenges`
--
ALTER TABLE `messenges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
