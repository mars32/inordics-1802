-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 01 2019 г., 15:08
-- Версия сервера: 10.1.32-MariaDB
-- Версия PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mars32`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(256) NOT NULL,
  `PRICE` varchar(11) NOT NULL,
  `CURRENCY` varchar(11) NOT NULL,
  `PHOTO` varchar(256) NOT NULL,
  `DESCRIPTION` varchar(256) NOT NULL,
  `VENDER-CODE` varchar(11) NOT NULL,
  `SIZE` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`ID`, `NAME`, `PRICE`, `CURRENCY`, `PHOTO`, `DESCRIPTION`, `VENDER-CODE`, `SIZE`) VALUES
(1, 'Кеды', '4999', 'RUB', 'http://localhost/htdocs/images/7.jpg', 'DFKJNDFJ', '32156', '42'),
(2, 'BIG BEN', '99999', 'EUR', 'http://localhost/big-ben.png', 'DFHKJHDBSDJLBDHB', '565484', '$'),
(3, 'Куртка', '15000', 'RUB', 'http://localhost/htdocs/images/1.jpg', 'Самая теплая куртка для вас', '325164', 'L');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
