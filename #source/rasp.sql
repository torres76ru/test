-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 22 2020 г., 18:07
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rasp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `рассписание`
--

CREATE TABLE `рассписание` (
  `id` int(11) NOT NULL,
  `понедельник` varchar(20) NOT NULL,
  `вторник` varchar(20) NOT NULL,
  `среда` varchar(20) NOT NULL,
  `четверг` varchar(20) NOT NULL,
  `пятница` varchar(20) NOT NULL,
  `суббота` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `рассписание`
--

INSERT INTO `рассписание` (`id`, `понедельник`, `вторник`, `среда`, `четверг`, `пятница`, `суббота`) VALUES
(1, 'мдк.02.01-22', '', '', '', 'сбд22-др', 'мдк.02.01-22-др'),
(2, 'убд21', '', 'убд21 | java21', '', '', 'сбд22'),
(3, 'java21', '', 'сбд22', 'убд21', '', 'убд21-др'),
(4, 'java21-др', '', '', 'мдк.02.01-22', '', 'сбд22-др'),
(5, 'убд21-др | java21-др', '', '', 'мдк.02.01-22-др', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `рассписание`
--
ALTER TABLE `рассписание`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `рассписание`
--
ALTER TABLE `рассписание`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
