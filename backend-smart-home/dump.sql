-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 17 2018 г., 11:38
-- Версия сервера: 5.7.23-24
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u0508700_smart-home`
--

-- --------------------------------------------------------

--
-- Структура таблицы `action`
--

CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `macro_id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `value` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `action`
--

INSERT INTO `action` (`id`, `macro_id`, `device_id`, `value`) VALUES
(3, 3, 1097, 'on'),
(4, 3, 1096, 'open'),
(7, 5, 1190, 'on'),
(8, 5, 1194, 'on'),
(9, 5, 1195, 'on'),
(10, 5, 1187, 'on'),
(11, 5, 1198, 'on'),
(12, 5, 1199, 'on'),
(13, 6, 1190, 'off'),
(14, 6, 1194, 'off'),
(15, 6, 1195, 'off'),
(16, 6, 1187, 'off'),
(17, 6, 1198, 'off'),
(18, 6, 1199, 'off'),
(19, 7, 1189, 'open'),
(20, 7, 1192, 'open'),
(21, 7, 1193, 'open'),
(22, 7, 1197, 'open'),
(23, 8, 1192, 'close'),
(24, 8, 1193, 'close'),
(25, 8, 1197, 'close'),
(26, 8, 1189, 'close'),
(27, 9, 1126, 'open'),
(28, 9, 1127, 'off'),
(29, 9, 1128, '45'),
(33, 11, 1261, 'close'),
(34, 11, 1262, 'off'),
(35, 11, 1264, 'close'),
(36, 11, 1265, 'off'),
(37, 11, 1272, 'close'),
(38, 11, 1273, 'off'),
(39, 11, 1274, 'off'),
(40, 11, 1267, 'close'),
(41, 11, 1268, 'close'),
(42, 11, 1269, 'off'),
(43, 11, 1270, 'off'),
(45, 13, 1108, 'on'),
(46, 13, 1107, 'close'),
(47, 14, 1109, 'on'),
(48, 14, 1107, 'close');

-- --------------------------------------------------------

