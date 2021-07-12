-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 13 2021 г., 01:09
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `shopsua`
--

-- --------------------------------------------------------

--
-- Структура таблицы `allo`
--

CREATE TABLE IF NOT EXISTS `allo` (
  `id_a` int(30) NOT NULL AUTO_INCREMENT,
  `name_a` text,
  `id_com` int(30) DEFAULT NULL,
  `price_a` int(30) DEFAULT NULL,
  PRIMARY KEY (`id_a`),
  KEY `id_com` (`id_com`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `allo`
--

INSERT INTO `allo` (`id_a`, `name_a`, `id_com`, `price_a`) VALUES
(1, 'TV', 2, 10000),
(2, 'TV', 4, 20000),
(3, 'Чайник', 2, 250),
(4, 'Блендер', 2, 600),
(5, 'Смартфон', 4, 15000),
(6, 'Cмартфон', 5, 25000),
(7, 'Смарт-часы', 5, 5000),
(8, 'Смарт-часы', 3, 1000),
(9, 'Миксер', 1, 500),
(10, 'Холодильник', 1, 10000);

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id_c` int(30) NOT NULL AUTO_INCREMENT,
  `name_c` text,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`id_c`, `name_c`) VALUES
(1, 'Bosch'),
(2, 'Samsung'),
(3, 'Magic'),
(4, 'Apple'),
(5, 'Huawei');

-- --------------------------------------------------------

--
-- Структура таблицы `rozetka`
--

CREATE TABLE IF NOT EXISTS `rozetka` (
  `id_r` int(30) NOT NULL AUTO_INCREMENT,
  `name_r` text,
  `id_com` int(30) DEFAULT NULL,
  `price_r` int(30) DEFAULT NULL,
  PRIMARY KEY (`id_r`),
  KEY `id_com` (`id_com`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `rozetka`
--

INSERT INTO `rozetka` (`id_r`, `name_r`, `id_com`, `price_r`) VALUES
(1, 'Чайник', 1, 1500),
(2, 'TV', 2, 5000),
(3, 'Смартфон', 2, 15000),
(4, 'Смартфон', 4, 20000),
(5, 'Блендер', 1, 500),
(6, 'Смарт-часы', 4, 10000),
(7, 'Холодильник', 2, 25000),
(8, 'Смартфон', 5, 40000),
(9, 'Наушники', 5, 5000),
(10, 'Чайник', 3, 1000);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `allo`
--
ALTER TABLE `allo`
  ADD CONSTRAINT `allo_ibfk_1` FOREIGN KEY (`id_com`) REFERENCES `company` (`id_c`);

--
-- Ограничения внешнего ключа таблицы `rozetka`
--
ALTER TABLE `rozetka`
  ADD CONSTRAINT `rozetka_ibfk_1` FOREIGN KEY (`id_com`) REFERENCES `company` (`id_c`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
