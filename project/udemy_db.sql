-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 30 2023 г., 23:10
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `udemy_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category`, `disabled`, `slug`) VALUES
(1, 'Development', 0, 'development'),
(2, 'Business', 0, 'business'),
(3, 'Finance & Accounting', 0, 'finance-accounting'),
(4, 'IT & Software', 0, 'it-software'),
(5, 'Office Productivity', 0, 'office-productivity'),
(6, 'Personal Development', 0, 'personal-development'),
(7, 'Design', 0, 'design'),
(8, 'Marketing', 0, 'marketing'),
(9, 'Lifestyle', 0, 'lifestyle'),
(10, 'Photography & Video', 0, 'photography-video'),
(11, 'Health & Fitness', 0, 'health-fitness'),
(12, 'Music', 0, 'music'),
(13, 'Teaching & Academics', 0, 'teaching-academics'),
(14, 'I don\'t know yet', 0, 'i-dont-know-yet'),
(16, 'another category', 0, 'another-category'),
(17, 'cool category', 0, 'cool-category');

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `price_id` int(11) DEFAULT NULL,
  `promo_link` varchar(1024) DEFAULT NULL,
  `course_image` varchar(1024) DEFAULT NULL,
  `course_image_tmp` varchar(1024) NOT NULL,
  `course_promo_video` varchar(1024) DEFAULT NULL,
  `primary_subject` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `tags` varchar(2048) DEFAULT NULL,
  `congratulations_message` varchar(2048) DEFAULT NULL,
  `welcome_message` varchar(2048) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `subtitle` varchar(100) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `csrf_code` varchar(32) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `trending` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `user_id`, `category_id`, `sub_category_id`, `level_id`, `language_id`, `price_id`, `promo_link`, `course_image`, `course_image_tmp`, `course_promo_video`, `primary_subject`, `date`, `tags`, `congratulations_message`, `welcome_message`, `approved`, `published`, `subtitle`, `currency_id`, `csrf_code`, `views`, `trending`) VALUES
