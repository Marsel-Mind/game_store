-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 10 2023 г., 17:23
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `game_store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Games`
--

CREATE TABLE `Games` (
  `id_game` int NOT NULL,
  `id_seller` int DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `id_genre` int DEFAULT NULL,
  `developer` varchar(255) DEFAULT NULL,
  `release_year` date DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `OS` varchar(55) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Games`
--

INSERT INTO `Games` (`id_game`, `id_seller`, `cover`, `title`, `id_genre`, `developer`, `release_year`, `price`, `description`, `OS`, `file`) VALUES
(1, 1, 'images\\1.jpg', 'Minecraft', 4, 'kkkkkkk', '2014-07-09', 1900.00, 'Очень классная игра песочница', 'windows 10 ', 'https://rutor-game.info/index.php?do=download&id=3181'),
(2, 1, 'images\\3.jpg', 'don\'t strave together ', 2, 'ghtryhjfgdg', '2018-10-02', 572.00, 'gfghhhhhhfghdfghfdghfdgh', 'windows 10 ', 'https://rutor-game.info/index.php?do=download&id=4665'),
(3, 1, 'images\\2.jpg', 'little nithgmares ', 2, 'ghjyjtu', '2017-07-14', 544.00, 'Хоррор с загадками ', 'windows 10 ', 'https://rutor-game.info/index.php?do=download&id=1280'),
(4, 1, 'images\\4.jpg', 'astroneer ', 4, 'fgrstgrtdg', '2018-07-11', 800.00, 'gretgrtthgfdghtyh', 'windows 10 ', 'https://rutor-game.info/index.php?do=download&id=6336'),
(5, 1, 'images\\5.jpg', 'nier automata', 1, 'gfhbtrhtyr', '2016-07-05', 534.00, 'dfgthjynyujutreg', 'windows 10', 'https://rutor-game.info/index.php?do=download&id=2475'),
(6, 1, 'images\\6.jpg', 'Хогвартс. Наследие', 2, 'gfhyhty', '2023-03-07', 700.00, 'ergrtdgrtg', 'windows 10 ', 'https://rutor-game.info/index.php?do=download&id=6735'),
(7, 1, 'images\\7.jpg', 'Atomic Heart', 2, 'bfgbfgtyhf', '2022-03-17', 5000.00, 'fgdsfer', 'windows 10 ', 'https://rutor-game.info/index.php?do=download&id=6456');

-- --------------------------------------------------------

--
-- Структура таблицы `Genres`
--

CREATE TABLE `Genres` (
  `id_genre` int NOT NULL,
  `name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Genres`
--

INSERT INTO `Genres` (`id_genre`, `name`) VALUES
(1, 'Экшен'),
(2, 'Приключение '),
(3, 'Стратегия'),
(4, 'Песочница');

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE `Orders` (
  `id_order` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_seller` int DEFAULT NULL,
  `id_game` int DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Reviews`
--

CREATE TABLE `Reviews` (
  `id_review` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_seller` int DEFAULT NULL,
  `id_game` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Sellers`
--

CREATE TABLE `Sellers` (
  `id_seller` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `passport_series` varchar(6) DEFAULT NULL,
  `passport_number` varchar(4) DEFAULT NULL,
  `login` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Sellers`
--

INSERT INTO `Sellers` (`id_seller`, `name`, `email`, `phone`, `passport_series`, `passport_number`, `login`, `password`) VALUES
(1, 'Олег Попов', 'mailmail@gmail.com', '+79834999565', '666655', '4445', 'oleg', 'popov');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id_user` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `login` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Games`
--
ALTER TABLE `Games`
  ADD PRIMARY KEY (`id_game`),
  ADD KEY `id_seller` (`id_seller`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Индексы таблицы `Genres`
--
ALTER TABLE `Genres`
  ADD PRIMARY KEY (`id_genre`);

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_seller` (`id_seller`),
  ADD KEY `id_game` (`id_game`);

--
-- Индексы таблицы `Reviews`
--
ALTER TABLE `Reviews`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_seller` (`id_seller`),
  ADD KEY `id_game` (`id_game`);

--
-- Индексы таблицы `Sellers`
--
ALTER TABLE `Sellers`
  ADD PRIMARY KEY (`id_seller`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Games`
--
ALTER TABLE `Games`
  MODIFY `id_game` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `Genres`
--
ALTER TABLE `Genres`
  MODIFY `id_genre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id_order` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Reviews`
--
ALTER TABLE `Reviews`
  MODIFY `id_review` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Sellers`
--
ALTER TABLE `Sellers`
  MODIFY `id_seller` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Games`
--
ALTER TABLE `Games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`id_seller`) REFERENCES `Sellers` (`id_seller`),
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `Genres` (`id_genre`);

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id_user`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_seller`) REFERENCES `Sellers` (`id_seller`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`id_game`) REFERENCES `Games` (`id_game`);

--
-- Ограничения внешнего ключа таблицы `Reviews`
--
ALTER TABLE `Reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id_user`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`id_seller`) REFERENCES `Sellers` (`id_seller`),
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`id_game`) REFERENCES `Games` (`id_game`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
