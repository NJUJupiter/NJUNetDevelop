
-- MySQL dump 10.13  Distrib 5.7.19, for windos10(64)
--
--   Database: Net
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `Movie`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(255) DEFAULT NULL,
  `release_time` varchar(255) DEFAULT NULL,
  `description` varchar(10000) NOT NULL,
  `type` int(3) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `actors` varchar(255) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

BEGIN;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'我不是药神','2018-07-05','普通中年男子程勇（徐峥 饰）经营着一家保健品店，失意又失婚。不速之客吕受益（王传君 饰）的到来，让他开辟了一条去印度买药做“代购”的新事业，虽然困难重重，但他在这条“买药之路”上发现了商机，一发不可收拾地做起了治疗慢粒白血病的印度仿制药独家代理商。赚钱的同时，他也认识了几个病患及家属，为救女儿被迫做舞女的思慧（谭卓 饰）、说一口流利“神父腔”英语的刘牧师（杨新鸣 饰），以及脾气暴烈的“黄毛”（章宇 饰），几个人合伙做起了生意，利润倍增的同时也危机四伏。程勇昔日的小舅子曹警官（周一围 饰）奉命调查仿制药的源头，假药贩子张长林（王砚辉 饰）和瑞士正牌医药代表（李乃文 饰）也对其虎视眈眈，生意逐渐变成了一场关于救赎的拉锯战。',1,'文牧野','韩家女 / 钟伟 / 文牧野' ,' 徐峥 / 王传君 / 周一围 / 谭卓 / 章宇 ',0,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2561305376.jpeg',9.0);
INSERT INTO `Movie` VALUES (2,'肖申克的救赎 The Shawshank Redemption','1994-09-10','20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步……',1,'弗兰克·德拉邦特','弗兰克·德拉邦特 / 斯蒂芬·金','蒂姆·罗宾斯 / 摩根·弗里曼 / 鲍勃·冈顿 / 威廉姆·赛德勒 / 克兰西·布朗 ',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpeg',9.7);
INSERT INTO `Movie` VALUES (3,'你的名字。 君の名は。','2016-12-02','在远离大都会的小山村，住着巫女世家出身的高中女孩宫水三叶（上白石萌音 配音）。校园和家庭的原因本就让她充满烦恼，而近一段时间发生的奇怪事件，又让三叶摸不清头脑。不知从何时起，三叶在梦中就会变成一个住在东京的高中男孩。那里有陌生的同学和朋友，有亲切的前辈和繁华的街道，一切都是如此诱人而真实。另一方面，住在东京的高中男孩立花泷（神木隆之介 配音）则总在梦里来到陌生的小山村，以女孩子的身份过着全新的生活。许是受那颗神秘彗星的影响，立花和三叶在梦中交换了身份。他们以他者的角度体验着对方的人生，这期间有愤怒、有欢笑也有暖心。只是两人并不知道，身份交换的背后隐藏着重大而锥心的秘密……',1,'新海诚','新海诚','神木隆之介 / 上白石萌音 / 长泽雅美 / 市原悦子 / 成田凌',10,'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2395733377.jpeg',8.4);
INSERT INTO `Movie` VALUES (4,'哪吒之魔童降世 ','2019-07-26','天地灵气孕育出一颗能量巨大的混元珠，元始天尊将混元珠提炼成灵珠和魔丸，灵珠投胎为人，助周伐纣时可堪大用；而魔丸则会诞出魔王，为祸人间。元始天尊启动了天劫咒语，3年后天雷将会降临，摧毁魔丸。太乙受命将灵珠托生于陈塘关李靖家的儿子哪吒身上。然而阴差阳错，灵珠和魔丸竟然被掉包。本应是灵珠英雄的哪吒却成了混世大魔王。调皮捣蛋顽劣不堪的哪吒却徒有一颗做英雄的心。然而面对众人对魔丸的误解和即将来临的天雷的降临，哪吒是否命中注定会立地成魔？他将何去何从？',2,'饺子','饺子 / 易巧 / 魏芸芸','吕艳婷 / 囧森瑟夫 / 瀚墨 / 陈浩 / 绿绮',10,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2563780504.jpeg',8.5);
INSERT INTO `Movie` VALUES (5,'千与千寻 千と千尋の神隠し','2019-06-21','千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。千寻仓皇逃出，一个叫小白的人救了他，喂了她阻止身体消 失的药，并且告诉她怎样去找锅炉爷爷以及汤婆婆，而且必须获得一份工作才能不被魔法变成别的东西。千寻在小白的帮助下幸运地获得了一份在浴池打杂的工作。渐渐她不再被那些怪模怪样的人吓倒，并从小玲那儿知道了小白是凶恶的汤婆婆的弟子。一次，千寻发现小白被一群白色飞舞的纸人打伤，为了救受伤的小白，她用河神送给她的药丸驱出了小白身体内的封印以及守封印的小妖精，但小白还是没有醒过来。为了救小白，千寻又踏上了她的冒险之旅。 ',2,'宫崎骏','宫崎骏','柊瑠美 / 入野自由 / 夏木真理 / 菅原文太 / 中村彰男',10,'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.jpeg',9.4);
INSERT INTO `Movie` VALUES (6,'绿皮书 Green Book',' 2019-03-01(中国大陆) / 2018-09-11(多伦多电影节) / 2018-11-16(美国)','托尼（维果·莫腾森 Viggo Mortensen 饰）是一个吊儿郎当游手好闲的混混，在一家夜总会做侍者。这间夜总会因故要停业几个月，可托尼所要支付的房租和生活费不会因此取消，所以他的当务之急是去寻找另一份工作来填补这几个月的空缺。在这个节骨眼上，一位名叫唐雪莉（马赫沙拉·阿里 Mahershala Ali 饰）的黑人钢琴家提出雇佣托尼。唐雪莉即将开始为期八个星期的南下巡回演出，可是，那个时候南方对黑人的歧视非常的严重，于是托尼便成为了唐雪莉的司机兼保镖。一路上，两人迥异的性格使得他们之间产生了很多的矛盾，与此同时，唐雪莉在南方所遭受的种种不公平的对待也让托尼对种族歧视感到深恶痛绝。',2,'彼得·法雷里','尼克·瓦莱隆加 / 布莱恩·库瑞 / 彼得·法雷里','维果·莫腾森 / 马赫沙拉·阿里 / 琳达·卡德里尼 / 塞巴斯蒂安·马尼斯科 / 迪米特·D·马里诺夫',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2549177902.jpeg',8.9);
INSERT INTO `Movie` VALUES (7,'疯狂动物城 Zootopia','2016-03-04(中国大陆/美国)','故事发生在一个所有哺乳类动物和谐共存的美好世界中，兔子朱迪（金妮弗·古德温 Ginnifer Goodwin 配音）从小就梦想着能够成为一名惩恶扬善的刑警，凭借着智慧和努力，朱迪成功的从警校中毕业进入了疯狂动物城警察局，殊不知这里是大型肉食类动物的领地，作为第一只，也是唯一的小型食草类动物，朱迪会遇到怎样的故事呢？近日里，城中接连发生动物失踪案件，就在全部警员都致力于调查案件真相之时，朱迪却被局长（伊德瑞斯·艾尔巴 Idris Elba 配音）发配成为了一名无足轻重的交警。某日，正在执勤的兔子遇见了名为尼克（杰森·贝特曼 Jason Bateman 配音）的狐狸，两人不打不相识，之后又误打误撞的接受了寻找失踪的水獭先生的任务，如果不能在两天之内找到水獭先生，朱迪就必须自愿离开警局。朱迪找到了尼克，两人联手揭露了一个隐藏在疯狂动物城之中的惊天秘密。',3,' 拜伦·霍华德 / 瑞奇·摩尔 / 杰拉德·布什','尼 拜伦·霍华德 / 瑞奇·摩尔 / 杰拉德·布什 / 吉姆·里尔顿 / 乔西·特立尼达 / 菲尔·约翰斯顿 / 珍妮弗·李','金妮弗·古德温 / 杰森·贝特曼 / 伊德里斯·艾尔巴 / 珍妮·斯蕾特 / 内特·托伦斯 ',10,'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2315672647.jpeg',9.2);
INSERT INTO `Movie` VALUES (8,'这个杀手不太冷 Léon ','1994-09-14(法国)','里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。女孩想着去报仇，反倒被抓，里昂及时赶到，将女孩救回。混杂着哀怨情仇的正邪之战渐次升级，更大的冲突在所难免……',3,'吕克·贝松','吕克·贝松','让·雷诺 / 娜塔莉·波特曼 / 加里·奥德曼 / 丹尼·爱罗 / 彼得·阿佩尔',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpeg',9.4);
INSERT INTO `Movie` VALUES (9,'泰坦尼克号 Titanic ','1998-04-03(中国大陆) / 1997-11-01(东京电影节) / 1997-12-19(美国)','1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。罗丝厌倦了上流社会虚伪的生活，不愿嫁给卡尔，打算投海自尽，被杰克救起。很快，美丽活泼的罗丝与英俊开朗的杰克相爱，杰克带罗丝参加下等舱的舞会、为她画像，二人的感情逐渐升温。1912年4月14日，星期天晚上，一个风平浪静的夜晚。泰坦尼克号撞上了冰山，“永不沉没的”泰坦尼克号面临沉船的命运，罗丝和杰克刚萌芽的爱情也将经历生死的考验。',3,'詹姆斯·卡梅隆','詹姆斯·卡梅隆','莱昂纳多·迪卡普里奥 / 凯特·温丝莱特 / 比利·赞恩 / 凯西·贝茨 / 弗兰西丝·费舍',10,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpeg',9.4);
INSERT INTO `Movie` VALUES (10,'少年的你',' 2019-10-25(中国大陆)','陈念（周冬雨 饰）是一名即将参加高考的高三学生，同校女生胡晓蝶（张艺凡 饰）的跳楼自杀让她的生活陷入了困顿之中。胡晓蝶死后，陈念遭到了以魏莱（周也 饰）为首的三人组的霸凌，魏莱虽然表面上看来是乖巧的优等生，实际上却心思毒辣，胡晓蝶的死和她有着千丝万缕的联系。一次偶然中，陈念邂逅了名为小北（易烊千玺 饰）的小混混，随着时间的推移，心心相惜的两人之间产生了真挚的感情。小北答应陈念在暗中保护她免受魏莱的欺凌，没想到这一决定引发了一连串的连锁反应。负责调查胡晓蝶死因的警官郑易（尹昉 饰）隐隐察觉到校园里的古怪气氛，可他的调查却屡屡遭到校方的阻挠。',3,'曾国祥','林咏琛 / 李媛 / 许伊萌','周冬雨 / 易烊千玺 / 尹昉 / 周也 / 吴越',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2572166063.jpeg',8.3);
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Record`
--

DROP TABLE IF EXISTS `Record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `watch_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Dumping data for table `Record`
--

BEGIN;
/*!40000 ALTER TABLE `Record` DISABLE KEYS */;
/*!40000 ALTER TABLE `Record` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Status`
--
DROP TABLE IF EXISTS `Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Status` (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `user_id` int(11) DEFAULT NULL,
                          `comment_id` int(11) DEFAULT NULL,
                          `reply_id` int(11) DEFAULT NULL,
                          `movie_id` int(11) DEFAULT NULL,
                          `state` int(11) DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `userName` varchar(255) DEFAULT NULL,
                        `userImg` varchar(11) NOT NULL,
                        `openId` varchar(255) DEFAULT NULL,
                        `sessionKey` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `User`
--

BEGIN;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
COMMIT;


--
-- Table structure for table `expect`
--

DROP TABLE IF EXISTS `Expect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Expect` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `movie_id` int(11) default Null,
                        `user_id` int(11) DEFAULT NULL,
                        `userName` varchar(255) default NULL,
                        `userAvatar` varchar(255) DEFAULT NULL,
                        `longitude` double DEFAULT NULL,
                        `latitude` double DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `User`
--

BEGIN;
/*!40000 ALTER TABLE `Expect` DISABLE KEYS */;
/*!40000 ALTER TABLE `Expect` ENABLE KEYS */;
COMMIT;


--
-- Table structure for table `performer`
--

DROP TABLE IF EXISTS `Performer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Performer` (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `movie_id` int(11) default Null,
                          `performer_name` varchar(255) DEFAULT NULL,
                          `performer_avatar` varchar(255) default NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `Performer`
--

BEGIN;
/*!40000 ALTER TABLE `Performer` DISABLE KEYS */;
insert into `Performer` VALUES (1,1,'文牧野','https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1563174692.41.webp');
insert into `Performer` VALUES (2,1,'徐峥','https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p43738.webp');
insert into `Performer` VALUES (3,1,'王传君','https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1496577458.38.webp');
insert into `Performer` VALUES (4,1,'周一围','https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1514533436.1.webp');
insert into `Performer` VALUES (5,1,'章宇','https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1542778239.29.webp');
/*!40000 ALTER TABLE `Performer` ENABLE KEYS */;
COMMIT;

--
--
-- Table structure for table `Comment`
--
DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comment` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `user_id` int(11) DEFAULT NULL,
                        `userName` varchar(255) DEFAULT NULL,
                        `userAvatar` varchar(255) DEFAULT NULL,
                        `movie_id` int(11) DEFAULT NULL,
                        `content` varchar(255) DEFAULT NULL,
                        `likes` int(11) DEFAULT NULL,
                        `create_time` varchar(255) DEFAULT NULL,
                        `score` double DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

BEGIN;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Reply`
--
DROP TABLE IF EXISTS `Reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reply` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `comment_id` int(11) DEFAULT NULL,
                           `from_id` int(11) DEFAULT NULL,
                           `from_name` varchar(255) DEFAULT NULL,
                           `from_avatar` varchar(255) DEFAULT NULL,
                           `to_id` int(11) DEFAULT NULL,
                           `to_name` varchar(255) DEFAULT NULL,
                           `to_avatar` varchar(255) DEFAULT NULL,
                           `content` varchar(255) DEFAULT NULL,
                           `favor` int(11) DEFAULT NULL,
                           `create_time` varchar(255) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

BEGIN;
/*!40000 ALTER TABLE `Reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reply` ENABLE KEYS */;
COMMIT;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-28 23:44:42
SET FOREIGN_KEY_CHECKS = 1;