--
-- Структура таблицы `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `value` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `device`
--

INSERT INTO `device` (`id`, `room_id`, `type_id`, `name`, `value`) VALUES
(1081, 321, 1, 'Входная дверь', 'close'),
(1082, 321, 2, 'Свет', 'on'),
(1083, 321, 5, 'Температура', '-87'),
(1084, 322, 4, 'Окно', 'open'),
(1085, 322, 2, 'Свет', 'on'),
(1086, 322, 5, 'Температура', '34'),
(1087, 323, 4, 'Левое окно', 'open'),
(1088, 323, 4, 'Правое окно', 'close'),
(1089, 323, 2, 'Левый свет', 'on'),
(1090, 323, 2, 'Правый свет', 'on'),
(1091, 323, 5, 'Температура на улице', '92'),
(1092, 324, 4, 'Окно', 'close'),
(1093, 324, 3, 'Светильник', 'off'),
(1094, 324, 2, 'Свет', 'off'),
(1095, 324, 6, 'Термостат', '20'),
(1096, 325, 1, 'Входная дверь', 'close'),
(1097, 325, 2, 'Свет', 'on'),
(1098, 325, 5, 'Температура', '-7'),
(1099, 326, 4, 'Окно', 'close'),
(1100, 326, 2, 'Свет', 'off'),
(1101, 326, 5, 'Температура', '87'),
(1102, 327, 4, 'Левое окно', 'close'),
(1103, 327, 4, 'Правое окно', 'open'),
(1104, 327, 2, 'Левый свет', 'on'),
(1105, 327, 2, 'Правый свет', 'on'),
(1106, 327, 5, 'Температура на улице', '93'),
(1107, 328, 4, 'Окно', 'close'),
(1108, 328, 3, 'Светильник', 'on'),
(1109, 328, 2, 'Свет', 'on'),
(1110, 328, 6, 'Термостат', '30'),
(1111, 329, 1, 'Входная дверь', 'open'),
(1112, 329, 2, 'Свет', 'off'),
(1113, 329, 5, 'Температура', '90'),
(1114, 330, 4, 'Окно', 'close'),
(1115, 330, 2, 'Свет', 'off'),
(1116, 330, 5, 'Температура', '70'),
(1117, 331, 4, 'Левое окно', 'close'),
(1118, 331, 4, 'Правое окно', 'open'),
(1119, 331, 2, 'Левый свет', 'on'),
(1120, 331, 2, 'Правый свет', 'off'),
(1121, 331, 5, 'Температура на улице', '69'),
(1122, 332, 4, 'Окно', 'close'),
(1123, 332, 3, 'Светильник', 'off'),
(1124, 332, 2, 'Свет', 'on'),
(1125, 332, 6, 'Термостат', '22'),
(1126, 333, 1, 'Входная дверь', 'open'),
(1127, 333, 2, 'Свет', 'off'),
(1128, 333, 5, 'Температура', '11'),
(1129, 334, 4, 'Окно', 'close'),
(1130, 334, 2, 'Свет', 'on'),
(1131, 334, 5, 'Температура', '-83'),
(1132, 335, 4, 'Левое окно', 'open'),
(1133, 335, 4, 'Правое окно', 'close'),
(1134, 335, 2, 'Левый свет', 'on'),
(1135, 335, 2, 'Правый свет', 'off'),
(1136, 335, 5, 'Температура на улице', '-80'),
(1137, 336, 4, 'Окно', 'close'),
(1138, 336, 3, 'Светильник', 'on'),
(1139, 336, 2, 'Свет', 'off'),
(1140, 336, 6, 'Термостат', '20'),
(1141, 337, 1, 'Входная дверь', 'open'),
(1142, 337, 2, 'Свет', 'off'),
(1143, 337, 5, 'Температура', '-75'),
(1144, 338, 4, 'Окно', 'close'),
(1145, 338, 2, 'Свет', 'on'),
(1146, 338, 5, 'Температура', '90'),
(1147, 339, 4, 'Левое окно', 'open'),
(1148, 339, 4, 'Правое окно', 'close'),
(1149, 339, 2, 'Левый свет', 'off'),
(1150, 339, 2, 'Правый свет', 'off'),
(1151, 339, 5, 'Температура на улице', '70'),
(1152, 340, 4, 'Окно', 'close'),
(1153, 340, 3, 'Светильник', 'off'),
(1154, 340, 2, 'Свет', 'off'),
(1155, 340, 6, 'Термостат', '13'),
(1156, 341, 1, 'Входная дверь', 'close'),
(1157, 341, 2, 'Свет', 'on'),
(1158, 341, 5, 'Температура', '-13'),
(1159, 342, 4, 'Окно', 'close'),
(1160, 342, 2, 'Свет', 'on'),
(1161, 342, 5, 'Температура', '7'),
(1162, 343, 4, 'Левое окно', 'open'),
(1163, 343, 4, 'Правое окно', 'open'),
(1164, 343, 2, 'Левый свет', 'off'),
(1165, 343, 2, 'Правый свет', 'off'),
(1166, 343, 5, 'Температура на улице', '73'),
(1167, 344, 4, 'Окно', 'close'),
(1168, 344, 3, 'Светильник', 'on'),
(1169, 344, 2, 'Свет', 'off'),
(1170, 344, 6, 'Термостат', '20'),
(1171, 345, 1, 'Входная дверь', 'close'),
(1172, 345, 2, 'Свет', 'on'),
(1173, 345, 5, 'Температура', '15'),
(1174, 346, 4, 'Окно', 'open'),
(1175, 346, 2, 'Свет', 'off'),
(1176, 346, 5, 'Температура', '39'),
(1177, 347, 4, 'Левое окно', 'close'),
(1178, 347, 4, 'Правое окно', 'close'),
(1179, 347, 2, 'Левый свет', 'off'),
(1180, 347, 2, 'Правый свет', 'on'),
(1181, 347, 5, 'Температура на улице', '90'),
(1182, 348, 4, 'Окно', 'close'),
(1183, 348, 3, 'Светильник', 'off'),
(1184, 348, 2, 'Свет', 'off'),
(1185, 348, 6, 'Термостат', '15'),
(1186, 349, 1, 'Входная дверь', 'close'),
(1187, 349, 2, 'Свет', 'off'),
(1188, 349, 5, 'Температура', '26'),
(1189, 350, 4, 'Окно', 'close'),
(1190, 350, 2, 'Свет', 'off'),
(1191, 350, 5, 'Температура', '-55'),
(1192, 351, 4, 'Левое окно', 'close'),
(1193, 351, 4, 'Правое окно', 'close'),
(1194, 351, 2, 'Левый свет', 'off'),
(1195, 351, 2, 'Правый свет', 'off'),
(1196, 351, 5, 'Температура на улице', '38'),
(1197, 352, 4, 'Окно', 'close'),
(1198, 352, 3, 'Светильник', 'off'),
(1199, 352, 2, 'Свет', 'off'),
(1200, 352, 6, 'Термостат', '10'),
(1201, 353, 1, 'Входная дверь', 'close'),
(1202, 353, 2, 'Свет', 'on'),
(1203, 353, 5, 'Температура', '-99'),
(1204, 354, 4, 'Окно', 'close'),
(1205, 354, 2, 'Свет', 'on'),
(1206, 354, 5, 'Температура', '54'),
(1207, 355, 4, 'Левое окно', 'open'),
(1208, 355, 4, 'Правое окно', 'open'),
(1209, 355, 2, 'Левый свет', 'off'),
(1210, 355, 2, 'Правый свет', 'off'),
(1211, 355, 5, 'Температура на улице', '-9'),
(1212, 356, 4, 'Окно', 'close'),
(1213, 356, 3, 'Светильник', 'on'),
(1214, 356, 2, 'Свет', 'off'),
(1215, 356, 6, 'Термостат', '20'),
(1216, 357, 1, 'Входная дверь', 'open'),
(1217, 357, 2, 'Свет', 'on'),
(1218, 357, 5, 'Температура', '95'),
(1219, 358, 4, 'Окно', 'open'),
(1220, 358, 2, 'Свет', 'off'),
(1221, 358, 5, 'Температура', '-53'),
(1222, 359, 4, 'Левое окно', 'open'),
(1223, 359, 4, 'Правое окно', 'open'),
(1224, 359, 2, 'Левый свет', 'on'),
(1225, 359, 2, 'Правый свет', 'off'),
(1226, 359, 5, 'Температура на улице', '-7'),
(1227, 360, 4, 'Окно', 'close'),
(1228, 360, 3, 'Светильник', 'off'),
(1229, 360, 2, 'Свет', 'off'),
(1230, 360, 6, 'Термостат', '20'),
(1231, 361, 1, 'Входная дверь', 'close'),
(1232, 361, 2, 'Свет', 'on'),
(1233, 361, 5, 'Температура', '-19'),
(1234, 362, 4, 'Окно', 'close'),
(1235, 362, 2, 'Свет', 'on'),
(1236, 362, 5, 'Температура', '28'),
(1237, 363, 4, 'Левое окно', 'open'),
(1238, 363, 4, 'Правое окно', 'open'),
(1239, 363, 2, 'Левый свет', 'off'),
(1240, 363, 2, 'Правый свет', 'off'),
(1241, 363, 5, 'Температура на улице', '55'),
(1242, 364, 4, 'Окно', 'close'),
(1243, 364, 3, 'Светильник', 'on'),
(1244, 364, 2, 'Свет', 'off'),
(1245, 364, 6, 'Термостат', '20'),
(1246, 365, 1, 'Входная дверь', 'close'),
(1247, 365, 2, 'Свет', 'on'),
(1248, 365, 5, 'Температура', '84'),
(1249, 366, 4, 'Окно', 'close'),
(1250, 366, 2, 'Свет', 'on'),
(1251, 366, 5, 'Температура', '83'),
(1252, 367, 4, 'Левое окно', 'open'),
(1253, 367, 4, 'Правое окно', 'open'),
(1254, 367, 2, 'Левый свет', 'off'),
(1255, 367, 2, 'Правый свет', 'off'),
(1256, 367, 5, 'Температура на улице', '90'),
(1257, 368, 4, 'Окно', 'close'),
(1258, 368, 3, 'Светильник', 'on'),
(1259, 368, 2, 'Свет', 'off'),
(1260, 368, 6, 'Термостат', '20'),
(1261, 369, 1, 'Входная дверь', 'open'),
(1262, 369, 2, 'Свет', 'off'),
(1263, 369, 5, 'Температура', '52'),
(1264, 370, 4, 'Окно', 'open'),
(1265, 370, 2, 'Свет', 'off'),
(1266, 370, 5, 'Температура', '98'),
(1267, 371, 4, 'Левое окно', 'close'),
(1268, 371, 4, 'Правое окно', 'open'),
(1269, 371, 2, 'Левый свет', 'off'),
(1270, 371, 2, 'Правый свет', 'off'),
(1271, 371, 5, 'Температура на улице', '57'),
(1272, 372, 4, 'Окно', 'open'),
(1273, 372, 3, 'Светильник', 'off'),
(1274, 372, 2, 'Свет', 'on'),
(1275, 372, 6, 'Термостат', '24'),
(1276, 373, 1, 'Входная дверь', 'open'),
(1277, 373, 2, 'Свет', 'off'),
(1278, 373, 5, 'Температура', '-97'),
(1279, 374, 4, 'Окно', 'close'),
(1280, 374, 2, 'Свет', 'off'),
(1281, 374, 5, 'Температура', '-38'),
(1282, 375, 4, 'Левое окно', 'close'),
(1283, 375, 4, 'Правое окно', 'close'),
(1284, 375, 2, 'Левый свет', 'on'),
(1285, 375, 2, 'Правый свет', 'on'),
(1286, 375, 5, 'Температура на улице', '88'),
(1287, 376, 4, 'Окно', 'close'),
(1288, 376, 3, 'Светильник', 'on'),
(1289, 376, 2, 'Свет', 'off'),
(1290, 376, 6, 'Термостат', '20'),
(1291, 377, 1, 'Входная дверь', 'close'),
(1292, 377, 2, 'Свет', 'on'),
(1293, 377, 5, 'Температура', '-96'),
(1294, 378, 4, 'Окно', 'close'),
(1295, 378, 2, 'Свет', 'on'),
(1296, 378, 5, 'Температура', '91'),
(1297, 379, 4, 'Левое окно', 'open'),
(1298, 379, 4, 'Правое окно', 'open'),
(1299, 379, 2, 'Левый свет', 'off'),
(1300, 379, 2, 'Правый свет', 'off'),
(1301, 379, 5, 'Температура на улице', '0'),
(1302, 380, 4, 'Окно', 'close'),
(1303, 380, 3, 'Светильник', 'on'),
(1304, 380, 2, 'Свет', 'off'),
(1305, 380, 6, 'Термостат', '20'),
(1306, 381, 1, 'Входная дверь', 'close'),
(1307, 381, 2, 'Свет', 'on'),
(1308, 381, 5, 'Температура', '39'),
(1309, 382, 4, 'Окно', 'close'),
(1310, 382, 2, 'Свет', 'on'),
(1311, 382, 5, 'Температура', '60'),
(1312, 383, 4, 'Левое окно', 'open'),
(1313, 383, 4, 'Правое окно', 'open'),
(1314, 383, 2, 'Левый свет', 'off'),
(1315, 383, 2, 'Правый свет', 'off'),
(1316, 383, 5, 'Температура на улице', '-18'),
(1317, 384, 4, 'Окно', 'close'),
(1318, 384, 3, 'Светильник', 'on'),
(1319, 384, 2, 'Свет', 'off'),
(1320, 384, 6, 'Термостат', '20'),
(1321, 385, 1, 'Входная дверь', 'close'),
(1322, 385, 2, 'Свет', 'on'),
(1323, 385, 5, 'Температура', '-11'),
(1324, 386, 4, 'Окно', 'close'),
(1325, 386, 2, 'Свет', 'on'),
(1326, 386, 5, 'Температура', '-96'),
(1327, 387, 4, 'Левое окно', 'open'),
(1328, 387, 4, 'Правое окно', 'open'),
(1329, 387, 2, 'Левый свет', 'off'),
(1330, 387, 2, 'Правый свет', 'off'),
(1331, 387, 5, 'Температура на улице', '30'),
(1332, 388, 4, 'Окно', 'close'),
(1333, 388, 3, 'Светильник', 'on'),
(1334, 388, 2, 'Свет', 'off'),
(1335, 388, 6, 'Термостат', '20');

-- --------------------------------------------------------

--
-- Структура таблицы `device_type`
--

CREATE TABLE `device_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `device_type`
--

