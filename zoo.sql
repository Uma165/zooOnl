-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 13 2023 г., 22:11
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zoo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `applications`
--

CREATE TABLE `applications` (
  `id` int NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `surname` varchar(256) DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `applications`
--

INSERT INTO `applications` (`id`, `name`, `surname`, `phone`, `email`, `date`, `user_id`, `status`) VALUES
(2, 'admin', 'admin', '+7(891)-779-00-04', 'hhttdyijbcfy042004@gmail.com', '2023-12-14', 5, 1),
(3, 'admin', 'admin', '+7(891)-779-00-04', 'hhttdyijbcfy042004@gmail.com', '2023-12-15', 5, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `body` varchar(256) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `body`, `image`) VALUES
(1, 'Хищники', 'Сканирует окружающую среду из скрытой позиции до тех пор, пока не заметит добычу, а затем быстро совершает фиксированную внезапную атаку.', '11.jpg'),
(2, 'Птицы', 'Класс оперённых, теплокровных, яйцекладущих позвоночных, чьи передние конечности имеют форму крыльев. Изначально строение птиц приспособлено к полёту, хотя в настоящее время существует и много видов нелетающих птиц.', '12.jpg'),
(3, 'Пресмыкающиеся', 'Это позвоночные животные, которые перемещаются преимущественно ползком, волоча свое брюхо по земле. Другое название этих животных– рептилии.', '13.jpg'),
(4, 'Земноводные', 'Это группа животных, которая может обитать в воде и на суше. Кожа земноводных влажная и покрыта слизью. Земноводные бывают хвостатыми и бесхвостыми. ', '14.jpg'),
(5, 'Рыбы', 'это группа хордовых животных, обитающих в воде. Места их обитания - это моря, океаны, реки, ручьи, озера, пруды и т.д.', '15.jpg'),
(6, 'Насекомые', 'Это беспозвоночные животные, у которых ножки состоят из подвижных частей и члеников.', '16.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `body` varchar(256) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `post_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `breed` varchar(256) DEFAULT NULL,
  `age` varchar(256) DEFAULT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `name`, `description`, `image`, `breed`, `age`, `category_id`) VALUES
(1, 'Василиса', 'Международный статус этого вида - IUCN (LC) - существование в природе не вызывает опасений. Тем не менее, он включен в приложение II SITES - Конвенции о международной торговле редкими животными и растениями. ', '17.jpg', 'Камышовый кот ', '5 лет', 1),
(2, 'Миша', 'Большая панда настолько сильно отличается от других видов медведей, что долгое время её считали то родственником енота, то выделяли в отдельное семейство.', '18.jpg', 'Большая панда', '7 лет', 1),
(3, 'Васька', 'Существует два подвида японского макака – Macaca fuscata fuscata, наиболее распространённый и отличающийся округлой формой глазниц, и Macaca fuscata yakui, живущий только на о.Якусима и имеющий глазницы овальной формы.', '19.jpg', 'Японский макак', '2 года', 1),
(4, 'Пётр', 'В Северной Америке обычно употребляется название boreal owl, а в Европе Tengmalm’s owl в честь шведского натуралиста Петере Густова Тенгмальма. ', '20.jpg', 'Мохноногие сычи', '1 год', 2),
(5, 'Анна', 'Свое название этот попугай получил за цвет головы самца, действительно похожий на цвет спелой сливы.По международному статусу сливоголовый попугай относится к видам, существование которых вызывает наименьшие опасения – IUCN (LC).', '21.jpg', 'Кольчатые попугаи', '4 года', 2),
(6, 'Mareca', 'По международному статусу свиязь относится к видам, вызывающим наименьшие опасения – IUCN (LC). Является охотничьим видом, но, несмотря на активную охоту, считается наиболее благополучной из уток.', '22.jpg', 'Свиязь', '2 года', 2),
(7, 'Аспид', 'В отличие от других змей, Naja nigricollis может вести ночной или дневной образ жизни в зависимости от времени года, географического положения и средней дневной температуры.', '23.jpg', 'Черношейная кобра', '1 год', 3),
(8, 'Яна', 'Очень подвижная и проворная змея, по земле скользит с приподнятой передней частью тела. Книга рекордов Гиннесса утверждает, что чёрная мамба, возможно, является самой быстрой змеёй в мире и на коротких дистанциях развивает скорость до 16—19 км/ч.', '24.jpg', 'Чёрная мамба', '1 год', 3),
(9, 'Хора', 'Общая длина колеблется от 60 см до 1,2 м. Наблюдается половой диморфизм — самки крупнее самцов. Голова плоская, треугольная. Кончик морды украшен 2-3 длинными заострёнными чешуйками, которые вертикально торчат над ноздрями.', '25.jpg', 'Гадюка-носорог', '2 года', 3),
(10, 'Клава', 'Некрупная жаба, длина тела 40-90 мм. За глазами продолговатые железы – паротиды. Кожа спины с округлыми бугорками. Окраска крайне изменчива. Пятна образуют сложный изменчивый рисунок, особенно выраженный у взрослых самок.', '26.jpg', 'Монгольская жаба', '3 года', 4),
(11, 'Вера', 'Крупная жаба, длина тела 50-130 мм, в средиземноморских популяциях – до 200 мм. За глазами продолговатые железы – паротиды. Кожа спины с округлыми бугорками. Сверху светло-серая, серая, коричневая или оливково-бурая. ', '27.jpg', 'Обыкновенная жаба', '2 года', 4),
(12, 'Бородавка ', 'Жаба средних размеров; максимальная длина до 120 мм. Кожа сверху покрыта гладкими бугорками и острыми шипиками (у самцов). За глазами расположены вытянутые железы – паротиды.', '28.jpg', 'Зелёная жаба', '3 года', 4),
(13, 'Птице', 'Длина тела до 25 см. В спинном плавнике 13 колючих лучей и 10-11 мягких; в анальном плавнике 3 колючих луча и 6-7 мягких. В грудном плавнике 16-17 лучей, верхние из которых раздвоены. Грудные плавники имеют округлую форму.', '29.jpg', 'Крылатка-зебра', '3 месяца', 5),
(14, 'Алла', 'Длина тела до 19 см. В спинном плавнике 13 колючих лучей и 10 мягких; в анальном плавнике 3 колючих луча и 6 - 7 мягких. В грудном плавнике 18 - 20 лучей. Верхние и средние лучи грудного плавника сильно удлинены.', '30.jpg', 'Момбасская крылатка', '5 месяца', 5),
(15, 'Клоун', 'Длина тела до 9 см. В спинном плавнике 10-11 колючих лучей и 13-17 мягких; в анальном плавнике 2 колючих луча и 11-13 мягких. В грудном плавнике 16-18 лучей.', '31.jpg', 'Ложный клоун', '4 месяца', 5),
(16, 'Голубка', 'Необычная ярко-синяя, отливающая металлическим блеском, окраска крыльев этих тропических бабочек связана с оптическим эффектом: чешуйки их крыльев не имеют пигмента, они отражают и преломляют свет.', '32.jpg', 'Морфо пелеидес', '2 недели', 6),
(17, 'Хана', 'Ахатина имеет узкую коническую раковину, ширина которой примерно в 2 раза меньше длины. Раковина имеет до 9 витков. Размер раковины - до 20 см длиной и до 12 см диаметром. ', '33.jpg', 'Африканская улитка', '1 неделя', 6),
(18, 'Пушинка', 'Одна из крупнейших бабочек в мире, размах её крыльев может достигать 25 - 28 см. Крылья этой ночной бабочки окрашены в разные оттенки коричневого, ярко-красного, жёлтого и розового цветов и имеют по одному прозрачному «окошку» треугольной формы.', '34.jpg', 'Павлиноглазка атлас.', '1 месяц', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `schedule`
--

CREATE TABLE `schedule` (
  `id` int NOT NULL,
  `date` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `schedule`
--

INSERT INTO `schedule` (`id`, `date`, `time`) VALUES
(8, 'Понедельник', '10:00-18:00'),
(9, 'Вторник', '10:00-18:00'),
(10, 'Среда', '10:00-18:00'),
(11, 'Четверг', 'Санитарный день'),
(12, 'Пятница', '10:00-18:00'),
(13, 'Суббота', '10:00-18:00'),
(14, 'Воскресенье', '10:00-18:00');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `surname` varchar(256) NOT NULL,
  `patronymic` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `surname`, `patronymic`, `email`, `password`, `role`) VALUES
(2, 'Юлия12', 'Юлия', 'Юлия', 'Юлия', 'schmakowa.djulia@yandex.ru', '$2y$13$SaqbZqBSXu2eogQLFFxK8.jmvbFFpQaqRRppRIEZ3jJt0wIO7iyMC', 0),
(3, 'Марина', 'Марина', 'Горланова', 'Михайловна', 'schmakowa.djia@yandex.ru', '$2y$13$TwK8quXwtBkow8HnbzZuyOcPlrC5sA26Y6uxtObsSTVLwxxlTEA4O', 0),
(5, 'admin', 'Юлия', 'Шмакова', 'Михайловна', 'schmakow.djulia@yandex.ru', '$2y$13$8OVuehnbj9Y1gAl5iNe7Au8HqVoA/JWo3tSF3sefLjuGr.Ng40l4O', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