(1, 'my test course', '\r\nWhat is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1, 4, 0, 2, 21, 1, NULL, 'uploads/courses/1657026221call-center-customer-service-job-animation-vector-design_40876-2656.jpg', '', NULL, 'a test subject', '2022-06-13 10:10:20', NULL, NULL, NULL, 0, 0, 'another good course', 1, '421ef711bc62e73af34ad07445d1f641', 0, 0),
(2, 'photography for beginnerse', 'a description of this course', 1, 10, 0, 1, 21, 1, NULL, 'uploads/courses/1657026261istockphoto-950614324-612x612.jpg', '', NULL, 'Photography', '2022-06-15 21:10:56', NULL, 'congratulatory message', 'a welcome message', 0, 0, 'a subtitle', 1, '3489777883bdcfd04f2cf91b32295871', 0, 0),
(3, 'Node js essentials', '\r\nWhat is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1, 4, 0, 1, 21, 1, NULL, 'uploads/courses/1657023201b612344115214be72736121878dc90a7.jpg', '', NULL, 'programming', '2022-07-05 14:13:00', NULL, NULL, NULL, 0, 0, 'an intro to node js', 1, '2a1f0b1a3f4a6f544906e5b78d46d6db', 0, 0),
(4, 'Javescript essentials', '\r\nWhat is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1, 4, 0, 1, 21, 1, NULL, 'uploads/courses/16570232991174949_js_react js_logo_react_react native_icon.png', '', NULL, 'coding', '2022-07-05 14:14:47', NULL, NULL, NULL, 0, 0, 'an intor to javascript', 1, '03183e610f49ad6422a563217298e8c7', 0, 0),
(5, 'Personal fitness', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1, 11, 0, 2, 104, 1, NULL, 'uploads/courses/1657025820pexels-photo-3757004.jpeg', '', NULL, 'fitness', '2022-07-05 14:56:44', NULL, NULL, NULL, 0, 0, 'a personal fitness ytraining session', 1, 'd1d0133068aaa4074c961917a93e7c96', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `courses_meta`
--

CREATE TABLE `courses_meta` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `data_type` varchar(100) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `tab` varchar(50) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `description` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `courses_meta`
--

INSERT INTO `courses_meta` (`id`, `course_id`, `data_type`, `value`, `disabled`, `tab`, `uid`, `description`) VALUES
(1, 5, 'students-learn', 'chapter 1', 0, 'intended-learners', 16637654892625, NULL),
(2, 5, 'students-learn', 'some title', 0, 'intended-learners', 16637654893100, NULL),
(3, 5, 'prerequisites', 'third item', 0, 'intended-learners', 16637654896491, NULL),
(4, 5, 'whose-course', 'more items', 0, 'intended-learners', 16637654899242, NULL),
(5, 5, 'whose-course', 'fourth item', 0, 'intended-learners', 16637654892567, NULL),
(6, 5, 'whose-course', 'another item', 0, 'intended-learners', 16637654899041, NULL),
(7, 5, 'whose-course', 'another item', 0, 'intended-learners', 16637654899320, NULL),
(12, 5, 'curriculum', 'section02', 0, 'curriculum', 1664537207986, 'description02'),
(13, 5, 'curriculum', 'section 01', 0, 'curriculum', 1664537224851, 'description');

-- --------------------------------------------------------

--
-- Структура таблицы `course_levels`
--

CREATE TABLE `course_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `course_levels`
--

INSERT INTO `course_levels` (`id`, `level`, `disabled`) VALUES
(1, 'Beginner Level', 0),
(2, 'Intermediate Level', 0),
(3, 'Expert Level', 0),
(4, 'All Levels', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `symbol` varchar(4) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `currencies`
--

INSERT INTO `currencies` (`id`, `currency`, `symbol`, `disabled`) VALUES
(1, 'US Dollar', '$', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dict`
--

CREATE TABLE `dict` (
  `id` int(11) NOT NULL,
  `kaz` text NOT NULL,
  `rus` text NOT NULL,
  `en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `dict`
--

INSERT INTO `dict` (`id`, `kaz`, `rus`, `en`) VALUES
(1, 'Автоматтандырылған деректер банкі (АБД) – деректер базасын басқару жүйесінің және оның басқаруындағы нақты деректер базасының (базаларының) жиынтығы.', 'Автоматизированный банк данных (АБД) – совокупность системы управления базами данных и конкретной базы (баз) данных, находящейся (находящихся) под ее управлением.', '(DB) – is a combination of a database management system and a specific database(s) under its control.'),
(2, 'Бет мекен жайы – сайттың немесе Веб-сайттың логикалық мекенжайын дәл анықтайтын деректер.', 'Адрес страницы – данные, точно определяющие логический адрес сайта или Web.', 'Page address – data that accurately determines the logical address of the site or Web.'),
(3, 'Қауіпсіздік әкімшісі - жүйенің қауіпсіздігін қамтамасыз етуге, белгіленген әкімшілік қорғау шараларын іске асыруға және үздіксіз сақтауға жауапты және қолданылатын жеке және техникалық қорғау құралдарының қызметін тұрақты ұйымдастырушылық қолдауды жүзеге асыратын тұлға немесе тұлғалар тобы.', 'Администратор безопас¬но¬сти – лицо или группа лиц, ответствен ных за обеспечение безопасности системы, за реализацию и непрерыв ность соблюдения установленных администра¬тив¬ных мер защиты и осуществ¬ля¬ю¬щих постоянную организа¬цион¬ную поддержку функци онирования применя¬е-мых физических и технических средств защиты.', 'Security Administrator – a person or group of persons responsible for ensuring the security of the system, for the implementation and continuity of compliance with the established administrative protection measures and providing constant organizational support for the functioning of the applied physical and technical means of protection.'),
(4, 'Аудиоконференция – нақты уақыт режимінде телекоммуникациялық жабдықтың көмегімен жүзеге асырылатын бір-бірінен алыс пайдаланушылардың сөйлеу әрекеті.', 'Аудиоконференция – речевое взаимодействие удаленных друг от друга пользователей, осуществляемое в реальном масштабе времени с помощью телекоммуникационного оборудования.', 'Audio conference – is a speech interaction of users who are remote from each other, carried out in real time using telecommunications equipment.'),
(5, 'Аутентификация - бұл пайдаланушының немесе Бағдарламаның белгілі бір компьютерлік жүйеге немесе ондағы деректерге қол жеткізуді азаптау кезінде өздерін жариялаған адамға немесе бағдарламаға ұқсас екендігін анықтауға мүмкіндік беретін процесс.', 'Аутентификация – процесс, позволяющий установить, являются ли пользователь или программа идентичными лицу или программе, которыми они себя объявляют при по пытке доступа к некоторой компьютерной системе или поддерживаемым в ней данным.', 'Authentication – is a process that allows you to determine whether a user or a program is identical to the person or program that they declare themselves to be when trying to access some computer system or data supported in it.'),
(6, 'Блог – веб-күнделік оның негізгі мазмұны үнемі жаңартылып отыратын оқиғалар журналы немесе күнделік болып табылады. Блогтың веб-беттеріндегі жазбаларды бір немесе бірнеше автор орналастыра алады. Бұл ретте олар кері хронологиялық тәртіппен реттеледі және оларды тақырып және/немесе басқа критерийлер бойынша жіктеуге болады.', 'Блог – веб-дневник основное содержимое которого регулярно обновляемый журнал событий или дневник. Записи на веб-страницы блога могут помещаться одним или несколькими авторами. При этом они упорядочиваются в обратном хронологическом порядке и могут классифицироваться по тематике и/или по другим критериям.', 'A blog – is a web diary whose main content is a regularly updated event log or diary. Entries on blog web pages can be placed by one or more authors. At the same time, they are ordered in reverse chronological order and can be classified by subject and/or by other criteria.'),
(7, 'Деректер базасы – деректерді сипаттаудың, сақтаудың және өңдеудің жалпы принциптерін қарастыратын белгілі бір ережелерге сәйкес ұйымдастырылған бірыңғай деректер жүйесі.', 'База данных – единая система данных, организованная по определенным правилам, которые предусматривают общие принципы описания, хранения и обработки данных.', 'A database – is a unified data system organized according to certain rules that provide for general principles of data description, storage and processing.'),
(8, 'Білім базасы – объектілердің қасиеттері, процестердің заңдылықтары және жаңа шешімдер қабылдау үшін берілген жағдайларда осы деректерді пайдалану ережелері туралы мәліметтерді қамтитын кейбір пәндік сала туралы ақпараттың формальды жүйесі.', 'База знаний – формализо¬ван-ная система сведений о некоторой предметной области, содержащая данные о свойствах объектов, закономерностях процессов и правила использования в задаваемых ситуациях этих данных для принятия новых решений.', 'The knowledge base – is a formalized system of information about a certain subject area, containing data on the properties of objects, patterns of processes and rules for using this data in specified situations to make new decisions.'),
(9, 'Байт (байт) – екілік кодтың (биттің) сегіз санының жиынтығына тең кез-келген түрдегі ақпарат санының негізгі бірлігі (белгілер, сандар, графика, дыбыс, бейне және т.б.). Үлкен өлшем бірліктері де қолданылады: килобайт (1024 байт), мегабайт (1024 Кбайт), гигабайт (1024 Мбайт).', 'Байт (byte) – основная единица количества информации в любой форме (знаки, цифры, графика, звук, видео и др.), равная набору восьми разрядов двоичного кода (бита). Используются также более крупные единицы измерения: килобайты (1024 байт), мегабайты (1024 Кбайт), гигабайты (1024 Мбайт).', 'Byte – is the basic unit of the amount of information in any form (signs, numbers, graphics, sound, video, etc.), equal to a set of eight bits of binary code (bits). Larger units of measurement are also used: kilobytes (1024 bytes), megabytes (1024 Kbytes), gigabytes (1024 Mbytes).'),
(10, 'Ақпараттың қауіпсіздігі  – ақпараттың, ақпараттық ресурстардың және ақпараттық жүйелердің жай - күйі, онда ақпаратты ағып кетуден, жыртқыштықтан, жоғалудан және т.б. қорғау талап етілетін ықтималдық¬пен қамтамасыз етіледі.', 'Безопасность информации – состояние информации, информационных ресурсов и информационных систем, при котором с требуемой вероятностью обеспечивается защита информации от утечки, хищения, утраты и так далее.', 'Information security – is the state of information, information resources and information systems, in which information is protected from leakage, destruction, loss, and so on with the required probability.'),
(11, 'Бит (бит) – берілетін немесе сақталатын ақпараттың ең аз бірлігі. Термин \"екілік цифр\" (екілік сан) сөзінің аббревиатурасы болып табылады. Ол әрқашан 0 немесе 1 сандарының тіркесімі ретінде ұсынылады.', 'Бит (bit) – минимальная единица передаваемой или хранимой информации. Термин является аббревиатурой выражения «binary digit» (двоичный разряд). Всегда представляется сочетанием чисел 0 или 1.', 'Bit (bit) – is the minimum unit of transmitted or stored information. The term is an abbreviation of the expression \"binary digit\" (binary digit). It is always represented by a combination of the numbers 0 or 1.'),
(12, 'Браузер (Browser) – интернеттегі деректерді интерактивті іздеу, табу, қарау және өңдеу үшін графикалық интерфейсті қамтамасыз ететін бағдарламалық жасақтама.', 'Браузер (Browser) – программное обеспечение, предоставляющее графический интерфейс для интерактивного поиска, обнаружения, просмотра и обработки данных в сети.', 'Browser – is a software that provides a graphical interface for interactive search, discovery, viewing and processing of data on the network.'),
(13, 'Бизнес-инкубатор –инновациялық процесті ұйымдастырудың кешенді әдісі негізінде аймақтың экономикалық дамуының жаңа кәсіпорындарын, жұмыс орындарын құру мақсатында құрылған инновациялық инфрақұрылым субъектісі.', 'Бизнес-инкубатор – субъект инновационной инфраструктуры, созданный с целью образования новых предприятий, рабочих мест экономического развития региона на основе комплексного метода организации инновационного процесса.', 'A business incubator – is a subject of innovation infrastructure created for the purpose of creating new enterprises, jobs for the economic development of the region on the basis of an integrated method of organizing the innovation process.'),
(14, 'Веб-сервер-бұл тиісті сұрауларды жіберетін басқа WWW компьютерлеріне құжаттарды ұсынуға арналған компьютерде жұмыс істейтін бағдарлама.', 'Веб-сервер – программа, запущенная на компьютере, предназначенная для предоставления документов другим компьютерам WWW, которые посылают соответствующие запросы.', 'A web server – is a program running on a computer designed to provide documents to other WWW computers that send corresponding requests.'),
(15, 'Веб – бет-бұл www-де орналастырылған және URL мекен-жайы арқылы анықталған еренсілтемелері бар жалғыз құжат.', 'Веб-страница – одиночный документ, содержащий гиперссылки, размещенный в WWW и определяемый с помощью адреса URL.', 'A web page – is a single document containing hyperlinks, hosted in WWW and defined using a URL address.'),
(16, 'Векторлық кескін – бұл қарапайым объектілердің математикалық сипаттамасын қолдана отырып салынған сурет.', 'Векторное изображение – это изображение, строящееся при помощи математического описания простых объектов.', 'A vector image – is an image constructed using a mathematical description of simple objects.'),
(17, 'Бейнеконференция-телекоммуникациялық жабдықтың көмегімен нақты уақыт ауқымында жүзеге асырылатын бір-бірінен алыс пайдаланушылардың электрондық интерактивті өзара іс-қимылы', 'Видеоконференция – электронное интерактивное взаимодействие удаленных друг от друга пользователей, осуществляемое в реальном масштабе времени с помощью телекоммуникационного оборудования.', 'Video conferencing – is an electronic interactive interaction of users who are remote from each other, carried out in real time using telecommunications equipment.'),
(18, 'Виртуалды аудиториялық тақта (ақ тақта) – мәтінді тікелей редакциялау немесе бастапқы мәтіннің үстіне тиісті белгілерден тыс беру мүмкіндігімен электрондық тақта бұл ақпарат қашықтыққа.', 'Виртуальная аудиторная доска (белая доска) – электронная доска возможностями непосредственного редактирования текста либо внесения соответствующих пометок поверх исходного текста с передачей этой информации на расстояние.', 'Virtual classroom whiteboard (whiteboard) – is an electronic whiteboard with the ability to directly edit text or make appropriate notes on top of the source text with the transmission\r\nof this information over a distance.\r\n'),
(19, 'Виртуалды шындық – бұл жан-жақты мультимедиа көмегімен жүзеге асырылатын байланыссыз ақпараттық өзара әрекеттесудің жаңа технологиясы.', 'Виртуальная реальность – новая технология бесконтактного информационного взаимодействия, реализующая с помощью комплексных мультимедиа.', 'Virtual reality – is a new technology of contactless information interaction, implemented with the help of complex multimedia.'),
(20, 'GRID (тор) – пайдаланушы орналасқан жеріне қарамастан кез келген жерден қол жеткізе алатын әртүрлі типтегі көптеген ресурстарды (процессорлар, ұзақ мерзімді және жедел жады, дерекқор қоймалары, желілер) біріктіретін қашықтағы ресурстардың кеңістіктік-үлестірілген инфрақұрылымы.', 'GRID (ГРИД) – Пространственнораспределенная инфраструктура удаленных ресурсов, объединяющая множество ресурсов разных типов (процессоры, долговременная и оперативная память, хранилища базы данных, сети), доступ к которым пользователь может получить из любой точки, независимо от места их расположения.', 'GRID – is a spatially distributed infrastructure of remote resources that combines many resources of different types (processors, long–term and RAM, database storage, networks), which the user can access from anywhere, regardless of their location.'),
(21, 'Гипермедиа (Hypermedia) – сілтемелер арқылы қосылған түйіндердегі ақпаратты дискретті түрде ұсыну әдісі. Деректер мәтін, графика, Дыбыстық жазбалар, бейнежазбалар, мультфильмдер, фотосуреттер немесе орындалатын құжат түрінде ұсынылуы мүмкін. Гипермедиа гипермәтіндік жүйелерді жалпылау болып табылады.', 'Гипермедиа (Hypermedia) – метод дискретного представления информации на узлах, соединяемых при помощи ссылок. Данные могут быть представлены в виде текста, графики, звукозаписей, видеозаписей, мультипликации, фотографий или исполняемой документации. Гипермедиа являются обобщением гипертекстовых систем.', 'Hypermedia – is a method of discrete representation of information on nodes connected by links. The data can be presented in the form of text, graphics, sound recordings, video recordings, animation, photographs or executable documentation. Hypermedia is a generalization of hypertext systems.'),
(22, 'Гиперсілтеме (Hyperlink) – құжаттың ішіндегі, басқа құжаттардағы, соның ішінде әртүрлі компьютерлерде орналастырылған ақпараттың әртүрлі компоненттері арасындағы байланыс үшін құжат элементі.', 'Гиперссылка (Hyperlink) – элемент документа для связи между различными компонентами информации внутри самого документа, в других документах, в том числе и размещенных на различных компьютерах.', 'Hyperlink – is a document element for communication between various components of information within the document itself, in other documents, including those hosted on various computers.'),
(23, 'Интранет (intranet) – интернет технологиялары негізінде құрылған жабық корпоративтік желі. Оның құрамына корпоративтік веб кіруі мүмкін.', 'Интранет (intranet) – закрытая корпоративная сеть, построенная на базе технологий Интернета. В ее состав может входить корпоративный веб.', 'Intranet – is a closed corporate network built on the basis of Internet technologies. It may include a corporate web.'),
(24, 'Интернет (Internet) – қашықтағы ақпаратқа қол жеткізуді және компьютерлер арасында ақпарат алмасуды қамтамасыз ететін өзара байланысты компьютерлік желілерден тұратын ашық әлемдік ақпараттық жүйе.', 'Интернет (Internet) – открытая мировая информационная система, состоящая из взаимосвязанных компьютерных сетей, обеспечивающая доступ к удаленной информации и обмен информацией между компьютерами.', 'The Internet – is an open world information system consisting of interconnected computer networks providing access to remote information and information exchange between computers.'),
(25, 'Гипермәтін (Hypertext) – сілтемелер бойынша өтулерді орындау мүмкіндіктері бар интерактивті орта түрін сипаттайтын ұғым.', 'Гипертекст (Hypertext) – понятие, описывающее тип интерактивной среды с возможностями выполнения переходов по ссылкам.', 'Hypertext – is a concept describing a type of interactive environment with the ability to perform click-throughs on links.'),
(26, 'Гипермәтіндік жүйе –ақпаратты кейбір график түрінде ұсыну, оның түйіндерінде мәтіндік элементтер (сөйлемдер, абзацтар, беттер, тіпті бүкіл мақалалар немесе кітаптар) бар, ал түйіндер арасында бір мәтіндік элементтен екіншісіне ауысуға болатын байланыстар бар.', 'Гипертекстовая система – представление информации в виде некоторого графа, в узлах которого содержатся текстовые элементы (предложения, абзацы, страницы или даже целые статьи либо книги), а между узлами имеются связи, с помощью которых можно переходить от одного текстового элемента к другому.', 'A hypertext system – is a representation of information in the form of a graph, the nodes of which contain text elements (sentences, paragraphs, pages, or even whole articles or books), and there are connections between the nodes with which you can move from one text element to another.'),
(27, 'Ғаламдық желі – бұл әртүрлі елдердегі, әртүрлі континенттердегі компьютерлер біріктірілген желі.', 'Глобальная сеть – сеть, в которой объединены компьютеры в различных странах, на различных континентах.', 'A global network – is a network that unites computers in different countries, on different continents.'),
(28, 'Графикалық редакторлар – компьютердегі кескіндерді дайындау және өңдеу бағдарламалары. Заманауи графикалық редакторлар сонымен қатар қозғалмалы, анимациялық кескіндер жасауға мүмкіндік береді.', 'Графические редакторы – программы подготовки и редактирования изображений на ЭВМ. Современные графические редакторы позволяют создавать также подвижные, анимированные изображения.', 'Graphic editors - are programs for preparing and editing images on a computer. Modern graphic editors also allow you to create moving, animated images.'),
(29, 'Қашықтықтан оқыту – оқулықтарды, дербес компьютерлерді және компьютер желілерін пайдалана отырып, қашықтықтан оқыту.', 'Дистанционное обучение – обучение на расстоянии с использованием учебников, персональных компьютеров и сетей ЭВМ.', 'Distance learning - is distance learning using textbooks, personal computers and computer networks.'),
(30, 'Қашықтықтан білім беру – білім беру цензасын растай отырып, қашықтықтан оқыту тәсілдері іске асырылатын педагогикалық жүйе.', 'Дистанционное образование – педагогическая система, в которой реализуются способы дистанционного обучения с подтверждением образовательного ценза.', 'Distance education – is a pedagogical system in which distance learning methods are implemented with the confirmation of the educational qualification.'),
(31, 'Білім (пәндік сала туралы) – пәндік сала туралы жаңа ақпаратты әктеу үшін оған қолдануға болатын пайдалы ақпарат пен рәсімдердің барлық жиынтығы.', 'Знания (о предметной области) – вся совокупность полезной информации и процедур, которые можно к ней применить, чтобы произвести новую информацию о предметной области.', 'Knowledge (about the subject area) – is the whole set of useful information and procedures that can be applied to it in order to obtain new information about the subject area.'),
(32, 'Информатика – компьютерлердің көмегімен ақпаратты жинақтау, өңдеу және беру заңдары мен әдістерін зерттейтін ғылыми пән.', 'Информатика – научная дисциплина, изучающая законы и методы накопления, обработки и передачи информации с помощью ЭВМ', 'Computer science – is a scientific discipline that studies the laws and methods of accumulation, processing and transmis-sion of information using computers.'),
(33, 'Ақпараттық технология – пәндік салада ақпаратты құру, жинау, беру, сақтау және өңдеу үшін қолданылатын ғылыми және инженерлік білім жүйесі, сондай-ақ әдістер мен құралдар.', 'Информационная технология – система научных и инженерных знаний, а также методов и средств, которая используется для создания, сбора, передачи, хранения и обработки информации в предмет- ной области.', 'Information technology – is a system of scientific and engineering knowledge, as well as methods and means, which is used for the creation, collection, transmission, storage and processing of information in the subject area.'),
(34, 'Ақпараттық қажеттілік материалдық емес қажеттіліктердің бір түрі-белгілі бір мәселені шешу немесе белгілі бір мақсатқа жету үшін қажетті ақпаратқа деген қажеттілік.', 'Информационная потребность – одна из разновидностей нематериальных потребностей – потребность в информации, необходимой для решения конкретной задачи или достижения некоей цели.', 'Information need is one of the varieties of non–material needs – the need for information necessary to solve a specific task or achieve a certain goal'),
(35, 'Ақпараттық орта - ақпаратты сақтаудың, өңдеудің және берудің техникалық және бағдарламалық құралдарының жиынтығы, сондай-ақ АКТ-ны дамыту және пайдалану процестерін іске асырудың елдегі саяси, экономикалық және мәдени шарттары.', 'Информационная среда – совокупность технических и программных средств хранения, обработки и передачи информации, а также существующих в стране политических, экономических и культурных условий реализации процессов развития и использования ИКТ.', 'The information environment – is a set of technical and software tools for storing, processing and transmitting information, as well as the political, economic and cultural conditions existing in the country for the implementation of the processes of development and use of ICT.'),
(36, 'Интерактивті тақта – бұл компьютерге қосылған сенсорлық экран, оның суреті проекторды тақтаға жібереді.', 'Интерактивная доска – это сенсорный экран, подсоединенный к компьютеру, изображение с которого передает на доску проектор.', 'An interactive whiteboard – is a touch screen connected to a computer, the image from which is transmitted to the board by a projector.'),
(37, 'Инновация – жаңа немесе жетілдірілген технологиялар, өнім немесе қызмет түрлері, сондай-ақ өндірістік, әкімшілік, коммерциялық немесе өзге сипаттағы ұйымдастырушылық-техникалық шешімдер.', 'Инновация(-ии) – новые или усовершенствованные технологии, виды продукции или услуг, а также организационно-технические решения производственного, административного, коммерческого или иного характера.', 'Innovation (-ai) – new or improved technologies, types of products or services, as well as organizational and technical solutions of an industrial, administrative, commercial or other nature.'),
(38, 'Инновациялық қор –инновациялық қызметті қаржыландыру мақсатында құрылған қаржы ресурстары қоры.', 'Инновационный фонд – фонд финансовых ресурсов, созданный с целью финансирования инновационной деятельности.', 'Innovation Fund – is a fund of financial resources created for the purpose of financing innovation activities.'),
(39, 'Интернет (Интернет желісі) – бөліктері бір мекенжай кеңістігі арқылы бір-бірімен логикалық өзара байланысты ғаламдық ақпараттық желі.', 'Интернет (сеть Интернет) – глобальная информационная сеть, части которой логически взаимосвязаны друг с другом посредством единого адресного пространства.', 'The Internet (the Internet) – is a global information network, parts of which are logically interconnected with each other through a single address space.'),
(40, 'Ақпараттық процестер –ақпаратты жинау, өңдеу, сақтау, іздеу және тарату процестері.', 'Информационные процессы – процессы сбора, обработки, накопления, хранения, поиска и распространения информации.', 'Information processes are the processes of collecting, processing, storing, searching and distributing information.'),
(41, 'Ақпараттық ресурстар – белгілі бір ақпаратқа деген қажеттіліктерін қанағаттандыру үшін адамзат сақтайтын ақпараттық жүйелердегі (кітапханалар, мұрағаттар, фондар, деректер банктері, ақпараттық жүйелердің басқа түрлері) жеке құжаттар мен құжаттар массивтері.', 'Информационные ресурсы – отдельные документы и массивы документов в информационных системах (библиотеках, архивах, фондах, банках данных, других видах информационных систем), накопленные человечеством для удовлетворения своих потребностей в той или иной информации.', 'Information resources are individual documents and arrays of documents in information systems (libraries, archives, funds, data banks, other types of information systems) accumulated by mankind to meet their needs for this or that information.'),
(42, 'Ақпараттық жүйе (АЖ) – ақпаратты құруға, сақтауға, өңдеуге, іздеуге, таратуға, таратуға арналған жүйе.', 'Информационная система (ИС) – система, предназначенная для создания, хранения, обработки, поиска, распространения, информации.', 'An information system (IS) – is a system designed to create, store, process, search, distribute information.'),
(43, 'Ақпарат – оларды ұсыну формасына қарамастан, қоршаған әлем және ондағы процестер туралы мәліметтер.', 'Информация – сведения об окружающем мире и протекающих в нем процессах, независимо от формы их представления.', 'Information – information about the surrounding world and the processes taking place in it, regardless of the form of their representation.'),
(44, 'Ақпараттық-коммуникациялық желі  – ақпаратты беруге және өңдеуге арналған техникалық құралдардың жиынтығы.', 'Информационно-коммуникационная сеть – совокупность технических средств для передачи и обработки информации.', 'An information and communication network – is a set of technical means for transmitting and processing information.'),
(45, 'Ақпараттық-коммуникациялық технологиялар (АКТ) – ақпараттық және коммуникациялық процестерді бірлесіп іске асыруға арналған технологиялар.', 'Информационно-коммуникационные технологии (ИКТ) – технологии, предназначенные для совместной реализации информационных и коммуникационных процессов.', 'Information and communication technologies (ICT) are technologies designed for the joint implementation of information and communication processes.'),
(46, 'Ақпараттық қауіпсіздік –қауіпсіздіктің жай-күйі, екеуі де ақпаратқа қол жеткізудің құпиялылығын, оған авторландырылған қол жеткізуді, оның тұтастығын, сенімділігін, толықтығын және дәйектілігін көрсетеді.', 'Информационная безопасность – состояние защищенности, обеспечивающее конфиденциальность доступа к информации, авторизованный доступ к ней, ее целостность, достоверность, полноту и непротиворечивость.', 'Information security – is a state of security that ensures confidentiality of access to information, authorized access to it, its integrity, reliability, completeness and consistency.'),
(47, 'Арна (байланыс желісі) – сигналдар немесе деректер берілетін құрал немесе жол.', 'Канал (линия связи) – средство или путь, по которому передаются сигналы или данные.', 'A channel (communi-cation line) – is a means or path through which signals or data are transmitted.'),
(48, 'Компьютерлік графика – бұл компьютердің көмегімен графикалық кескіндерді жасау, көрсету және өңдеу.', 'Компьютерная графика – это создание, демонстрация и обработка графических изображений с помощью компьютера.', 'Computer graphics – is the creation, demonstration and processing of graphic images using a computer.'),
(49, 'Мазмұн (мазмұн) – мәтіндік, графикалық, аудио ақпараттың жиынтығы.', 'Контент (content) – совокупность текстовой, графической, аудио информации.', 'Content – is a collection of text, graphic, and audio information.'),
(50, 'Корпоративтік ақпараттық жүйе – 1. Кәсіпорынның (ұйымның) қызметін құрайтын бизнес-процестер¬дің едәуір бөлігін автоматтандыратын ақпараттық жүйе. 2. Пайдаланушылары оның иесі немесе осы ақпараттық жүйені пайдаланушылардың келісімі айқындаған шектеулі тұлғалар тобы болуы мүмкін ақпараттық жүйе.', 'Корпоративная информационная система – 1. Информационная система, автоматизирующая значительную часть бизнес-процессов, составляющих деятельность предприятия (организации). 2. Информационная система, пользователями которой может быть ограниченный круг лиц, определенный ее владельцем или соглашением пользователей этой информационной системы.', 'Corporate information system – 1. An information system that automates a significant part of the business processes that make up the activities of an enterprise (organization). 2. An information system, the users of which may be a limited number of persons determined by its owner or by the agreement of the users of this information system.'),
(51, 'Коммуникациялық инфрақұрылым – электромагниттік сигналдардың әртүрлі тарату орталарын пайдаланатын байланыс желілерінен және осы сигналдарды қабылдауды, беруді және оларды осы беру процесінде өңдеуді қамтамасыз ететін жабдықтардан тұратын аумақтық бөлінген көздер мен алушылар арасында ақпарат беруді қамтамасыз ететін желілік инфрақұрылым.', 'Коммуникационная инфраструктура – сетевая инфраструктура, обеспечивающая передачу информации между территориально распределенными источниками и получателями, состоящая из линий связи, использующих различные среды распространения электромагнитных сигналов, и оборудования, обеспечивающего прием, передачу этих сигналов, и их обработку в процессе этой передачи.', 'Communication infrastructure – is a network infrastructure that provides information transmission between geographically distributed sources and recipients, consisting of communication lines using various electromagnetic signal propagation media, and equipment that provides reception, transmission of these signals, and their processing during this transmission.'),
(52, 'Коммуникациялық технологиялар – ақпаратты беру процестері мен әдістері және оларды жүзеге асыру тәсілдері.', 'Коммуникационные технологии – процессы и методы передачи информации и способы их осуществления.', 'Communication technologies – processes and methods of information transmission and ways of their implementation.'),
(53, 'Модем – әртүрлі байланыс желілері арқылы сигналдарды беру және қабылдау үшін компьютерге қосылған сыртқы немесе ішкі құрылғы. \"Модулятор\" үшін қысқа.', 'Модем – внешнее или внутреннее устройство, подключаемое к компьютеру для передачи и приема сигналов по разным линиям связи. Сокращение от «модулятор».', 'A modem – is an external or internal device connected to a computer for transmitting and receiving signals over different communication lines. Short for \"modulator\".'),
(54, 'Ұялы телефония – сымсыз телефон технологиясы. Ұялы телефония қазіргі адамдардың өмір салты мен ойлауының өзгеруіне айтарлықтай әсер етеді, оларды ақпараттық қоғамға тән құралдармен қамтамасыз етеді.', 'Мобильная телефония – технологии беспроводной телефонной связи. Мобильная телефония оказывает существенное влияние на изменения образа жизни и мышления современных людей, обеспечивая их средствами, характерными для информационного общества.', 'Mobile telephony – wireless telephony technologies. Mobile telephony has a significant impact on changes in the lifestyle and thinking of modern people, providing them with the means characteristic of the information society.'),
(55, 'Мультимедиялық электронды оқулық – бұл баспа оқулығының компьютерге гипермәтіндік және мультимедиялық аудармасы. Баспа материалдарымен салыстырғанда мұндай оқулыққа қажетті өзгертулер тез енгізілуі мүмкін; ол керемет графикалық өрескелдікті және сәтті пайдаланушы интерфейсін (мәзір, талқылауға сілтемелер және т.б.) айналып өтеді.', 'Мультимедийный электронный учебник – гипертекстовое и мультимедийное переложение печатного учебника на компьютер. По сравнению с печатными материалами в такой учебник могут оперативно вноситься необходимые изменения; он имеет большую графическую наглядность и удобный пользовательский интерфейс (меню, гиперссылки справки и тому подобное).', 'Multimedia electronic textbook is a hypertext and multimedia translation of a printed textbook on a computer. In comparison with printed materials, necessary changes can be made to such a textbook promptly; it has great graphical visibility and a convenient user interface (menus, help hyperlinks, etc.).'),
(56, 'Онлайн технологиялар (online) – нақты уақыт режимінде синхронды ақпарат алмасуды қамтамасыз ететін желілік ақпараттық кеңістіктегі коммуникация құралдары: \"сөйлесу арналары\" (чаттар), аудио және бейнеконференциялар және басқалар.', 'Онлайновые технологии (online) – средства коммуникации сообщений в сетевом информационном пространстве, обеспечивающие синхронный обмен информацией в реальном времени: «разговорные  каналы» (чаты), аудио и видеоконференции и другое.', 'Online technologies (online) are means of communication of communications in the network information space, providing synchronous exchange of information in real time: \"conversational channels\" (chats), audio and video conferences and more.'),
(57, 'Операциялық жүйе –компьютердегі негізгі басқару бағдарламасы (бағдарламалар кешені).', 'Операционная система – главная управляющая программа (комплекс программ) на ЭВМ.', 'The operating system – is the main control program (complex of programs) on a computer.'),
(58, 'Ұйымдастырушылық (әкімшілік) қорғау шаралары – бұл АЖ жұмыс істеу процестерін, оның ресурстарын, персонал қызметін пайдалануды, жүйе пайдаланушыларының ақпарат қауіпсіздігіне төнетін қатерлерді іске асыру мүмкіндігін барынша қиындататын немесе болдырмайтындай өзара іс-қимыл жасау тәртібін реттейтін шаралар.', 'Организационные (административные) меры защиты – это    меры, регламентирующие процессы функционирования ИС, использование ее ресурсов, деятельности персонала, порядок взаимодействия пользователей системы таким образом, чтобы максимально затруднить или исключить возможность реализации угроз безопасности информации.', 'Organizational (administrative) protection measures are measures that regulate the processes of the functioning of the IP, the use of its resources, the activities of personnel, the order of interaction of users of the system in such a way as to make it as difficult as possible or exclude the possibility of information security threats.'),
(59, 'Бұлтты есептеу (ағылш. Cloud Computing) – пайдаланушыға Интернет желісі немесе басқа желілер арқылы таратылған компьютерлік ресурстарды пайдалану мүмкіндігі берілетін сервис.', 'Облачные вычисления (англ. Cloud Computing) – сервис, при котором пользователю предоставляется возможность использования распределенных компьютерных ресурсов посредством сети Интернет или других сетей.', 'Cloud Computing – is a service in which the user is given the opportunity to use distributed computer resources via the Internet or other networks.'),
(60, 'Деректерді іздеу – белгілердің белгілі бір тіркесімі бойынша деректерді таңдау.', 'Поиск данных – отбор данных по определенной комбинации признаков.', 'Data search – is the selection of data for a certain combination of features.'),
(61, 'Іздеу машинасы, іздеу жүйесі (Internet) – интернеттегі сайттар туралы ақпаратты автоматты түрде жинайтын және жіктейтін, оны пайдаланушылардың сұранысы бойынша беретін бағдарламалық жасақтама. Мысалдар: AltaVista, Google, Excite, Northern Light және басқалары.', 'Поисковая машина, поисковая система (в Internet) – программное обеспечение, автоматически собирающее и классифицирующее информацию о сайтах в Internets выдающее ее по запросу пользователей. Примеры: AltaVista, Google, Excite, Northern Light и другие.', 'A search engine, a search engine (on the Internet) – is a software that automatically collects and classifies information about websites in Internets and issues it at the request of users. Examples: AltaVista, Google, Excite, Northern Light and others.'),
(62, 'Порт – компьютерге әртүрлі құрылғыларды қосуға арналған орын.', 'Порт (port) – место для подключения к компьютеру разных устройств.', 'Port  a place to connect different devices to the computer.'),
(63, 'Портал (портал) – әртүрлі ресурстар мен қызметтердің жүйелік көп деңгейлі бірлестігі ретінде ұйымдастырылған сайт. Пайдаланушыға нақты ақпарат береді, іздеу жүйелері, электрондық сауда, тегін электрондық пошта, сауда жарнамасы, жедел хабарлама жіберу және т.б. сияқты қызметтерге жедел қол жеткізеді.', 'Портал (portal) – сайт, организованный как системное многоуровневое объединение разных ресурсов и сервисов. Дает пользователю четкую информацию, осуществляет мгновенный доступ к таким сервисам, как поисковые системы, электронный шоппинг, бесплатная электронная почта, торговая реклама, мгновенная рассылка сообщений и другое.', 'Portal – is a website organized as a system multilevel association of various resources and services. Gives the user clear information, provides instant access to services such as search engines, e-shopping, free e-mail, trade advertising, instant messaging and more.'),
(64, 'Пәндік аймақ – берілген контекст шегінде қарастырылатын нақты немесе болжамды әлем объектілерінің жиынтығы.', 'Предметная область – совокупность объектов реального или предполагаемого мира, рассматриваемых в пределах данного контекста.', 'A subject area – is a collection of objects of the real or assumed world considered within a given context.'),
(65, 'Презентация жасау бағдарламасы – бұл графика, мәтін және диаграммаларды қолдана отырып, адамдар тобына ақпарат ұсыну қажет болған кезде компьютер экранында слайдтарды дайындау мен көрсетудің электрондық бағдарламасы (мөлдір пленкадағы, қағаздағы слайдтарды дайындау).', 'Программа создания презентаций – это электронная программа подготовки и демонстрации слайдов на экране компьютера (подготовки слайдов на прозрачной пленке, бумаге), когда необходимо представить группе людей информацию с применением графики, текста и диаграмм.', 'A presentation creation program – is an electronic program for preparing and demonstrating slides on a computer screen (preparing slides on transparent film, paper) when it is necessary to present information to a group of people using graphics, text and diagrams.'),
(66, 'HTTP протоколы (Hypertext Transfer Protocol) – гипермәтіндік құжаттар серверден компьютерлерге жеке пайдаланушыларға қарау үшін берілетін әдіс.', 'Протокол HTTP (Hypertext Transfer Protocol) – метод, с помощью которого гипертекстовые документы передаются с сервера для просмотра на компьютеры к отдельным пользователям.', 'The HTTP protocol (Hypertext Transfer Protocol) – is a method by which hypertext documents are transferred from the server for viewing to computers to individual users.'),
(67, 'Хаттама – ақпараттық-коммуникациялық технологияларда екі агенттің өзара әрекеттесу процесін дәл сипаттайтын процедура.', 'Протокол – в информационно-коммуникационных технологиях процедура, точно описывающая процесс взаимодействия двух агентов.', 'A protocol – is a procedure in information and communication technologies that accurately describes the process of interaction between two agents.'),
(68, 'Растрлық сурет – бұл нүктелерден тұратын сурет. Аймақтық есептеу желісі белгілі бір аймақтағы компьютерлерді байланыстыратын желі\r\n', 'Растровое изображение – это изображение, состоящее из точек. Региональная вычислительная сеть – сеть, связывающая компьютеры в пределах определенного региона.', 'A bitmap – is an image consisting of dots.\r\nA regional computing network – is a network connecting computers within a certain region.\r\n'),
(69, 'Мәтін редакторлары –компьютердегі мәтіндерді дайындау және редакциялау бағдарламалары.', 'Редакторы текстов – программы подготовки и редактирования текстов на ЭВМ.', 'Text editors – programs for preparing and editing texts on a computer.'),
(70, 'Сайт (Site) – серверді Интернетке орналастыру мекен-жайы. Көбінесе бұл бүкіл веб-жиынтық деп аталады.', 'Сайт (Site) – адрес размещения сервера в Internet. Часто так называют всю совокупность Web.', 'Site – the address of the server on the Internet. This is often called the whole Web.'),
(71, 'Еркін бағдарламалық жасақтама – бастапқы мәтіндерге еркін қол жетімді және келесі шарттарда қолданылатын және таратылатын бағдарламалық жасақтама: бағдарламаны кез-келген мақсатта еркін орындау; бағдарламаның жұмысын еркін оқып, оны пайдаланушының қажеттіліктеріне бейімдеу; басқаларға көмектесу үшін көшірмелерді еркін тарату; бағдарламаны еркін жақсарту және осы жақсартуларды қоғам игілігі үшін көпшілікке қол жетімді ету.', 'Свободное программное обеспечение – программное обеспечение, которого имеется свободный доступ к исходным текстам и которое используется и распространяется на следующих условиях: свободно исполнять программу в любых целях; свободно изучать работу программы и адаптировать ее к потребностям пользователя; свободно распространять копии для помощи другим; свободно улучшать программу и делать эти улучшения публично доступными на благо общества.', 'Free software is software that has free access to the source texts and which is used and distributed under the following conditions: freely execute the program for any purpose; freely study the work of the program and adapt it to the needs of the user; freely distribute copies to help others; freely improve the program and make these improvements publicly available for the benefit of society.'),
(72, 'Сервер (сервер) – деректерді қамтитын және басқа компьютерлерге қызмет көрсететін желілік түйін; желіге қосылған және ақпаратты сақтау үшін пайдаланылатын компьютер.', 'Сервер (Server) – сетевой узел, содержащий данные и предоставляющий услуги другим компьютерам; компьютер, подключенный к сети и используемый для хранения информации.', 'Server – a network node containing data and providing services to other computers; a computer connected to the network and used for storing information.'),
(73, 'Желілік технология –телекоммуникация желілерін пайдалануға негізделген қашықтықтан оқыту технологиясының бір түрі.', 'Сетевая технология – вид дистанционной технологии обучения, базирующийся на использовании сетей телекоммуникации.', 'Network technology – is a type of distance learning technology based on the use of telecommunications networks.'),
(74, 'Желі (Network) – жергілікті немесе қашықтағы байланысты (дауыстық, визуалды, деректермен алмасу және т.б.) қамтамасыз ету және ортақ мүдделері бар пайдаланушылар арасында ақпарат алмасу үшін бөлінген немесе коммутацияланатын желілер бойынша өзара байланысты өзара іс-қимыл жасайтын элементтер жүйесі.', 'Сеть (Network) – система взаимодействующих элементов, связанных между собой по выделенным или коммутируемым линиям для обеспечения локальной или удаленной связи (голосовой, визуальной, обмена данными и тому подобное) и для обмена сведениями между пользователями, имеющими общие интересы.', 'A network – is a system of interacting elements connected to each other via dedicated or switched lines to provide local or remote communication (voice, visual, data exchange, etc.) and to exchange information between users who have common interests.'),
(75, 'Жүйе (пәндік облыс) - өзара байланысты элементтердің жиынтығы, олардың әрқайсысы тікелей немесе жанама түрде әрбір басқа элементпен байланысты, ал екеуі осы жиынтықтың кез-келген ішкі жиынтығы жүйенің тұтастығын, бірлігін бұзбай тәуелсіз бола алмайды.', 'Система (в предметной области) – множество взаимосвязанных элементов, каждый из которых связан прямо или косвенно с каждым другим элементом, а два любые подмножества этого множества не могут быть независимыми, не нарушая целостность, единство системы.', 'A system (in the subject area) – is a set of interrelated elements, each of which is directly or indirectly connected with each other element, and any two subsets of this set cannot be independent without violating the integrity, unity of the system.'),
(76, 'Мультимедиялық жүйелер – ақпаратты өңдеудің әртүрлі формаларын қолдануға мүмкіндік беретін бағдарламалар: мәтін, графика, анимация, музыка, сөйлеу, бейне жазу.', 'Системы мультимедиа – программы, позволяющие использовать различные формы обработки информации: текст, графику, мультипликацию, музыку, речь, видеозапись.', 'Multimedia systems are programs that allow using various forms of information processing: text, graphics, animation, music, speech, video recording.'),
(77, 'Деректер базасын басқару жүйесі (ДҚБЖ) – деректер базасындағы деректерді басқаруға, осы базаны жүргізуге, деректерге көп пайдаланушының қол жеткізуін қамтамасыз етуге арналған бағдарламалық және тілдік құралдардың жиынтығы.', 'Система управления базами данных (СУБД) – совокупность программных и языковых средств, предназначенных для управления данными в базе данных, ведения этой базы, обеспечения многопользовательского доступа к данным.', 'A database management system (DBMS) – is a set of software and language tools designed to manage data in a database, maintain this database, and provide multi–user access to data.'),
(78, 'Смартфон – дербес электрондық көмекшілердің бір түрі қалталы дербес компьютермен салыстыруға болатын кеңейтілген функционалдығы бар ұялы телефон.', 'Смартфон – разновидность персональных электронных помощников  мобильный телефон с расширенной функциональностью, сравнимой с карманным персональным компьютером.', 'A smartphone – is a kind of personal electronic assistants a mobile phone with advanced functionality comparable to a pocket personal computer.'),
(79, 'Суперкомпьютер (суперЭВМ) – өнімділігі жоғары бағдарламалық-аппараттық кешен.', 'Суперкомпьютер (суперЭВМ) – сверхвысокопроизводительный программно-аппаратный комплекс.', 'A supercomputer (supercomputer) – is an ultra–high-performance software and hardware complex.'),
(80, 'Электрондық цифрлық қолтаңба құралы – кем дегенде біреуін іске асыруды қамтамасыз ететін аппараттық және/немесе бағдарламалық құрал мынадай функциялардың ішінде – электрондық цифрлық қолтаңбаның жабық кілтін пайдалана отырып, электрондық құжатта электрондық цифрлық қолтаңбаны жасау, электрондық құжаттағы электрондық цифрлық қолтаңбаның ашық кілтін пайдалана отырып, электрондық цифрлық қолтаңбаның түпнұсқалығын растау, электрондық цифрлық қолтаңбаның жабық және ашық кілттерін жасау.', 'Средство электронной цифровой подписи – аппаратное и/или программное средство, обеспечивающее реализацию хотя бы одной из следующих функций – создание электронной цифровой подписи в электронном документе с использованием закрытого ключа электронной цифровой подписи, подтверждение с использованием открытого ключа электронной цифровой подписи подлинности электронной цифровой подписи в электронном документе, создание закрытых и открытых ключей электронных цифровых подписей.', 'An electronic digital signature means a hardware and/or software tool that provides the implementation of at least one of the following functions: creation of an electronic digital signature in an electronic document using the private key of an electronic digital signature, confirmation using the public key of an electronic digital signature of the authenticity of an electronic digital signature in an electronic document, creation of private and public keys of electronic digital signatures.'),
(81, 'Сілтеме (сілтеме) – берілген құжат ішінде байланыстар және басқа құжаттармен байланыстар жасау үшін қолданылатын құжат элементі. Соңғы жағдайда еренсілтеме туралы айту дұрысырақ.', 'Ссылка (Link) – элемент документа, использующийся для создания связей внутри данного документа и связей с другими документами. В последнем случае правильнее говорить о гиперссылке.', 'Link – is a document element used to create links within this document and links with other documents. In the latter case, it is more correct to talk about a hyperlink.'),
(82, 'Телекоммуникациялық желі - байланыс құралдарының өзара байланысты компьютерлерінің жиынтығынан құралған және техникалық және ақпараттық ресурстарды ұжымдық пайдалануға арналған ақпарат алмасу және өңдеу желісі.', 'Телекоммуникационная сеть – сеть обмена и обработки информации, образованная совокупностью взаимосвязанных компьютеров средств связи и предназначенная для коллективного использования технических и информационных ресурсов.', 'Telecommunication network – is a network of information exchange and processing formed by a set of interconnected computers of communication means and intended for the collective use of technical and information resources.'),
(83, 'Телеконференция - желідегі көпжақты хабар алмасу және қашықтағы пайдаланушылар топтары арасында пікірталас жүргізу әдісі. Телеконференцияның әрбір қатысушысы өз хабарламаларын барлық қатысушыларға көруге болатын орнатылған желілік мекен-жайға жібереді. Жауап хабарламалары сол жалпыға қол жетімді мекен-жайға немесе бастапқы хабарламаны жіберушіге жіберілуі мүмкін.', 'Телеконференция – многосторонний обмен сообщениями в сети и метод проведения дискуссий между удаленными группами пользователей. Каждый участник телеконференции направляет свои сообщения по установленному сетевому адресу, где они доступны для просмотра всем участникам. Ответные сообщения могут быть направлены либо по тому же общедоступному адресу, либо отправителю исходного сообщения', 'Teleconference – is a multi–sided exchange of messages on the network and a method of conducting discussions between remote groups of users. Each participant of the teleconference sends his messages to the established network address, where they are available for viewing to all participants. Reply messages can be sent either to the same public address or to the sender of the original message.'),
(84, 'Телекоммуникация жүйесі - телекоммуникацияны қамтамасыз ететін және ақпаратты қабылдайтын және оны жіберілетін сигналдарға түрлендіретін таратқыштан, сигналдарды тасымалдайтын тарату ортасынан және сигналдарды қабылдайтын және оларды қолдануға ыңғайлы ақпаратқа кері түрлендіретін қабылдағыштан тұратын жүйе.', 'Телекоммуникационная система – система, обеспечивающая телекоммуникации и состоящая из передатчика, который получает информацию и преобразует ее в передаваемые сигналы, среды передачи, несущей сигналы, и приемника, который получает сигналы и осуществляет их обратное преобразование в удобную для использования информацию.', 'Telecommunication system – is a system that provides telecommunications and consists of a transmitter that receives information and converts it into transmitted signals, a transmission medium that carries signals, and a receiver that receives signals and converts them back into user–friendly information.'),
(85, 'Телемедицина - қашықтықтан консультациялық медициналық қызметті жүзеге асыруды қамтамасыз ететін ұйымдастырушылық, қаржылық және технологиялық іс-шаралар кешені, онда пациент немесе пациентті тікелей тексеруді немесе емдеуді жүргізетін дәрігер ұлттық стандарттарға қайшы келмейтін ақпараттық-коммуникациялық технологияларды пайдалана отырып, басқа дәрігерден қашықтық¬тан консультация алады.', 'Телемедицина – комплекс организационных, финансовых и технологических мероприя-тий, обеспечивающих осуществление дистанционной консультационной медицинской услуги, при которой пациент или врач, непосредственно проводящий обследование или лечение пациента, получает дистанционную консультацию другого врача с использованием информационно-коммуникационных технологий, не противоречащих национальным стандартам.', 'Telemedicine – is a complex of organizational, financial and technological measures that ensure the implementation of a remote consulting medical service, in which a patient or a doctor directly conducting an examination or treatment of a patient receives a remote consultation from another doctor using information and communication technologies that do not contradict national standards.');
INSERT INTO `dict` (`id`, `kaz`, `rus`, `en`) VALUES
(86, 'Трафик (traffic) – ақпарат ағынының өлшем бірлігінде (бит/с) көрсетілген уақыт бірлігі үшін берілетін ақпараттың жиынтық көлемі', 'Трафик (traffic) – совокупный объем передаваемой информации за единицу времени, выраженный в единицах измерения информационного потока (бит/с).', 'Traffic – is the total amount of transmitted information per unit of time, expressed in units of measurement of the information flow (bits/s).'),
(87, 'Қашықтан қол жеткізу - абоненттік жүйелердің аумақтық коммуникациялық желілер арқылы жергілікті желілермен өзара іс-қимыл жасау технологиясы.', 'Удаленный доступ – технология взаимодействия абонентских систем с локальными сетями через территориальные коммуникационные сети', 'Remote access – is a technology of interaction of subscriber systems with local networks through territorial communication networks.'),
(88, 'Түйін – компьютер, терминал немесе желіге қосылған кез келген басқа құрылғы. Әрбір желі түйініне басқа желі компьютерлеріне онымен байланысуға мүмкіндік беретін бірегей мекенжай беріледі.', 'Узел (node) – компьютер, терминал или любое другое устройство, подключенное к сети. Каждому узлу сети присвоен уникальный адрес, позволяющий другим компьютерам сети связываться с ним.', 'Node – a computer, terminal, or any other device connected to the network. Each node of the network is assigned a unique address that allows other computers on the network to communicate with it.'),
(89, 'Файл сервері (File Server) – қашықтағы пайдаланушылар (клиенттер) үшін онда сақталған файлдарға қол жеткізуді қамтамасыз ететін компьютер.', 'Файловый сервер (File Server) – компьютер, обеспечивающий доступ к хранящимся на нем файлам для удаленных пользователей (клиентов).', 'A File Server – is a computer that provides access to files stored on it for remote users (clients).'),
(90, 'Хост – байланыс және желілік ресурстарға қол жеткізу мәселелерін шешетін желі түйіндерінде орнатылған компьютер (сервер).', 'Хост (host) – установленный в узлах сети компьютер (сервер), решающий вопросы коммуникации и доступа к сетевым ресурсам.', 'Host – a computer (server) installed in the network nodes that solves issues of communication and access to network resources.'),
(91, 'Сандық кескін - сандық түрде ұсынылған электрондық кескін кескіні. Кескіндерді сандық бейнелеудің үш негізгі әдісі бар: растрлық графика, векторлық графика, фракталдық графика.', 'Цифровое изображение – электронное изображение Изображение, представленное в цифровом виде. Существуют три основных способа цифрового представления изображений: растровая графика, векторная графика, фрактальная графика', 'Digital image – an electronic image is an image presented in digital form. There are three main ways of digital representation of images: raster graphics, vector graphics, fractal graphics.'),
(92, 'Кең жолақты қол жетімділік - пайдаланушының ақпараттық-коммуникациялық инфрақұрылым ресурстарына кемінде 2,048 Мбит/с жылдамдықпен қол жеткізу мүмкіндігін беру.', 'Широкополосный доступ – предоставление возможности доступа пользователя к ресурсам информационно-коммуникационной инфраструктуры со скоростью передачи не менее 2,048 Мбит/с.', 'Broadband access – is the provision of user access to the resources of the information and communication infrastructure with a transmission rate of at least 2,048 Mbit/s.'),
(93, 'Шифрлау -  оның мазмұнына қол жеткізуді шектеу мақсатында ақпаратты кодтау.', 'Шифрование – кодирование информации с целью ограничения доступа к ее содержанию.', 'Encryption – is the encoding of information in order to restrict access to its content.'),
(94, 'Шлюз - бұл әртүрлі протоколдарды қолданатын екі желіні қосуға арналған бағдарлама, соның арқасында олардың арасында деректер алмасу жүзеге асырылады', 'Шлюз – программа, предназначенная для соединения двух сетей, использующих различные протоколы, благодаря которой осуществляется обмен данными между ними.', 'Gateway – is a program designed to connect two networks using different protocols, thanks to which data is exchanged between them.'),
(95, 'Электрондық тақта - желідегі ақпаратты (хабарламаларды, бағдарламалық қосымшаларды) сақтау мен ұсынудың ашық жүйесі. Кез келген пайдаланушы ақпаратты электрондық тақтадан ала алады немесе ақпаратты сол жерге жібере алады. Қашықтықтан оқытуда электронды тақта телеконференциялар өткізуде немесе виртуалды аудиториялық тақталарды ұйымдастыруда қолданылады.', 'Электронная доска – открытая система хранения и представления информации (сообщений, программных приложений) в сети. Любой пользователь может получить информацию с электронной доски или переслать туда свою информацию. В дистанционном обучении электронная доска используется при проведении телеконференций или при организации виртуальных аудиторных досок.', 'Electronic whiteboard – is an open system for storing and presenting information (messages, software applications) on the network. Any user can get information from the electronic board or forward their information there. In distance learning, an electronic whiteboard is used during teleconferences or when organizing virtual classroom whiteboards.'),
(96, 'Электрондық кітап - серверде немесе гипам жерде орналасқан гипермәтіндік немесе гипермедиа жүйесі', 'Электронная книга – гипертекстовая или гипермедиа система, размещенная на сервере или компакт.', 'An e–book – is a hypertext or hypermedia system hosted on a server or CD.'),
(97, 'Электрондық коммерция - коммерциялық ұйымдар, үй шаруашылықтары, жеке тұлғалар, мемлекеттік органдар және басқа да коммерциялық және коммерциялық емес ұйымдар қатысатын тауарлар мен қызметтерді сату немесе сатып алу бойынша коммерциялық қызметте АКТ-ны пайдалануға негізделген электрондық бизнес салаларының бірі.', 'Электронная коммерция – одна из сфер электронного бизнеса, основанная на использовании ИКТ в коммерческой деятельности по продаже или приобретению товаров и услуг, в которой участвуют коммерческие организации, домашние хозяйства, физические лица, правительственные органы и другие коммерческие и некоммерческие организации.', 'E–commerce is one of the areas of e-business based on the use of ICT in commercial activities for the sale or purchase of goods and services, in which commercial organizations, households, individuals, government agencies and other commercial and non-profit organizations participate.'),
(98, 'Электрондық пошта-адрестелген хабарламаларды компьютерлер мен байланыс құралдары арқылы беру тәсілі. Электрондық пошта бұл компьютер пайдаланушыларына электрондық пошта хабарларын бөлісуге мүмкіндік беретін ең кең таралған желілік қызмет.', 'Электронная почта – способ передачи адресованных сообщений с помощью ЭВМ и средств связи. Электронная почта – наиболее распространенная сетевая услуга, которая позволяет пользователям компьютеров обмениваться электронными сообщениями.', 'E–mail – is a method of transmitting addressed messages using computers and means of communication.\r\nE–mail – is the most common network service that allows computer users to exchange electronic messages.\r\n'),
(99, 'Электрондық цифрлық қолтаңба - оны қолдан жасаудан қорғауға арналған цифрлық құжаттың деректемесі. Жеке кілтті қолдана отырып, құжатты криптографиялық түрлендіру нәтижесінде қалыптасады және қолтаңба кілті сертификатының иесін анықтауға, сондай - ақ осы сандық құжатта ақпарат талап етілмегенін анықтауға мүмкіндік береді.', 'Электронная цифровая подпись – реквизит цифрового документа, предназначенный для его защиты от подделки. Формируется в результате криптографического преобразования документа с использованием закрытого ключа и позволяет идентифицировать владельца сертификата ключа подписи, а также устанавливать отсутствие искажения информации в этом цифровом документе.', 'An electronic digital signature – is a detail of a digital document designed to protect it from forgery. It is formed as a result of cryptographic transformation of a document using a private key and allows you to identify the owner of the signature key certificate, as well as to establish the absence of distortion of information in this digital document.'),
(100, 'Электрондық денсаулық сақтау - медициналық-санитарлық көмек, медициналық қадағалау, медициналық әдебиет, медициналық білім, білім және денсаулық сақтау саласындағы ғылыми зерттеулер қызметтерін қоса алғанда, денсаулық сақтау және онымен байланысты салалар мүддесі үшін ақпараттық-коммуникациялық технологияларды пайдаланудың экономикалық тиімді және сенімді нысаны.', 'Электронное здравоохранение – экономически эффективная и надежная форма использования информационно-коммуникационных технологий в интересах здравоохранения и связанных с ним областей, включая службы медико-санитарной помощи, медицинского надзора, медицинской литературы, медицинского образования, знаний и научных исследований в области здравоохранения.', 'E–health – is a cost-effective and reliable form of using information and communication technologies for the benefit of healthcare and related areas, including health care services, medical supervision, medical literature, medical education, knowledge and scientific research in the field of healthcare.'),
(101, 'Электрондық ақша -  қолда бар және тек электрондық нысанда, әдетте банктердің қатысуынсыз айналысқа түсетін ақша сомасы', 'Электронные деньги – денежные суммы, существующие и обращающиеся исключительно в электронной форме, как правило, без участия банков.', 'Electronic money – amounts of money that exist and are circulated exclusively in electronic form, as a rule, without the participation of banks.'),
(102, 'Электрондық кестелер - компьютердегі кестелерде сандық есептеулерді орындауға және сақтауға арналған бағдарламалар.', 'Электронные таблицы – программы для выполнения и хранения числовых расчетов в таблицах на ЭВМ.', 'Spreadsheets are programs for performing and storing numerical calculations in tables on a computer.'),
(103, 'HTML тілі (Hypertext Markup Language) – web кодтау үшін қолданылатын негізгі тіл.', 'Язык HTML (Hypertext Markup Language) – основной язык, который используется для кодировки Web.', 'HTML (Hypertext Markup Language) – is the main language used for encoding the Web.'),
(104, 'VRML тілі (Virtual Reality Modeling Language) – Web пішімдеуге арналған виртуалды шындықты модельдеу тілі.', 'Язык VRML (Virtual Reality Modeling Language) – язык моделирования виртуальной реальности, предназначенный для форматирования Web.', 'VRML (Virtual Reality Modeling Language) – is a virtual reality modeling language designed for Web formatting.'),
(105, 'IP мекенжайы - түйінге тағайындалған 32 биттік интернет протоколының мекенжайы. IP мекенжайында екі компонент бар: түйін нөмірі және желі нөмірі.', 'IP-адрес – 32-битовый адрес протокола Интернета, присвоенный к узлу. Адрес IP содержит два компонента: номер узла и номер сети.', 'An IP address - is a 32-bit Internet Protocol address assigned to a node. The IP address contains two components: the node number and the network number.'),
(106, 'HTML (Hyper Text.Markup Language) -  арнайы пішімдеу командалары мен гиперсілтемелері бар құжаттарды жасауға арналған Тіл.', 'HTML (Hyper Text.Markup Language) – язык для создания документов со специальными командами форматирования и гиперссылками.', 'HTML (Hyper Text. Markup Language – is a language for creating documents with special formatting commands and hyperlinks.'),
(107, 'URL (Uniform Resource Locator) - файл сақталатын Сервер атауы, файл каталогына жол және файлдың нақты атауы көрсетілген желілік түйін мекенжайының пішімі.', 'URL (Uniform Resource Locator) – формат адреса сетевого узла, в котором указывается имя сервера, на котором сохраняется файл, путь к каталогу файла и собственно имя файла.', 'URL (Uniform Resource Locator) – is the format of the address of the network node, which specifies the name of the server on which the file is saved, the path to the file directory and the file name itself.'),
(108, 'WWW (World Wide Web) – гипермәтіндік медианы байланыстыруға арналған дүниежүзілік желі.', 'WWW (World Wide Web) – Всемирная Паутина, предназначенная для гипертекстового связывания мультимедиа.', 'WWW (World Wide Web) – is a World Wide Web designed for hypertext linking of multimedia.'),
(109, 'Wi-Fi (Wireless Fidelity) – сілтеме жасау үшін қолданылатын термин сымсыз 802.11 стандартты желілер және осы желілерде жұмыс істейтін құрылғылар.', 'Wi-Fi (Wireless Fidelity) – термин, используемый для обозначения беспроводный сетей стандарта 802.11 и устройств, работающих в этих сетях.', 'Wi-Fi (Wireless Fidelity) – is a term used to refer to wireless networks of the 802.11 standard and devices operating in these networks.'),
(110, '3G, 4G – соңғы UMTS технологияларына негізделген үшінші және төртінші буын ұялы байланысының белгісі. Бірінші буын телефондары-аналогтық телефондар, екінші буын.', '3G, 4G – обозначение сотовой связи третьего и четвертого поколения, основанной на новейших технологиях UMTS. Телефонами первого поколения являются аналоговые телефоны, второго поколения.', '3G, 4G – is the designation of the third and fourth generation cellular communications based on the latest UMTS technologies. The phones of the first generation are analog phones, the second generation.');

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `language` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `symbol`, `language`, `disabled`) VALUES
(1, 'af_ZA', 'Afrikaans', 0),
(2, 'sq_AL', 'Shqip', 0),
(3, 'ar_AR', 'العربية', 0),
(4, 'hy_AM', 'Հայերեն', 0),
(5, 'ay_BO', 'Aymar aru', 0),
(6, 'az_AZ', 'Azərbaycan dili', 0),
(7, 'eu_ES', 'Euskara', 0),
(8, 'bn_IN', 'Bangla', 0),
(9, 'bs_BA', 'Bosanski', 0),
(10, 'bg_BG', 'Български', 0),
(11, 'my_MM', 'မြန်မာဘာသာ', 0),
(12, 'ca_ES', 'Català', 0),
(13, 'ck_US', 'Cherokee', 0),
(14, 'hr_HR', 'Hrvatski', 0),
(15, 'cs_CZ', 'Čeština', 0),
(16, 'da_DK', 'Dansk', 0),
(17, 'nl_NL', 'Nederlands', 0),
(18, 'nl_BE', 'Nederlands (België)', 0),
(19, 'en_IN', 'English (India)', 0),
(20, 'en_GB', 'English (UK)', 0),
(21, 'en_US', 'English (US)', 0),
(22, 'et_EE', 'Eesti', 0),
(23, 'fo_FO', 'Føroyskt', 0),
(24, 'tl_PH', 'Filipino', 0),
(25, 'fi_FI', 'Suomi', 0),
(26, 'fr_CA', 'Français (Canada)', 0),
(27, 'fr_FR', 'Français (France)', 0),
(28, 'fy_NL', 'Frysk', 0),
(29, 'gl_ES', 'Galego', 0),
(30, 'ka_GE', 'ქართული', 0),
(31, 'de_DE', 'Deutsch', 0),
(32, 'el_GR', 'Ελληνικά', 0),
(33, 'gn_PY', 'Avañe\'ẽ', 0),
(34, 'gu_IN', 'ગુજરાતી', 0),
(35, 'ht_HT', 'Ayisyen', 0),
(36, 'he_IL', '‏עברית‏', 0),
(37, 'hi_IN', 'हिन्दी', 0),
(38, 'hu_HU', 'Magyar', 0),
(39, 'is_IS', 'Íslenska', 0),
(40, 'id_ID', 'Bahasa Indonesia', 0),
(41, 'ga_IE', 'Gaeilge', 0),
(42, 'it_IT', 'Italiano', 0),
(43, 'ja_JP', '日本語', 0),
(44, 'jv_ID', 'Basa Jawa', 0),
(45, 'kn_IN', 'Kannaḍa', 0),
(46, 'kk_KZ', 'Қазақша', 0),
(47, 'km_KH', 'Khmer', 0),
(48, 'ko_KR', '한국어', 0),
(49, 'ku_TR', 'Kurdî', 0),
(50, 'lv_LV', 'Latviešu', 0),
(51, 'li_NL', 'Lèmbörgs', 0),
(52, 'lt_LT', 'Lietuvių', 0),
(53, 'mk_MK', 'Македонски', 0),
(54, 'mg_MG', 'Malagasy', 0),
(55, 'ms_MY', 'Bahasa Melayu', 0),
(56, 'ml_IN', 'Malayāḷam', 0),
(57, 'mt_MT', 'Malti', 0),
(58, 'mr_IN', 'मराठी', 0),
(59, 'mn_MN', 'Монгол', 0),
(60, 'ne_NP', 'नेपाली', 0),
(61, 'se_NO', 'Davvisámegiella', 0),
(62, 'nb_NO', 'Norsk (bokmål)', 0),
(63, 'nn_NO', 'Norsk (nynorsk)', 0),
(64, 'ps_AF', 'پښتو', 0),
(65, 'fa_IR', 'فارسی', 0),
(66, 'pl_PL', 'Polski', 0),
(67, 'pt_BR', 'Português (Brasil)', 0),
(68, 'pt_PT', 'Português (Portugal)', 0),
(69, 'pa_IN', 'ਪੰਜਾਬੀ', 0),
(70, 'qu_PE', 'Qhichwa', 0),
(71, 'ro_RO', 'Română', 0),
(72, 'rm_CH', 'Rumantsch', 0),
(73, 'ru_RU', 'Русский', 0),
(74, 'sa_IN', 'संस्कृतम्', 0),
(75, 'sr_RS', 'Српски', 0),
(76, 'zh_CN', '中文(简体)', 0),
(77, 'sk_SK', 'Slovenčina', 0),
(78, 'sl_SI', 'Slovenščina', 0),
(79, 'so_SO', 'Soomaaliga', 0),
(80, 'es_LA', 'Español', 0),
(81, 'es_CL', 'Español (Chile)', 0),
(82, 'es_CO', 'Español (Colombia)', 0),
(83, 'es_MX', 'Español (México)', 0),
(84, 'es_ES', 'Español (España)', 0),
(85, 'es_VE', 'Español (Venezuela)', 0),
(86, 'sw_KE', 'Kiswahili', 0),
(87, 'sv_SE', 'Svenska', 0),
(88, 'sy_SY', 'Leššānā Suryāyā', 0),
(89, 'tg_TJ', 'тоҷикӣ, تاجیکی‎, tojikī', 0),
(90, 'ta_IN', 'தமிழ்', 0),
(91, 'tt_RU', 'татарча / Tatarça / تاتارچا', 0),
(92, 'te_IN', 'Telugu', 0),
(93, 'th_TH', 'ภาษาไทย', 0),
(94, 'zh_HK', '中文(香港)', 0),
(95, 'zh_TW', '中文 (繁體)', 0),
(96, 'tr_TR', 'Türkçe', 0),
(97, 'uk_UA', 'Українська', 0),
(98, 'ur_PK', 'اردو', 0),
(99, 'uz_UZ', 'O\'zbek', 0),
(100, 'vi_VN', 'Tiếng Việt', 0),
(101, 'cy_GB', 'Cymraeg', 0),
(102, 'xh_ZA', 'isiXhosa', 0),
(103, 'yi_DE', 'ייִדיש', 0),
(104, 'zu_ZA', 'isiZulu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `permissions_map`
--

CREATE TABLE `permissions_map` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `permissions_map`
--

INSERT INTO `permissions_map` (`id`, `role_id`, `permission`, `disabled`) VALUES
(1, 2, 'delete_categories', 1),
(2, 2, 'edit_permissions', 1),
(3, 1, 'add_categories', 1),
(4, 1, 'view_permissions', 1),
(5, 1, 'delete_permissions', 1),
(6, 1, 'edit_categories', 1),
(7, 1, 'delete_categories', 1),
(8, 1, 'add_permissions', 1),
(9, 1, 'edit_permissions', 1),
(10, 3, 'add_categories', 1),
(11, 3, 'delete_categories', 1),
(12, 3, 'view_permissions', 1),
(13, 3, 'edit_permissions', 1),
(14, 3, 'delete_permissions', 1),
(15, 1, 'view_roles', 1),
(16, 1, 'add_roles', 1),
(17, 1, 'edit_roles', 1),
(18, 1, 'delete_roles', 1),
(19, 1, 'view_categories', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `prices`
--

INSERT INTO `prices` (`id`, `name`, `price`, `disabled`) VALUES
(1, 'Free', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `role`, `disabled`) VALUES
(1, 'user', 0),
(2, 'admin', 0),
(3, 'manager', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(11) NOT NULL,
  `image` varchar(2048) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `slider_images`
--

INSERT INTO `slider_images` (`id`, `image`, `title`, `description`, `disabled`) VALUES
(1, 'uploads/images/1658218995pexels-photo-3756774.jpeg', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 0),
(2, 'uploads/images/1658219311pexels-photo-3757004.jpeg', 'Why do we use it?', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 0),
(3, 'uploads/images/1658219956amifaku.jpg', 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ', 0),
(4, 'uploads/images/1658220321Rihanna.-Photo-W-Magazine.jpg', 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, yo', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `name` text NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `options` text DEFAULT NULL,
  `score` int(11) NOT NULL,
  `status` text DEFAULT NULL,
  `last` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`name`, `question`, `answer`, `options`, `score`, `status`, `last`) VALUES
('1', 'who are you?', '', 'ababa|baba|caca|dada|eaea', 0, '', ''),
('1', 'my name is who?', '', 'via|via|dda|xxxxxx|yyyyyy', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `test_name`
--

CREATE TABLE `test_name` (
  `id` int(11) DEFAULT NULL,
  `cnt` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `test_name`
--

INSERT INTO `test_name` (`id`, `cnt`, `name`) VALUES
(1, 1, 'informatika\r\n'),
(1, 1, 'informatika\r\n'),
(NULL, 2, '1'),
(NULL, 2, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `date` date DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `about` varchar(2048) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `twitter_link` varchar(1024) DEFAULT NULL,
  `facebook_link` varchar(1024) DEFAULT NULL,
  `instagram_link` varchar(1024) DEFAULT NULL,
  `linkedin_link` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `password`, `role`, `date`, `image`, `about`, `company`, `job`, `country`, `address`, `phone`, `twitter_link`, `facebook_link`, `instagram_link`, `linkedin_link`) VALUES
(1, 'email@email.com', 'Mary', 'Jane', '$2y$10$Pe46vRnUHD1CnxjH74lvnOFfB7yKgxNThQstvP/ICep9ZTbpQvwAq', 2, '2022-07-06', 'uploads/images/1657061746791a047636136702e25ba1096b11cfe7.jpg', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', '', '', '', '', '0977568985', '', '', '', ''),
(2, 'mary@email.com', 'Mary', 'Phiri', '$2y$10$ZdIB05xb93kZKMo.Zpe6huRSKUSDBG0FrdAfNE01V/oFlREFcg14O', 1, '2022-08-01', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'dastantleubek20@gmail.com', 'dastan', 'tileubek', '$2y$10$ans/mIJaqWhZW3EhIGOVWuh.JIIYdd/wa.lRSMJnBYrn3/HcNBrO6', 1, '2023-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `sub_category_id` (`sub_category_id`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `price_id` (`price_id`),
  ADD KEY `primary_subject` (`primary_subject`),
  ADD KEY `date` (`date`),
  ADD KEY `approved` (`approved`),
  ADD KEY `published` (`published`),
  ADD KEY `views` (`views`),
  ADD KEY `trending` (`trending`);

--
-- Индексы таблицы `courses_meta`
--
ALTER TABLE `courses_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `data_type` (`data_type`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `tab` (`tab`),
  ADD KEY `uid` (`uid`);

--
-- Индексы таблицы `course_levels`
--
ALTER TABLE `course_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Индексы таблицы `dict`
--
ALTER TABLE `dict`
  ADD KEY `kaz` (`kaz`(768)),
  ADD KEY `rus` (`rus`(768)),
  ADD KEY `en` (`en`(768));

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Индексы таблицы `permissions_map`
--
ALTER TABLE `permissions_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission` (`permission`),
  ADD KEY `disabled` (`disabled`);

--
-- Индексы таблицы `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price` (`price`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Индексы таблицы `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `courses_meta`
--
ALTER TABLE `courses_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `course_levels`
--
ALTER TABLE `course_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT для таблицы `permissions_map`
--
ALTER TABLE `permissions_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