INSERT INTO `device_type` (`id`, `name`) VALUES
(1, 'Электронный замок'),
(2, 'Люстра'),
(3, 'Светильник'),
(4, 'Электрокарниз'),
(5, 'Датчик температуры'),
(6, 'Термостат');

-- --------------------------------------------------------

--
-- Структура таблицы `macro`
--

CREATE TABLE `macro` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `macro`
--

INSERT INTO `macro` (`id`, `name`, `user_id`) VALUES
(3, '123123', 92),
(5, 'Включить весь свет', 98),
(6, 'Выключить весь свет', 98),
(7, 'Открыть все окна', 98),
(8, 'Закрыть все окна', 98),
(9, 'Ну, допустим, Макрос', 94),
(11, 'Police is coming', 103),
(13, 'Br hi', 92),
(14, 'Br gb', 92);

-- --------------------------------------------------------

--
-- Структура таблицы `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `room`
--

INSERT INTO `room` (`id`, `name`, `photo`, `user_id`) VALUES
(321, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 91),
(322, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 91),
(323, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 91),
(324, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 91),
(325, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 92),
(326, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 92),
(327, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 92),
(328, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 92),
(329, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 93),
(330, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 93),
(331, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 93),
(332, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 93),
(333, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 94),
(334, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 94),
(335, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 94),
(336, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 94),
(337, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 95),
(338, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 95),
(339, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 95),
(340, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 95),
(341, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 96),
(342, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 96),
(343, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 96),
(344, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 96),
(345, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 97),
(346, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 97),
(347, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 97),
(348, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 97),
(349, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 98),
(350, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 98),
(351, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 98),
(352, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 98),
(353, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 99),
(354, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 99),
(355, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 99),
(356, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 99),
(357, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 100),
(358, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 100),
(359, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 100),
(360, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 100),
(361, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 101),
(362, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 101),
(363, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 101),
(364, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 101),
(365, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 102),
(366, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 102),
(367, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 102),
(368, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 102),
(369, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 103),
(370, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 103),
(371, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 103),
(372, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 103),
(373, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 104),
(374, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 104),
(375, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 104),
(376, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 104),
(377, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 105),
(378, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 105),
(379, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 105),
(380, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 105),
(381, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 106),
(382, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 106),
(383, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 106),
(384, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 106),
(385, 'Коридор', 'http://smart-home.it-jump.ru/web/images/Коридор.png', 107),
(386, 'Кухня', 'http://smart-home.it-jump.ru/web/images/Кухня.png', 107),
(387, 'Зал', 'http://smart-home.it-jump.ru/web/images/Зал.png', 107),
(388, 'Спальня', 'http://smart-home.it-jump.ru/web/images/Спальня.png', 107);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `token` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `token`) VALUES
(91, 'ivan', 'pass', 'ggakuPCfm8J5x87Hk5sFUHX6m2tUJkWE'),
(92, 'test1', 'pass', 'XGcZpBJwavBNMC-xtLReNgSBP30eFy70'),
(93, 'test2', 'pass', 'g5HprQWCGcn90pnbyft0XN9gFGdzs3p9'),
(94, 'test3', 'pass', 'IkfPu0boVDqiLuDbSmOjnXt7QcQif90a'),
(95, 'test4', 'pass', 'XPC_mCbqC6rf31rN8ycjAQ23GupVntWS'),
(96, 'test5', 'pass', NULL),
(97, 'test6', 'pass', 'Y4cEhP-yZSe8sd265vMguuaXFD98Hsmd'),
(98, 'test7', 'pass', 'A_WlODtZLdRJpe72OV614y0aQwaIDVEX'),
(99, 'test8', 'pass', 'qVscZSSoYoyZHcnKTz_NQrTOTEAERQmX'),
(100, 'test9', 'pass', 'rskbXKeZCgJWPjCMcJajGrj6N7f5bFPS'),
(101, 'test10', 'pass', '36U2E3eCZkABV-iZub9anbBQDWI_LAxg'),
(102, 'test11', 'pass', NULL),
(103, 'test12', 'pass', '26KyywVWZVM5qJkRlVzTKqYkQrGe6j5N'),
(104, 'test13', 'pass', '8sty7mlY8f9TxJ1vkiea_nIFJaAX5BG8'),
(105, 'test14', 'pass', '1J7FBTNN4gjr92SLua2NCrVcA_o5r3nw'),
(106, 'test15', 'pass', 'rd8F3eWFcl3-S0aHt_wh0sDtXGcY9hFB'),
(107, 'test16', 'pass', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_id` (`device_id`),
  ADD KEY `macro_id` (`macro_id`);

--
-- Индексы таблицы `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Индексы таблицы `device_type`
--
ALTER TABLE `device_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `macro`
--
ALTER TABLE `macro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_ibfk_1` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `action`
--
ALTER TABLE `action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1336;

--
-- AUTO_INCREMENT для таблицы `device_type`
--
ALTER TABLE `device_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `macro`
--
ALTER TABLE `macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `action`
--
ALTER TABLE `action`
  ADD CONSTRAINT `action_ibfk_1` FOREIGN KEY (`device_id`) REFERENCES `device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `action_ibfk_2` FOREIGN KEY (`macro_id`) REFERENCES `macro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `device`
--
ALTER TABLE `device`
  ADD CONSTRAINT `device_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `device_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `device_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `macro`
--
ALTER TABLE `macro`
  ADD CONSTRAINT `macro_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
