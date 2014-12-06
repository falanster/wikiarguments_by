-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: falanster_info_wikiarg_bel
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arguments`
--

DROP TABLE IF EXISTS `arguments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arguments` (
  `argumentId` int(11) NOT NULL AUTO_INCREMENT,
  `questionId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `userId` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `headline` varchar(100) NOT NULL,
  `abstract` varchar(200) NOT NULL,
  `details` mediumtext NOT NULL,
  `dateAdded` bigint(20) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`argumentId`),
  UNIQUE KEY `questionId` (`questionId`,`parentId`,`url`),
  KEY `userId` (`userId`,`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arguments`
--

LOCK TABLES `arguments` WRITE;
/*!40000 ALTER TABLE `arguments` DISABLE KEYS */;
INSERT INTO `arguments` VALUES (1,7,0,1,3,'test','test','test','testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest',1414874559,0),(2,9,0,-1,3,'2','тест2','тест2','тест2',1414874772,0),(3,9,0,1,3,'2-1','тест2','тест2','тест2',1414874780,0),(4,9,2,1,3,'2','тест2','тест2','тест2',1414874792,0),(5,11,0,1,8,'?-????','Поле \"заголовок\"','Какая-то лабудень','Тут можно написать больше лабудени',1414928889,0),(6,11,0,1,2,'???-??--??','Нейкі аргумент у паддтр','Абмеркаваліллілілілі','Абмеркаваліллілілілі АбмеркавалілліліліліАбмеркаваліллілілілі АбмеркавалілліліліліАбмеркаваліллілілілі',1417629300,0),(7,11,0,1,2,'1','тэст1','тэст2','111сала',1417785545,0),(8,11,0,1,2,'???-??--??7','Нейкі аргумент у паддтр7','Нейкі аргумент у паддтрsdfsdf sdf','s dfsd fsdf sdfsdfыв пер кпр вапр ваправ',1417786911,0),(9,11,0,-1,2,'???-??--??56','Нейкі аргумент у паддтр56','Нейкі аргумент у паддтр Нейкі аргумент у паддтр Нейкі аргумент у паддтр Нейкі аргумент у паддтр Нейкі аргумент у паддтр',' Нейкі аргумент у паддтрНейкі аргумент у паддтр Нейкі аргумент у паддтрНейкі аргумент у паддтрНейкі аргумент у паддтрНейкі аргумент у паддтр',1417786951,0),(10,11,0,-1,2,'нейкі-аргумент-у-па32','Нейкі аргумент у па32','Нейкі аргумент у паддтр56 Нейкі аргумент у паддтр56 Нейкі аргумент у паддтр56 Нейкі аргумент у паддтр56 Нейкі аргумент у паддтр56 Нейкі аргу','Нейкі аргумент у паддтр56Нейкі аргумент у паддтр56Нейкі аргумент у паддтр56Нейкі аргумент у паддтр56Нейкі аргумент у паддтр56Нейкі аргумент у паддтр56',1417788100,0);
/*!40000 ALTER TABLE `arguments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badwords`
--

DROP TABLE IF EXISTS `badwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badwords` (
  `badwordId` int(11) NOT NULL,
  `category` tinyint(4) NOT NULL,
  `word` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badwords`
--

LOCK TABLES `badwords` WRITE;
/*!40000 ALTER TABLE `badwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `badwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmation_codes`
--

DROP TABLE IF EXISTS `confirmation_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confirmation_codes` (
  `confirmationId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `code` varchar(128) NOT NULL,
  `dateAdded` int(13) NOT NULL,
  PRIMARY KEY (`confirmationId`),
  UNIQUE KEY `userId` (`userId`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmation_codes`
--

LOCK TABLES `confirmation_codes` WRITE;
/*!40000 ALTER TABLE `confirmation_codes` DISABLE KEYS */;
INSERT INTO `confirmation_codes` VALUES (5,5,'CONFIRMATION_TYPE_EMAIL','ae4891518e89092944e26f7d87330257',1414912090),(6,6,'CONFIRMATION_TYPE_EMAIL','643484cff35b6f9d57b45e2b6ca95db1',1414915075),(7,7,'CONFIRMATION_TYPE_EMAIL','f614e004399fec71c3442a6d799b8aa0',1414921872);
/*!40000 ALTER TABLE `confirmation_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_permissions`
--

DROP TABLE IF EXISTS `group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `dateAdded` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupId` (`groupId`,`userId`),
  KEY `userId` (`userId`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_permissions`
--

LOCK TABLES `group_permissions` WRITE;
/*!40000 ALTER TABLE `group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `groupId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `dateAdded` bigint(20) NOT NULL,
  `visibility` tinyint(4) NOT NULL,
  `url` varchar(250) NOT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `url` (`url`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'group_1',1,1414863107,1,'group1'),(2,'лол',3,1414875008,1,'??'),(3,'ЛДПР=)',3,1414875031,1,'?');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localization`
--

DROP TABLE IF EXISTS `localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localization` (
  `loc_key` varchar(255) NOT NULL,
  `loc_language` varchar(4) NOT NULL,
  `loc_val` mediumtext NOT NULL,
  PRIMARY KEY (`loc_language`,`loc_key`),
  KEY `loc_language` (`loc_language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localization`
--

LOCK TABLES `localization` WRITE;
/*!40000 ALTER TABLE `localization` DISABLE KEYS */;
INSERT INTO `localization` VALUES ('ACCOUNT_FORGOT_PASSWORD_EMAIL_BODY_STEP1','be','Дарагі чалец Wikiarguments,\r\n<br><br>\r\nКалі ласка прайдзіце па гэтай спасылцы, каб запытаць новы пароль: [NEW_PASS_CONFIRM_LINK]\r\n<br><br>\r\nВаша каманда Wikiarguments'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_BODY_STEP2','be','Дарагі чалец Wikiarguments,\r\n<br><br>\r\nмы стварылі для вас новы пароль. \r\n<br><br>\r\nВаш новы пароль: [PASSWORD]\r\n<br><br>\r\nДля большай бяспекі змяніце свой пароль пасля ўваходу.\r\n<br><br>\r\nВаша каманда Wikiarguments'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_HEADER_STEP1','be','Забыліся на пароль?'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_HEADER_STEP2','be','Ваш новы пароль'),('ARGUMENT_EDIT','be','Рэдагаванне (засталося [TIMELEFT] хвілін)'),('ARGUMENT_EDIT_EXCEEDED','be','Вы больш не можаце рэдагаваць гэтае абмеркаванне.'),('CHANGELOG_URL','be','<a href = \"http://en.changelog.wikiarguments.net\">'),('CHARS_WRITTEN','be','знакаў напісана'),('CHARS_WRITTEN_LEFT','be','знакаў засталося'),('CHECKIN_CON_CONFIRMED','be','Голас падлічаны'),('CHECKIN_PRO_CONFIRMED','be','Голас падлічаны'),('COUNTER_ARGUMENT_EDIT_EXCEEDED','be','Вы больш не можаце рэдагаваць гэтае абмеркаванне.'),('DIVIDE_USERNAMES','be','Напішыце імёны карыстальнікаў праз коску'),('EDIT_QUESTION_HEADLINE','be','Рэдагаваць Пытанне'),('ENGLISH','be','Ангельская'),('ENGLISH_URL','be','<a href = \"http://en.wikiarguments.net\">'),('ERROR_COUNTER_ARGUMENT_CHECK_IN_DIFF','be','Вы не можаце дадаваць контр-аргументы ў сваім раздзеле.'),('ERROR_COUNTER_ARGUMENT_CHECK_IN_FIRST','be','Вы павінны ўвайсці, каб ствараць контраргументы.'),('ERROR_GROUP_INSUFFICIENT_RIGHTS','be','Недастаткова правоў групы'),('ERROR_GROUP_NAME_ALREADY_EXISTS','be','Гэта група ўжо існуе'),('ERROR_INVALID_ARGUMENT','be','ERROR_INVALID_ARGUMENT'),('ERROR_INVALID_FACTION','be','ERROR_INVALID_FACTION'),('ERROR_INVALID_GROUP_NAME','be','Няслушнае імя групы'),('ERROR_INVALID_PERMISSIONS','be','Няслушныя правы'),('ERROR_INVALID_PROFILE','be','ERROR_INVALID_PROFILE'),('ERROR_INVALID_QUESTION','be','Няслушнае пытанне.'),('ERROR_INVALID_QUESTION_FLAGS','be','Няслушныя сцягі'),('ERROR_INVALID_QUESTION_TYPE','be','Няслушны тып'),('ERROR_INVALID_VOTE','be','Няслушны голас.'),('ERROR_NEW_ARGUMENT_MISSING_ABSTRACT','be','Калі ласка, стварыце кароткае апісанне.'),('ERROR_NEW_ARGUMENT_MISSING_DETAILS','be','ERROR_NEW_ARGUMENT_MISSING_DETAILS'),('ERROR_NEW_ARGUMENT_MISSING_HEADLINE','be','Вы мусіце ўвесці загаловак.'),('ERROR_NEW_ARGUMENT_TRY_AGAIN','be','Памылка. Калі ласка, паспрабуйце яшчэ раз.'),('ERROR_NEW_GROUP_TRY_AGAIN','be','Памылка. Калі ласка, паспрабуйце яшчэ раз.'),('ERROR_NEW_QUESTION_INVALID_QUESTION','be','Няслушнае пытанне.'),('ERROR_NEW_QUESTION_TRY_AGAIN','be','Памылка. Калі ласка, паспрабуйце яшчэ раз.'),('ERROR_NOT_CHECKED_IN','be','Вы павінны ўвесці Так ці Не, каб стварыць абмеркаванні.'),('ERROR_NOT_LOGGED_IN','be','Вы павінны ўвайсці, каб ствараць абмеркаванні.'),('ERROR_NOT_LOGGED_IN_GROUP','be','Вы павінны ўвайсці, каб стварыць групу.'),('ERROR_NO_PERMISSION','be','ERROR_NO_PERMISSION'),('ERROR_PASS_REQUEST_MISSING_USERNAME','be','Вы павінны ўвесці сваё імя карыстальніка.'),('FOOTER_CHANGELOG','be','Журнал зменаў'),('FOOTER_COPYRIGHT','be','<a href=\"/imprint/\">Адбітак</a>\r\n'),('FOOTER_MENU','be','Меню'),('FOOTER_NEW_GROUP','be','Стварыць групу'),('FOOTER_OPEN_SOURCE','be','<a href=\"https://code.google.com/p/wikiarguments/\">Адчынены Код</a>\r\n'),('FOOTER_TOS','be','<a href=\"http://creativecommons.org/licenses/by/3.0/\">Змест: CC BY 3.0</a>'),('GERMAN','be','Нямецкая'),('GERMAN_URL','be','<a href = \"http://de.wikiarguments.net\">de.wikiarguments.net</a>\r\n'),('GROUPS_URL','be','en.wikiarguments.net/groups/'),('GROUP_CHANGE_OWNERSHIP','be','Уладальнік групы'),('GROUP_CHANGE_OWNERSHIP_PROMPT','be','Вы сапраўды хочаце змяніць правы ўладання?'),('GROUP_CHANGE_OWNERSHIP_SUCCESS','be','Правы ўладальніка паспяхова перададзены.'),('GROUP_DELETE_GROUP_PROMPT','be','Вы сапраўды хочаце выдаліць гэтую групу?'),('GROUP_DELETE_SUCCESS','be','Група была паспяхова выдалена.'),('GROUP_PERMISSION_ADMIN','be','Адміністратар'),('GROUP_PERMISSION_ARGUMENTS','be','Толькі абмеркаванні'),('GROUP_PERMISSION_OWNER','be','Уладальнік групы'),('GROUP_PERMISSION_QUESTIONS','be','Толькі пытанні'),('GROUP_PERMISSION_QUESTIONS_ARGUMENTS','be','Пытанні + Абмеркаванні'),('GROUP_VISIBILITY','be','Бачнасць'),('GROUP_VISIBILITY_PRIVATE','be','Прыватная'),('GROUP_VISIBILITY_PUBLIC','be','Адкрытая'),('HEADER_NAVI_LOGOUT','be','Выйсці'),('HEADER_NAVI_MANAGE_PROFILE','be','Наладкі'),('HEADER_NAVI_MY_PROFILE','be','Мой профіль'),('HEADER_NAVI_NEW_QUESTION','be','Новае пытанне'),('HEADER_NAVI_SHARE_PAGE','be','Падзяліцца старонкай'),('HEADER_NEW_GROUP','be','Новая група'),('HEADER_SIGNUP','be','Зарэгістравацца'),('HTML_HEADER_META_LANG','be','be'),('HTML_META_TITLE','be',' - Wikiarguments'),('HTML_META_TITLE_ARGUMENT','be','[ARGUMENT] - Wikiarguments'),('HTML_META_TITLE_EDIT_ARGUMENT','be','Рэдагаваць абмеркаванне'),('HTML_META_TITLE_EDIT_QUESTION','be','Рэдагаваць пытанне'),('HTML_META_TITLE_IMPRINT','be','Зафіксаваць - Wikiarguments'),('HTML_META_TITLE_MANAGE_GROUP','be','Кіраваць групай'),('HTML_META_TITLE_MANAGE_PROFILE','be','Змяніць профіль - Wikiarguments'),('HTML_META_TITLE_NEWEST','be','[TAGS] Новае - Wikiarguments'),('HTML_META_TITLE_NEW_ARGUMENT','be','Новае абмеркаванне - Wikiarguments'),('HTML_META_TITLE_NEW_COUNTER_ARGUMENT','be','Новы контраргумент - Wikiarguments'),('HTML_META_TITLE_NEW_GROUP','be','Новая група'),('HTML_META_TITLE_NEW_QUESTION','be','Новае пытанне - Wikiarguments'),('HTML_META_TITLE_PROFILE','be','[USERNAME] - Wikiarguments'),('HTML_META_TITLE_QUESTION','be','[QUESTION] - Wikiarguments'),('HTML_META_TITLE_SIGNUP','be','Рэгістрацыя - Wikiarguments'),('HTML_META_TITLE_TOP','be','[TAGS] Топ - Wikiarguments'),('HTML_META_TITLE_TRENDING','be','[TAGS] Трэнды - Wikiarguments'),('IMPRINT','be','<div class=\"headline\">Зафіксаваць</div>'),('LANGUAGE','be','Мова'),('LIGHTBOX_CLOSE','be','Закрыць'),('LIGHTBOX_PROMPT_NO','be','Не'),('LIGHTBOX_PROMPT_YES','be','Так'),('LOGIN_ERROR_ACCOUNT_PENDING','be','Запыт акаўнта'),('LOGIN_ERROR_ALREADY_LOGGED_IN','be','Вы ўжо ўвайшлі.'),('LOGIN_ERROR_INVALID_PASSWORD','be','Няслушны пароль.'),('LOGIN_ERROR_INVALID_USERNAME','be','Няслушнае імя карыстальніка.'),('LOGIN_FORGOT_PASSWORD','be','Не памятаю паролю'),('LOGIN_HEADLINE','be','Ужо зарэгістраваныя?<br />Уваходзьце тут:'),('LOGIN_PASSWORD','be','Пароль'),('LOGIN_SUBMIT','be','Лагін'),('LOGIN_SUCCESS','be','Вы паспяхова ўвайшлі.'),('LOGIN_USERNAME','be','Імя карыстальніка'),('MANAGE_GROUP_ADD_MEMBERS','be','Надзяліць правамі'),('MANAGE_GROUP_GENERAL_INFORMATION','be','Агульная інфармацыя'),('MANAGE_GROUP_HEADLINE','be','Наладкі групы'),('MANAGE_GROUP_MEMBERS','be','Карыстальнікі і правы'),('MANAGE_GROUP_OTHER_SETTINGS','be','Дадатковыя наладкі'),('MANAGE_GROUP_OWNER_OPTIONS','be','Больш опцый'),('MANAGE_GROUP_URL','be','URL'),('MANAGE_HEADLINE','be','Змяніць пароль'),('MANAGE_SUBMIT','be','Захаваць змены'),('NAVIGATION_NEWEST','be','Новае'),('NAVIGATION_SEARCH_DEFAULT','be','пошук'),('NAVIGATION_TOP','be','Toп'),('NAVIGATION_WHATS_HOT','be','Трэнды'),('NEW_ARGUMENT','be','Дадаць абмеркаванне'),('NEW_ARGUMENT_ABSTRACT','be','Абмеркаванне'),('NEW_ARGUMENT_DETAILS','be','Дэталі </br>абмеркавання'),('NEW_ARGUMENT_HEADLINE','be','Загаловак'),('NEW_COUNTER_ARGUMENT','be','Дадаць контраргумент'),('NEW_GROUP_HEADLINE','be','Стварыць новую групу'),('NEW_GROUP_TITLE','be','Імя'),('NEW_GROUP_VISIBILITY','be','Бачнасць'),('NEW_QUESTION','be','Новае пытанне'),('NEW_QUESTION_DETAILS','be','Падрабязнасці'),('NEW_QUESTION_FLAGS','be','Удзел'),('NEW_QUESTION_HEADLINE','be','Дадаць новае пытанне'),('NEW_QUESTION_TAGS','be','Цэтлікі'),('NEW_QUESTION_TITLE','be','Пытанне'),('NEW_QUESTION_TYPE','be','Тып'),('NOTICE_CHECKIN_NOT_LOGGED_IN','be','Вы павінны ўвайсці.'),('NOTICE_CONFIRMATION_ERROR_INVALID_USER','be','NOTICE_CONFIRMATION_ERROR_INVALID_USER'),('NOTICE_CONFIRMATION_SUCCESS','be','Вы паспяхова зарэгістраваліся.'),('NOTICE_NEW_ARGUMENT_NOT_CHECKED_IN','be','Вы павінны ўвайсці, каб стварыць новае абмеркаванне.'),('NOTICE_NEW_ARGUMENT_NOT_LOGGED_IN','be','Вы павінны ўвайсці, каб стварыць новае абмеркаванне.'),('NOTICE_NEW_ARGUMENT_NO_PERMISSION','be','NOTICE_NEW_ARGUMENT_NO_PERMISSION'),('NOTICE_NEW_COUNTER_ARGUMENT_NO_PERMISSION','be','NOTICE_NEW_COUNTER_ARGUMENT_NO_PERMISSION'),('NOTICE_NEW_QUESTION_NO_PERMISSION','be','Недастаткова правоў, каб стварыць пытанне.'),('NOTICE_NEW_QUESTION_UNLISTED_MANIPULATION','be','Заўвага: Пунктамі і спісамі вельмі лёгка маніпуляваць.'),('NOTICE_PASS_REQUEST_SUCCESS','be','Мы даслалі вам новы пароль на вашу электронную пошту.'),('NOTICE_VOTE_NOT_CHECKED_IN','be','Вы павінны быць у фракцыі, каб галасаваць.'),('NOTICE_VOTE_NOT_LOGGED_IN','be','Вы павінны ўвайсці, каб галасаваць.'),('NUM_COUNTER_ARGUMENTS','be','Контраргументаў'),('NUM_COUNTER_ARGUMENTS_NULL','be','Контраргументаў'),('NUM_COUNTER_ARGUMENTS_ONE','be','Контраргумент'),('NUM_COUNTER_ARGUMENTS_TWO','be','Контраргументы'),('PAGE_ERROR_INVALID_PAGE','be','Гэта старонка не існуе.'),('PAGINATION_PAGE_X_OF_Y','be','Старонка[CUR] з [MAX]'),('PARTICIPATION_ALL','be','Усе'),('PARTICIPATION_ONLY_REGISTERED','be','Толькі зарэгістраваныя'),('PASSWORD_OLD','be','Стары пароль'),('PASS_REQUEST_SUCCESS','be','Мы даслалі вам электронны ліст для абнаўлення паролю.'),('PROFILE_ARGUMENT_POINTS','be','Пункты абмеркавання'),('PROFILE_HEADLINE','be','[USERNAME]'),('PROFILE_QUESTION_POINTS','be','Пункты пытання'),('PROFILE_SIGNUP_DATE','be','Дата рэгістрацыі: [SIGNUP_DATE]'),('PROMPT_NO','be','Не'),('PROMPT_YES','be','Так'),('QUESTION_ARGUMENTS','be','[NUM_ARGUMENTS]'),('QUESTION_AUTHOR','be','Дададзена [TIMESINCE] ад [USERNAME]'),('QUESTION_AUTHOR_ANON','be','Дададзена [TIMESINCE]'),('QUESTION_DISTRIBUTION_CON_PERC','be','Не [PERC]%'),('QUESTION_DISTRIBUTION_NUM_CHECKINS','be','[NUM] Галасоў'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_NULL','be','[NUM] Галасоў'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_ONE','be','[NUM] Голас'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_TWO','be','[NUM] Галасы'),('QUESTION_DISTRIBUTION_PRO_PERC','be','Так [PERC]%'),('QUESTION_EDIT','be','Для рэдагавання застаецца ([TIMELEFT] хвілін)'),('QUESTION_EDIT_EXCEEDED','be','Вы больш не можаце рэдагаваць гэтае пытанне.'),('QUESTION_OPTIONS','be','Варыянты'),('QUESTION_POINTS','be','Пункты'),('QUESTION_POINTS_NULL','be','Пунктаў'),('QUESTION_POINTS_ONE','be','Пункт'),('QUESTION_POINTS_TWO','be','Пункты'),('QUESTION_TAB_ARGUMENT','be','A:[TITLE]'),('QUESTION_TAB_COUNTER_ARGUMENT','be','КA: [TITLE]'),('QUESTION_TAB_DETAILS','be','Падрабязнасці'),('QUESTION_TAB_DISCUSSION','be','Дыскусія'),('QUESTION_TAB_EDIT_ARGUMENT','be','Рэдагаваць абмеркаванне'),('QUESTION_TAB_EDIT_COUNTER_ARGUMENT','be','Рэдагаваць контраргумент'),('QUESTION_TAB_NEW_ARGUMENT','be','Новае абмеркаванне'),('QUESTION_TAB_NEW_COUNTER_ARGUMENT','be','Новы контраргумент'),('QUESTION_TYPE_LISTED','be','У спісе'),('QUESTION_TYPE_UNLISTED','be','Не ў спісе'),('READ_MORE','be','Чытаць далей >>'),('REPORT_SPAM','be','Паскардзіцца на спам'),('SHARE_FACEBOOK','be','Facebook'),('SHARE_TWITTER','be','Tweet'),('SIGNUP_CONFIRMATION_EMAIL_BODY','be','Дарагі (ая)[USERNAME],<br /><br />\r\n\r\n<a href = \"[CONFIRMATION_LINK]\">\r\nНацісніце сюды, каб завяршыць вашу рэгістрацыю на Wikiarguments.</a><br /><br />\r\n\r\nАбо скапіруйце гэтую спасылку ў свой браўзер: [CONFIRMATION_LINK]\r\n<br /><br />\r\nВаша каманда Wikiarguments'),('SIGNUP_CONFIRMATION_EMAIL_SUBJECT','be','Рэгістрацыя на Wikiarguments'),('SIGNUP_EMAIL','be','Электронная пошта'),('SIGNUP_ERROR_ALREADY_LOGGED_IN','be','Вы ўжо ўвайшлі'),('SIGNUP_ERROR_EMAIL_IN_USE','be','Гэтая электронная пошта ўжо выкарыстана.'),('SIGNUP_ERROR_GENERAL','be','Невядомая памылка.'),('SIGNUP_ERROR_INVALID_USERNAME','be','Няслушнае імя карыстальніка'),('SIGNUP_ERROR_PASSWORD_MISMATCH','be','Паролі не супадаюць!'),('SIGNUP_ERROR_USERNAME_EXISTS','be','Такое імя карыстальніка ўжо існуе.'),('SIGNUP_HEADLINE','be','Зарэгістравацца'),('SIGNUP_PASSWORD','be','Пароль'),('SIGNUP_PASSWORD_REPEAT','be','Паўтарыце пароль'),('SIGNUP_SUBMIT','be','Зарэгістравацца'),('SIGNUP_SUCCESS','be','Вы атрымалі пацвярджальны электронны ліст. Перайдзіце па ўказанай спасылцы, каб цалкам актывізаваць свой акаўнт.'),('SIGNUP_USERNAME','be','Імя карыстальніка'),('SUBMIT_ADD_USERS','be','Дадаць'),('SUBMIT_CHANGE_OWNERSHIP','be','Змяніць уладальніка'),('SUBMIT_DELETE_GROUP','be','Выдаліць групу'),('SUBMIT_NEW_ARGUMENT','be','Даслаць'),('SUBMIT_NEW_GROUP','be','Стварыць групу'),('SUBMIT_NEW_QUESTION','be','Даслаць'),('SUBMIT_OTHER_SETTINGS','be','Захаваць'),('SUBMIT_REMOVE_USER','be','Выдаліць карыстальніка'),('TAGS_DIVIDE','be','раздзяліць коскамі |'),('TAGS_FILTER','be','Пытанні са словам або цэтлікам \"[TAGS]\"'),('TAGS_FILTER_REMOVE','be','Прыбраць фільтар'),('TIME_SINCE_DAYS','be','[DAYS] дзён таму'),('TIME_SINCE_DAYS_NULL','be','[DAYS] дзён таму'),('TIME_SINCE_DAYS_ONE','be','адзін дзень таму'),('TIME_SINCE_DAYS_TWO','be','[DAYS] дні таму'),('TIME_SINCE_HOURS','be','[HOURS] гадзінаў таму'),('TIME_SINCE_HOURS_NULL','be','[HOURS] гадзінаў таму'),('TIME_SINCE_HOURS_ONE','be','адну гадзіну таму'),('TIME_SINCE_HOURS_TWO','be','[HOURS] гадзіны таму'),('TIME_SINCE_MINUTES','be','[MINUTES] хвілінаў таму'),('TIME_SINCE_MINUTES_NULL','be','[MINUTES] хвілінаў таму'),('TIME_SINCE_MINUTES_ONE','be','адну хвіліну таму'),('TIME_SINCE_MINUTES_TWO','be','[MINUTES] хвіліны таму'),('TIME_SINCE_MONTHS','be','[MONTHS] месяцаў таму'),('TIME_SINCE_MONTHS_NULL','be','[MONTHS] месяцаў таму'),('TIME_SINCE_MONTHS_ONE','be','адзін месяц таму'),('TIME_SINCE_MONTHS_TWO','be','[MONTHS] месяцы таму'),('TIME_SINCE_SECONDS','be','[SECONDS] секундаў таму'),('TIME_SINCE_SECONDS_NULL','be','[SECONDS] секундаў таму'),('TIME_SINCE_SECONDS_ONE','be','адну секунду таму'),('TIME_SINCE_SECONDS_TWO','be','[SECONDS] секунды таму'),('TIME_SINCE_YEARS','be','[YEARS] гадоў таму'),('TIME_SINCE_YEARS_NULL','be','[YEARS] гадоў таму'),('TIME_SINCE_YEARS_ONE','be','адзін год таму'),('TIME_SINCE_YEARS_TWO','be','[YEARS] гады таму'),('TWITTER_URL','be','https://twitter.com/WikiargumentsEN'),('USERNAME_ANON','be','ананімна'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_BODY_STEP1','de','Hallo Wikiarguments Mitglied,\r\n<br><br>\r\nBitte folge diesem Link um ein neues Passwort anzufordern: [NEW_PASS_CONFIRM_LINK]\r\n<br><br>\r\nDein Wikiarguments Team'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_BODY_STEP2','de','Hallo Wikiarguments Mitglied,\r\n<br><br>\r\nwir haben ein neues Passwort generiert, mit welchem du dich jetzt auf Wikiarguments einloggen kannst.\r\n<br><br>\r\nDein neues Passwort lautet: [PASSWORD]\r\n<br><br>\r\nFÃ¼r mehr Sicherheit, Ã¤ndere nach dem Log-In dein Passwort erneut.\r\n<br><br>\r\nDein Wikiarguments Team'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_HEADER_STEP1','de','Passwort vergessen?'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_HEADER_STEP2','de','Dein neues Passwort'),('ARGUMENT_EDIT','de','Bearbeiten ([TIMELEFT] Minuten Ã¼brig)'),('ARGUMENT_EDIT_EXCEEDED','de','Du kannst dieses Argument nicht mehr bearbeiten'),('CHANGELOG_URL','de','<a href = \'http://de.changelog.wikiarguments.net\'>'),('CHARS_WRITTEN','de','Zeichen geschrieben'),('CHARS_WRITTEN_LEFT','de','Zeichen Ã¼brig'),('CHECKIN_CON_CONFIRMED','de','Stimme gezÃ¤hlt'),('CHECKIN_PRO_CONFIRMED','de','Stimme gezÃ¤hlt'),('COUNTER_ARGUMENT_EDIT_EXCEEDED','de','Du kannst dieses Argument nicht mehr bearbeiten'),('DIVIDE_USERNAMES','de','Benutzernamen trennen mit Kommata'),('EDIT_QUESTION_HEADLINE','de','Frage bearbeiten'),('ENGLISH','de','Englisch'),('ENGLISH_URL','de','<a href = \'http://en.wikiarguments.net\'>'),('ERROR_COUNTER_ARGUMENT_CHECK_IN_DIFF','de','Du kannst keine Gegenargumente in deiner eigenen Fraktion verfassen.'),('ERROR_COUNTER_ARGUMENT_CHECK_IN_FIRST','de','Du musst einchecken bevor du Gegenargumente verfassen kannst.'),('ERROR_GROUP_INSUFFICIENT_RIGHTS','de','Unzureichende Gruppenrechte.'),('ERROR_GROUP_NAME_ALREADY_EXISTS','de','Diese Gruppe existiert bereits'),('ERROR_INVALID_ARGUMENT','de','ERROR_INVALID_ARGUMENT'),('ERROR_INVALID_FACTION','de','ERROR_INVALID_FACTION'),('ERROR_INVALID_GROUP_NAME','de','UngÃ¼ltiger Gruppen Name'),('ERROR_INVALID_PERMISSIONS','de','UngÃ¼ltige Rechte.'),('ERROR_INVALID_PROFILE','de','ERROR_INVALID_PROFILE'),('ERROR_INVALID_QUESTION','de','UngÃ¼ltige Frage.'),('ERROR_INVALID_QUESTION_FLAGS','de','UngÃ¼ltige Flags'),('ERROR_INVALID_QUESTION_TYPE','de','UngÃ¼ltiger Type'),('ERROR_INVALID_VOTE','de','UngÃ¼ltiger Vote.'),('ERROR_NEW_ARGUMENT_MISSING_ABSTRACT','de','Bitte verfasse eine Zusammenfassung.'),('ERROR_NEW_ARGUMENT_MISSING_DETAILS','de','ERROR_NEW_ARGUMENT_MISSING_DETAILS'),('ERROR_NEW_ARGUMENT_MISSING_HEADLINE','de','Du musst eine Ãœberschrift angeben.'),('ERROR_NEW_ARGUMENT_TRY_AGAIN','de','Fehler. Bitte versuche es erneut.'),('ERROR_NEW_GROUP_TRY_AGAIN','de','Fehler, bitte versuche es erneut.'),('ERROR_NEW_QUESTION_INVALID_QUESTION','de','UngÃ¼ltige Frage.'),('ERROR_NEW_QUESTION_TRY_AGAIN','de','Fehler, bitte versuche es erneut.'),('ERROR_NOT_CHECKED_IN','de','Du musst in Ja oder Nein eingecheckt sein um Argumente zu verfassen.'),('ERROR_NOT_LOGGED_IN','de','Du musst eingeloggt sein um Argumente zu verfassen.'),('ERROR_NOT_LOGGED_IN_GROUP','de','Du musst eingeloggt sein um Gruppen zu erstellen.'),('ERROR_NO_PERMISSION','de','ERROR_NO_PERMISSION'),('ERROR_PASS_REQUEST_MISSING_USERNAME','de','Du musst deinen Benutzernamen angeben.'),('FAQ','de','FAQ'),('FOOTER_CHANGELOG','de','Changelog'),('FOOTER_COPYRIGHT','de','<a href=\"/imprint/\">Impressum</a>\r\n'),('FOOTER_MENU','de','MenÃ¼'),('FOOTER_NEW_GROUP','de','Gruppe erstellen'),('FOOTER_OPEN_SOURCE','de','<a href=\"https://code.google.com/p/wikiarguments/\">Open Source</a>\r\n'),('FOOTER_TOS','de','<a href=\"http://creativecommons.org/licenses/by/3.0/de/\">Inhalte: CC BY 3.0</a>'),('GERMAN','de','Deutsch'),('GERMAN_URL','de','<a href = \'http://de.wikiarguments.net\'>'),('GROUPS_URL','de','de.wikiarguments.net/groups/'),('GROUP_CHANGE_OWNERSHIP','de','Gruppenbesitzer'),('GROUP_CHANGE_OWNERSHIP_PROMPT','de','MÃ¶chtest du wirklich die Besitzer-Rechte Ã¤ndern?'),('GROUP_CHANGE_OWNERSHIP_SUCCESS','de','Die Besitzer-Rechte wurden erfolgreich Ã¼bertragen.'),('GROUP_DELETE_GROUP_PROMPT','de','MÃ¶chtest du wirklich die Gruppe lÃ¶schen?'),('GROUP_DELETE_SUCCESS','de','Die Gruppe wurde erfolgreich gelÃ¶scht.'),('GROUP_PERMISSION_ADMIN','de','Administrator'),('GROUP_PERMISSION_ARGUMENTS','de','Nur Argumente'),('GROUP_PERMISSION_OWNER','de','Gruppenbesitzer'),('GROUP_PERMISSION_QUESTIONS','de','Nur Fragen'),('GROUP_PERMISSION_QUESTIONS_ARGUMENTS','de','Fragen + Argumente'),('GROUP_VISIBILITY','de','Sichtbarkeit'),('GROUP_VISIBILITY_PRIVATE','de','Privat'),('GROUP_VISIBILITY_PUBLIC','de','Ã–ffentlich'),('HEADER_NAVI_LOGOUT','de','Logout'),('HEADER_NAVI_MANAGE_PROFILE','de','Einstellungen'),('HEADER_NAVI_MY_PROFILE','de','Mein Profil'),('HEADER_NAVI_NEW_QUESTION','de','Neue Frage'),('HEADER_NAVI_SHARE_PAGE','de','Seite Teilen'),('HEADER_NEW_GROUP','de','Neue Gruppe'),('HEADER_SIGNUP','de','Anmelden'),('HTML_HEADER_META_LANG','de','de'),('HTML_META_TITLE','de',' - Wikiarguments'),('HTML_META_TITLE_ARGUMENT','de','[ARGUMENT] - Wikiarguments'),('HTML_META_TITLE_EDIT_ARGUMENT','de','Argument bearbeiten'),('HTML_META_TITLE_EDIT_QUESTION','de','Frage bearbeiten'),('HTML_META_TITLE_FAQ','de','HTML_META_TITLE_FAQ'),('HTML_META_TITLE_IMPRINT','de','Imprint - Wikiarguments'),('HTML_META_TITLE_MANAGE_GROUP','de','Gruppe Verwalten'),('HTML_META_TITLE_MANAGE_PROFILE','de','Manage Profile - Wikiarguments'),('HTML_META_TITLE_NEWEST','de','[TAGS] Neu - Wikiarguments'),('HTML_META_TITLE_NEW_ARGUMENT','de','Neues Argument - Wikiarguments'),('HTML_META_TITLE_NEW_COUNTER_ARGUMENT','de','Neues Gegenargument - Wikiarguments'),('HTML_META_TITLE_NEW_GROUP','de','Neue Gruppe'),('HTML_META_TITLE_NEW_QUESTION','de','Neue Frage - Wikiarguments'),('HTML_META_TITLE_PROFILE','de','[USERNAME] - Wikiarguments'),('HTML_META_TITLE_QUESTION','de','[QUESTION] - Wikiarguments'),('HTML_META_TITLE_SIGNUP','de','Registrieren - Wikiarguments'),('HTML_META_TITLE_TOP','de','[TAGS] Top - Wikiarguments'),('HTML_META_TITLE_TRENDING','de','[TAGS] Im Trend - Wikiarguments'),('IMPRINT','de','<div class=\"headline\">Impressum</div>'),('LANGUAGE','de','Sprache'),('LIGHTBOX_CLOSE','de','SchlieÃŸen'),('LIGHTBOX_PROMPT_NO','de','Nein'),('LIGHTBOX_PROMPT_YES','de','Ja'),('LOGIN_ERROR_ACCOUNT_PENDING','de','Account pending'),('LOGIN_ERROR_ALREADY_LOGGED_IN','de','Du bist bereits eingeloggt.'),('LOGIN_ERROR_INVALID_PASSWORD','de','Falsches Passwort.'),('LOGIN_ERROR_INVALID_USERNAME','de','Falscher Benutzername.'),('LOGIN_FORGOT_PASSWORD','de','Passwort vergessen'),('LOGIN_HEADLINE','de','Bereits registriert?<br />Hier einloggen:'),('LOGIN_PASSWORD','de','Passwort'),('LOGIN_SUBMIT','de','Login'),('LOGIN_SUCCESS','de','Du hast dich erfolgreich angemeldet.'),('LOGIN_USERNAME','de','Benutzername'),('MANAGE_GROUP_ADD_MEMBERS','de','Rechte verteilen'),('MANAGE_GROUP_GENERAL_INFORMATION','de','Allgemeine Informationen'),('MANAGE_GROUP_HEADLINE','de','Gruppeneinstellungen'),('MANAGE_GROUP_MEMBERS','de','Mitglieder und Rechte'),('MANAGE_GROUP_OTHER_SETTINGS','de','Sonstige Einstellungen'),('MANAGE_GROUP_OWNER_OPTIONS','de','Weitere Optionen'),('MANAGE_GROUP_URL','de','URL'),('MANAGE_HEADLINE','de','Passwort Ã¤ndern'),('MANAGE_SUBMIT','de','Ã„nderungen speichern'),('NAVIGATION_NEWEST','de','Neu'),('NAVIGATION_SEARCH_DEFAULT','de','suchen'),('NAVIGATION_TOP','de','Top'),('NAVIGATION_WHATS_HOT','de','Im Trend'),('NEW_ARGUMENT','de','Argument hinzufÃ¼gen'),('NEW_ARGUMENT_ABSTRACT','de','Argument'),('NEW_ARGUMENT_DETAILS','de','Argument </br>Details'),('NEW_ARGUMENT_HEADLINE','de','Ãœberschrift'),('NEW_COUNTER_ARGUMENT','de','Gegenargument HinzufÃ¼gen'),('NEW_GROUP_HEADLINE','de','Neue Gruppe erstellen'),('NEW_GROUP_TITLE','de','Name'),('NEW_GROUP_VISIBILITY','de','Sichtbarkeit'),('NEW_QUESTION','de','Neue Frage'),('NEW_QUESTION_DETAILS','de','Details'),('NEW_QUESTION_FLAGS','de','Partizipation'),('NEW_QUESTION_HEADLINE','de','Neue Frage hinzufÃ¼gen'),('NEW_QUESTION_TAGS','de','Tags'),('NEW_QUESTION_TITLE','de','Frage'),('NEW_QUESTION_TYPE','de','Frage-Typ'),('NOTICE_CHECKIN_NOT_LOGGED_IN','de','Du musst eingeloggt sein um dich einzuchecken.'),('NOTICE_CONFIRMATION_ERROR_INVALID_USER','de','NOTICE_CONFIRMATION_ERROR_INVALID_USER'),('NOTICE_CONFIRMATION_SUCCESS','de','Du hast dich erfolgreich registriert.'),('NOTICE_NEW_ARGUMENT_NOT_CHECKED_IN','de','Du musst in Ja oder Nein eingecheckt sein um ein neues Argument zu verfassen.'),('NOTICE_NEW_ARGUMENT_NOT_LOGGED_IN','de','Du musst eingeloggt sein um ein neues Argument zu verfassen.'),('NOTICE_NEW_ARGUMENT_NO_PERMISSION','de','NOTICE_NEW_ARGUMENT_NO_PERMISSION'),('NOTICE_NEW_COUNTER_ARGUMENT_NO_PERMISSION','de','NOTICE_NEW_COUNTER_ARGUMENT_NO_PERMISSION'),('NOTICE_NEW_QUESTION_NO_PERMISSION','de','Unzureichende Rechte zur Erstellung von Fragen.'),('NOTICE_NEW_QUESTION_UNLISTED_MANIPULATION','de','Hinweis: Punkte und Check-Ins kÃ¶nnen sehr leicht manipuliert werden.'),('NOTICE_PASS_REQUEST_SUCCESS','de','Wir haben dir eine Email mit deinem neuen Passwort geschickt.'),('NOTICE_VOTE_NOT_CHECKED_IN','de','Du musst in der jeweiligen Fraktion  eingecheckt sein um abzustimmen.'),('NOTICE_VOTE_NOT_LOGGED_IN','de','Du musst eingeloggt sein um abzustimmen.'),('NUM_COUNTER_ARGUMENTS','de','Gegen-argumente'),('NUM_COUNTER_ARGUMENTS_NULL','de','Gegen-argumente'),('NUM_COUNTER_ARGUMENTS_ONE','de','Gegen-argument'),('NUM_COUNTER_ARGUMENTS_TWO','de','Gegen-argumente'),('PAGE_ERROR_INVALID_PAGE','de','Diese Seite existiert nicht'),('PAGINATION_PAGE_X_OF_Y','de','Seite [CUR] von [MAX]'),('PARTICIPATION_ALL','de','Jede(r)'),('PARTICIPATION_ONLY_REGISTERED','de','Nur Registrierte'),('PASSWORD_OLD','de','Passwort alt'),('PASS_REQUEST_SUCCESS','de','Wir haben dir eine Email geschickt um dein Passwort zur&uuml;ck zu setzen'),('PAYMENT_INTERVAL_3_MONTHLY','de','3-Monatlich'),('PAYMENT_INTERVAL_6_MONTHLY','de','6-Monatlich'),('PAYMENT_INTERVAL_MONTHLY','de','Monatlich'),('PAYMENT_INTERVAL_YEARLY','de','JÃ¤hrlich'),('PAYMENT_METHOD_BILL','de','Auf Rechnung'),('PAYMENT_METHOD_ELV','de','Lastschrift'),('PROFILE_ARGUMENT_POINTS','de','Argument-Punkte'),('PROFILE_HEADLINE','de','[USERNAME]'),('PROFILE_QUESTION_POINTS','de','Frage-Punkte'),('PROFILE_SIGNUP_DATE','de','Anmelde-Datum: [SIGNUP_DATE]'),('PROMPT_NO','de','Nein'),('PROMPT_YES','de','Ja'),('QUESTION_ARGUMENTS','de','[NUM_ARGUMENTS]'),('QUESTION_AUTHOR','de','Eingetragen [TIMESINCE] von [USERNAME]'),('QUESTION_AUTHOR_ANON','de','Eingetragen [TIMESINCE]'),('QUESTION_DISTRIBUTION_CON_PERC','de','Nein [PERC]%'),('QUESTION_DISTRIBUTION_NUM_CHECKINS','de','[NUM] Stimmen'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_NULL','de','[NUM] Stimmen'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_ONE','de','[NUM] Stimmen'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_TWO','de','[NUM] Stimmen'),('QUESTION_DISTRIBUTION_PRO_PERC','de','Ja [PERC]%'),('QUESTION_EDIT','de','Bearbeiten ([TIMELEFT] Minuten Ã¼brig)'),('QUESTION_EDIT_EXCEEDED','de','Du kannst diese Frage nicht mehr editieren.'),('QUESTION_OPTIONS','de','Optionen'),('QUESTION_POINTS','de','Punkte'),('QUESTION_POINTS_NULL','de','Punkte'),('QUESTION_POINTS_ONE','de','Punkt'),('QUESTION_POINTS_TWO','de','Punkte'),('QUESTION_TAB_ARGUMENT','de','A:[TITLE]'),('QUESTION_TAB_COUNTER_ARGUMENT','de','CA: [TITLE]'),('QUESTION_TAB_DETAILS','de','Details'),('QUESTION_TAB_DISCUSSION','de','Diskussion'),('QUESTION_TAB_EDIT_ARGUMENT','de','Argument bearbeiten'),('QUESTION_TAB_EDIT_COUNTER_ARGUMENT','de','Gegen-Argument bearbeiten'),('QUESTION_TAB_NEW_ARGUMENT','de','Neues Argument'),('QUESTION_TAB_NEW_COUNTER_ARGUMENT','de','Neues Gegenargument'),('QUESTION_TYPE_LISTED','de','Gelisted'),('QUESTION_TYPE_UNLISTED','de','Ungelisted'),('READ_MORE','de','Read More >>'),('REPORT_SPAM','de','Spam Melden'),('SHARE_FACEBOOK','de','Facebook'),('SHARE_TWITTER','de','Tweet'),('SIGNUP_CONFIRMATION_EMAIL_BODY','de','Hallo [USERNAME],<br /><br />\r\n\r\n<a href = \'[CONFIRMATION_LINK]\'>Klicke hier um deinen Wikiarguments Account freizuschalten.</a><br /><br />\r\nAlternativ kopiere diesen Link in deinen Browser: [CONFIRMATION_LINK]\r\n<br /><br />\r\nDein Wikiarguments Team'),('SIGNUP_CONFIRMATION_EMAIL_SUBJECT','de','Wikiarguments Registration'),('SIGNUP_EMAIL','de','Email'),('SIGNUP_ERROR_ALREADY_LOGGED_IN','de','Du bist bereits eingeloggt.'),('SIGNUP_ERROR_EMAIL_IN_USE','de','Diese Email wird bereits verwendet.'),('SIGNUP_ERROR_GENERAL','de','Unbekannter Fehler'),('SIGNUP_ERROR_INVALID_USERNAME','de','UngÃ¼ltiger Benutzername'),('SIGNUP_ERROR_PASSWORD_MISMATCH','de','PasswÃ¶rter stimmen nicht Ã¼berein!'),('SIGNUP_ERROR_USERNAME_EXISTS','de','Dieser Benutzername existiert bereits.'),('SIGNUP_HEADLINE','de','Registrieren'),('SIGNUP_PASSWORD','de','Passwort'),('SIGNUP_PASSWORD_REPEAT','de','Passwort wiederholen'),('SIGNUP_SUBMIT','de','Registrieren'),('SIGNUP_SUCCESS','de','Du hast eine BestÃ¤tigungsmail erhalten. Klicke auf den enthaltenen Link um deinen Account freizuschalten.'),('SIGNUP_USERNAME','de','Benutzername'),('SUBMIT_ADD_USERS','de','HinzufÃ¼gen'),('SUBMIT_CHANGE_OWNERSHIP','de','Besitzer Ã¤ndern'),('SUBMIT_DELETE_GROUP','de','Gruppe lÃ¶schen'),('SUBMIT_NEW_ARGUMENT','de','Abschicken'),('SUBMIT_NEW_GROUP','de','Gruppe erstellen'),('SUBMIT_NEW_QUESTION','de','Abschicken'),('SUBMIT_OTHER_SETTINGS','de','Speichern'),('SUBMIT_REMOVE_USER','de','Benutzer entfernen'),('TAGS_DIVIDE','de','mit Kommata trennen |'),('TAGS_FILTER','de','Fragen mit dem Wort oder Tag \"[TAGS]\"'),('TAGS_FILTER_REMOVE','de','Filter entfernen'),('TIME_SINCE_DAYS','de','vor [DAYS] Tagen'),('TIME_SINCE_DAYS_NULL','de','vor [DAYS] Tagen'),('TIME_SINCE_DAYS_ONE','de','vor einem Tag'),('TIME_SINCE_DAYS_TWO','de','vor [DAYS] Tagen'),('TIME_SINCE_HOURS','de','vor [HOURS] Stunden'),('TIME_SINCE_HOURS_NULL','de','vor [HOURS] Stunden'),('TIME_SINCE_HOURS_ONE','de','vor einer Stunde'),('TIME_SINCE_HOURS_TWO','de','vor [HOURS] Stunden'),('TIME_SINCE_MINUTES','de','vor [MINUTES] Minuten'),('TIME_SINCE_MINUTES_NULL','de','vor [MINUTES] Minuten'),('TIME_SINCE_MINUTES_ONE','de','vor einer Minute'),('TIME_SINCE_MINUTES_TWO','de','vor [MINUTES] Minuten'),('TIME_SINCE_MONTHS','de','vor [MONTHS] Monaten'),('TIME_SINCE_MONTHS_NULL','de','vor [MONTHS] Monaten'),('TIME_SINCE_MONTHS_ONE','de','vor einem Monat'),('TIME_SINCE_MONTHS_TWO','de','vor [MONTHS] Monaten'),('TIME_SINCE_SECONDS','de','vor [SECONDS] Sekunden'),('TIME_SINCE_SECONDS_NULL','de','vor [SECONDS] Sekunden'),('TIME_SINCE_SECONDS_ONE','de','vor einer Sekunde'),('TIME_SINCE_SECONDS_TWO','de','vor [SECONDS] Sekunden'),('TIME_SINCE_YEARS','de','vor [YEARS] Jahren'),('TIME_SINCE_YEARS_NULL','de','vor [YEARS] Jahren'),('TIME_SINCE_YEARS_ONE','de','vor einem Jahr'),('TIME_SINCE_YEARS_TWO','de','vor [YEARS] Jahren'),('TWITTER_URL','de','https://twitter.com/WikiargumentsDE'),('USERNAME_ANON','de','anonym'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_BODY_STEP1','en','Dear Wikiarguments Member,\r\n<br><br>\r\nPlease follow this link to request a new password: [NEW_PASS_CONFIRM_LINK]\r\n<br><br>\r\nYour Wikiarguments Team'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_BODY_STEP2','en','Dear Wikiarguments Member,\r\n<br><br>\r\nwe generated a new password for you. \r\n<br><br>\r\nYour new password is: [PASSWORD]\r\n<br><br>\r\nFor more security change your password after logging in.\r\n<br><br>\r\nYour Wikiarguments Team'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_HEADER_STEP1','en','Forgot password?'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_HEADER_STEP2','en','Your new password'),('ARGUMENT_EDIT','en','Edit ([TIMELEFT] minutes left)'),('ARGUMENT_EDIT_EXCEEDED','en','You cannot edit this argument anymore.'),('CHANGELOG_URL','en','<a href = \'http://en.changelog.wikiarguments.net\'>'),('CHARS_WRITTEN','en','chars written'),('CHARS_WRITTEN_LEFT','en','chars left'),('CHECKIN_CON_CONFIRMED','en','Vote counted'),('CHECKIN_PRO_CONFIRMED','en','Vote counted'),('COUNTER_ARGUMENT_EDIT_EXCEEDED','en','You cannot edit this argument anymore.'),('DIVIDE_USERNAMES','en','Divide usernames with commas'),('EDIT_QUESTION_HEADLINE','en','Edit Question'),('ENGLISH','en','English'),('ENGLISH_URL','en','<a href = \'http://en.wikiarguments.net\'>'),('ERROR_COUNTER_ARGUMENT_CHECK_IN_DIFF','en','You cannot add counter-arguments in your section.'),('ERROR_COUNTER_ARGUMENT_CHECK_IN_FIRST','en','You have to be check-in before you can compose counter-arguments.'),('ERROR_GROUP_INSUFFICIENT_RIGHTS','en','Insufficient group rights'),('ERROR_GROUP_NAME_ALREADY_EXISTS','en','This group already exists'),('ERROR_INVALID_ARGUMENT','en','ERROR_INVALID_ARGUMENT'),('ERROR_INVALID_FACTION','en','ERROR_INVALID_FACTION'),('ERROR_INVALID_GROUP_NAME','en','Unvalid group-name'),('ERROR_INVALID_PERMISSIONS','en','Unvalid rights'),('ERROR_INVALID_PROFILE','en','ERROR_INVALID_PROFILE'),('ERROR_INVALID_QUESTION','en','Unvalid question.'),('ERROR_INVALID_QUESTION_FLAGS','en','Unvalid flags'),('ERROR_INVALID_QUESTION_TYPE','en','Unvalid type'),('ERROR_INVALID_VOTE','en','Unvalid vote.'),('ERROR_NEW_ARGUMENT_MISSING_ABSTRACT','en','Please compose an abstract.'),('ERROR_NEW_ARGUMENT_MISSING_DETAILS','en','ERROR_NEW_ARGUMENT_MISSING_DETAILS'),('ERROR_NEW_ARGUMENT_MISSING_HEADLINE','en','You have to enter a headline.'),('ERROR_NEW_ARGUMENT_TRY_AGAIN','en','Error. Please try again.'),('ERROR_NEW_GROUP_TRY_AGAIN','en','Error. Please try again.'),('ERROR_NEW_QUESTION_INVALID_QUESTION','en','Unvalid question.'),('ERROR_NEW_QUESTION_TRY_AGAIN','en','Error. Please try again.'),('ERROR_NOT_CHECKED_IN','en','Du musst in Ja oder Nein eingecheckt sein um Argumente zu verfassen.'),('ERROR_NOT_LOGGED_IN','en','You have to be logged-in to compose arguments.'),('ERROR_NOT_LOGGED_IN_GROUP','en','You have to be logged-in to create a group.'),('ERROR_NO_PERMISSION','en','ERROR_NO_PERMISSION'),('ERROR_PASS_REQUEST_MISSING_USERNAME','en','You have to enter your username.'),('FOOTER_CHANGELOG','en','Changelog'),('FOOTER_COPYRIGHT','en','<a href=\"/imprint/\">Imprint</a>\r\n'),('FOOTER_MENU','en','Menu'),('FOOTER_NEW_GROUP','en','Create Group'),('FOOTER_OPEN_SOURCE','en','<a href=\"https://code.google.com/p/wikiarguments/\">Open Source</a>\r\n'),('FOOTER_TOS','en','<a href=\"http://creativecommons.org/licenses/by/3.0/\">Content: CC BY 3.0</a>'),('GERMAN','en','German'),('GERMAN_URL','en','<a href = \'http://\r\nde.wikiarguments.net\'>\r\n'),('GROUPS_URL','en','en.wikiarguments.net/groups/'),('GROUP_CHANGE_OWNERSHIP','en','Group-Owner'),('GROUP_CHANGE_OWNERSHIP_PROMPT','en','Do you really want to change the owner-rights?'),('GROUP_CHANGE_OWNERSHIP_SUCCESS','en','Owner-Rights transferred successfully.'),('GROUP_DELETE_GROUP_PROMPT','en','Do you really want to delete this group?'),('GROUP_DELETE_SUCCESS','en','Group successfully deleted.'),('GROUP_PERMISSION_ADMIN','en','Administrator'),('GROUP_PERMISSION_ARGUMENTS','en','Only Arguments'),('GROUP_PERMISSION_OWNER','en','Group-Owner'),('GROUP_PERMISSION_QUESTIONS','en','Only Questions'),('GROUP_PERMISSION_QUESTIONS_ARGUMENTS','en','Questions + Arguments'),('GROUP_VISIBILITY','en','Visibility'),('GROUP_VISIBILITY_PRIVATE','en','Private'),('GROUP_VISIBILITY_PUBLIC','en','Public'),('HEADER_NAVI_LOGOUT','en','Logout'),('HEADER_NAVI_MANAGE_PROFILE','en','Settings'),('HEADER_NAVI_MY_PROFILE','en','My Profile'),('HEADER_NAVI_NEW_QUESTION','en','New Question'),('HEADER_NAVI_SHARE_PAGE','en','Share Page'),('HEADER_NEW_GROUP','en','New Group'),('HEADER_SIGNUP','en','Sign-On'),('HTML_HEADER_META_LANG','en','en'),('HTML_META_TITLE','en',' - Wikiarguments'),('HTML_META_TITLE_ARGUMENT','en','[ARGUMENT] - Wikiarguments'),('HTML_META_TITLE_EDIT_ARGUMENT','en','Argument bearbeiten'),('HTML_META_TITLE_EDIT_QUESTION','en','Frage bearbeiten'),('HTML_META_TITLE_IMPRINT','en','Imprint - Wikiarguments'),('HTML_META_TITLE_MANAGE_GROUP','en','Administer Group'),('HTML_META_TITLE_MANAGE_PROFILE','en','Manage Profile - Wikiarguments'),('HTML_META_TITLE_NEWEST','en','[TAGS] New - Wikiarguments'),('HTML_META_TITLE_NEW_ARGUMENT','en','New Argument - Wikiarguments'),('HTML_META_TITLE_NEW_COUNTER_ARGUMENT','en','New Counter-Argument - Wikiarguments'),('HTML_META_TITLE_NEW_GROUP','en','New Group'),('HTML_META_TITLE_NEW_QUESTION','en','New Question - Wikiarguments'),('HTML_META_TITLE_PROFILE','en','[USERNAME] - Wikiarguments'),('HTML_META_TITLE_QUESTION','en','[QUESTION] - Wikiarguments'),('HTML_META_TITLE_SIGNUP','en','Register - Wikiarguments'),('HTML_META_TITLE_TOP','en','[TAGS] Top - Wikiarguments'),('HTML_META_TITLE_TRENDING','en','[TAGS] Trending - Wikiarguments'),('IMPRINT','en','<div class=\"headline\">Imprint</div>'),('LANGUAGE','en','Language'),('LIGHTBOX_CLOSE','en','Close'),('LIGHTBOX_PROMPT_NO','en','No'),('LIGHTBOX_PROMPT_YES','en','Yes'),('LOGIN_ERROR_ACCOUNT_PENDING','en','Account pending'),('LOGIN_ERROR_ALREADY_LOGGED_IN','en','You\'re already logged-in.'),('LOGIN_ERROR_INVALID_PASSWORD','en','Wrong password.'),('LOGIN_ERROR_INVALID_USERNAME','en','Wrong username.'),('LOGIN_FORGOT_PASSWORD','en','Forgot password'),('LOGIN_HEADLINE','en','Already registered?<br />Log-In here:'),('LOGIN_PASSWORD','en','Password'),('LOGIN_SUBMIT','en','Login'),('LOGIN_SUCCESS','en','You\'ve logged-in successfully.'),('LOGIN_USERNAME','en','Username'),('MANAGE_GROUP_ADD_MEMBERS','en','Grant rights'),('MANAGE_GROUP_GENERAL_INFORMATION','en','General Information'),('MANAGE_GROUP_HEADLINE','en','Group-Settings'),('MANAGE_GROUP_MEMBERS','en','Users and Rights'),('MANAGE_GROUP_OTHER_SETTINGS','en','Other Settings'),('MANAGE_GROUP_OWNER_OPTIONS','en','More Options'),('MANAGE_GROUP_URL','en','URL'),('MANAGE_HEADLINE','en','Change password'),('MANAGE_SUBMIT','en','Save changes'),('NAVIGATION_NEWEST','en','New'),('NAVIGATION_SEARCH_DEFAULT','en','search'),('NAVIGATION_TOP','en','Top'),('NAVIGATION_WHATS_HOT','en','Trending'),('NEW_ARGUMENT','en','Add Argument'),('NEW_ARGUMENT_ABSTRACT','en','Argument'),('NEW_ARGUMENT_DETAILS','en','Argument </br>Details'),('NEW_ARGUMENT_HEADLINE','en','Headline'),('NEW_COUNTER_ARGUMENT','en','Add Counter-Argument'),('NEW_GROUP_HEADLINE','en','Create new Group'),('NEW_GROUP_TITLE','en','Name'),('NEW_GROUP_VISIBILITY','en','Visibility'),('NEW_QUESTION','en','New Question'),('NEW_QUESTION_DETAILS','en','Details'),('NEW_QUESTION_FLAGS','en','Participation'),('NEW_QUESTION_HEADLINE','en','Add new question'),('NEW_QUESTION_TAGS','en','Tags'),('NEW_QUESTION_TITLE','en','Question'),('NEW_QUESTION_TYPE','en','Type'),('NOTICE_CHECKIN_NOT_LOGGED_IN','en','You have to be logged-in to check-in.'),('NOTICE_CONFIRMATION_ERROR_INVALID_USER','en','NOTICE_CONFIRMATION_ERROR_INVALID_USER'),('NOTICE_CONFIRMATION_SUCCESS','en','You\'ve registered successfully.'),('NOTICE_NEW_ARGUMENT_NOT_CHECKED_IN','en','Du musst in Ja oder Nein eingecheckt sein um ein neues Argument zu verfassen.'),('NOTICE_NEW_ARGUMENT_NOT_LOGGED_IN','en','You have to logged-in to compose a new argument.'),('NOTICE_NEW_ARGUMENT_NO_PERMISSION','en','NOTICE_NEW_ARGUMENT_NO_PERMISSION'),('NOTICE_NEW_COUNTER_ARGUMENT_NO_PERMISSION','en','NOTICE_NEW_COUNTER_ARGUMENT_NO_PERMISSION'),('NOTICE_NEW_QUESTION_NO_PERMISSION','en','Insufficient rights to compose a question.'),('NOTICE_NEW_QUESTION_UNLISTED_MANIPULATION','en','Notice: Points and Check-Ins can be manipulated very easily.'),('NOTICE_PASS_REQUEST_SUCCESS','en','We\'ve sent you a new password to your email address.'),('NOTICE_VOTE_NOT_CHECKED_IN','en','You have to be checked-in to a fraction to vote.'),('NOTICE_VOTE_NOT_LOGGED_IN','en','You have to be logged-in to vote.'),('NUM_COUNTER_ARGUMENTS','en','Counter-Arguments'),('NUM_COUNTER_ARGUMENTS_NULL','en','Counter-Arguments'),('NUM_COUNTER_ARGUMENTS_ONE','en','Counter-Argument'),('NUM_COUNTER_ARGUMENTS_TWO','en','Counter-Arguments'),('PAGE_ERROR_INVALID_PAGE','en','This page doesn\'t exist.'),('PAGINATION_PAGE_X_OF_Y','en','Page [CUR] of [MAX]'),('PARTICIPATION_ALL','en','Everybody'),('PARTICIPATION_ONLY_REGISTERED','en','Only registered'),('PASSWORD_OLD','en','Old password'),('PASS_REQUEST_SUCCESS','en','We\'ve sent you an email to reset your password.'),('PROFILE_ARGUMENT_POINTS','en','Argument-Points'),('PROFILE_HEADLINE','en','[USERNAME]'),('PROFILE_QUESTION_POINTS','en','Question-Points'),('PROFILE_SIGNUP_DATE','en','Sign-Up Date: [SIGNUP_DATE]'),('PROMPT_NO','en','No'),('PROMPT_YES','en','Yes'),('QUESTION_ARGUMENTS','en','[NUM_ARGUMENTS]'),('QUESTION_AUTHOR','en','Added [TIMESINCE] by [USERNAME]'),('QUESTION_AUTHOR_ANON','en','Added [TIMESINCE]'),('QUESTION_DISTRIBUTION_CON_PERC','en','No [PERC]%'),('QUESTION_DISTRIBUTION_NUM_CHECKINS','en','[NUM] Votes'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_NULL','en','[NUM] Votes'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_ONE','en','[NUM] Vote'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_TWO','en','[NUM] Votes'),('QUESTION_DISTRIBUTION_PRO_PERC','en','Yes [PERC]%'),('QUESTION_EDIT','en','Edit ([TIMELEFT] minutes left)'),('QUESTION_EDIT_EXCEEDED','en','You cannot edit this question anymore.'),('QUESTION_OPTIONS','en','Options'),('QUESTION_POINTS','en','Points'),('QUESTION_POINTS_NULL','en','Points'),('QUESTION_POINTS_ONE','en','Point'),('QUESTION_POINTS_TWO','en','Points'),('QUESTION_TAB_ARGUMENT','en','A:[TITLE]'),('QUESTION_TAB_COUNTER_ARGUMENT','en','CA: [TITLE]'),('QUESTION_TAB_DETAILS','en','Details'),('QUESTION_TAB_DISCUSSION','en','Discussion'),('QUESTION_TAB_EDIT_ARGUMENT','en','Edit argument'),('QUESTION_TAB_EDIT_COUNTER_ARGUMENT','en','Edit counter-argument'),('QUESTION_TAB_NEW_ARGUMENT','en','New Argument'),('QUESTION_TAB_NEW_COUNTER_ARGUMENT','en','New Counter-Argument'),('QUESTION_TYPE_LISTED','en','Listed'),('QUESTION_TYPE_UNLISTED','en','Unlisted'),('READ_MORE','en','Read More >>'),('REPORT_SPAM','en','Report as Spam'),('SHARE_FACEBOOK','en','Facebook'),('SHARE_TWITTER','en','Tweet'),('SIGNUP_CONFIRMATION_EMAIL_BODY','en','Dear [USERNAME],<br /><br />\r\n\r\n<a href = \'[CONFIRMATION_LINK]\'>\r\nClick here to complete your Wikiarguments registration.</a><br /><br />\r\n\r\nAlternatively copy this link to your browser: [CONFIRMATION_LINK]\r\n<br /><br />\r\nYour Wikiarguments Team'),('SIGNUP_CONFIRMATION_EMAIL_SUBJECT','en','Wikiarguments Registration'),('SIGNUP_EMAIL','en','Email'),('SIGNUP_ERROR_ALREADY_LOGGED_IN','en','You\'re already logged-in'),('SIGNUP_ERROR_EMAIL_IN_USE','en','This Email is already in use.'),('SIGNUP_ERROR_GENERAL','en','Unknown error.'),('SIGNUP_ERROR_INVALID_USERNAME','en','Unvalid Username'),('SIGNUP_ERROR_PASSWORD_MISMATCH','en','Passwords mismatch!'),('SIGNUP_ERROR_USERNAME_EXISTS','en','This username already exists.'),('SIGNUP_HEADLINE','en','Register'),('SIGNUP_PASSWORD','en','Password'),('SIGNUP_PASSWORD_REPEAT','en','Repeat password'),('SIGNUP_SUBMIT','en','Register'),('SIGNUP_SUCCESS','en','You\'ve received a confirmation email. Click on the included link to fully activate your account.'),('SIGNUP_USERNAME','en','Username'),('SUBMIT_ADD_USERS','en','Add'),('SUBMIT_CHANGE_OWNERSHIP','en','Change owner'),('SUBMIT_DELETE_GROUP','en','Delete Group'),('SUBMIT_NEW_ARGUMENT','en','Send'),('SUBMIT_NEW_GROUP','en','Create Group'),('SUBMIT_NEW_QUESTION','en','Submit'),('SUBMIT_OTHER_SETTINGS','en','Save'),('SUBMIT_REMOVE_USER','en','Remove User'),('TAGS_DIVIDE','en','divide by commas |'),('TAGS_FILTER','en','Questions with word or tag \"[TAGS]\"'),('TAGS_FILTER_REMOVE','en','Remove Filter'),('TIME_SINCE_DAYS','en','[DAYS] days ago'),('TIME_SINCE_DAYS_NULL','en','[DAYS] days ago'),('TIME_SINCE_DAYS_ONE','en','one day ago'),('TIME_SINCE_DAYS_TWO','en','[DAYS] days ago'),('TIME_SINCE_HOURS','en','[HOURS] hours ago'),('TIME_SINCE_HOURS_NULL','en','[HOURS] hours ago'),('TIME_SINCE_HOURS_ONE','en','one hour ago'),('TIME_SINCE_HOURS_TWO','en','[HOURS] hours ago'),('TIME_SINCE_MINUTES','en','[MINUTES] minutes ago'),('TIME_SINCE_MINUTES_NULL','en','[MINUTES] minutes ago'),('TIME_SINCE_MINUTES_ONE','en','one minute ago'),('TIME_SINCE_MINUTES_TWO','en','[MINUTES] minutes ago'),('TIME_SINCE_MONTHS','en','[MONTHS] months ago'),('TIME_SINCE_MONTHS_NULL','en','[MONTHS] months ago'),('TIME_SINCE_MONTHS_ONE','en','one month ago'),('TIME_SINCE_MONTHS_TWO','en','[MONTHS] months ago'),('TIME_SINCE_SECONDS','en','[SECONDS] seconds ago'),('TIME_SINCE_SECONDS_NULL','en','[SECONDS] seconds ago'),('TIME_SINCE_SECONDS_ONE','en','one second ago'),('TIME_SINCE_SECONDS_TWO','en','[SECONDS] seconds ago'),('TIME_SINCE_YEARS','en','[YEARS] years ago'),('TIME_SINCE_YEARS_NULL','en','[YEARS] years ago'),('TIME_SINCE_YEARS_ONE','en','one year ago'),('TIME_SINCE_YEARS_TWO','en','[YEARS] years ago'),('TWITTER_URL','en','https://twitter.com/WikiargumentsEN'),('USERNAME_ANON','en','anonymous'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_BODY_STEP1','ru','Уважаемый участник Wikiarguments,\r\n<br><br>\r\nПожалуйста, перейдите по ссылке для получения нового пароля: [NEW_PASS_CONFIRM_LINK]\r\n<br><br>\r\nКоманда Wikiarguments'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_BODY_STEP2','ru','Уважаемый участник Wikiarguments,\r\n<br><br>\r\nновый пароль для вас сгенерирован.\r\n<br><br>\r\nВаш новый пароль: [PASSWORD]\r\n<br><br>\r\nДля повышения безопасности аккаунта смените пароль после входа в кабинет пользователя.\r\n<br><br>\r\nКоманда Wikiarguments'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_HEADER_STEP1','ru','Забыли пароль?'),('ACCOUNT_FORGOT_PASSWORD_EMAIL_HEADER_STEP2','ru','Ваш новый пароль'),('ARGUMENT_EDIT','ru','Редактировать (осталось [TIMELEFT] минут)'),('ARGUMENT_EDIT_EXCEEDED','ru','Вы больше не можете редактировать этот аргумент.'),('CHANGELOG_URL','ru','<a href = \'http://en.changelog.wikiarguments.net\'>'),('CHARS_WRITTEN','ru','количество написанных знаков'),('CHARS_WRITTEN_LEFT','ru','знаков осталось'),('CHECKIN_CON_CONFIRMED','ru','Голос засчитан'),('CHECKIN_PRO_CONFIRMED','ru','Голос засчитан'),('COUNTER_ARGUMENT_EDIT_EXCEEDED','ru','Вы больше не можете редактировать этот аргумент.'),('DIVIDE_USERNAMES','ru','Разделите имена пользователей запятыми'),('EDIT_QUESTION_HEADLINE','ru','Редактировать вопрос'),('ENGLISH','ru','Английский'),('ENGLISH_URL','ru','<a href = \'http://en.wikiarguments.net\'>'),('ERROR_COUNTER_ARGUMENT_CHECK_IN_DIFF','ru','Вы не можете добавить контраргумент в вашем разделе.'),('ERROR_COUNTER_ARGUMENT_CHECK_IN_FIRST','ru','Вы должны войти в личный кабинет для того, чтобы оставить контраргумент.'),('ERROR_GROUP_INSUFFICIENT_RIGHTS','ru','Недостаточно прав группы'),('ERROR_GROUP_NAME_ALREADY_EXISTS','ru','Такая группа уже существует'),('ERROR_INVALID_ARGUMENT','ru','ERROR_INVALID_ARGUMENT'),('ERROR_INVALID_FACTION','ru','ERROR_INVALID_FACTION'),('ERROR_INVALID_GROUP_NAME','ru','Неверное имя группы'),('ERROR_INVALID_PERMISSIONS','ru','Неверные права'),('ERROR_INVALID_PROFILE','ru','ERROR_INVALID_PROFILE'),('ERROR_INVALID_QUESTION','ru','Неверный вопрос.'),('ERROR_INVALID_QUESTION_FLAGS','ru','Неверные флаги'),('ERROR_INVALID_QUESTION_TYPE','ru','Неверный тип'),('ERROR_INVALID_VOTE','ru','Неверное голосование.'),('ERROR_NEW_ARGUMENT_MISSING_ABSTRACT','ru','Пожалуйста, составьте краткое описание.'),('ERROR_NEW_ARGUMENT_MISSING_DETAILS','ru','ERROR_NEW_ARGUMENT_MISSING_DETAILS'),('ERROR_NEW_ARGUMENT_MISSING_HEADLINE','ru','Необходимо ввести заголовок.'),('ERROR_NEW_ARGUMENT_TRY_AGAIN','ru','Упс! Ошибка. Пожалуйста, попробуйте еще раз.'),('ERROR_NEW_GROUP_TRY_AGAIN','ru','Упс! Ошибка. Пожалуйста, попробуйте еще раз.'),('ERROR_NEW_QUESTION_INVALID_QUESTION','ru','Неверный вопрос.'),('ERROR_NEW_QUESTION_TRY_AGAIN','ru','Упс! Ошибка. Пожалуйста, попробуйте еще раз.'),('ERROR_NOT_CHECKED_IN','ru','Вы должны войти, чтобы создавать аргументы.'),('ERROR_NOT_LOGGED_IN','ru','Вы должны войти, чтобы создавать аргументы.'),('ERROR_NOT_LOGGED_IN_GROUP','ru','Чтобы создать группу, вы должны зайти в личный кабинет.'),('ERROR_NO_PERMISSION','ru','ERROR_NO_PERMISSION'),('ERROR_PASS_REQUEST_MISSING_USERNAME','ru','Введите свое имя пользователя.'),('FOOTER_CHANGELOG','ru','Журнал внесенных изменений'),('FOOTER_COPYRIGHT','ru','<a href=\"/imprint/\">Отпечаток</a>\r\n'),('FOOTER_MENU','ru','Меню'),('FOOTER_NEW_GROUP','ru','Создать группу'),('FOOTER_OPEN_SOURCE','ru','<a href=\"https://code.google.com/p/wikiarguments/\">Открытый код</a>\r\n'),('FOOTER_TOS','ru','<a href=\"http://creativecommons.org/licenses/by/3.0/\">Содержание: CC BY 3.0</a>'),('GERMAN','ru','Немецкий'),('GERMAN_URL','ru','<a href = \'http://\r\nde.wikiarguments.net\'>\r\n'),('GROUPS_URL','ru','en.wikiarguments.net/groups/'),('GROUP_CHANGE_OWNERSHIP','ru','Владелец группы'),('GROUP_CHANGE_OWNERSHIP_PROMPT','ru','Вы действительно хотите сменить права владельца группы?'),('GROUP_CHANGE_OWNERSHIP_SUCCESS','ru','Права владельца группы успешно изменены.'),('GROUP_DELETE_GROUP_PROMPT','ru','Вы действительно хотите удалить эту группу?'),('GROUP_DELETE_SUCCESS','ru','Группа успешно удалена.'),('GROUP_PERMISSION_ADMIN','ru','Администратор'),('GROUP_PERMISSION_ARGUMENTS','ru','Только аргументы'),('GROUP_PERMISSION_OWNER','ru','Владелец группы'),('GROUP_PERMISSION_QUESTIONS','ru','Только вопросы'),('GROUP_PERMISSION_QUESTIONS_ARGUMENTS','ru','Вопросы + аргументы'),('GROUP_VISIBILITY','ru','Видимость'),('GROUP_VISIBILITY_PRIVATE','ru','Закрытая'),('GROUP_VISIBILITY_PUBLIC','ru','Открытая'),('HEADER_NAVI_LOGOUT','ru','Выйти'),('HEADER_NAVI_MANAGE_PROFILE','ru','Настройки'),('HEADER_NAVI_MY_PROFILE','ru','Мой профиль'),('HEADER_NAVI_NEW_QUESTION','ru','Новый вопрос'),('HEADER_NAVI_SHARE_PAGE','ru','Поделиться страницей'),('HEADER_NEW_GROUP','ru','Новая группа'),('HEADER_SIGNUP','ru','Войти'),('HTML_HEADER_META_LANG','ru','ru'),('HTML_META_TITLE','ru',' - Wikiarguments'),('HTML_META_TITLE_ARGUMENT','ru','[ARGUMENT] - Wikiarguments'),('HTML_META_TITLE_EDIT_ARGUMENT','ru','Редактировать аргумент'),('HTML_META_TITLE_EDIT_QUESTION','ru','Редактировать вопрос'),('HTML_META_TITLE_IMPRINT','ru','Записать - Wikiarguments'),('HTML_META_TITLE_MANAGE_GROUP','ru','Управлять группой'),('HTML_META_TITLE_MANAGE_PROFILE','ru','Редактировать профиль - Wikiarguments'),('HTML_META_TITLE_NEWEST','ru','[TAGS] Новое - Викиаргументы'),('HTML_META_TITLE_NEW_ARGUMENT','ru','Новый аргумент - Викиаргументы'),('HTML_META_TITLE_NEW_COUNTER_ARGUMENT','ru','Новый контраргумент - Викиаргументы'),('HTML_META_TITLE_NEW_GROUP','ru','Новая группа'),('HTML_META_TITLE_NEW_QUESTION','ru','Новый вопрос - Викиаргументы'),('HTML_META_TITLE_PROFILE','ru','[USERNAME] - Wikiarguments'),('HTML_META_TITLE_QUESTION','ru','[QUESTION] - Wikiarguments'),('HTML_META_TITLE_SIGNUP','ru','Регистрация - Викиаргументы'),('HTML_META_TITLE_TOP','ru','[TAGS] Лучшее - Викиаргументы'),('HTML_META_TITLE_TRENDING','ru','[TAGS] Тренды - Викиаргументы'),('IMPRINT','ru','<div class=\"headline\">Записать</div>'),('LANGUAGE','ru','Язык'),('LIGHTBOX_CLOSE','ru','Закрыть'),('LIGHTBOX_PROMPT_NO','ru','Нет'),('LIGHTBOX_PROMPT_YES','ru','Да'),('LOGIN_ERROR_ACCOUNT_PENDING','ru','Ожидание аккаунта'),('LOGIN_ERROR_ALREADY_LOGGED_IN','ru','Вы уже вошли в личный кабинет.'),('LOGIN_ERROR_INVALID_PASSWORD','ru','Неверный пароль.'),('LOGIN_ERROR_INVALID_USERNAME','ru','Неверное имя пользователя.'),('LOGIN_FORGOT_PASSWORD','ru','Забыли пароль'),('LOGIN_HEADLINE','ru','Уже зарегистрированы?<br />Войдите здесь:'),('LOGIN_PASSWORD','ru','Пароль'),('LOGIN_SUBMIT','ru','Имя пользователя'),('LOGIN_SUCCESS','ru','Вы успешно зашли.'),('LOGIN_USERNAME','ru','Имя пользователя'),('MANAGE_GROUP_ADD_MEMBERS','ru','Дать права'),('MANAGE_GROUP_GENERAL_INFORMATION','ru','Общая информация'),('MANAGE_GROUP_HEADLINE','ru','Настройки группы'),('MANAGE_GROUP_MEMBERS','ru','Пользователи и права'),('MANAGE_GROUP_OTHER_SETTINGS','ru','Другие настройки'),('MANAGE_GROUP_OWNER_OPTIONS','ru','Дополнительные настройки'),('MANAGE_GROUP_URL','ru','URL'),('MANAGE_HEADLINE','ru','Изменить пароль'),('MANAGE_SUBMIT','ru','Сохранить изменения'),('NAVIGATION_NEWEST','ru','Новое'),('NAVIGATION_SEARCH_DEFAULT','ru','поиск'),('NAVIGATION_TOP','ru','Лучшее'),('NAVIGATION_WHATS_HOT','ru','Тренды'),('NEW_ARGUMENT','ru','Добавить аргумент'),('NEW_ARGUMENT_ABSTRACT','ru','Аргумент'),('NEW_ARGUMENT_DETAILS','ru','Аргумент </br> подробнее'),('NEW_ARGUMENT_HEADLINE','ru','Заголовок'),('NEW_COUNTER_ARGUMENT','ru','Добавить контраргумент'),('NEW_GROUP_HEADLINE','ru','Создать новую группу'),('NEW_GROUP_TITLE','ru','Имя'),('NEW_GROUP_VISIBILITY','ru','Видимость'),('NEW_QUESTION','ru','Новый вопрос'),('NEW_QUESTION_DETAILS','ru','Подробнее'),('NEW_QUESTION_FLAGS','ru','Участие'),('NEW_QUESTION_HEADLINE','ru','Добавить новый вопрос'),('NEW_QUESTION_TAGS','ru','Тэги'),('NEW_QUESTION_TITLE','ru','Вопрос'),('NEW_QUESTION_TYPE','ru','Тип'),('NOTICE_CHECKIN_NOT_LOGGED_IN','ru','Вы должны войти в систему.'),('NOTICE_CONFIRMATION_ERROR_INVALID_USER','ru','NOTICE_CONFIRMATION_ERROR_INVALID_USER'),('NOTICE_CONFIRMATION_SUCCESS','ru','Ваша регистрация успешно завершена.'),('NOTICE_NEW_ARGUMENT_NOT_CHECKED_IN','ru','Необходимо войти, чтобы создавать новые аргументы.'),('NOTICE_NEW_ARGUMENT_NO_PERMISSION','ru','NOTICE_NEW_ARGUMENT_NO_PERMISSION'),('NOTICE_NEW_COUNTER_ARGUMENT_NO_PERMISSION','ru','NOTICE_NEW_COUNTER_ARGUMENT_NO_PERMISS'),('NOTICE_NEW_QUESTION_NO_PERMISSION','ru','Недостаточно прав для составления вопроса.'),('NOTICE_NEW_QUESTION_UNLISTED_MANIPULATION','ru','Осторожно: Пунктами и списками очень легко манипулировать.'),('NOTICE_PASS_REQUEST_SUCCESS','ru','Новый пароль отправлен вам на электронную почту.'),('NOTICE_VOTE_NOT_CHECKED_IN','ru','Необходимо быть частью фракции, чтобы проголосовать.'),('NOTICE_VOTE_NOT_LOGGED_IN','ru','Чтобы голосовать, вы должны зайти в личный кабинет.'),('NUM_COUNTER_ARGUMENTS','ru','Контраргументов'),('NUM_COUNTER_ARGUMENTS_NULL','ru','Контраргументов'),('NUM_COUNTER_ARGUMENTS_ONE','ru','Контраргумент'),('NUM_COUNTER_ARGUMENTS_TWO','ru','Контраргумента'),('PAGE_ERROR_INVALID_PAGE','ru','Страница не существует.'),('PAGINATION_PAGE_X_OF_Y','ru','Страница [CUR] из [MAX]'),('PARTICIPATION_ALL','ru','Все'),('PARTICIPATION_ONLY_REGISTERED','ru','Только зарегистрированные пользователи'),('PASSWORD_OLD','ru','Старый пароль'),('PASS_REQUEST_SUCCESS','ru','Для восстановления пароля было выслано письмо на электронную почту.'),('PROFILE_ARGUMENT_POINTS','ru','Очки за аргументы'),('PROFILE_HEADLINE','ru','[USERNAME]'),('PROFILE_QUESTION_POINTS','ru','Очки за вопросы'),('PROFILE_SIGNUP_DATE','ru','Дата регистрации: [SIGNUP_DATE]'),('PROMPT_NO','ru','Нет'),('PROMPT_YES','ru','Да'),('QUESTION_ARGUMENTS','ru','[NUM_ARGUMENTS]'),('QUESTION_AUTHOR','ru','Добавлено [TIMESINCE][USERNAME]'),('QUESTION_AUTHOR_ANON','ru','Добавлено [TIMESINCE]'),('QUESTION_DISTRIBUTION_CON_PERC','ru','Нет [PERC]%'),('QUESTION_DISTRIBUTION_NUM_CHECKINS','ru','[NUM] Голосов'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_NULL','ru','[NUM] Голосов'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_ONE','ru','[NUM] Голос'),('QUESTION_DISTRIBUTION_NUM_CHECKINS_TWO','ru','[NUM] Голоса'),('QUESTION_DISTRIBUTION_PRO_PERC','ru','Да [PERC]%'),('QUESTION_EDIT','ru','Для редактирования осталось ([TIMELEFT] минут)'),('QUESTION_EDIT_EXCEEDED','ru','Вы не можете больше редактировать этот вопрос.'),('QUESTION_OPTIONS','ru','Варианты'),('QUESTION_POINTS','ru','Пункты'),('QUESTION_POINTS_NULL','ru','Пунктов'),('QUESTION_POINTS_ONE','ru','Пункт'),('QUESTION_POINTS_TWO','ru','Пункта'),('QUESTION_TAB_ARGUMENT','ru','A:[TITLE]'),('QUESTION_TAB_COUNTER_ARGUMENT','ru','КA: [TITLE]'),('QUESTION_TAB_DETAILS','ru','Подробнее'),('QUESTION_TAB_DISCUSSION','ru','Обсуждение'),('QUESTION_TAB_EDIT_ARGUMENT','ru','Редактировать аргумент'),('QUESTION_TAB_EDIT_COUNTER_ARGUMENT','ru','Редактировать контраргумент'),('QUESTION_TAB_NEW_ARGUMENT','ru','Новый аргумент'),('QUESTION_TAB_NEW_COUNTER_ARGUMENT','ru','Новый контраргумент'),('QUESTION_TYPE_LISTED','ru','В списке'),('QUESTION_TYPE_UNLISTED','ru','Не в списке'),('READ_MORE','ru','Читать дальше >>'),('REPORT_SPAM','ru','Пожаловаться на спам'),('SHARE_FACEBOOK','ru','Facebook'),('SHARE_TWITTER','ru','Tweet'),('SIGNUP_CONFIRMATION_EMAIL_BODY','ru','Дорогой [USERNAME],<br /><br />\r\n\r\n<a href = \'[CONFIRMATION_LINK]\'>\r\nНажми сюда, чтобы завершить свою регистрацию на Wikiarguments.</a><br /><br />\r\n\r\nЛибо скопируй эту ссылку в свой браузер: [CONFIRMATION_LINK]\r\n<br /><br />\r\nКоманда Wikiarguments'),('SIGNUP_CONFIRMATION_EMAIL_SUBJECT','ru','Регистрация на Wikiarguments'),('SIGNUP_EMAIL','ru','Электронная почта'),('SIGNUP_ERROR_ALREADY_LOGGED_IN','ru','Вы уже вошли'),('SIGNUP_ERROR_EMAIL_IN_USE','ru','Эта электронная почта уже была использована.'),('SIGNUP_ERROR_GENERAL','ru','Неизвестная ошибка.'),('SIGNUP_ERROR_INVALID_USERNAME','ru','Неверное имя пользователя'),('SIGNUP_ERROR_PASSWORD_MISMATCH','ru','Пароли не совпадают!'),('SIGNUP_ERROR_USERNAME_EXISTS','ru','Это имя пользователя уже существует.'),('SIGNUP_HEADLINE','ru','Зарегистрироваться'),('SIGNUP_PASSWORD','ru','Пароль'),('SIGNUP_PASSWORD_REPEAT','ru','Повторите пароль'),('SIGNUP_SUBMIT','ru','Зарегистрируйтесь'),('SIGNUP_SUCCESS','ru','На указанный почтовый ящик Вам выслано электронное письмо. Пройдите по ссылке в письме для активации аккаунта.'),('SIGNUP_USERNAME','ru','Имя пользователя'),('SUBMIT_ADD_USERS','ru','Добавить'),('SUBMIT_CHANGE_OWNERSHIP','ru','Изменить владельца'),('SUBMIT_DELETE_GROUP','ru','Удалить группу'),('SUBMIT_NEW_ARGUMENT','ru','Отправить'),('SUBMIT_NEW_GROUP','ru','Создать группу'),('SUBMIT_NEW_QUESTION','ru','Подтвердить'),('SUBMIT_OTHER_SETTINGS','ru','Сохранить'),('SUBMIT_REMOVE_USER','ru','Удалить пользователя'),('TAGS_DIVIDE','ru','разделите запятыми |'),('TAGS_FILTER','ru','Вопросы с ключевыми словами \"[TAGS]\"'),('TAGS_FILTER_REMOVE','ru','Убрать фильтр'),('TIME_SINCE_DAYS','ru','[DAYS] дней назад'),('TIME_SINCE_DAYS_NULL','ru','[DAYS] дней назад'),('TIME_SINCE_DAYS_ONE','ru','один день назад'),('TIME_SINCE_DAYS_TWO','ru','[DAYS] дней назад'),('TIME_SINCE_HOURS','ru','[HOURS] часов назад'),('TIME_SINCE_HOURS_NULL','ru','[HOURS] часов назад'),('TIME_SINCE_HOURS_ONE','ru','один час назад'),('TIME_SINCE_HOURS_TWO','ru','[HOURS] часов назад'),('TIME_SINCE_MINUTES','ru','[MINUTES] минут назад'),('TIME_SINCE_MINUTES_NULL','ru','[MINUTES] минут назад'),('TIME_SINCE_MINUTES_ONE','ru','одну минуту назад'),('TIME_SINCE_MINUTES_TWO','ru','[MINUTES] минут назад'),('TIME_SINCE_MONTHS','ru','[MONTHS] месяцев назад'),('TIME_SINCE_MONTHS_NULL','ru','[MONTHS] месяцев назад'),('TIME_SINCE_MONTHS_ONE','ru','один месяц назад'),('TIME_SINCE_MONTHS_TWO','ru','[MONTHS] месяцев назад'),('TIME_SINCE_SECONDS','ru','[SECONDS] секунд назад'),('TIME_SINCE_SECONDS_NULL','ru','[SECONDS] секунд назад'),('TIME_SINCE_SECONDS_ONE','ru','одну секунду назад'),('TIME_SINCE_SECONDS_TWO','ru','[SECONDS] секунд назад'),('TIME_SINCE_YEARS','ru','[YEARS] лет назад'),('TIME_SINCE_YEARS_NULL','ru','[YEARS] лет назад'),('TIME_SINCE_YEARS_ONE','ru','один год назад'),('TIME_SINCE_YEARS_TWO','ru','[YEARS] лет назад'),('TWITTER_URL','ru','https://twitter.com/WikiargumentsEN'),('USERNAME_ANON','ru','анонимно');
/*!40000 ALTER TABLE `localization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `pageTitle` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `className` varchar(100) NOT NULL,
  `templateFile` varchar(100) NOT NULL,
  PRIMARY KEY (`pageId`),
  UNIQUE KEY `pageTitle` (`pageTitle`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'default','default','PageDefault','default.php'),(2,'question','question','PageQuestion','question.php'),(3,'argument','argument','PageArgument','argument.php'),(4,'counter_argument','counter_argument','PageCounterArgument','counterArgument.php'),(5,'counter_argument_full','counter_argument_full','PageCounterArgumentFull','counterArgumentFull.php'),(6,'new_argument','new_argument','PageNewArgument','newArgument.php'),(7,'new_counter_argument','new_counter_argument','PageNewCounterArgument','newCounterArgument.php'),(8,'new_question','new_question','PageNewQuestion','newQuestion.php'),(9,'signup','signup','PageSignup','signup.php'),(10,'logout','logout','PageLogout','logout.php'),(11,'profile','profile','PageProfile','profile.php'),(12,'manage_profile','manage_profile','PageManageProfile','manageProfile.php'),(13,'imprint','imprint','PageImprint','imprint.php'),(14,'new_group','new_group','PageNewGroup','newGroup.php'),(15,'manage_group','manage_group','PageManageGroup','manageGroup.php'),(17,'edit_argument','edit_argument','PageEditArgument','editArgument.php'),(18,'edit_counter_argument','edit_counter_argument','PageEditCounterArgument','editCounterArgument.php'),(19,'edit_question','edit_question','PageEditQuestion','editQuestion.php'),(22,'faq','faq','PageFaq','faq.php');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `permissionId` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`permissionId`),
  UNIQUE KEY `groupId` (`groupId`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,0,'login',-1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `questionId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `dateAdded` bigint(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `scoreTrending` int(11) NOT NULL,
  `scoreTop` int(11) NOT NULL,
  `additionalData` text NOT NULL,
  `groupId` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `flags` tinyint(4) NOT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `url` (`url`),
  KEY `score` (`score`),
  KEY `scoreTrending` (`scoreTrending`),
  KEY `scoreTop` (`scoreTop`),
  KEY `type` (`type`,`groupId`,`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'dsfgsdfg','dsfgsdfg','sdfgsdfg',1414869052,2,0,0,0,'O:8:\"stdClass\":4:{s:7:\"percPro\";i:0;s:7:\"percCon\";i:0;s:11:\"numCheckIns\";i:0;s:4:\"tags\";a:1:{i:0;s:4:\"dsfg\";}}',0,1,2),(2,'werwerwer','werwerwer','werwer',1414869128,2,0,0,0,'O:8:\"stdClass\":4:{s:7:\"percPro\";i:0;s:7:\"percCon\";i:0;s:11:\"numCheckIns\";i:0;s:4:\"tags\";a:1:{i:0;s:6:\"werwer\";}}',0,1,2),(3,'testtest','testtest','test contect',1414869316,2,0,0,0,'O:8:\"stdClass\":4:{s:7:\"percPro\";i:0;s:7:\"percCon\";i:0;s:11:\"numCheckIns\";i:0;s:4:\"tags\";a:1:{i:0;s:7:\"test123\";}}',0,1,2),(4,'test','test','???? ???? ???? ',1414869348,2,0,0,0,'O:8:\"stdClass\":4:{s:7:\"percPro\";i:0;s:7:\"percCon\";i:0;s:11:\"numCheckIns\";i:0;s:4:\"tags\";a:1:{i:0;s:8:\"?1123123\";}}',0,1,2),(5,'вапвап','??','вапвапв',1414869815,2,0,0,0,'O:8:\"stdClass\":4:{s:7:\"percPro\";i:0;s:7:\"percCon\";i:0;s:11:\"numCheckIns\";i:0;s:4:\"tags\";a:1:{i:0;s:1:\"',0,1,2),(6,'test','test-1','ывапывап ыапывап',1414869839,2,0,0,0,'O:8:\"stdClass\":3:{s:7:\"percPro\";i:0;s:7:\"percCon\";i:0;s:11:\"numCheckIns\";i:0;}',0,0,0),(7,'тестовой','тестовой','ыфва',1414870099,1,-2,-1697,-2,'O:8:\"stdClass\":3:{s:7:\"percPro\";i:0;s:7:\"percCon\";i:1;s:11:\"numCheckIns\";i:1;}',0,0,0),(8,'тест','тест','тест контетн',1414870123,2,-1,-1697,-1,'O:8:\"stdClass\":3:{s:7:\"percPro\";i:0;s:7:\"percCon\";i:0;s:11:\"numCheckIns\";i:0;}',0,0,0),(9,'тест2','тест2','тест2тест2',1414874751,3,2,1697,2,'O:8:\"stdClass\":4:{s:7:\"percPro\";d:0.75;s:7:\"percCon\";d:0.25;s:11:\"numCheckIns\";i:4;s:4:\"tags\";a:1:{i:0;s:1:\"2\";}}',0,0,0),(10,'тестовой','тестовой-1','тестовой',1414875400,3,0,0,0,'O:8:\"stdClass\":4:{s:7:\"percPro\";i:0;s:7:\"percCon\";i:0;s:11:\"numCheckIns\";i:0;s:4:\"tags\";a:1:{i:0;s:2:\"',0,0,0),(11,'Быть или не быть, вот в чём вопрос.','быть-или-не-быть-вот-в-чём-вопрос','Быть или не быть, вот в чем вопрос. Достойно ль\r\nСмиряться под ударами судьбы,\r\nИль надо оказать сопротивленье\r\nИ в смертной схватке с целым морем бед\r\nПокончить с ними? Умереть. Забыться.',1414928817,8,1,1698,1,'O:8:\"stdClass\":4:{s:7:\"percPro\";i:1;s:7:\"percCon\";i:0;s:11:\"numCheckIns\";i:1;s:4:\"tags\";a:1:{i:0;s:4:\"test\";}}',0,0,0);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sessionId` varchar(32) NOT NULL,
  `sessionData` mediumtext NOT NULL,
  `sessionDate` int(11) NOT NULL,
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('2e8c56c2ded452cba96d556f52444dda','a:2:{s:11:\"storageData\";a:1:{s:11:\"lastSQLSync\";i:1415388518;}s:4:\"data\";a:5:{s:10:\"lastAction\";i:1415388518;s:6:\"userId\";s:1:\"1\";s:12:\"notification\";s:0:\"\";s:5:\"error\";s:0:\"\";s:7:\"user_id\";i:0;}}',1415388518),('3e40745ae94b1e6bbfabd490671b0c6c','a:2:{s:11:\"storageData\";a:1:{s:11:\"lastSQLSync\";i:1414931119;}s:4:\"data\";a:3:{s:10:\"lastAction\";i:1414931119;s:6:\"userId\";s:1:\"8\";s:12:\"notification\";s:0:\"\";}}',1414931119),('7a5b094bd51f5dd7a0ea837b254eefa2','a:2:{s:11:\"storageData\";a:1:{s:11:\"lastSQLSync\";i:1417634389;}s:4:\"data\";a:3:{s:10:\"lastAction\";i:1417634389;s:12:\"notification\";s:0:\"\";s:6:\"userId\";s:1:\"2\";}}',1417634389),('aa81f8dbc536243789ba3a916f6c9b94','a:2:{s:11:\"storageData\";a:1:{s:11:\"lastSQLSync\";i:1417790729;}s:4:\"data\";a:3:{s:10:\"lastAction\";i:1417790729;s:6:\"userId\";s:1:\"2\";s:12:\"notification\";s:0:\"\";}}',1417790729),('b4c56a7ee44114022fa843120e6ed33d','a:2:{s:11:\"storageData\";a:1:{s:11:\"lastSQLSync\";i:1414914741;}s:4:\"data\";a:5:{s:10:\"lastAction\";i:1414914741;s:6:\"userId\";s:1:\"3\";s:12:\"notification\";s:0:\"\";s:5:\"error\";s:0:\"\";s:7:\"user_id\";i:0;}}',1414914741),('b69e088c0d88390f58f5eab929c558b8','a:2:{s:11:\"storageData\";a:1:{s:11:\"lastSQLSync\";i:1416034788;}s:4:\"data\";a:5:{s:10:\"lastAction\";i:1416034788;s:6:\"userId\";s:1:\"2\";s:12:\"notification\";s:0:\"\";s:5:\"error\";s:0:\"\";s:7:\"user_id\";i:0;}}',1416034788),('bbace36968446a9904a109f07ed077df','a:2:{s:11:\"storageData\";a:1:{s:11:\"lastSQLSync\";i:1417860909;}s:4:\"data\";a:3:{s:10:\"lastAction\";i:1417860909;s:6:\"userId\";s:1:\"2\";s:12:\"notification\";s:0:\"\";}}',1417860909),('dfd8707a5d45af7904305bd31fcb45da','a:2:{s:11:\"storageData\";a:1:{s:11:\"lastSQLSync\";i:1415046681;}s:4:\"data\";a:4:{s:10:\"lastAction\";i:1415046681;s:6:\"userId\";s:1:\"4\";s:12:\"notification\";s:0:\"\";s:7:\"user_id\";i:0;}}',1415046681),('f5ed02b468e9705ce62594087e2b0ce3','a:2:{s:11:\"storageData\";a:1:{s:11:\"lastSQLSync\";i:1417632584;}s:4:\"data\";a:3:{s:10:\"lastAction\";i:1417632584;s:6:\"userId\";s:1:\"8\";s:12:\"notification\";s:0:\"\";}}',1417632584);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `tagId` int(11) NOT NULL AUTO_INCREMENT,
  `questionId` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `groupId` int(11) NOT NULL,
  PRIMARY KEY (`tagId`),
  KEY `tag` (`tag`,`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,1,'dsfg',0),(2,1,'dsfgsdfg',0),(3,2,'werwer',0),(4,2,'werwerwer',0),(5,3,'test123',0),(6,3,'testtest',0),(7,4,'?1123123',0),(8,4,'test',0),(9,5,'?',0),(10,5,'??',0),(11,6,'??',0),(12,6,'test',0),(13,7,'?',0),(14,7,'??',0),(15,8,'?123',0),(16,9,'2',0),(17,10,'',0),(18,11,'test',0),(19,11,'',0),(20,11,'',0),(21,11,'',0);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_factions`
--

DROP TABLE IF EXISTS `user_factions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_factions` (
  `factionId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`factionId`),
  KEY `userId` (`userId`,`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_factions`
--

LOCK TABLES `user_factions` WRITE;
/*!40000 ALTER TABLE `user_factions` DISABLE KEYS */;
INSERT INTO `user_factions` VALUES (6,3,9,-1),(7,3,7,-1),(8,4,9,1),(9,8,9,1),(10,2,9,1),(11,2,11,1);
/*!40000 ALTER TABLE `user_factions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateAdded` bigint(20) NOT NULL,
  UNIQUE KEY `userId` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_votes`
--

DROP TABLE IF EXISTS `user_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_votes` (
  `voteId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `argumentId` int(11) NOT NULL,
  `vote` int(4) NOT NULL,
  `dateAdded` bigint(20) NOT NULL,
  PRIMARY KEY (`voteId`),
  KEY `userId` (`userId`,`questionId`,`argumentId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_votes`
--

LOCK TABLES `user_votes` WRITE;
/*!40000 ALTER TABLE `user_votes` DISABLE KEYS */;
INSERT INTO `user_votes` VALUES (1,2,6,0,1,1414870968),(2,2,7,0,-1,1414870973),(7,3,9,0,1,1414874821),(9,3,6,0,-1,1414874830),(10,3,7,0,-1,1414874841),(12,3,8,0,-1,1414874849),(13,2,9,0,1,1417634429),(14,2,11,0,1,1417634626);
/*!40000 ALTER TABLE `user_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `group` int(11) NOT NULL,
  `password` varchar(256) NOT NULL,
  `salt` varchar(128) NOT NULL,
  `dateAdded` bigint(20) NOT NULL,
  `user_last_action` bigint(20) NOT NULL,
  `scoreQuestions` int(11) NOT NULL,
  `scoreArguments` int(11) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'budnyjj','budnyjj@pirates.by',10,'$6$rounds=5000$76HtDtNdIs2oPu1S$QjPLScGnLrrcNRdBxFH0VSjakfFm1.EqxoP2BNGprLnXmRV5stHzgCfqahdZ.1tHI5yxzb8kinw3JCkA8WXKv1','76HtDtNdIs2oPu1S',1414862670,1414870699,-2,0),(2,'zabej','fannrm@gmail.com',10,'$6$rounds=5000$XJFnK3Sg7RVQYDGg$BQDJtPw8U3MKqDED76WVY4ZyOEp4u4WZbiWygcwzO7tVhnvIsmU3W7fkCw/F0kgoL2NK3LO/vs6XgOowjdBhp0','XJFnK3Sg7RVQYDGg',1414862695,1417860909,-1,0),(3,'7020401','max.kachinsky@pirates.by',10,'$6$rounds=5000$9odLo9FFBMLMbxzC$Yf24ogxMR/tjhBlqKMLAkXq1Sw2MNOhKIjOA7v9C4.J6zmRoGo/rNeWtIuWEjX.0Jx4wrfeC/icKqD2eEEWRc1','9odLo9FFBMLMbxzC',1414874425,0,2,0),(4,'hannabaradzina','hannabaradzina@gmail.com',10,'$6$rounds=5000$YwUFa7jzfe9oH7zw$d6IOZ5yzt9MWa4/1CsO4M6lATAB.T2jh6TXZaItuaruJTsvrCzOruhZL7wXEGh20U7A7EbmZ7P4FUXYLnu/ER.','YwUFa7jzfe9oH7zw',1414909012,0,0,0),(5,'troll','cc@cc.cc',0,'$6$rounds=5000$dKKKdNLuMGHacIyv$WL0zSSK3aD2eGUYmLDI4NsBfpaSR8khjgkiPO3EKuyOK0xgmKs5cBX.CnoHatcVL0E/KsZv8uAej1BtL7vTjw0','dKKKdNLuMGHacIyv',1414912090,0,0,0),(6,'shevko','shevko@list.ru',0,'$6$rounds=5000$GAPxmMWNpzyCKFQd$xf2SYqUbB.gdYQV/R4kXVanAmURUb72p6mP8q9iLjdW2LDLeo/Ip.2lURHkSEpfHg34YU9mOUX/bJa5FTVMJn1','GAPxmMWNpzyCKFQd',1414915075,0,0,0),(7,'Evgeny','evgeny.shevko@gmail.com',0,'$6$rounds=5000$bimQBQtYkLZokxPQ$ZGu0bHapYIV5N0QVJBhplIgRiKzc90JBqYe5eE9CKLbOpM3DbWnvBVv10gLkEf7SY9soW.23rVTvGvVAjn8c60','bimQBQtYkLZokxPQ',1414921872,0,0,0),(8,'kai','kai3341@gmail.com',10,'$6$rounds=5000$scvIR55f8g5FBPg1$GCfXKQuIEwg9WYFBX3o/HL4z3iXV8aejxGQo4DqM2rNiI8Wz/YsYbLybjYmo699P/SAe.3J1EiPpb6F8PSFK5/','scvIR55f8g5FBPg1',1414928489,1417632584,1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-06 12:42:48
