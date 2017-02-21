-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 21 2017 г., 16:02
-- Версия сервера: 5.7.17
-- Версия PHP: 7.0.16-1~dotdeb+8.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `csgo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `casegame`
--

CREATE TABLE `casegame` (
  `id` int(11) NOT NULL,
  `items` text NOT NULL,
  `price` int(11) NOT NULL,
  `images` text NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `type` int(11) NOT NULL,
  `profit` int(11) NOT NULL DEFAULT '0',
  `percent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `casegame`
--

INSERT INTO `casegame` (`id`, `items`, `price`, `images`, `name`, `url`, `type`, `profit`, `percent`) VALUES
(1, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"67\",\"68\",\"69\",\"70\",\"71\",\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\",\"80\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\",\"91\",\"92\",\"93\",\"94\",\"95\",\"96\",\"97\",\"98\",\"99\",\"100\",\"101\",\"102\",\"103\",\"104\",\"105\",\"106\",\"107\",\"108\",\"109\",\"110\",\"111\",\"112\",\"113\",\"114\",\"115\",\"116\",\"117\",\"118\",\"119\",\"120\",\"121\",\"122\",\"123\",\"124\",\"125\",\"126\",\"127\",\"128\",\"129\",\"130\",\"131\",\"132\",\"133\",\"134\",\"135\",\"136\",\"137\",\"138\",\"139\",\"140\",\"141\",\"142\",\"143\",\"144\",\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\",\"157\",\"158\",\"159\",\"160\",\"161\",\"162\",\"163\",\"164\"]', 39, '/files/milspec.png', 'Случайное армейское', 'milspec', 1, 234, 0),
(2, '[\"256\",\"257\",\"258\",\"259\",\"260\",\"261\",\"262\",\"263\",\"264\",\"265\",\"266\",\"267\",\"268\",\"269\",\"270\",\"271\",\"272\",\"273\",\"274\",\"275\",\"276\",\"277\",\"278\",\"279\",\"280\",\"281\",\"165\",\"166\",\"167\",\"168\",\"169\",\"170\",\"171\",\"172\",\"173\",\"174\",\"175\",\"176\",\"177\",\"178\",\"179\",\"180\",\"181\",\"182\",\"183\",\"184\",\"185\",\"186\",\"187\",\"188\",\"189\",\"190\",\"191\",\"192\",\"193\",\"194\",\"195\",\"196\",\"197\",\"198\",\"199\",\"200\",\"201\",\"202\",\"203\",\"204\",\"205\",\"206\",\"207\",\"208\",\"209\",\"210\",\"211\",\"212\",\"213\",\"214\",\"215\",\"216\",\"217\",\"218\",\"219\",\"220\",\"221\",\"222\",\"223\",\"224\",\"225\",\"226\",\"227\",\"228\",\"229\",\"230\",\"231\",\"232\",\"233\",\"234\",\"235\",\"236\",\"237\",\"238\",\"239\",\"240\",\"241\",\"242\",\"243\",\"244\",\"245\",\"246\",\"247\",\"248\",\"249\",\"250\",\"251\",\"252\",\"253\",\"254\",\"255\"]', 149, '/files/restricted.png', 'Случайное запрещенное', 'restricted', 1, 864, 0),
(3, '[\"282\",\"283\",\"284\",\"285\",\"286\",\"287\",\"288\",\"289\",\"290\",\"291\",\"292\",\"293\",\"294\",\"295\",\"296\",\"297\",\"298\",\"299\",\"300\",\"301\",\"302\",\"303\",\"304\",\"305\",\"306\",\"307\",\"308\",\"309\",\"310\",\"311\",\"312\",\"313\",\"314\",\"315\",\"316\",\"317\",\"318\",\"319\",\"320\",\"321\",\"322\",\"323\",\"324\",\"325\",\"326\",\"327\",\"328\",\"329\",\"330\",\"331\",\"332\",\"333\",\"334\",\"335\",\"336\",\"337\",\"338\",\"339\",\"340\",\"341\",\"342\",\"343\",\"344\",\"345\",\"367\"]', 299, '/files/classified.png', 'Случайное засекреченное', 'classified', 1, 0, 0),
(4, '[\"346\",\"347\",\"348\",\"349\",\"350\",\"351\",\"352\",\"353\",\"354\",\"355\",\"356\",\"357\",\"358\",\"359\",\"360\",\"361\",\"362\",\"363\",\"364\",\"365\",\"366\",\"368\",\"369\",\"370\",\"371\",\"372\",\"373\",\"374\",\"375\",\"376\",\"377\",\"378\",\"379\",\"380\",\"381\",\"382\",\"383\"]', 999, '/files/covert.png', 'Случайное тайное', 'covert', 1, 1998, 0),
(5, '[\"384\",\"385\",\"386\",\"387\",\"388\",\"389\",\"390\",\"391\",\"392\",\"393\",\"394\",\"395\",\"396\",\"397\",\"398\",\"399\",\"400\",\"401\",\"402\",\"403\",\"404\",\"405\",\"406\",\"407\",\"408\",\"409\",\"410\",\"411\",\"412\",\"413\",\"414\",\"415\",\"416\",\"417\",\"418\",\"419\",\"420\",\"421\",\"422\"]', 6990, '/files/rare.png', 'Случайный нож', 'knife', 1, 6990, 0),
(6, '[\"284\",\"293\",\"307\",\"322\",\"343\",\"344\",\"355\",\"357\",\"358\",\"359\",\"360\",\"370\",\"8\",\"169\",\"170\",\"171\"]', 299, '/files/case_awp.png', 'Случайное AWP', 'awp', 0, 1706, 0),
(7, '[\"283\",\"291\",\"301\",\"310\",\"321\",\"338\",\"345\",\"347\",\"348\",\"349\",\"350\",\"351\",\"352\",\"365\",\"2\",\"86\",\"166\",\"167\",\"238\"]', 299, '/files/case_ak.png', 'Случайный AK-47', 'ak47', 0, 369, 0),
(8, '[\"299\",\"305\",\"319\",\"369\",\"161\",\"162\",\"163\",\"164\",\"280\",\"281\",\"237\",\"246\"]', 79, '/files/case_usps.png', 'Случайный USP-S', 'ups', 0, 79, 0),
(9, '[\"309\",\"314\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"208\",\"209\",\"210\",\"211\",\"212\",\"213\",\"214\"]', 79, '/files/case_glock.png', 'Случайный Glock-18', 'glock', 0, 481, 0),
(10, '[\"285\",\"294\",\"341\",\"342\",\"362\",\"16\",\"17\",\"18\",\"19\",\"177\",\"178\",\"179\",\"180\",\"181\",\"182\",\"183\",\"184\",\"185\"]', 79, '/files/case_deagle.png', 'Случайный Desert Eagle', 'desert_eagle', 0, 388, 0),
(11, '[\"292\",\"306\",\"311\",\"353\",\"354\",\"3\",\"4\",\"5\",\"6\",\"7\",\"168\"]', 99, '/files/case_aug.png', 'Случайный AUG', 'аug', 0, 0, 0),
(12, '[\"315\",\"373\",\"374\",\"375\",\"376\",\"382\",\"383\",\"59\",\"60\",\"256\",\"165\",\"221\",\"229\",\"247\"]', 299, '/files/case_m4a4.png', 'Случайный M4A4', 'm4a4', 0, 989, 0),
(13, '[\"282\",\"287\",\"296\",\"325\",\"346\",\"366\",\"371\",\"372\",\"57\",\"58\",\"216\",\"217\",\"218\",\"219\",\"220\"]', 299, '/files/case_m4a1.png', 'Случайный M4A1-S', 'm4a1s', 0, 1304, 0),
(14, '[\"301\",\"328\",\"340\",\"369\",\"371\",\"23\",\"28\",\"56\",\"61\",\"63\",\"123\",\"155\",\"393\",\"394\",\"399\",\"400\",\"410\",\"417\",\"207\",\"215\",\"231\",\"251\"]', 149, '/files/crate_community_9.e8303075e1a0969497a4502140ea47ecc65b4c50.png', 'Shadow Case', 'wildfire', 2, 0, 0),
(15, '[\"286\",\"330\",\"338\",\"367\",\"376\",\"6\",\"17\",\"98\",\"124\",\"126\",\"141\",\"392\",\"423\",\"424\",\"425\",\"265\",\"279\",\"201\",\"224\",\"227\",\"234\"]', 99, '/files/crate_community_10.a7a2e0b4f6ee7a99b25c531b2d3bdef5147200f7.png', 'Revolver Case', 'revolver', 2, 0, 0),
(16, '[\"311\",\"329\",\"333\",\"350\",\"363\",\"12\",\"34\",\"40\",\"88\",\"112\",\"152\",\"156\",\"412\",\"422\",\"261\",\"267\",\"179\",\"214\",\"235\"]', 99, '/files/crate_gamma_2.ab916b78e7093039642cc7538466bf87cf314363.png', 'Gamma 2 Case', 'gamma2', 2, 0, 0),
(17, '[\"306\",\"316\",\"331\",\"337\",\"346\",\"377\",\"25\",\"39\",\"44\",\"75\",\"114\",\"389\",\"411\",\"422\",\"428\",\"174\",\"205\",\"236\",\"244\",\"255\"]', 99, '/files/crate_community_12.7555fc0b45c4d1e0ff1c117af393463f29f20f66.png', 'Chroma 3 Case', 'chroma3', 2, 104, 0),
(18, '[\"293\",\"316\",\"327\",\"362\",\"365\",\"21\",\"37\",\"49\",\"96\",\"129\",\"151\",\"390\",\"437\",\"456\",\"256\",\"266\",\"217\",\"237\"]', 99, '/files/crate_operation_ii.5e5104a6291741c5693a1e78bd6ecc9560b51f0a.png', 'Operation Bravo Case', 'bravo', 2, 0, 0),
(19, '[\"314\",\"324\",\"341\",\"366\",\"379\",\"82\",\"89\",\"99\",\"130\",\"158\",\"390\",\"396\",\"404\",\"407\",\"421\",\"175\",\"241\",\"242\",\"243\"]', 99, '/files/crate_community_4.f0d23848527b7be0f1fc9556b1f3ecfb1193ee40.png', 'Operation Breakout Weapon Case', 'breakout', 2, 0, 0),
(20, '[\"291\",\"298\",\"315\",\"359\",\"364\",\"45\",\"54\",\"79\",\"113\",\"451\",\"457\",\"467\",\"486\",\"278\",\"182\",\"191\",\"222\"]', 99, '/files/crate_community_6.4a84ff42a0e0149973c8580dd23f8ba6e7c68142.png', 'Chroma Case', 'chroma', 2, 0, 0),
(21, '[\"322\",\"345\",\"378\",\"26\",\"59\",\"72\",\"427\",\"458\",\"482\",\"262\",\"206\",\"233\"]', 99, '/files/crate_esports_2013.c4fd3c71742688383914a7ef7127652764f4567c.png', 'eSports 2013 Case', 'esports_2013', 2, 0, 0),
(22, '[\"288\",\"292\",\"302\",\"343\",\"349\",\"374\",\"11\",\"62\",\"87\",\"132\",\"161\",\"439\",\"472\",\"270\",\"178\",\"213\",\"223\",\"226\"]', 99, '/files/crate_esports_2014_summer.e579e3f7ca004fd9b51aa0f597590c936bb9f67c.png', 'eSports 2014 Summer Case', 'esports_summer_2014', 2, 0, 0),
(23, '[\"308\",\"342\",\"344\",\"382\",\"31\",\"36\",\"42\",\"93\",\"106\",\"116\",\"415\",\"448\",\"260\",\"166\"]', 99, '/files/crate_esports_2013_14.a83d1976bb20db8b4a64e7acad93aac87127ddd5.png', 'eSports 2013 Winter Case', 'esports_winter_2013', 2, 0, 0),
(24, '[\"318\",\"323\",\"326\",\"347\",\"357\",\"47\",\"52\",\"95\",\"110\",\"160\",\"386\",\"397\",\"408\",\"413\",\"414\",\"419\",\"268\",\"269\",\"192\",\"229\"]', 99, '/files/crate_community_8.3cd07b46c7bcb7577453816c5d2f8afdbee98234.png', 'Falchion Case', 'falchion', 2, 0, 0),
(25, '[\"299\",\"300\",\"325\",\"351\",\"375\",\"15\",\"46\",\"101\",\"115\",\"139\",\"144\",\"388\",\"392\",\"398\",\"409\",\"415\",\"418\",\"264\",\"272\",\"276\",\"168\"]', 99, '/files/crate_community_3.ce832a92f9fc329dc87d7a802374b918b07cdb84.png', 'Huntsman Weapon Case', 'huntsman', 2, 0, 0),
(26, '[\"283\",\"334\",\"336\",\"354\",\"355\",\"71\",\"91\",\"147\",\"153\",\"436\",\"456\",\"494\",\"272\",\"277\",\"281\",\"194\"]', 99, '/files/crate_community_2.49174abddcccb6519b83d27d0cff476e1c44cc57.png', 'Operation Phoenix Weapon Case', 'phoenix', 2, 0, 0),
(27, '[\"290\",\"320\",\"332\",\"352\",\"380\",\"35\",\"38\",\"67\",\"78\",\"154\",\"390\",\"439\",\"467\",\"470\",\"165\",\"211\",\"216\",\"253\"]', 99, '/files/crate_community_5.49a38d2d3afff918ae3b5c5bc2ba2f99b02888f3.png', 'Operation Vanguard Weapon Case', 'vanguard', 2, 0, 0),
(28, '[\"285\",\"358\",\"7\",\"81\",\"128\",\"392\",\"396\",\"456\",\"280\",\"209\",\"217\"]', 99, '/files/crate_valve_1.23c783d005b446a1004c97057cfb5ac2d8dae186.png', 'CS:GO Weapon Case', 'weapon', 2, 0, 0),
(29, '[\"317\",\"319\",\"368\",\"27\",\"57\",\"104\",\"122\",\"142\",\"469\",\"472\",\"493\",\"189\",\"198\",\"232\",\"249\"]', 99, '/files/crate_valve_2.912031176f2320d2d39f449ab3e27c41f5ec7faa.png', 'CS:GO Weapon Case 2', 'weapon_2', 2, 0, 0),
(30, '[\"303\",\"312\",\"361\",\"9\",\"24\",\"51\",\"102\",\"497\",\"425\",\"438\",\"491\",\"176\",\"181\",\"199\",\"254\"]', 99, '/files/crate_valve_3.b49dc22a06991946e849c7b364b7d5876534ef61.png', 'CS:GO Weapon Case 3', 'weapon_3', 2, 109, 0),
(31, '[\"282\",\"289\",\"307\",\"356\",\"373\",\"30\",\"43\",\"48\",\"119\",\"436\",\"446\",\"494\",\"258\",\"190\",\"193\",\"250\"]', 99, '/files/crate_community_1.b176b8ca60249d0a2e7c6d72ec7d2d1a9632bd06.png', 'Winter Offensive Weapon Case', 'winter_offensive', 2, 335, 0),
(32, 'null', 99, '/files/crate_community_13.9a7d2f757ddbdc915aa005def74ac186a457346a.png', 'Gamma Case', 'gamma', 2, 0, 0),
(33, '[\"519\",\"520\",\"521\",\"522\",\"523\",\"524\",\"525\",\"526\",\"527\",\"528\",\"529\",\"530\",\"531\",\"532\",\"533\",\"534\",\"535\",\"536\",\"537\",\"538\",\"539\",\"540\",\"541\",\"542\",\"543\",\"544\",\"545\",\"546\",\"547\",\"548\",\"549\",\"550\",\"551\",\"552\",\"553\",\"554\",\"555\",\"556\",\"557\",\"558\",\"559\",\"560\",\"561\",\"562\",\"563\",\"564\",\"565\",\"566\",\"567\",\"568\",\"569\",\"570\",\"571\",\"572\",\"573\",\"574\"]', 299, '/files/case_stickers.png', 'Случайная наклейка', 'sticker', 0, 708, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cfg`
--

CREATE TABLE `cfg` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `steam` text NOT NULL,
  `client_id` text NOT NULL,
  `client_secret` text NOT NULL,
  `curs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cfg`
--

INSERT INTO `cfg` (`id`, `title`, `description`, `steam`, `client_id`, `client_secret`, `curs`) VALUES
(1, '', '', '78B57957698E0BBEEFC993B3E63E83D2', '5669530', 'NQUuWPjWqAjvJaJ6de0N', 55);

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `caseid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name_ru` text NOT NULL,
  `name_en` text NOT NULL,
  `classid` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `rar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `name_ru`, `name_en`, `classid`, `price`, `rar`) VALUES
(1, 'Negev | Анодированная синева', 'Negev | Anodized Navy ', '310778274', 2792, 'milspec'),
(2, 'AK-47 | Черный глянец', 'AK-47 | Black Laminate ', '310801874', 477, 'milspec'),
(3, 'AUG | Анодированная синева', 'AUG | Anodized Navy ', '310776678', 410, 'milspec'),
(4, 'AUG | Медянка', 'AUG | Copperhead ', '310777475', 318, 'milspec'),
(5, 'AUG | Хот-род', 'AUG | Hot Rod ', '310777302', 2787, 'milspec'),
(6, 'AUG | Рикошет', 'AUG | Ricochet ', '1440503485', 10, 'milspec'),
(7, 'AUG | Крылья', 'AUG | Wings ', '372455526', 52, 'milspec'),
(8, 'AWP | Змеиная кожа', 'AWP | Snake Camo ', '310781076', 328, 'milspec'),
(9, 'CZ75-Auto | Кровавая паутина', 'CZ75-Auto | Crimson Web ', '350472176', 11, 'milspec'),
(10, 'CZ75-Auto | Изумруд', 'CZ75-Auto | Emerald ', '992107920', 114, 'milspec'),
(11, 'CZ75-Auto | Гексан', 'CZ75-Auto | Hexane ', '549063331', 9, 'milspec'),
(12, 'CZ75-Auto | Штамп', 'CZ75-Auto | Imprint ', '2149488793', 5, 'milspec'),
(13, 'CZ75-Auto | Нитро', 'CZ75-Auto | Nitro ', '519987900', 105, 'milspec'),
(14, 'CZ75-Auto | Смокинг', 'CZ75-Auto | Tuxedo ', '469455217', 7, 'milspec'),
(15, 'CZ75-Auto | Спираль', 'CZ75-Auto | Twist ', '506854993', 6, 'milspec'),
(16, 'Desert Eagle | Бронзовая декорация', 'Desert Eagle | Bronze Deco ', '937243362', 6, 'milspec'),
(17, 'Desert Eagle | Послание коринфянам', 'Desert Eagle | Corinthian ', '1440503462', 21, 'milspec'),
(18, 'Desert Eagle | Метеорит', 'Desert Eagle | Meteorite ', '469432145', 18, 'milspec'),
(19, 'Desert Eagle | Городской щебень', 'Desert Eagle | Urban Rubble ', '310776804', 6, 'milspec'),
(20, 'Dual Berettas | Анодированная синева', 'Dual Berettas | Anodized Navy ', '310778648', 12, 'milspec'),
(21, 'Dual Berettas | Черная лимба', 'Dual Berettas | Black Limba ', '310776498', 33, 'milspec'),
(22, 'Dual Berettas | Картель', 'Dual Berettas | Cartel ', '1560431440', 5, 'milspec'),
(23, 'Dual Berettas | Драконий дуэт', 'Dual Berettas | Dualing Dragons ', '1309993736', 5, 'milspec'),
(24, 'Dual Berettas | Пантера', 'Dual Berettas | Panther ', '350462890', 10, 'milspec'),
(25, 'Dual Berettas | Духовики', 'Dual Berettas | Ventilators ', '1703051986', 5, 'milspec'),
(26, 'FAMAS | Смертенок', 'FAMAS | Doomkitty ', '310776589', 36, 'milspec'),
(27, 'FAMAS | Гексан', 'FAMAS | Hexane ', '310776519', 41, 'milspec'),
(28, 'FAMAS | Выживший', 'FAMAS | Survivor Z ', '1309991124', 8, 'milspec'),
(29, 'FAMAS | Демонтаж', 'FAMAS | Teardown ', '310776853', 8, 'milspec'),
(30, 'Five-SeveN | Ками', 'Five-SeveN | Kami ', '310776546', 16, 'milspec'),
(31, 'Five-SeveN | Паслен', 'Five-SeveN | Nightshade ', '310776889', 15, 'milspec'),
(32, 'Five-SeveN | Нитро', 'Five-SeveN | Nitro ', '992266845', 58, 'milspec'),
(33, 'Five-SeveN | Серебряный кварц', 'Five-SeveN | Silver Quartz ', '310800933', 8, 'milspec'),
(34, 'Five-SeveN | Скумбрия', 'Five-SeveN | Scumbria ', '1934415956', 5, 'milspec'),
(35, 'Five-SeveN | Городская опасность', 'Five-SeveN | Urban Hazard ', '638241022', 25, 'milspec'),
(36, 'G3SG1 | Лазурная зебра', 'G3SG1 | Azure Zebra ', '310776645', 15, 'milspec'),
(37, 'G3SG1 | Витраж', 'G3SG1 | Demeter ', '310776598', 35, 'milspec'),
(38, 'G3SG1 | Мрак', 'G3SG1 | Murky ', '638240890', 10, 'milspec'),
(39, 'G3SG1 | Оранжевые осколки', 'G3SG1 | Orange Crash ', '1703070901', 4, 'milspec'),
(40, 'G3SG1 | Духовик', 'G3SG1 | Ventilator ', '1934414790', 4, 'milspec'),
(41, 'Galil AR | Водная терраса', 'Galil AR | Aqua Terrace ', '992156611', 153, 'milspec'),
(42, 'Galil AR | Синий титан', 'Galil AR | Blue Titanium ', '310776753', 19, 'milspec'),
(43, 'M249 | Магма', 'M249 | Magma ', '310777415', 6, 'milspec'),
(44, 'M249 | Призрак', 'M249 | Spectre ', '1703079355', 5, 'milspec'),
(45, 'M249 | Блокировка', 'M249 | System Lock ', '720288540', 5, 'milspec'),
(46, 'Galil AR | Ками', 'Galil AR | Kami ', '469437423', 6, 'milspec'),
(47, 'Galil AR | Леденец', 'Galil AR | Rocket Pop ', '1011935134', 6, 'milspec'),
(48, 'Galil AR | Песчаная буря', 'Galil AR | Sandstorm ', '310776556', 8, 'milspec'),
(49, 'Galil AR | Осколки', 'Galil AR | Shattered ', '310777051', 34, 'milspec'),
(50, 'Galil AR | Смокинг', 'Galil AR | Tuxedo ', '469446099', 7, 'milspec'),
(51, 'Glock-18 | Синяя трещина', 'Glock-18 | Blue Fissure ', '350462817', 31, 'milspec'),
(52, 'Glock-18 | Горелка Бунзена', 'Glock-18 | Bunsen Burner ', '1011934443', 10, 'milspec'),
(53, 'Glock-18 | Карамельное яблоко', 'Glock-18 | Candy Apple ', '310776817', 19, 'milspec'),
(54, 'Glock-18 | Захоронение', 'Glock-18 | Catacombs ', '720282219', 8, 'milspec'),
(55, 'Glock-18 | Реактор', 'Glock-18 | Reactor ', '575563074', 65, 'milspec'),
(56, 'Glock-18 | Призраки', 'Glock-18 | Wraiths ', '1309991125', 7, 'milspec'),
(57, 'M4A1-S | Кровавый тигр', 'M4A1-S | Blood Tiger ', '310776527', 116, 'milspec'),
(58, 'M4A1-S | Смешанный камуфляж', 'M4A1-S | VariCamo ', '310780353', 13, 'milspec'),
(59, 'M4A4 | Тусклые полосы', 'M4A4 | Faded Zebra ', '310776579', 51, 'milspec'),
(60, 'M4A4 | Радиационная опасность', 'M4A4 | Radiation Hazard ', '310776628', 307, 'milspec'),
(61, 'MAG-7 | Ядро кобальта', 'MAG-7 | Cobalt Core ', '1309990996', 4, 'milspec'),
(62, 'MAC-10 | Ультрафиолет', 'MAC-10 | Ultraviolet ', '527639847', 8, 'milspec'),
(63, 'MAC-10 | Хроматика', 'MAC-10 | Rangeen ', '1374452767', 5, 'milspec'),
(64, 'MAC-10 | Ядерный сад', 'MAC-10 | Nuclear Garden ', '575589226', 21, 'milspec'),
(65, 'MAC-10 | Янтарный градиент', 'MAC-10 | Amber Fade ', '310780590', 67, 'milspec'),
(66, 'MAG-7 | Антитерраса', 'MAG-7 | Counter Terrace ', '992127342', 153, 'milspec'),
(67, 'MAG-7 | Поджигатель', 'MAG-7 | Firestarter ', '638240835', 9, 'milspec'),
(68, 'MAC-10 | Градиент', 'MAC-10 | Fade ', '992131749', 172, 'milspec'),
(69, 'MAC-10 | Лазурный хищник', 'MAC-10 | Lapis Gator ', '1560431671', 5, 'milspec'),
(70, 'MAG-7 | Желто-черные полосы', 'MAG-7 | Hazard ', '310779759', 85, 'milspec'),
(71, 'MAG-7 | Райский страж', 'MAG-7 | Heaven Guard ', '360453655', 5, 'milspec'),
(72, 'MAG-7 | Объемные шестиугольники', 'MAG-7 | Memento ', '310777348', 32, 'milspec'),
(73, 'MP7 | Анодированная синева', 'MP7 | Anodized Navy ', '310779279', 13, 'milspec'),
(74, 'MP9 | Темный век', 'MP9 | Dark Age ', '519983269', 270, 'milspec'),
(75, 'MP9 | Утечка отходов', 'MP9 | Bioleak ', '1703060822', 5, 'milspec'),
(76, 'MP7 | Снежная мгла', 'MP7 | Whiteout ', '310778785', 82, 'milspec'),
(77, 'MP7 | Броня', 'MP7 | Armor Core ', '937245046', 4, 'milspec'),
(78, 'MP9 | Дротик', 'MP9 | Dart ', '638241008', 10, 'milspec'),
(79, 'MP9 | Смертельный яд', 'MP9 | Deadly Poison ', '720276916', 5, 'milspec'),
(80, 'MP7 | Полная остановка', 'MP7 | Full Stop ', '992167908', 54, 'milspec'),
(81, 'MP7 | Черепа', 'MP7 | Skulls ', '310777754', 49, 'milspec'),
(82, 'MP7 | Городская опасность', 'MP7 | Urban Hazard ', '520026202', 5, 'milspec'),
(83, 'MP9 | Ящик Пандоры', 'MP9 | Pandora\'s Box ', '992190210', 397, 'milspec'),
(84, 'MP9 | Хот-род', 'MP9 | Hot Rod ', '310778169', 261, 'milspec'),
(85, 'MP9 | Закат', 'MP9 | Setting Sun ', '575558395', 23, 'milspec'),
(86, 'AK-47 | Элитное снаряжение', 'AK-47 | Elite Build ', '937243428', 31, 'milspec'),
(87, 'Negev | Тра-та-та', 'Negev | Bratatat ', '527638624', 9, 'milspec'),
(88, 'Negev | Конфуз', 'Negev | Dazzle ', '1934415390', 4, 'milspec'),
(89, 'Negev | Пустынная атака', 'Negev | Desert-Strike ', '520026696', 5, 'milspec'),
(90, 'Negev | Боец', 'Negev | Man-o\'-war ', '937243353', 4, 'milspec'),
(91, 'Negev | Почва', 'Negev | Terrain ', '360451048', 5, 'milspec'),
(92, 'Nova | Оранжевое пламя', 'Nova | Blaze Orange ', '310778229', 98, 'milspec'),
(93, 'Nova | Призрачный камуфляж', 'Nova | Ghost Camo ', '310776640', 15, 'milspec'),
(94, 'Nova | Современный охотник', 'Nova | Modern Hunter ', '310801279', 117, 'milspec'),
(95, 'Nova | Лесничий', 'Nova | Ranger ', '1011934463', 5, 'milspec'),
(96, 'Nova | Буря', 'Nova | Tempest ', '310776860', 40, 'milspec'),
(97, 'P2000 | Кольчуга', 'P2000 | Chainmail ', '519984334', 275, 'milspec'),
(98, 'P2000 | Защитник империи', 'P2000 | Imperial ', '1440503460', 10, 'milspec'),
(99, 'P2000 | Слоновая кость', 'P2000 | Ivory ', '520025768', 5, 'milspec'),
(100, 'P2000 | Океанские мотивы', 'P2000 | Oceanic ', '1703060313', 5, 'milspec'),
(101, 'P2000 | Пульс', 'P2000 | Pulse ', '506855399', 6, 'milspec'),
(102, 'P2000 | Красные фрагменты', 'P2000 | Red FragCam ', '350458027', 8, 'milspec'),
(103, 'P2000 | Серебро', 'P2000 | Silver ', '310777320', 55, 'milspec'),
(104, 'P250 | Улей', 'P250 | Hive ', '310776931', 41, 'milspec'),
(105, 'P250 | Современный охотник', 'P250 | Modern Hunter ', '310780615', 101, 'milspec'),
(106, 'P250 | Ржавая сталь', 'P250 | Steel Disruption ', '310776635', 16, 'milspec'),
(107, 'P250 | Валентность', 'P250 | Valence ', '937246119', 6, 'milspec'),
(108, 'ПП-19 Бизон | Пыльник', 'PP-Bizon | Rust Coat ', '310778929', 97, 'milspec'),
(109, 'P250 | Снежная мгла', 'P250 | Whiteout ', '992161821', 72, 'milspec'),
(110, 'P90 | Элитное снаряжение', 'P90 | Elite Build ', '1011934321', 5, 'milspec'),
(111, 'P90 | Арктическая сетка', 'P90 | Glacier Mesh ', '310777812', 54, 'milspec'),
(112, 'P90 | Мрак', 'P90 | Grim ', '1934413927', 12, 'milspec'),
(113, 'SCAR-20 | Грот', 'SCAR-20 | Grotto ', '720286242', 6, 'milspec'),
(114, 'SG 553 | Атлас', 'SG 553 | Atlas ', '1703079353', 4, 'milspec'),
(115, 'P90 | Модуль', 'P90 | Module ', '506853573', 23, 'milspec'),
(116, 'StatTrak™ ПП-19 Бизон | Знак воды', 'StatTrak™ PP-Bizon | Water Sigil ', '310839264', 43, 'milspec'),
(117, 'ПП-19 Бизон | Океанская глубина', 'PP-Bizon | Photic Zone ', '1560432027', 5, 'milspec'),
(118, 'ПП-19 Бизон | Современный охотник', 'PP-Bizon | Modern Hunter ', '310786355', 103, 'milspec'),
(119, 'ПП-19 Бизон | Синие полутона', 'PP-Bizon | Cobalt Halftone ', '310776522', 6, 'milspec'),
(120, 'ПП-19 Бизон | Латунь', 'PP-Bizon | Brass ', '310782279', 5, 'milspec'),
(121, 'P90 | Демонтаж', 'P90 | Teardown ', '310780372', 5, 'milspec'),
(122, 'SCAR-20 | Кровавая паутина', 'SCAR-20 | Crimson Web ', '310776622', 28, 'milspec'),
(123, 'SCAR-20 | Зеленый морпех', 'SCAR-20 | Green Marine ', '1310001548', 5, 'milspec'),
(124, 'SCAR-20 | Эпидемия', 'SCAR-20 | Outbreak ', '1440502938', 6, 'milspec'),
(125, 'SG 553 | Анодированная синева', 'SG 553 | Anodized Navy ', '310778865', 12, 'milspec'),
(126, 'Револьвер R8 | Кровавая паутина', 'R8 Revolver | Crimson Web ', '1440503929', 6, 'milspec'),
(127, 'SG 553 | Дамасская сталь', 'SG 553 | Damascus Steel ', '310783772', 5, 'milspec'),
(128, 'SG 553 | Ультрафиолет', 'SG 553 | Ultraviolet ', '310776663', 49, 'milspec'),
(129, 'SG 553 | Брызги волны', 'SG 553 | Wave Spray ', '310776515', 31, 'milspec'),
(130, 'SSG 08 | Пучина', 'SSG 08 | Abyss ', '520025865', 8, 'milspec'),
(131, 'SSG 08 | Кислотный градиент', 'SSG 08 | Acid Fade ', '310776737', 26, 'milspec'),
(132, 'SSG 08 | Темная вода', 'SSG 08 | Dark Water ', '527640221', 14, 'milspec'),
(133, 'SSG 08 | Объезд', 'SSG 08 | Detour ', '519984303', 120, 'milspec'),
(134, 'Sawed-Off | Оригами', 'Sawed-Off | Origami ', '937247050', 4, 'milspec'),
(135, 'Sawed-Off | Полная остановка', 'Sawed-Off | Full Stop ', '310778159', 6, 'milspec'),
(136, 'Sawed-Off | Первый класс', 'Sawed-Off | First Class ', '520007212', 177, 'milspec'),
(137, 'Sawed-Off | Медь', 'Sawed-Off | Copper ', '310796086', 273, 'milspec'),
(138, 'Sawed-Off | Янтарный градиент', 'Sawed-Off | Amber Fade ', '310776670', 5, 'milspec'),
(139, 'SSG 08 | Когти', 'SSG 08 | Slashed ', '469440491', 12, 'milspec'),
(140, 'SSG 08 | Некромант', 'SSG 08 | Necropos ', '1560432554', 6, 'milspec'),
(141, 'Sawed-Off | Йорик', 'Sawed-Off | Yorick ', '1440506720', 5, 'milspec'),
(142, 'Tec-9 | Синий титан', 'Tec-9 | Blue Titanium ', '310777293', 53, 'milspec'),
(143, 'Tec-9 | Латунь', 'Tec-9 | Brass ', '310778175', 23, 'milspec'),
(144, 'Tec-9 | Айзек', 'Tec-9 | Isaac ', '469443695', 21, 'milspec'),
(145, 'Tec-9 | Джамбия', 'Tec-9 | Jambiya ', '1560433715', 5, 'milspec'),
(146, 'Tec-9 | Окостеневший', 'Tec-9 | Ossified ', '310777228', 40, 'milspec'),
(147, 'Tec-9 | Песчаная буря', 'Tec-9 | Sandstorm ', '360454763', 5, 'milspec'),
(148, 'Tec-9 | Терраса', 'Tec-9 | Terrace ', '992107620', 158, 'milspec'),
(149, 'Tec-9 | Токсичность', 'Tec-9 | Toxic ', '575590588', 60, 'milspec'),
(150, 'UMP-45 | Пламя', 'UMP-45 | Blaze ', '310777860', 721, 'milspec'),
(151, 'UMP-45 | Груда костей', 'UMP-45 | Bone Pile ', '310776820', 36, 'milspec'),
(152, 'UMP-45 | Брифинг', 'UMP-45 | Briefing ', '1934414788', 5, 'milspec'),
(153, 'UMP-45 | Капрал', 'UMP-45 | Corporal ', '360450323', 4, 'milspec'),
(154, 'StatTrak™ UMP-45 | Заблуждение', 'StatTrak™ UMP-45 | Delusion ', '638240746', 44, 'milspec'),
(155, 'XM1014 | Скумбрия', 'XM1014 | Scumbria ', '1309998372', 4, 'milspec'),
(156, 'XM1014 | Поток', 'XM1014 | Slipstream ', '1934422811', 5, 'milspec'),
(157, 'XM1014 | Смешанный синий камуфляж', 'XM1014 | VariCamo Blue ', '519991331', 84, 'milspec'),
(158, 'UMP-45 | Лабиринт', 'UMP-45 | Labyrinth ', '520025874', 5, 'milspec'),
(159, 'UMP-45 | Лабиринт минотавра', 'UMP-45 | Minotaur\'s Labyrinth ', '992128844', 359, 'milspec'),
(160, 'UMP-45 | Бунт', 'UMP-45 | Riot ', '1011934629', 5, 'milspec'),
(161, 'USP-S | Кровавый тигр', 'USP-S | Blood Tiger ', '527637310', 36, 'milspec'),
(162, 'USP-S | Бизнес-класс', 'USP-S | Business Class ', '519985968', 188, 'milspec'),
(163, 'USP-S | Проводник', 'USP-S | Lead Conduit ', '1560431541', 12, 'milspec'),
(164, 'USP-S | Ночные операции', 'USP-S | Night Ops ', '310780496', 9, 'milspec'),
(165, 'M4A4 | Грифон', 'M4A4 | Griffin ', '638241450', 97, 'restricted'),
(166, 'AK-47 | Синий глянец', 'AK-47 | Blue Laminate ', '310777267', 168, 'restricted'),
(167, 'AK-47 | Первый класс', 'AK-47 | First Class ', '519989189', 563, 'restricted'),
(168, 'AUG | Закрученный', 'AUG | Torque ', '469438644', 34, 'restricted'),
(169, 'AWP | Пиксельный камуфляж «Розовый»', 'AWP | Pink DDPAT ', '519987130', 612, 'restricted'),
(170, 'AWP | Гадюка', 'AWP | Pit Viper ', '310779688', 47, 'restricted'),
(171, 'AWP | Бог червей', 'AWP | Worm God ', '937244168', 53, 'restricted'),
(172, 'CZ75-Auto | Чаша', 'CZ75-Auto | Chalice ', '519991659', 1525, 'restricted'),
(173, 'CZ75-Auto | Поул-позиция', 'CZ75-Auto | Pole Position ', '937251514', 14, 'restricted'),
(174, 'CZ75-Auto | Красный ястреб', 'CZ75-Auto | Red Astor ', '1703088537', 19, 'restricted'),
(175, 'CZ75-Auto | Тигр', 'CZ75-Auto | Tigris ', '520026483', 15, 'restricted'),
(176, 'CZ75-Auto | Листовая сталь', 'CZ75-Auto | Tread Plate ', '350492619', 29, 'restricted'),
(177, 'Desert Eagle | Пламя', 'Desert Eagle | Blaze ', '310781367', 3317, 'restricted'),
(178, 'Desert Eagle | Кровавая паутина', 'Desert Eagle | Crimson Web ', '527642044', 68, 'restricted'),
(179, 'Desert Eagle | Директива', 'Desert Eagle | Directive ', '1934440236', 23, 'restricted'),
(180, 'Desert Eagle | Пищаль', 'Desert Eagle | Hand Cannon ', '519986748', 1480, 'restricted'),
(181, 'StatTrak™ Desert Eagle | Наследие', 'StatTrak™ Desert Eagle | Heirloom ', '350508938', 289, 'restricted'),
(182, 'Desert Eagle | Нага', 'Desert Eagle | Naga ', '720291085', 25, 'restricted'),
(183, 'Desert Eagle | Пилот', 'Desert Eagle | Pilot ', '519986403', 618, 'restricted'),
(184, 'Desert Eagle | Буря на закате 壱', 'Desert Eagle | Sunset Storm 壱 ', '992188553', 386, 'restricted'),
(185, 'Desert Eagle | Буря на закате 弐', 'Desert Eagle | Sunset Storm 弐 ', '992204697', 409, 'restricted'),
(186, 'Dual Berettas | Синий кварц', 'Dual Berettas | Cobalt Quartz ', '310777518', 12, 'restricted'),
(187, 'Dual Berettas | Подрыв', 'Dual Berettas | Demolition ', '310777137', 64, 'restricted'),
(188, 'Dual Berettas | Дуэлист', 'Dual Berettas | Duelist ', '992171063', 452, 'restricted'),
(189, 'Dual Berettas | Гемоглобин', 'Dual Berettas | Hemoglobin ', '310776743', 54, 'restricted'),
(190, 'Dual Berettas | Причал', 'Dual Berettas | Marina ', '310777265', 51, 'restricted'),
(191, 'Dual Berettas | Городской шок', 'Dual Berettas | Urban Shock ', '720290996', 24, 'restricted'),
(192, 'FAMAS | Нейронная сеть', 'FAMAS | Neural Net ', '1011934438', 16, 'restricted'),
(193, 'FAMAS | Пульс', 'FAMAS | Pulse ', '310776745', 62, 'restricted'),
(194, 'FAMAS | Сержант', 'FAMAS | Sergeant ', '360461073', 24, 'restricted'),
(195, 'FAMAS | Истребитель', 'FAMAS | Spitfire ', '310787054', 111, 'restricted'),
(196, 'FAMAS | Стикс', 'FAMAS | Styx ', '575627796', 37, 'restricted'),
(197, 'FAMAS | Валентность', 'FAMAS | Valence ', '1560436611', 32, 'restricted'),
(198, 'Five-SeveN | Поверхностная закалка', 'Five-SeveN | Case Hardened ', '310776730', 156, 'restricted'),
(199, 'Five-SeveN | Медная галактика', 'Five-SeveN | Copper Galaxy ', '350513459', 54, 'restricted'),
(200, 'Five-SeveN | Неоновое кимоно', 'Five-SeveN | Neon Kimono ', '992102276', 316, 'restricted'),
(201, 'Five-SeveN | Дань прошлому', 'Five-SeveN | Retrobution ', '1440509660', 30, 'restricted'),
(202, 'Five-SeveN | Триумвират', 'Five-SeveN | Triumvirate ', '1560431672', 21, 'restricted'),
(203, 'Galil AR | Цербер', 'Galil AR | Cerberus ', '575567095', 80, 'restricted'),
(204, 'G3SG1 | Хронос', 'G3SG1 | Chronos ', '992183084', 832, 'restricted'),
(205, 'Galil AR | Перестрелка', 'Galil AR | Firefight ', '1703084157', 19, 'restricted'),
(206, 'Galil AR | Пиксельный камуфляж «Ржавчина»', 'Galil AR | Orange DDPAT ', '310776829', 130, 'restricted'),
(207, 'Galil AR | Невозмутимость', 'Galil AR | Stone Cold ', '1310030033', 29, 'restricted'),
(208, 'Glock-18 | Латунь', 'Glock-18 | Brass ', '310780932', 92, 'restricted'),
(209, 'StatTrak™ Glock-18 | Татуировка дракона', 'StatTrak™ Glock-18 | Dragon Tattoo ', '310809079', 1269, 'restricted'),
(210, 'Glock-18 | Градиент', 'Glock-18 | Fade ', '374132586', 14300, 'restricted'),
(211, 'Glock-18 | Жернов', 'Glock-18 | Grinder ', '638243697', 37, 'restricted'),
(212, 'Glock-18 | Королевский легион', 'Glock-18 | Royal Legion ', '1560432555', 22, 'restricted'),
(213, 'StatTrak™ Glock-18 | Ржавая сталь', 'StatTrak™ Glock-18 | Steel Disruption ', '527681873', 166, 'restricted'),
(214, 'Glock-18 | Ласка', 'Glock-18 | Weasel ', '1934416996', 44, 'restricted'),
(215, 'M249 | Космический воитель', 'M249 | Nebula Crusader ', '1310030865', 28, 'restricted'),
(216, 'M4A1-S | Василиск', 'M4A1-S | Basilisk ', '638243975', 82, 'restricted'),
(217, 'M4A1-S | Чистая вода', 'M4A1-S | Bright Water ', '549061706', 260, 'restricted'),
(218, 'StatTrak™ M4A1-S | Темная вода', 'StatTrak™ M4A1-S | Dark Water ', '310841291', 833, 'restricted'),
(219, 'M4A1-S | Падение Икара', 'M4A1-S | Icarus Fell ', '992317711', 3347, 'restricted'),
(220, 'M4A1-S | Нитро', 'M4A1-S | Nitro ', '310781176', 67, 'restricted'),
(221, 'M4A4 | Рассвет', 'M4A4 | Daybreak ', '992131676', 393, 'restricted'),
(222, 'MAC-10 | Малахит', 'MAC-10 | Malachite ', '720292679', 24, 'restricted'),
(223, 'MP7 | Океанская пена', 'MP7 | Ocean Foam ', '527644929', 63, 'restricted'),
(224, 'Negev | Погрузчик', 'Negev | Power Loader ', '1440515303', 30, 'restricted'),
(225, 'P250 | Ядерная угроза', 'P250 | Nuclear Threat ', '310778177', 189, 'restricted'),
(226, 'ПП-19 Бизон | Синяя струя', 'PP-Bizon | Blue Streak ', '527638943', 21, 'restricted'),
(227, 'SG 553 | Дикая моль', 'SG 553 | Tiger Moth ', '1440505944', 32, 'restricted'),
(228, 'Tec-9 | Ядерная угроза', 'Tec-9 | Nuclear Threat ', '310781070', 480, 'restricted'),
(229, 'M4A4 | Злобный дайме', 'M4A4 | Evil Daimyo ', '1011935370', 76, 'restricted'),
(230, 'MAC-10 | Клочья', 'MAC-10 | Tatter ', '506868310', 33, 'restricted'),
(231, 'MP7 | Особая доставка', 'MP7 | Special Delivery ', '1309998369', 29, 'restricted'),
(232, 'Nova | Графит', 'Nova | Graphite ', '310776552', 51, 'restricted'),
(233, 'P250 | Пятно', 'P250 | Splash ', '310776749', 191, 'restricted'),
(234, 'ПП-19 Бизон | Топливный стержень', 'PP-Bizon | Fuel Rod ', '1440510363', 31, 'restricted'),
(235, 'SG 553 | Триарх', 'SG 553 | Triarch ', '1934443227', 15, 'restricted'),
(236, 'Tec-9 | Возвращение', 'Tec-9 | Re-Entry ', '1703077135', 24, 'restricted'),
(237, 'StatTrak™ USP-S | Камуфляж', 'StatTrak™ USP-S | Overgrowth ', '310846232', 670, 'restricted'),
(238, 'AK-47 | Изумрудные завитки', 'AK-47 | Emerald Pinstripe ', '469457057', 70, 'restricted'),
(239, 'MAG-7 | Бульдозер', 'MAG-7 | Bulldozer ', '310779652', 22, 'restricted'),
(240, 'MP9 | Бульдозер', 'MP9 | Bulldozer ', '310780773', 226, 'restricted'),
(241, 'Nova | Карп кои', 'Nova | Koi ', '520026287', 19, 'restricted'),
(242, 'P250 | Сверхновая', 'P250 | Supernova ', '520027398', 19, 'restricted'),
(243, 'ПП-19 Бизон | Осирис', 'PP-Bizon | Osiris ', '520028714', 16, 'restricted'),
(244, 'SSG 08 | Призрачный фанатик', 'SSG 08 | Ghost Crusader ', '1703077986', 20, 'restricted'),
(245, 'Tec-9 | Красный кварц', 'Tec-9 | Red Quartz ', '310790881', 12, 'restricted'),
(246, 'USP-S | Следы асфальта', 'USP-S | Road Rash ', '519997046', 401, 'restricted'),
(247, 'M4A4 | Современный охотник', 'M4A4 | Modern Hunter ', '310781681', 284, 'restricted'),
(248, 'MAG-7 | Жар', 'MAG-7 | Heat ', '937254203', 15, 'restricted'),
(249, 'MP9 | Гипноз', 'MP9 | Hypnotic ', '310778942', 67, 'restricted'),
(250, 'Nova | Восходящий череп', 'Nova | Rising Skull ', '310776832', 54, 'restricted'),
(251, 'P250 | Охотник', 'P250 | Wingshot ', '1309994951', 31, 'restricted'),
(252, 'SCAR-20 | Изумруд', 'SCAR-20 | Emerald ', '310776501', 204, 'restricted'),
(253, 'Sawed-Off | Разбойник', 'Sawed-Off | Highwayman ', '638241200', 18, 'restricted'),
(254, 'Tec-9 | Частица титана', 'Tec-9 | Titanium Bit ', '350467130', 34, 'restricted'),
(255, 'XM1014 | Черный галстук', 'XM1014 | Black Tie ', '1703261733', 19, 'restricted'),
(256, 'M4A4 | Зірка', 'M4A4 | Zirka', '310776637', 239, 'restricted'),
(257, 'MAG-7 | Петроглиф', 'MAG-7 | Petroglyph ', '1934413928', 15, 'restricted'),
(258, 'MP9 | Железная роза', 'MP9 | Rose Iron ', '310776843', 73, 'restricted'),
(259, 'P2000 | Янтарный градиент', 'P2000 | Amber Fade ', '310776826', 21, 'restricted'),
(260, 'P90 | Слепое пятно', 'P90 | Blind Spot ', '310777045', 50, 'restricted'),
(261, 'StatTrak™ SCAR-20 | Генератор', 'StatTrak™ SCAR-20 | Powercore ', '1935553172', 41, 'restricted'),
(262, 'Sawed-Off | Пиксельный камуфляж «Ржавчина»', 'Sawed-Off | Orange DDPAT ', '310777207', 131, 'restricted'),
(263, 'UMP-45 | Гран-при', 'UMP-45 | Grand Prix ', '937245221', 15, 'restricted'),
(264, 'XM1014 | Райский страж', 'XM1014 | Heaven Guard ', '469442485', 32, 'restricted'),
(265, 'XM1014 | Горелка Теклу', 'XM1014 | Teclu Burner ', '1440512684', 31, 'restricted'),
(266, 'MAC-10 | Гравировка', 'MAC-10 | Graven ', '310776795', 211, 'restricted'),
(267, 'MAG-7 | Преторианец', 'MAG-7 | Praetorian ', '1560437902', 23, 'restricted'),
(268, 'MP9 | Рубиновый ядовитый дротик', 'MP9 | Ruby Poison Dart ', '1011934619', 16, 'restricted'),
(269, 'P2000 | Пистолет', 'P2000 | Handgun ', '1011935012', 15, 'restricted'),
(270, 'P90 | Вирус', 'P90 | Virus ', '527638387', 21, 'restricted'),
(271, 'SG 553 | Бульдозер', 'SG 553 | Bulldozer ', '992119265', 413, 'restricted'),
(272, 'MAC-10 | Жар', 'MAC-10 | Heat ', '360458273', 24, 'restricted'),
(273, 'MP7 | Чертята', 'MP7 | Impire ', '1560445121', 23, 'restricted'),
(274, 'StatTrak™ Negev | Крикун', 'StatTrak™ Negev | Loudmouth ', '1011952495', 43, 'restricted'),
(275, 'P2000 | Скорпион', 'P2000 | Scorpion ', '310779716', 62, 'restricted'),
(276, 'ПП-19 Бизон | Антиквариат', 'PP-Bizon | Antique ', '469449111', 34, 'restricted'),
(277, 'SG 553 | Пульс', 'SG 553 | Pulse ', '360465952', 25, 'restricted'),
(278, 'Sawed-Off | Безмятежность', 'Sawed-Off | Serenity ', '720303023', 24, 'restricted'),
(279, 'Tec-9 | Лавина', 'Tec-9 | Avalanche ', '1440512442', 34, 'restricted'),
(280, 'USP-S | Темная вода', 'USP-S | Dark Water ', '310776847', 344, 'restricted'),
(281, 'USP-S | Страж', 'USP-S | Guardian ', '360466315', 45, 'restricted'),
(282, 'M4A1-S | Страж', 'M4A1-S | Guardian ', '310777000', 293, 'classified'),
(283, 'AK-47 | Красная линия', 'AK-47 | Redline ', '360467259', 244, 'classified'),
(284, 'AWP | Элитное снаряжение', 'AWP | Elite Build ', '1560433642', 205, 'classified'),
(285, 'Desert Eagle | Гипноз', 'Desert Eagle | Hypnotic ', '310776810', 531, 'classified'),
(286, 'G3SG1 | Палач', 'G3SG1 | The Executioner ', '1440531184', 65, 'classified'),
(287, 'M4A1-S | Рыцарь', 'M4A1-S | Knight ', '519999279', 13199, 'classified'),
(288, 'Nova | Расцветающая ветка', 'Nova | Bloomstick ', '527684903', 86, 'classified'),
(289, 'P250 | Роспись', 'P250 | Mehndi ', '310779277', 184, 'classified'),
(290, 'SCAR-20 | Кардио', 'SCAR-20 | Cardiac ', '638243033', 100, 'classified'),
(291, 'AK-47 | Картель', 'AK-47 | Cartel ', '720320344', 169, 'classified'),
(292, 'AUG | Бенгальский тигр', 'AUG | Bengal Tiger ', '527657654', 87, 'classified'),
(293, 'AWP | Графит', 'AWP | Graphite ', '310777843', 2161, 'classified'),
(294, 'Desert Eagle | Дракон-предводитель', 'Desert Eagle | Kumicho Dragon ', '1560432042', 192, 'classified'),
(295, 'Galil AR | Эко', 'Galil AR | Eco ', '937248432', 65, 'classified'),
(296, 'M4A1-S | Шедевр', 'M4A1-S | Master Piece ', '519997076', 1096, 'classified'),
(297, 'Nova | Скоростной зверь', 'Nova | Hyper Beast ', '1560434561', 116, 'classified'),
(298, 'P250 | Покойник', 'P250 | Muertos ', '720303488', 113, 'classified'),
(299, 'USP-S | Кайман', 'USP-S | Caiman ', '506857787', 205, 'classified'),
(300, 'SCAR-20 | Сайрекс', 'SCAR-20 | Cyrex ', '469458040', 155, 'classified'),
(301, 'AK-47 | Снежный вихрь', 'AK-47 | Frontside Misty ', '1312464046', 408, 'classified'),
(302, 'P2000 | Кортисейра', 'P2000 | Corticera ', '527646098', 86, 'classified'),
(303, 'P250 | Цвета прибоя', 'P250 | Undertow ', '350506083', 180, 'classified'),
(304, 'SCAR-20 | Пятна от краски', 'SCAR-20 | Splash Jam ', '310781061', 82, 'classified'),
(305, 'USP-S | Орион', 'USP-S | Orion ', '469467523', 509, 'classified'),
(306, 'AUG | Скорая стая', 'AUG | Fleet Flock ', '1704328431', 73, 'classified'),
(307, 'AWP | Красная линия', 'AWP | Redline ', '310776954', 641, 'classified'),
(308, 'FAMAS | Остаточное изображение', 'FAMAS | Afterimage ', '310783079', 112, 'classified'),
(309, 'Glock-18 | Сумеречная галактика', 'Glock-18 | Twilight Galaxy ', '992103799', 595, 'classified'),
(310, 'AK-47 | Гидропоника', 'AK-47 | Hydroponic ', '992220845', 1188, 'classified'),
(311, 'AUG | Сид Мид', 'AUG | Syd Mead ', '1934452168', 99, 'classified'),
(312, 'CZ75-Auto | Новая фуксия', 'CZ75-Auto | The Fuschia Is Now ', '350506412', 104, 'classified'),
(313, 'FAMAS | Джинн', 'FAMAS | Djinn ', '937277117', 65, 'classified'),
(314, 'Glock-18 | Дух воды', 'Glock-18 | Water Elemental ', '520026577', 148, 'classified'),
(315, 'M4A4 | 龍王 (Король драконов)', 'M4A4 | 龍王  ', '720318454', 0, 'classified'),
(316, 'P2000 | Океанская пена', 'P2000 | Ocean Foam ', '310777844', 1542, 'classified'),
(317, 'P90 | Хладнокровный', 'P90 | Cold Blooded ', '310777047', 246, 'classified'),
(318, 'SG 553 | Сайрекс', 'SG 553 | Cyrex ', '1011935682', 110, 'classified'),
(319, 'USP-S | Сыворотка', 'USP-S | Serum ', '310776504', 332, 'classified'),
(320, 'XM1014 | Спокойствие', 'XM1014 | Tranquility ', '638243565', 110, 'classified'),
(321, 'AK-47 | Путешественник', 'AK-47 | Jet Set ', '519992253', 1469, 'classified'),
(322, 'AWP | БАХ', 'AWP | BOOM ', '310776497', 1105, 'classified'),
(323, 'CZ75-Auto | Желтый жакет', 'CZ75-Auto | Yellow Jacket ', '1011935025', 111, 'classified'),
(324, 'Five-SeveN | Птичьи игры', 'Five-SeveN | Fowl Play ', '520029856', 66, 'classified'),
(325, 'M4A1-S | Атомный сплав', 'M4A1-S | Atomic Alloy ', '469444831', 175, 'classified'),
(326, 'StatTrak™ MP7 | Заклятый враг', 'StatTrak™ MP7 | Nemesis ', '1011936233', 438, 'classified'),
(327, 'P90 | Изумрудный дракон', 'P90 | Emerald Dragon ', '310776524', 943, 'classified'),
(328, 'SSG 08 | Большая пушка', 'SSG 08 | Big Iron ', '1310035166', 128, 'classified'),
(329, 'Tec-9 | Топливный инжектор', 'Tec-9 | Fuel Injector ', '1934438107', 156, 'classified'),
(330, 'P90 | Резной приклад', 'P90 | Shapewood ', '1440616396', 66, 'classified'),
(331, 'P250 | Азимов', 'P250 | Asiimov ', '1703410694', 118, 'classified'),
(332, 'P250 | Картель', 'P250 | Cartel ', '638243938', 114, 'classified'),
(333, 'MP9 | Воздушный шлюз', 'MP9 | Airlock ', '1934416384', 100, 'classified'),
(334, 'Nova | Антиквариат', 'Nova | Antique ', '360480382', 155, 'classified'),
(335, 'P250 | Франклин', 'P250 | Franklin ', '469479341', 29, 'classified'),
(336, 'P90 | Треугольник', 'P90 | Trigon ', '360473095', 125, 'classified'),
(337, 'UMP-45 | Первобытный саблезуб', 'UMP-45 | Primal Saber ', '1703565993', 208, 'classified'),
(338, 'AK-47 | Буйство красок', 'AK-47 | Point Disarray ', '1440505236', 478, 'classified'),
(339, 'Five-SeveN | Обезьянье дело', 'Five-SeveN | Monkey Business ', '937248672', 68, 'classified'),
(340, 'G3SG1 | Поток', 'G3SG1 | Flux ', '1310009716', 125, 'classified'),
(341, 'Desert Eagle | Заговор', 'Desert Eagle | Conspiracy ', '520026993', 121, 'classified'),
(342, 'Desert Eagle | Ржавый кобальт', 'Desert Eagle | Cobalt Disruption ', '310777915', 373, 'classified'),
(343, 'AWP | Кортисейра', 'AWP | Corticera ', '527645227', 350, 'classified'),
(344, 'AWP | Электрический улей', 'AWP | Electric Hive ', '310777067', 666, 'classified'),
(345, 'AK-47 | Красный глянец', 'AK-47 | Red Laminate ', '310776621', 471, 'classified'),
(346, 'M4A1-S | Огонь Чантико', 'M4A1-S | Chantico\'s Fire ', '1703417002', 822, 'covert'),
(347, 'AK-47 | Аквамариновая месть', 'AK-47 | Aquamarine Revenge ', '1011934684', 631, 'covert'),
(348, 'AK-47 | Топливный инжектор', 'AK-47 | Fuel Injector ', '1560441603', 1417, 'covert'),
(349, 'AK-47 | Ягуар', 'AK-47 | Jaguar ', '527663032', 567, 'covert'),
(350, 'AK-47 | Неоновая революция', 'AK-47 | Neon Revolution ', '1934517468', 1414, 'covert'),
(351, 'AK-47 | Вулкан', 'AK-47 | Vulcan ', '469523518', 669, 'covert'),
(352, 'AK-47 | Пустынный повстанец', 'AK-47 | Wasteland Rebel ', '638243898', 958, 'covert'),
(353, 'AUG | Акихабара', 'AUG | Akihabara Accept ', '992157631', 1637, 'covert'),
(354, 'AUG | Хамелеон', 'AUG | Chameleon ', '360475142', 84, 'covert'),
(355, 'AWP | Азимов', 'AWP | Asiimov ', '360479494', 1394, 'covert'),
(356, 'Sawed-Off | Кракен', 'Sawed-Off | The Kraken ', '310777078', 145, 'covert'),
(357, 'AWP | Скоростной зверь', 'AWP | Hyper Beast ', '1011935077', 772, 'covert'),
(358, 'AWP | Удар молнии', 'AWP | Lightning Strike ', '310777496', 3333, 'covert'),
(359, 'AWP | Боец', 'AWP | Man-o\'-war ', '720307050', 606, 'covert'),
(360, 'AWP | Медуза', 'AWP | Medusa ', '992131468', 25850, 'covert'),
(361, 'CZ75-Auto | Виктория', 'CZ75-Auto | Victoria ', '350514676', 145, 'covert'),
(362, 'Desert Eagle | Золотой карп', 'Desert Eagle | Golden Koi ', '310780956', 695, 'covert'),
(363, 'FAMAS | Защитный каркас', 'FAMAS | Roll Cage ', '1934425373', 212, 'covert'),
(364, 'Galil AR | Щелкунчик', 'Galil AR | Chatterbox ', '720357195', 89, 'covert'),
(365, 'AK-47 | Огненный змей', 'AK-47 | Fire Serpent ', '310779465', 5976, 'covert'),
(366, 'M4A1-S | Сайрекс', 'M4A1-S | Cyrex ', '520029997', 419, 'covert'),
(367, 'Револьвер R8 | Янтарный градиент', 'R8 Revolver | Amber Fade ', '1432177230', 29, 'classified'),
(368, 'SSG 08 | Кровь в воде', 'SSG 08 | Blood in the Water ', '310776630', 1053, 'covert'),
(369, 'USP-S | Подтвержденное убийство', 'USP-S | Kill Confirmed ', '1316189902', 1230, 'covert'),
(370, 'AWP | История о драконе', 'AWP | Dragon Lore ', '520020768', 35200, 'covert'),
(371, 'M4A1-S | Золотая спираль', 'M4A1-S | Golden Coil ', '1310091948', 629, 'covert'),
(372, 'M4A1-S | Скоростной зверь', 'M4A1-S | Hyper Beast ', '937306045', 474, 'covert'),
(373, 'M4A4 | Азимов', 'M4A4 | Asiimov ', '310777979', 896, 'covert'),
(374, 'M4A4 | Дождь из пуль', 'M4A4 | Bullet Rain ', '527651440', 340, 'covert'),
(375, 'M4A4 | Пустынная атака', 'M4A4 | Desert-Strike ', '506865564', 122, 'covert'),
(376, 'M4A4 | Преданный паладин', 'M4A4 | Royal Paladin ', '1440503029', 303, 'covert'),
(377, 'ПП-19 Бизон | Суд Анубиса', 'PP-Bizon | Judgement of Anubis ', '1704772284', 199, 'covert'),
(378, 'P90 | Смертоносные кошечки', 'P90 | Death by Kitty ', '310776733', 1047, 'covert'),
(379, 'P90 | Азимов', 'P90 | Asiimov ', '520027233', 156, 'covert'),
(380, 'P2000 | Дух огня', 'P2000 | Fire Elemental ', '638280534', 286, 'covert'),
(381, 'MAC-10 | Неоновый гонщик', 'MAC-10 | Neon Rider ', '937290898', 113, 'covert'),
(382, 'M4A4 | Рентген', 'M4A4 | X-Ray ', '310777080', 294, 'covert'),
(383, 'M4A4 | Звездный крейсер', 'M4A4 | The Battlestar ', '1560558873', 199, 'covert'),
(384, '★ Нож Боуи | Пиксельный камуфляж «Лес»', '★ Bowie Knife | Forest DDPAT ', '1562744953', 2989, 'rare'),
(385, '★ Нож-бабочка | Кровавая паутина', '★ Butterfly Knife | Crimson Web ', '520040863', 4948, 'rare'),
(386, '★ Фальшион | Градиент', '★ Falchion Knife | Fade ', '1011953270', 5920, 'rare'),
(387, '★ Охотничий нож | Северный лес', '★ Huntsman Knife | Boreal Forest ', '469572609', 2862, 'rare'),
(388, '★ Охотничий нож | Городская маскировка', '★ Huntsman Knife | Urban Masked ', '469812851', 2952, 'rare'),
(389, '★ Нож Боуи | Ночь', '★ Bowie Knife | Night ', '1561827097', 3828, 'rare'),
(390, '★ Нож-бабочка | Градиент', '★ Butterfly Knife | Fade ', '520032493', 13480, 'rare'),
(391, '★ Фальшион | Пиксельный камуфляж «Лес»', '★ Falchion Knife | Forest DDPAT ', '1015029332', 2347, 'rare'),
(392, '★ Охотничий нож | Поверхностная закалка', '★ Huntsman Knife | Case Hardened ', '469578651', 4091, 'rare'),
(393, '★ Тычковые ножи | Патина', '★ Shadow Daggers | Stained ', '1315261652', 2649, 'rare'),
(394, '★ Тычковые ножи | Убийство', '★ Shadow Daggers | Slaughter ', '1315055742', 4363, 'rare'),
(395, '★ Нож Боуи | Сажа', '★ Bowie Knife | Scorched ', '1563045827', 2832, 'rare'),
(396, '★ Нож-бабочка | Африканская сетка', '★ Butterfly Knife | Safari Mesh ', '520116747', 3763, 'rare'),
(397, '★ Фальшион | Африканская сетка', '★ Falchion Knife | Safari Mesh ', '1011976281', 2288, 'rare'),
(398, '★ Охотничий нож | Кровавая паутина', '★ Huntsman Knife | Crimson Web ', '469505906', 4084, 'rare'),
(399, '★ Тычковые ножи | Африканская сетка', '★ Shadow Daggers | Safari Mesh ', '1312373963', 2252, 'rare'),
(400, '★ Тычковые ножи | Вороненая сталь', '★ Shadow Daggers | Blue Steel ', '1313090220', 2876, 'rare'),
(401, '★ Охотничий нож | Ночь', '★ Huntsman Knife | Night ', '470031630', 3659, 'rare'),
(402, '★ Фальшион | Сажа', '★ Falchion Knife | Scorched ', '1013007205', 2312, 'rare'),
(403, '★ Нож Боуи | Убийство', '★ Bowie Knife | Slaughter ', '1560438545', 8326, 'rare'),
(404, '★ Нож-бабочка | Сажа', '★ Butterfly Knife | Scorched ', '521489221', 3785, 'rare'),
(405, '★ Нож Боуи | Вороненая сталь', '★ Bowie Knife | Blue Steel ', '1561312187', 4784, 'rare'),
(406, '★ Нож Боуи | Патина', '★ Bowie Knife | Stained ', '1562737228', 3922, 'rare'),
(407, '★ Нож-бабочка | Убийство', '★ Butterfly Knife | Slaughter ', '520101595', 8904, 'rare'),
(408, '★ Фальшион | Убийство', '★ Falchion Knife | Slaughter ', '1014687936', 4648, 'rare'),
(409, '★ Охотничий нож | Африканская сетка', '★ Huntsman Knife | Safari Mesh ', '469480153', 2817, 'rare'),
(410, '★ Тычковые ножи | Поверхностная закалка', '★ Shadow Daggers | Case Hardened ', '1312644655', 3043, 'rare'),
(411, '★ Нож Боуи | Северный лес', '★ Bowie Knife | Boreal Forest ', '1562765404', 3066, 'rare'),
(412, '★ Нож Боуи | Городская маскировка', '★ Bowie Knife | Urban Masked ', '1560803749', 3016, 'rare'),
(413, '★ Фальшион | Северный лес', '★ Falchion Knife | Boreal Forest ', '1012850256', 2393, 'rare'),
(414, '★ Фальшион | Патина', '★ Falchion Knife | Stained ', '1014690853', 2487, 'rare'),
(415, '★ Охотничий нож | Сажа', '★ Huntsman Knife | Scorched ', '474032540', 2864, 'rare'),
(416, '★ Тычковые ножи | Кровавая паутина', '★ Shadow Daggers | Crimson Web ', '1312332729', 3231, 'rare'),
(417, '★ Тычковые ножи | Градиент', '★ Shadow Daggers | Fade ', '1312341994', 6661, 'rare'),
(418, '★ Охотничий нож | Убийство', '★ Huntsman Knife | Slaughter ', '469545974', 6303, 'rare'),
(419, '★ Фальшион | Городская маскировка', '★ Falchion Knife | Urban Masked ', '1014100584', 2342, 'rare'),
(420, '★ Фальшион | Кровавая паутина', '★ Falchion Knife | Crimson Web ', '1014695806', 2920, 'rare'),
(421, '★ Нож-бабочка | Северный лес', '★ Butterfly Knife | Boreal Forest ', '520031482', 3910, 'rare'),
(422, '★ Нож Боуи | Поверхностная закалка', '★ Bowie Knife | Case Hardened ', '1562742751', 4848, 'rare'),
(423, '★ Керамбит | Убийство', '★ Karambit | Slaughter ', '311021767', 14738, 'rare'),
(424, '★ Складной нож | Пиксельный камуфляж «Лес»', '★ Flip Knife | Forest DDPAT ', '311498445', 2756, 'rare'),
(425, '★ Штык-нож M9 | Кровавая паутина', '★ M9 Bayonet | Crimson Web ', '312307362', 6032, 'rare'),
(426, '★ Керамбит | Пиксельный камуфляж «Лес»', '★ Karambit | Forest DDPAT ', '311955958', 6354, 'rare'),
(427, '★ Керамбит | Вороненая сталь', '★ Karambit | Blue Steel ', '313674416', 9896, 'rare'),
(428, '★ Керамбит | Волны', '★ Karambit | Doppler ', '721594909', 17919, 'rare'),
(429, '★ Керамбит | Кровавая паутина', '★ Karambit | Crimson Web ', '312713307', 9285, 'rare'),
(430, '★ Керамбит | Легенды', '★ Karambit | Lore ', '1812816252', 16964, 'rare'),
(431, '★ Керамбит | Градиент', '★ Karambit | Fade ', '310854699', 21271, 'rare'),
(432, '★ Керамбит | Чистая вода', '★ Karambit | Bright Water ', '1815735891', 9946, 'rare'),
(433, '★ Керамбит | Городская маскировка', '★ Karambit | Urban Masked ', '312880879', 6492, 'rare'),
(434, '★ Керамбит | Патина', '★ Karambit | Stained ', '312328264', 8328, 'rare'),
(435, '★ Керамбит | Автотроника', '★ Karambit | Autotronic ', '1812831127', 16898, 'rare'),
(436, '★ Керамбит | Поверхностная закалка', '★ Karambit | Case Hardened ', '318689255', 10265, 'rare'),
(437, '★ Керамбит | Дамасская сталь', '★ Karambit | Damascus Steel ', '721857727', 10540, 'rare'),
(438, '★ Керамбит | Северный лес', '★ Karambit | Boreal Forest ', '310815809', 6488, 'rare'),
(439, '★ Керамбит | Ультрафиолет', '★ Karambit | Ultraviolet ', '720385927', 8502, 'rare'),
(440, '★ Керамбит | Ручная роспись', '★ Karambit | Freehand ', '1815674194', 0, 'rare'),
(441, '★ Керамбит | Пыльник', '★ Karambit | Rust Coat ', '720381639', 8671, 'rare'),
(442, '★ Керамбит | Сажа', '★ Karambit | Scorched ', '313225800', 6485, 'rare'),
(443, '★ Керамбит | Зуб тигра', '★ Karambit | Tiger Tooth ', '722403808', 22658, 'rare'),
(444, '★ Штык-нож | Северный лес', '★ Bayonet | Boreal Forest ', '310845220', 3634, 'rare'),
(445, '★ Штык-нож | Ультрафиолет', '★ Bayonet | Ultraviolet ', '720744346', 4023, 'rare'),
(446, '★ Штык-нож | Африканская сетка', '★ Bayonet | Safari Mesh ', '312110943', 3439, 'rare'),
(447, '★ Штык-нож | Пиксельный камуфляж «Лес»', '★ Bayonet | Forest DDPAT ', '310992880', 3505, 'rare'),
(448, '★ Штык-нож | Зуб тигра', '★ Bayonet | Tiger Tooth ', '721328469', 11855, 'rare'),
(449, '★ Штык-нож M9 | Ночь', '★ M9 Bayonet | Night ', '313871789', 5336, 'rare'),
(450, '★ Штык-нож M9 | Пыльник', '★ M9 Bayonet | Rust Coat ', '720353189', 5985, 'rare'),
(451, '★ Штык-нож | Мраморный градиент', '★ Bayonet | Marble Fade ', '720800199', 14105, 'rare'),
(452, '★ Штык-нож | Дамасская сталь', '★ Bayonet | Damascus Steel ', '720377956', 5484, 'rare'),
(453, '★ Штык-нож M9 | Волны', '★ M9 Bayonet | Doppler ', '720469187', 0, 'rare'),
(454, '★ Штык-нож M9 | Патина', '★ M9 Bayonet | Stained ', '311451484', 5686, 'rare'),
(455, '★ Штык-нож | Сажа', '★ Bayonet | Scorched ', '310877902', 3610, 'rare'),
(456, '★ Штык-нож | Поверхностная закалка', '★ Bayonet | Case Hardened ', '311161707', 5536, 'rare'),
(457, '★ Штык-нож | Волны', '★ Bayonet | Doppler ', '720437240', 0, 'rare'),
(458, '★ Штык-нож | Вороненая сталь', '★ Bayonet | Blue Steel ', '311867303', 5525, 'rare'),
(459, '★ Штык-нож M9', '★ M9 Bayonet', '313616065', 0, 'rare'),
(460, '★ Штык-нож | Убийство', '★ Bayonet | Slaughter ', '314074547', 7140, 'rare'),
(461, '★ Складной нож | Пыльник', '★ Flip Knife | Rust Coat ', '721038259', 3407, 'rare'),
(462, '★ Складной нож | Африканская сетка', '★ Flip Knife | Safari Mesh ', '310849387', 2660, 'rare'),
(463, '★ Складной нож | Северный лес', '★ Flip Knife | Boreal Forest ', '311870038', 2741, 'rare'),
(464, '★ Складной нож | Дамасская сталь', '★ Flip Knife | Damascus Steel ', '720803652', 3431, 'rare'),
(465, '★ Складной нож | Волны', '★ Flip Knife | Doppler ', '720544632', 7072, 'rare'),
(466, '★ Складной нож | Ночь', '★ Flip Knife | Night ', '332971791', 3001, 'rare'),
(467, '★ Складной нож | Мраморный градиент', '★ Flip Knife | Marble Fade ', '720540811', 9252, 'rare'),
(468, '★ Складной нож | Сажа', '★ Flip Knife | Scorched ', '311033255', 2673, 'rare'),
(469, '★ Складной нож | Городская маскировка', '★ Flip Knife | Urban Masked ', '313464843', 2655, 'rare'),
(470, '★ Складной нож | Патина', '★ Flip Knife | Stained ', '311604815', 3165, 'rare'),
(471, '★ Складной нож | Вороненая сталь', '★ Flip Knife | Blue Steel ', '310846239', 3609, 'rare'),
(472, '★ Складной нож | Убийство', '★ Flip Knife | Slaughter ', '313725966', 6296, 'rare'),
(473, '★ Складной нож | Градиент', '★ Flip Knife | Fade ', '311194743', 8317, 'rare'),
(474, '★ Складной нож | Гамма-волны', '★ Flip Knife | Gamma Doppler ', '1816808393', 10679, 'rare'),
(475, '★ Складной нож | Чистая вода', '★ Flip Knife | Bright Water ', '1816447375', 4209, 'rare'),
(476, '★ Складной нож | Поверхностная закалка', '★ Flip Knife | Case Hardened ', '314171098', 0, 'rare'),
(477, '★ Складной нож | Кровавая паутина', '★ Flip Knife | Crimson Web ', '312077349', 3579, 'rare'),
(478, '★ Складной нож | Легенды', '★ Flip Knife | Lore ', '1817968422', 6818, 'rare'),
(479, '★ Складной нож | Автотроника', '★ Flip Knife | Autotronic ', '1818056142', 6063, 'rare'),
(480, '★ Складной нож | Ручная роспись', '★ Flip Knife | Freehand ', '1816182493', 5441, 'rare'),
(481, '★ Нож с лезвием-крюком | Чистая вода', '★ Gut Knife | Bright Water ', '1818150636', 3049, 'rare'),
(482, '★ Нож с лезвием-крюком | Африканская сетка', '★ Gut Knife | Safari Mesh ', '313007698', 2225, 'rare'),
(483, '★ Нож с лезвием-крюком | Кровавая паутина', '★ Gut Knife | Crimson Web ', '311935035', 2702, 'rare'),
(484, '★ Нож с лезвием-крюком | Северный лес', '★ Gut Knife | Boreal Forest ', '312702723', 2322, 'rare'),
(485, '★ Нож с лезвием-крюком | Зуб тигра', '★ Gut Knife | Tiger Tooth ', '721686311', 4881, 'rare'),
(486, '★ Нож с лезвием-крюком | Волны', '★ Gut Knife | Doppler ', '720778872', 4058, 'rare'),
(487, '★ Нож с лезвием-крюком | Городская маскировка', '★ Gut Knife | Urban Masked ', '311367499', 2307, 'rare'),
(488, '★ Нож с лезвием-крюком | Ультрафиолет', '★ Gut Knife | Ultraviolet ', '721593408', 2550, 'rare'),
(489, '★ Нож с лезвием-крюком | Сажа', '★ Gut Knife | Scorched ', '311134001', 2311, 'rare'),
(490, '★ Нож с лезвием-крюком | Ночь', '★ Gut Knife | Night ', '311814110', 2439, 'rare'),
(491, '★ Нож с лезвием-крюком | Убийство', '★ Gut Knife | Slaughter ', '311019907', 3269, 'rare'),
(492, '★ Нож с лезвием-крюком | Легенды', '★ Gut Knife | Lore ', '1816596721', 4431, 'rare'),
(493, '★ Нож с лезвием-крюком | Вороненая сталь', '★ Gut Knife | Blue Steel ', '310879092', 0, 'rare'),
(494, '★ Нож с лезвием-крюком | Поверхностная закалка', '★ Gut Knife | Case Hardened ', '313875208', 2901, 'rare'),
(495, '★ Нож с лезвием-крюком | Ручная роспись', '★ Gut Knife | Freehand ', '1816238255', 3505, 'rare'),
(496, '★ Нож с лезвием-крюком | Гамма-волны', '★ Gut Knife | Gamma Doppler ', '1817791289', 0, 'rare'),
(497, 'USP-S | Нержавейка', 'USP-S | Stainless ', '350450809', 95, 'milspec'),
(498, '★ Штык-нож | Городская маскировка', '★ Bayonet | Urban Masked ', '313654971', 3509, 'rare'),
(499, '★ Керамбит | Африканская сетка', '★ Karambit | Safari Mesh ', '310970642', 5967, 'rare'),
(500, '★ Штык-нож M9 | Вороненая сталь', '★ M9 Bayonet | Blue Steel ', '314201248', 7212, 'rare'),
(501, '★ Штык-нож | Градиент', '★ Bayonet | Fade ', '310959445', 10164, 'rare'),
(502, '★ Нож-бабочка', '★ Butterfly Knife', '520172396', 3749, 'rare'),
(503, 'Five-SeveN | Неистовый даймё', 'Five-SeveN | Violent Daimyo ', '1812818424', 10, 'milspec'),
(504, 'MAC-10 | Плотоядный', 'MAC-10 | Carnivore ', '1812818754', 5, 'milspec'),
(505, 'Nova | Экзо', 'Nova | Exo ', '1812813350', 6, 'milspec'),
(506, 'P250 | Железное покрытие', 'P250 | Iron Clad ', '1812818783', 5, 'milspec'),
(507, 'ПП-19 Бизон | Жнец', 'PP-Bizon | Harvester ', '1812822492', 5, 'milspec'),
(508, 'SG 553 | Полет', 'SG 553 | Aerial ', '1812818831', 5, 'milspec'),
(509, 'Tec-9 | Ледниковый покров', 'Tec-9 | Ice Cap ', '1812818784', 6, 'milspec'),
(510, 'AUG | Аристократ', 'AUG | Aristocrat ', '1812816831', 31, 'restricted'),
(511, 'AWP | Фобос', 'AWP | Phobos ', '1812816683', 138, 'restricted'),
(512, 'P90 | Воин дорог', 'P90 | Chopper ', '1812814892', 32, 'restricted'),
(513, 'Револьвер R8 | Перезагрузка', 'R8 Revolver | Reboot ', '1812855493', 30, 'restricted'),
(514, 'Sawed-Off | В центре внимания', 'Sawed-Off | Limelight ', '1812918047', 30, 'restricted'),
(515, 'M4A4 | Безлюдный космос', 'M4A4 | Desolate Space ', '1812817007', 578, 'classified'),
(516, 'P2000 | Императорский дракон', 'P2000 | Imperial Dragon ', '1812837511', 92, 'classified'),
(517, 'Glock-18 | Пустынный повстанец', 'Glock-18 | Wasteland Rebel ', '1813198903', 412, 'covert'),
(518, 'M4A1-S | Механо-пушка', 'M4A1-S | Mecha Industries ', '1812832980', 882, 'covert'),
(519, 'Наклейка | Natus Vincere | Atlanta 2017', 'Sticker | Natus Vincere | Atlanta 2017', '2135302633', 18, 'sticker'),
(520, 'Наклейка | Удачи', 'Sticker | Good Luck', '370198576', 29, 'sticker'),
(521, 'Наклейка | Повеселимся', 'Sticker | Have Fun', '370192820', 27, 'sticker'),
(522, 'Наклейка | Банан', 'Sticker | Banana', '370200731', 57, 'sticker'),
(523, 'Наклейка | Черный пес', 'Sticker | Black Dog', '341293273', 64, 'sticker'),
(524, 'Наклейка | Код от бомбы', 'Sticker | Bomb Code', '370199479', 46, 'sticker'),
(525, 'Наклейка | Собака-взрывака', 'Sticker | Bomb Doge', '469453702', 0, 'sticker'),
(526, 'Наклейка | Сжечь их всех', 'Sticker | Burn Them All', '469445896', 36, 'sticker'),
(527, 'Наклейка | Любитель цыпочек', 'Sticker | Chicken Lover', '370203990', 28, 'sticker'),
(528, 'Наклейка | Смерть идет', 'Sticker | Death Comes', '506856507', 63, 'sticker'),
(529, 'Наклейка | Плевое дело', 'Sticker | Easy Peasy', '341284854', 104, 'sticker'),
(530, 'Наклейка | Грозный', 'Sticker | Fearsome', '341287384', 0, 'sticker'),
(531, 'Наклейка | Хорошая игра', 'Sticker | Good Game', '370196642', 37, 'sticker'),
(532, 'Наклейка | Удар в спину', 'Sticker | Backstab', '469457098', 47, 'sticker'),
(533, 'Наклейка | Цербер', 'Sticker | Cerberus', '341276721', 0, 'sticker'),
(534, 'Наклейка | Лама-пушка', 'Sticker | Llama Cannon', '469455392', 46, 'sticker'),
(535, 'Наклейка | Везунчик', 'Sticker | Luck Skill', '341291325', 40, 'sticker'),
(536, 'Наклейка | Чертова дюжина', 'Sticker | Lucky 13', '341280565', 42, 'sticker'),
(537, 'Наклейка | Козырные тузы', 'Sticker | Aces High', '341303172', 53, 'sticker'),
(538, 'Наклейка | Металл', 'Sticker | Metal', '370199686', 31, 'sticker'),
(539, 'Наклейка | Запасной AWP', 'Sticker | My Other Awp', '469441600', 82, 'sticker'),
(540, 'Наклейка | Открытый череп', 'Sticker | Rising Skull', '469457919', 61, 'sticker'),
(541, 'Наклейка | Найти и уничтожить', 'Sticker | Seek & Destroy', '341284533', 50, 'sticker'),
(542, 'Наклейка | Повелитель лезвия', 'Sticker | Shave Master', '469444304', 54, 'sticker'),
(543, 'Наклейка | Тише воды, ниже травы', 'Sticker | Sneaky Beaky Like', '469458804', 89, 'sticker'),
(544, 'Наклейка | Б или не Б', 'Sticker | To B or not to B', '469460123', 42, 'sticker'),
(545, 'Наклейка | Бдительность', 'Sticker | Vigilance', '341288898', 39, 'sticker'),
(546, 'Наклейка | Бдительность (голографическая)', 'Sticker | Vigilance ', '341278250', 0, 'sticker'),
(547, 'Наклейка | Завоеватель', 'Sticker | I Conquered', '341291535', 42, 'sticker'),
(548, 'Наклейка | Охотник за головами (металлическая)', 'Sticker | Headhunter ', '469473248', 1652, 'sticker'),
(549, 'Наклейка | Огнеопасно (металлическая)', 'Sticker | Flammable ', '469458272', 1415, 'sticker'),
(550, 'Наклейка | Bish (голографическая)', 'Sticker | Bish ', '370201720', 123, 'sticker'),
(551, 'Наклейка | Rekt (голографическая)', 'Sticker | Rekt ', '506859530', 201, 'sticker'),
(552, 'Наклейка | Везунчик (металлическая)', 'Sticker | Luck Skill ', '341290526', 208, 'sticker'),
(553, 'Наклейка | Корона (металлическая)', 'Sticker | Crown ', '370205988', 3899, 'sticker'),
(554, 'Наклейка | Snax (металлическая) | Кёльн 2015', 'Sticker | Snax  | Cologne 2015', '1225727109', 0, 'sticker'),
(555, 'Наклейка | SmithZz (металлическая) | Кёльн 2015', 'Sticker | SmithZz  | Cologne 2015', '1225724023', 0, 'sticker'),
(556, 'Наклейка | AZR (металлическая) | Кёльн 2015', 'Sticker | AZR  | Cologne 2015', '1225747773', 0, 'sticker'),
(557, 'Наклейка | FNS (металлическая) | Кёльн 2015', 'Sticker | FNS  | Cologne 2015', '1225731358', 0, 'sticker'),
(558, 'Наклейка | GeT_RiGhT (металлическая) | Кёльн 2015', 'Sticker | GeT_RiGhT  | Cologne 2015', '1225724134', 0, 'sticker'),
(559, 'Наклейка | Круть (металлическая)', 'Sticker | Swag ', '469459868', 1125, 'sticker'),
(560, 'Наклейка | SPUNJ (металлическая) | Кёльн 2015', 'Sticker | SPUNJ  | Cologne 2015', '1225722344', 0, 'sticker'),
(561, 'Наклейка | Глупый банан (металлическая)', 'Sticker | Stupid Banana ', '370202138', 146, 'sticker'),
(562, 'Наклейка | Командная работа (голографическая)', 'Sticker | Teamwork ', '469459906', 0, 'sticker'),
(563, 'Наклейка | Козырные тузы (голографическая)', 'Sticker | Aces High ', '341286771', 130, 'sticker'),
(564, 'Наклейка | Грозный (голографическая)', 'Sticker | Fearsome ', '341294720', 150, 'sticker'),
(565, 'Наклейка | Let\'s Roll-oll (голографическая)', 'Sticker | Let\'s Roll-oll ', '370201843', 53, 'sticker'),
(566, 'Наклейка | Xyp9x (металлическая) | Кёльн 2015', 'Sticker | Xyp9x  | Cologne 2015', '1225728843', 0, 'sticker'),
(567, 'Наклейка | allu (металлическая) | Кёльн 2015', 'Sticker | allu  | Cologne 2015', '1225728845', 0, 'sticker'),
(568, 'Наклейка | cajunb (металлическая) | Кёльн 2015', 'Sticker | cajunb  | Cologne 2015', '1225722341', 0, 'sticker'),
(569, 'Наклейка | dennis (металлическая) | Кёльн 2015', 'Sticker | dennis  | Cologne 2015', '1225722172', 0, 'sticker'),
(570, 'Наклейка | device (металлическая) | Кёльн 2015', 'Sticker | device  | Cologne 2015', '1225723688', 0, 'sticker'),
(571, 'Наклейка | f0rest (металлическая) | Кёльн 2015', 'Sticker | f0rest  | Cologne 2015', '1225726330', 0, 'sticker'),
(572, 'Наклейка | jdm64 (металлическая) | Кёльн 2015', 'Sticker | jdm64  | Cologne 2015', '1225723679', 0, 'sticker'),
(573, 'Наклейка | tarik (металлическая) | Кёльн 2015', 'Sticker | tarik  | Cologne 2015', '1225732033', 0, 'sticker'),
(574, 'Наклейка | Утренний вой', 'Sticker | Howling Dawn', '506853395', 7394, 'sticker');

-- --------------------------------------------------------

--
-- Структура таблицы `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `promo`
--

INSERT INTO `promo` (`id`, `price`, `name`) VALUES
(6, 1, '121A9-48FXV-HGCDQ-TL9Z2'),
(7, 6, '36ECO-X42WR-N0LMY-IUXFY');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userid` varchar(800) NOT NULL,
  `avatar` text NOT NULL,
  `trade` text,
  `token` text,
  `partner` varchar(100) DEFAULT NULL,
  `money` int(11) DEFAULT '0',
  `group` int(11) NOT NULL DEFAULT '0',
  `username` text NOT NULL,
  `remember_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `casegame`
--
ALTER TABLE `casegame`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cfg`
--
ALTER TABLE `cfg`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `casegame`
--
ALTER TABLE `casegame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблицы `cfg`
--
ALTER TABLE `cfg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;
--
-- AUTO_INCREMENT для таблицы `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
