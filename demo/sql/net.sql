
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
INSERT INTO `Movie` VALUES (11,'海上钢琴师','2019-11-15(中国大陆) / 1998-10-28(意大利)','本片讲述了一个钢琴天才传奇的一生。
　　1900年，Virginian号豪华邮轮上，一个孤儿被遗弃在头等舱，由船上的水手抚养长大，取名1900（蒂姆•罗斯 饰）。1900慢慢长大，显示出了无师自通的非凡钢琴天赋，在船上的乐队表演钢琴，每个听过他演奏的人，都被深深打动。爵士乐鼻祖杰尼听说了1900的高超技艺，专门上船和他比赛，最后自叹弗如，黯然离去。
　　可惜，这一切的事情都发生在海上，1900从来不愿踏上陆地，直到有一天，他爱上了一个女孩，情愫在琴键上流淌。他会不会为了爱情，踏上陆地开始新的生活，用他的琴声惊艳世界？他将怎样谱写自己非凡的人生。',1,'朱塞佩·托纳多雷','亚利桑德罗·巴里克 / 朱塞佩·托纳多雷' ,' 蒂姆·罗斯 / 普路特·泰勒·文斯 / 比尔·努恩 / 克兰伦斯·威廉姆斯三世 / 梅兰尼·蒂埃里',0,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2574551676.jpeg',9.3);
INSERT INTO `Movie` VALUES (12,'怦然心动 Flipped','2010-07-26(好莱坞首映) / 2010-09-10(美国)','布莱斯（卡兰•麦克奥利菲 Callan McAuliffe 饰）全家搬到小镇，邻家女孩朱丽（玛德琳•卡罗尔 Madeline Carroll 饰）前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。她喜欢爬在高高的梧桐树上看风景。但因为施工，树被要被砍掉，她誓死捍卫，希望他并肩作战，但是他退缩了。她的事迹上了报纸，外公对她颇有好感，令他十分困惑。她凭借鸡下蛋的项目获得了科技展第一名，成了全场焦点，令他黯然失色。她把自家鸡蛋送给他，他听家人怀疑她家鸡蛋不卫生，便偷偷把鸡蛋丢掉。她得知真相，很伤心，两人关系跌入冰点。她跟家人诉说，引发争吵。原来父亲一直攒钱照顾傻弟弟，所以生活拮据。她理解了父母，自己动手，还得到了他外公的鼎力相助。他向她道歉，但是并未解决问题。他开始关注她。鸡蛋风波未平，家庭晚宴与午餐男孩评选又把两人扯在了一起……',1, '罗伯·莱纳','罗伯·莱纳 / 安德鲁·沙因曼 / 文德琳·范·德拉安南',' 玛德琳·卡罗尔 / 卡兰·麦克奥利菲 / 瑞贝卡·德·莫妮 / 安东尼·爱德华兹 / 约翰·马奥尼',10,'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p501177648.jpeg',9.3);
INSERT INTO `Movie` VALUES (13,'美丽人生','2020-01-03(中国大陆) / 1997-12-20(意大利)','犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。
　　然而好景不长，法西斯政权下，圭多和儿子被强行送往犹太人集中营。多拉虽没有犹太血统，毅然同行，与丈夫儿子分开关押在一个集中营里。聪明乐天的圭多哄骗儿子这只是一场游戏，奖品就是一辆大坦克，儿子快乐、天真的生活在纳粹的阴霾之中。尽管集中营的生活艰苦寂寞，圭多仍然带给他人很多快乐，他还趁机在纳粹的广播里问候妻子：“早安！公主！”
　　法西斯政权即将倾覆，纳粹的集中营很快就要接受最后的清理，圭多编给儿子的游戏该怎么结束？他们一家能否平安的度过这黑暗的年代呢?',1,' 罗伯托·贝尼尼','温琴佐·切拉米 / 罗伯托·贝尼尼','罗伯托·贝尼尼 / 尼可莱塔·布拉斯基 / 乔治·坎塔里尼 / 朱斯蒂诺·杜拉诺 / 赛尔乔·比尼·布斯特里克',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2578474613.jpg',9.5);
INSERT INTO `Movie` VALUES (14,'辛德勒的名单 ','1993-11-30(华盛顿首映) / 1994-02-04(美国)','1939年，波兰在纳粹德国的统治下，党卫军对犹太人进行了隔离统治。德国商人奥斯卡·辛德勒（连姆·尼森 Liam Neeson 饰）来到德军统治下的克拉科夫，开设了一间搪瓷厂，生产军需用品。凭着出众的社交能力和大量的金钱，辛德勒和德军建立了良好的关系，他的工厂雇用犹太人工作，大发战争财。
　　1943年，克拉科夫的犹太人遭到了惨绝人寰的大屠杀，辛德勒目睹这一切，受到了极大的震撼，他贿赂军官，让自己的工厂成为集中营的附属劳役营，在那些疯狂屠杀的日子里，他的工厂也成为了犹太人的避难所。
　　1944年，德国战败前夕，屠杀犹太人的行动越发疯狂，辛德勒向德军军官开出了1200人的名单，倾家荡产买下了这些犹太人的生命。在那些暗无天日的岁月里，拯救一个人，就是拯救全世界。',2,'史蒂文·斯皮尔伯格','托马斯·肯尼利 / 斯蒂文·泽里安','吕艳婷 / 囧森瑟夫 / 瀚墨 / 陈浩 / 绿绮',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1461851991.jpg',9.3);
INSERT INTO `Movie` VALUES (15,'盗梦空间','2010-09-01(中国大陆) / 2010-07-16(美国)','道姆·柯布（莱昂纳多·迪卡普里奥 Leonardo DiCaprio 饰）与同事阿瑟（约瑟夫·戈登-莱维特 Joseph Gordon-Levitt 饰）和纳什（卢卡斯·哈斯 Lukas Haas 饰）在一次针对日本能源大亨齐藤（渡边谦 饰）的盗梦行动中失败，反被齐藤利用。齐藤威逼利诱因遭通缉而流亡海外的柯布帮他拆分他竞争对手的公司，采取极端措施在其唯一继承人罗伯特·费希尔（希里安·墨菲 Cillian Murphy 饰）的深层潜意识中种下放弃家族公司、自立门户的想法。为了重返美国，柯布偷偷求助于岳父迈尔斯（迈克尔·凯恩 Michael Caine 饰），吸收了年轻的梦境设计师艾里阿德妮（艾伦·佩吉 Ellen Page 饰）、梦境演员艾姆斯（汤姆·哈迪 Tom Hardy 饰）和药剂师约瑟夫（迪利普·劳 Dileep Rao 饰）加入行动。在一层层递进的梦境中，柯布不仅要对付费希尔潜意识的本能反抗，还必须直面已逝妻子梅尔（玛丽昂·歌迪亚 Marion Cotillard 饰）的处处破坏，实际情况远比预想危险得多……',2,'克里斯托弗·诺兰','克里斯托弗·诺兰',' 莱昂纳多·迪卡普里奥 / 约瑟夫·高登-莱维特 / 艾伦·佩吉 / 汤姆·哈迪 / 渡边谦 ',10,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p513344864.jpg',9.3);
INSERT INTO `Movie` VALUES (16,'机器人总动员',' 2008-06-27(美国)','公元2805年，人类文明高度发展，却因污染和生活垃圾大量增加使得地球不再适于人类居住。地球人被迫乘坐飞船离开故乡，进行一次漫长无边的宇宙之旅。临行前他们委托Buynlarge的公司对地球垃圾进行清理，该公司开发了名为WALL·E（Waste Allocation Loa d Lifters – Earth 地球废品分装员）的机器人担当此重任。
　　这些机器人按照程序日复一日、年复一年辛勤工作，但随着时间的流逝和恶劣环境的侵蚀，WALL·E们接连损坏、停止运动。最后只有一个仍在进行这项似乎永无止境的工作。经历了漫长的岁月，它开始拥有了自己的意识。它喜欢将收集来的宝贝小心翼翼藏起，喜欢收工后看看几百年前的歌舞片，此外还有一只蟑螂朋友作伴。直到有一天，一艘来自宇宙的飞船打破了它一成不变的生活……
　　本片荣获2009年第81届奥斯卡最佳动画长片奖。',2,'安德鲁·斯坦顿','安德鲁·斯坦顿 / 吉姆·里尔顿 / 彼特·道格特',' 本·贝尔特 / 艾丽莎·奈特 / 杰夫·格尔林 / 佛莱德·威拉特 / 西格妮·韦弗',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2549177902.jpeg',8.9);
INSERT INTO `Movie` VALUES (17,'星际穿越','2014-11-12(中国大陆) / 2014-11-07(美国)','近未来的地球黄沙遍野，小麦、秋葵等基础农作物相继因枯萎病灭绝，人类不再像从前那样仰望星空，放纵想象力和灵感的迸发，而是每日在沙尘暴的肆虐下倒数着所剩不多的光景。在家务农的前NASA宇航员库珀（马修·麦康纳 Matthew McConaughey 饰）接连在女儿墨菲（麦肯吉·弗依 Mackenzie Foy 饰）的书房发现奇怪的重力场现象，随即得知在某个未知区域内前NASA成员仍秘密进行一个拯救人类的计划。多年以前土星附近出现神秘虫洞，NASA借机将数名宇航员派遣到遥远的星系寻找适合居住的星球。在布兰德教授（迈克尔·凯恩 Michael Caine 饰）的劝说下，库珀忍痛告别了女儿，和其他三名专家教授女儿艾米莉亚·布兰德（安妮·海瑟薇 Anne Hathaway 饰）、罗米利（大卫·吉雅西 David Gyasi 饰）、多伊尔（韦斯·本特利 Wes Bentley 饰）搭乘宇宙飞船前往目前已知的最有希望的三颗星球考察。
　　他们穿越遥远的星系银河，感受了一小时七年光阴的沧海桑田，窥见了未知星球和黑洞的壮伟与神秘。在浩瀚宇宙的绝望而孤独角落，总有一份超越了时空的笃定情怀将他们紧紧相连……',3,'克里斯托弗·诺兰',' 乔纳森·诺兰 / 克里斯托弗·诺兰',' 马修·麦康纳 / 安妮·海瑟薇 / 杰西卡·查斯坦 / 卡西·阿弗莱克 / 迈克尔·凯恩',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2206088801.jpg',9.3);
INSERT INTO `Movie` VALUES (18,'大话西游之大圣娶亲 西遊記大結局之仙履奇緣','1995-02-04(中国香港) / 2014-10-24(中国大陆) / 2017-04-13(中国大陆重映)','至尊宝（周星驰 饰）被月光宝盒带回到五百年前，遇见紫霞仙子（朱茵 饰），被对方打上烙印成为对方的人，并发觉自己已变成孙悟空。
　　紫霞与青霞（朱茵 饰）本是如来佛祖座前日月神灯的灯芯（白天是紫霞，晚上是青霞），二人虽然同一肉身却仇恨颇深，因此紫霞立下誓言，谁能拔出她手中的紫青宝剑，谁就是她的意中人。紫青宝剑被至尊宝于不经意间拔出，紫霞决定以身相许，却遭一心记挂白晶晶（莫文蔚 饰）的至尊宝拒绝。后牛魔王救下迷失在沙漠中的紫霞，并逼紫霞与他成婚，关键时刻，至尊宝现身。',3,'刘镇伟','刘镇伟',' 周星驰 / 吴孟达 / 朱茵 / 蔡少芬 / 蓝洁瑛',10,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2455050536.jpg',9.2);
INSERT INTO `Movie` VALUES (19,'龙猫',' 2018-12-14(中国大陆) / 1988-04-16(日本)','小月的母亲生病住院了，父亲带着她与四岁的妹妹小梅到乡间的居住。她们对那里的环境都感到十分新奇，也发现了很多有趣的事情。她们遇到了很多小精灵，她们来到属于她们的环境中，看到了她们世界中很多的奇怪事物，更与一只大大胖胖的龙猫成为了朋友。龙猫与小精灵们利用他们的神奇力量，为小月与妹妹带来了很多神奇的景观，令她们大开眼界。
　　妹妹小梅常常挂念生病中的母亲，嚷着要姐姐带着她去看母亲，但小月拒绝了。小梅竟然自己前往，不料途中迷路了，小月只好寻找她的龙猫及小精灵朋友们帮助。',3,'宫崎骏','宫崎骏',' 日高法子 / 坂本千夏 / 糸井重里 / 岛本须美 / 北林谷荣 ',10,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2540924496.jpg',9.2);
INSERT INTO `Movie` VALUES (20,'教父','1972-03-15(纽约首映) / 1972-03-24(美国)','40年代的美国，“教父”维托·柯里昂（马龙·白兰度 饰）是黑手党柯里昂家族的首领，带领家族从事非法的勾当，但同时他也是许多弱小平民的保护神，深得人们爱戴。
　　因为拒绝了毒枭索洛索的毒品交易要求，柯里昂家族和纽约其他几个黑手党家族的矛盾激化。圣诞前夕，索洛索劫持了“教父”的参谋汤姆，并派人暗杀“教父”；因为内奸的出卖，“教父”的大儿子逊尼被仇家杀害；小儿子麦克（阿尔·帕西诺 饰）也被卷了进来，失去爱妻。黑手党家族之间的矛盾越来越白热化。
　　年老的“教父”面对丧子之痛怎样统领全局？黑手党之间的仇杀如何落幕？谁是家族的内奸？谁又能够成为新一代的“教父”？
　　血雨腥风和温情脉脉，在这部里程碑式的黑帮史诗巨片里真实上演。',3,'弗朗西斯·福特·科波拉',' 马里奥·普佐 / 弗朗西斯·福特·科波拉',' 马龙·白兰度 / 阿尔·帕西诺 / 詹姆斯·肯恩 / 理查德·卡斯特尔诺 / 罗伯特·杜瓦尔 ',10,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p616779645.jpg',9.3);
INSERT INTO `Movie` VALUES (21,'蝙蝠侠：黑暗骑士','2008-07-14(纽约首映) / 2008-07-18(美国)','从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着，毕竟对方是能够上天入地的“蝙蝠侠”，不借两个胆子谁还敢造次呢？不过像高谭这种科技与污秽并存的城市，平静是不可能维持太久的，果不其然，新一轮的混乱很快就席卷了整个城市，人们再一被被恐慌所笼罩着，而声称愿意为这一切负责的，自然就是所有混乱的源头以及支配者--“小丑”了。
　　先不管“小丑”掀起一个又一个犯罪的狂潮的最终目的为何，他的企图都是邪恶的，所作所为更是早就危害到了高谭市民的正常生活……其中自然包括了“蝙蝠侠”身边几个非常重要的人，而他需要做的，就是将这股新的危机全部亲自用手捏得粉碎。然而在面对着这个有史以来最具针对性、最恶毒的对手时，“蝙蝠侠”却不得不从他的地下军械库里搬出每一件能够用得上的高科技武器，还得时刻纠结着为他曾经信仰的一切寻找答案。',1,'克里斯托弗·诺兰','乔纳森·诺兰 / 克里斯托弗·诺兰 / 大卫·S·高耶' ,' 克里斯蒂安·贝尔 / 希斯·莱杰 / 艾伦·艾克哈特 / 迈克尔·凯恩 / 玛吉·吉伦哈尔',0,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p462657443.jpg',9.2);
INSERT INTO `Movie` VALUES (22,'活着','1994-06-30(中国香港) / 1994-05-17(戛纳电影节)','根据余华同名小说改编。
　　富少福贵（葛优）嗜赌成性，妻子家珍（巩俐）屡劝无果后带着女儿凤霞离开了他，当夜，福贵输光所有家产气死父亲，被迫靠变卖母亲首饰租间破屋过活。一年后，家珍手拉凤霞怀抱刚出世的儿子有庆回到家中，福贵痛改前非，开始靠演皮影戏过起安份守己的日子。
　　但好景不常，内战时期，福贵被国民党抓去当劳工，一番辗转终回到家乡与一家人团圆后，凤霞因病变成哑巴，而在后来的大跃进运动和文化大革命中，他虽获某些小福，逆境却也一直与他如影相随。',1,'张艺谋','芦苇 / 余华',' 葛优 / 巩俐 / 姜武 / 牛犇 / 郭涛',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2513253791.jpg',9.2);
INSERT INTO `Movie` VALUES (23,'乱世佳人','1939-12-15(亚特兰大首映) / 1940-01-17(美国)','美国南北战争前夕，南方农场塔拉庄园的千金斯嘉丽（费雯·丽 Vivien Leigh 饰）爱上了另一个农场主的儿子艾希礼（莱斯利·霍华德 Leslie Howard 饰），遭到了拒绝，为了报复，她嫁给了自己不爱的男人，艾希礼妻子梅兰（奥利维娅·德哈维兰 Olivia de Havilland 饰）的弟弟查尔斯。
　　战争期间，斯嘉丽成为寡妇，失去母亲，挑起生活的重担， 不再是当初的千金小姐；战争结束后，她又两度为人妻，嫁给了爱她多年的投机商人瑞德（克拉克·盖博 Clark Gable 饰）。
　　然而，纵使经历了生活的艰苦，斯嘉丽对艾希礼的感情仍然没有改变。艾希礼妻子梅兰的去世，给了斯嘉丽一个机会，一边是深爱自己的丈夫瑞德，一边是心心念念多年的艾希礼？斯嘉丽会给自己怎样一个不一样的明天？',1,'维克多·弗莱明 / 乔治·库克 / 山姆·伍德','玛格丽特·米歇尔 / 西德尼·霍华德 / 奥利弗·H·P·加勒特 / 本·赫克特 / 乔·斯沃林 / 约翰·范·德鲁登','费雯·丽 / 克拉克·盖博 / 奥利维娅·德哈维兰 / 托马斯·米切尔 / 芭芭拉·欧内尔',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1963126880.jpg',9.3);
INSERT INTO `Movie` VALUES (24,'摔跤吧！爸爸 ',' 2017-05-05(中国大陆) / 2016-12-23(印度)','马哈维亚（阿米尔·汗 Aamir Khan 饰）曾经是一名前途无量的摔跤运动员，在放弃了职业生涯后，他最大的遗憾就是没有能够替国家赢得金牌。马哈维亚将这份希望寄托在了尚未出生的儿子身上，哪知道妻子接连给他生了两个女儿，取名吉塔（法缇玛·萨那·纱卡 Fatima Sana Shaikh 饰）和巴比塔（桑亚·玛荷塔 Sanya Malhotra 饰）。让马哈维亚没有想到的是，两个姑娘展现出了杰出的摔跤天赋，让他幡然醒悟，就算是女孩，也能够昂首挺胸的站在比赛场上，为了国家和她们自己赢得荣誉。
　　就这样，在马哈维亚的指导下，吉塔和巴比塔开始了艰苦的训练，两人进步神速，很快就因为在比赛中连连获胜而成为了当地的名人。为了获得更多的机会，吉塔进入了国家体育学院学习，在那里，她将面对更大的诱惑和更多的选择。',2,'涅提·蒂瓦里','比于什·古普塔 / 施热亚·简 / 尼基尔·麦罗特拉 / 涅提·蒂瓦里',' 阿米尔·汗 / 法缇玛·萨那·纱卡 / 桑亚·玛荷塔 / 阿帕尔夏克提·库拉那 / 沙克希·坦沃 /',10,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg',9.0);
INSERT INTO `Movie` VALUES (25,'少年派的奇幻漂流','2012-11-22(中国大陆) / 2012-09-28(纽约电影节) / 2012-11-21(美国)','故事开始于蒙特娄，也结束于蒙特娄。一名在找寻灵感的作家（拉菲·斯波 Rafe Spall 饰）无意间得知派·帕帖尔（伊尔凡·可汗 Irrfan Khan 饰）的传奇故事。派的父亲（阿迪勒·侯赛因 Adil Hussain 饰）开了一家动物园。因这样特殊的生活环境，少年派（苏拉·沙玛 Suraj Sharma 饰 ）对信仰与人的本性自有一套看法。在派17岁那一年，他的父母决定举家移民加拿大以追求更好的生活，而他也必须离开他的初恋情人。在前往加拿大的船上，他们遇见一位残忍成性的法国厨师（杰拉尔·德帕迪约 Gérard Depardieu 饰）。当天深夜在茫茫大海中，原本令派感到刺激无比的暴风雨一瞬间就成了吞噬货船的大灾难。派却奇迹般地活了下来，搭着救生船在太平洋上漂流，而且有一名最令人意想不到的同伴——理查德·帕克，一只孟加拉老虎。神奇的冒险旅程就这样意外开始了……',2,'李安','扬·马特尔 / 大卫·麦基',' 苏拉·沙玛 / 伊尔凡·可汗 / 拉菲·斯波 / 阿迪勒·侯赛因 / 塔布',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1784592701.jpg',9.1);
INSERT INTO `Movie` VALUES (26,'飞屋环游记 Up',' 2009-08-04(中国大陆) / 2009-05-13(戛纳电影节) / 2009-05-29(美国)','小男孩卡尔（Carl Fredricksen）怀揣着对于冒险的热爱偶遇假小子艾丽（Ellie），而艾丽把整个屋子当成一艘大飞船游戏居然使他对这个女孩子有些着迷，相同的爱好最终使两个人成为了一生的爱侣。
　　他们有一个梦想，那就是有朝一日要去南美洲的“仙境瀑布”探险，但直到艾丽去世，这个梦想也未能实现。终于有一天，曾经专卖气球的老人卡尔居然用五颜六色的气球拽着他的房子飞上了天空，他决定要去实现他们未曾实现的梦想。令卡尔始料不及的是，门廊居然搭上了一个自称是“荒野开拓者”的小男孩小罗（Russell），小罗的喋喋不休让卡尔对这个小胖墩格外讨厌。
　　一老一少在飞行中经过了千难万险终于看到了传说中的“仙境瀑布”，在相处过程中卡尔发现小罗其实是个惹人怜爱的孩子。在步行穿越一座森林时，他们遇到了不会飞的大鸟凯文（Kevin）和一只会说话的狗狗逗逗（Dug），让老人惊讶的是他们还遇到了他少年的崇拜偶像——探险家查尔斯·蒙兹（Charles Muntz），而且他发现蒙兹居然是一个为达目的不择手段的坏人。这时，老人离自己的梦想之地只有一步之遥……
　　本片荣获第82届奥斯卡最佳动画长片、最佳配乐2项大奖。',2,' 彼特·道格特 / 鲍勃·彼德森',' 彼特·道格特 / 鲍勃·彼德森 / 汤姆·麦卡锡',' 爱德华·阿斯纳 / 克里斯托弗·普卢默 / 乔丹·长井 / 鲍勃·彼德森 / 德尔罗伊·林多',10,'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p485887754.jpg',9.0);
INSERT INTO `Movie` VALUES (27,'哈尔的移动城堡','2004-09-05(威尼斯电影节) / 2004-11-20(日本)','继母因无力负担生活，将苏菲和她的两个妹妹都送到了制帽店去当学徒。两个妹妹很快先后就离开了制帽店去追寻各自的梦想，只有苏菲坚持了下来。一天，小镇旁边来了一座移动堡垒，传说堡垒的主人哈尔专吸取年青姑娘的灵魂，所以小镇的姑娘都不敢靠近。
　　一个恶毒的巫婆为了报复苏菲与哈尔见面，用巫术把她变成了一个80岁的老太婆，而且苏菲还不能对别人说出自己身中的巫术。无奈，苏菲决定独自一人逃离小镇。天黑了，虚弱的苏菲没走多远，来到了移动城堡。心想自己已经是老太婆了，苏菲壮着胆子走进了城堡。不想，遇到了和她遭遇相同的火焰魔。两人约定彼此帮助对方打破各自的咒语……',3,'宫崎骏',' 宫崎骏 / 吉田玲子 / 黛安娜·温恩·琼斯',': 倍赏千惠子 / 木村拓哉 / 美轮明宏 / 我修院达也 / 神木隆之介',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2174346180.jpg',9.1);
INSERT INTO `Movie` VALUES (28,'大话西游之月光宝盒','1995-01-21(中国香港) / 2014-10-24(中国大陆)','孙悟空（周星驰）护送唐三藏（罗家英）去西天取经路上，与牛魔王合谋欲杀害唐三藏，并偷走了月光宝盒，此举使观音萌生将其铲除心思，经唐三藏请求，孙悟空被判五百年后重新投胎做人赎其罪孽。
　　五百年后孙悟空化身强盗头头至尊宝。当遇见预谋吃唐僧肉的妖怪姐妹蜘蛛精春三十娘（蓝洁瑛）和白骨精白晶晶（莫文蔚）时，因为五百年前孙悟空曾与白晶晶有过一段恋情，至尊宝与她一见钟情，但因菩提老祖将二人妖怪身份相告，至尊宝仍带领众强盗开始与二妖展开周旋，过程中，白晶晶为救至尊宝打伤春三十娘，自己也中毒受伤，为了救白晶晶，至尊宝去找春三十娘，遭白晶晶误会，绝望自杀，至尊宝开始用月光宝盒以期使时光倒流。',3,' 刘镇伟',' 刘镇伟 / 吴承恩',' 周星驰 / 吴孟达 / 罗家英 / 蓝洁瑛 / 莫文蔚 ',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561721372.jpg',9.0);
INSERT INTO `Movie` VALUES (29,'指环王1：魔戒再现','2002-04-04(中国大陆) / 2001-12-19(美国)','比尔博•巴金斯是100多岁的哈比人，住在故乡夏尔，生性喜欢冒险，在年轻时的一次探险经历中，他从怪物咕噜手中得到了至尊魔戒，这枚戒指是黑暗魔君索伦打造的至尊魔戒，拥有奴役世界的邪恶力量，能够统领其他几枚力量之戒，在3000年前的人类联盟和半兽人大军的战役中，联盟取得了胜利 ，并得到了至尊魔戒，数千年的辗转后，魔戒落到咕噜手中，被比尔博碰巧得到。
　　因为和魔戒的朝夕相处，比尔博的心性也受到了影响，在他111岁的生日宴会上，他决定把一切都留给侄子佛罗多(伊莱贾‧伍德 饰)，继续冒险。
　　比尔博的好朋友灰袍巫师甘道夫（伊恩‧麦凯伦 饰）知道至尊魔戒的秘密，同时，黑暗魔君索伦已经知道他的魔戒落在哈比族的手中。索伦正在重新建造要塞巴拉多，集结无数的半兽人，准备以大军 夺取魔戒，并且征服全世界。
　　甘道夫说服佛罗多将魔戒护送到精灵王国瑞文希尔，佛罗多在好朋友山姆、皮平和梅利的陪同下，在跃马旅店得到了刚铎王子阿拉贡的帮助，历经艰难，终于到达了精灵王国。
　　然而，精灵族并不愿意保管这个邪恶的至尊魔戒，中土各国代表开会讨论，达成意见，准备将至尊魔戒送到末日山脉的烈焰中彻底销毁，佛罗多挺身而出接受了这个任务，这次，陪伴他的除了三个好朋友，还有甘道夫、阿拉贡、精灵莱戈拉斯（奥兰多‧布鲁姆 饰）、人类博罗米尔、侏儒金利。
　　一路上，魔戒远征军除了要逃避索伦爪牙黑骑士和半兽人的追杀之外，更要抵抗至尊魔戒本身的邪恶诱惑，前途困难重重。',3,' 彼得·杰克逊',' 弗兰·威尔士 / 菲利帕·鲍恩斯 / 彼得·杰克逊 / J·R·R·托尔金',' 伊利亚·伍德 / 西恩·奥斯汀 / 伊恩·麦克莱恩 / 奥兰多·布鲁姆 / 维果·莫腾森 ',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1354436051.jpg',9.0);
INSERT INTO `Movie` VALUES (30,'美丽心灵','2001-12-13(加州首映) / 2002-01-04(美国)','本片是关于20世纪伟大数学家小约翰•福布斯-纳什的人物传记片。
　　小约翰•福布斯-纳什（拉塞尔•克劳）在念研究生时，便发表了著名的博弈理论，该理论虽只有短短26页，却在经济、军事等领域产生了深远的影响。但就在小约翰•福布斯-纳什蜚声国际时，他的出众直觉因为精神分裂症受到困扰，然而这并没阻止他向学术上的最高层进军的步伐，在深爱他的妻子艾丽西亚（珍妮弗•康纳利）的鼓励和帮助下，他走得虽然艰缓，却始终没有停步，而最终，凭借十几年的不懈努力和顽强意志，他如愿以偿。',3,'朗·霍华德',' 阿齐瓦·高斯曼 / 西尔维娅·纳萨尔',' 罗素·克劳 / 艾德·哈里斯 / 詹妮弗·康纳利 / 克里斯托弗·普卢默 / 保罗·贝坦尼 / ',10,'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1665997400.jpg',9.0);

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
  `watch_time` varchar(255) DEFAULT NULL,
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
                        `userImg` varchar(255) NOT NULL,
                        `openId` varchar(255) DEFAULT NULL,
                        `sessionKey` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `User`
--

BEGIN;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES(3,'我i67QAQ','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','wdnmd','zbc');
INSERT INTO `User` VALUES(5,'代码敲不对','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','wdnmd','zbc');
INSERT INTO `User` VALUES(8,'我靠，家暴吗','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','wdnmd','zbc');
INSERT INTO `User` VALUES(9,'拒绝秃头','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','wdnmd','zbc');
INSERT INTO `User` VALUES(10,'起飞','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','wdnmd','zbc');
INSERT INTO `User` VALUES(11,'皮革厂 ','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','wdnmd','zbc');
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
-- Dumping data for table `Expect`
--

BEGIN;
/*!40000 ALTER TABLE `Expect` DISABLE KEYS */;
INSERT INTO `Expect` VALUES(1,2,3,'我i67QAQ','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',105.739203,34.571483);
INSERT INTO `Expect` VALUES(2,2,4,'RTW是个狠人','https://gw.alipayobjects.com/zos/rmsportal/JiqGstEfoWAOHiTxclqi.png',105.727315,34.585687);
INSERT INTO `Expect` VALUES(3,2,5,'代码敲不对','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',118.959447,32.119986);
INSERT INTO `Expect` VALUES(4,3,3,'我i67QAQ','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',105.739203,34.571483);
INSERT INTO `Expect` VALUES(5,3,8,'我靠，家暴吗','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',120.879295,32.030403);
INSERT INTO `Expect` VALUES(6,1,9,'拒绝秃头','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',120.696819,27.982336);
INSERT INTO `Expect` VALUES(7,1,10,'起飞','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',120.629023,31.321991);
INSERT INTO `Expect` VALUES(8,1,11,'皮革厂 ','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png',115.850137,28.693477);
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
                           `favor` int(11) DEFAULT 0,
                           `create_time` varchar(255) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reply`
--

BEGIN;
/*!40000 ALTER TABLE `Reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reply` ENABLE KEYS */;
COMMIT;


--
-- Table structure for table `Sign`
--
DROP TABLE IF EXISTS `Sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sign` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `user_id` int(11) DEFAULT NULL,
                         `s_year` int(11) DEFAULT NULL,
                         `s_month` int(11) DEFAULT NULL,
                         `s_day` int(11) DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Check`
--

BEGIN;
/*!40000 ALTER TABLE `Sign` DISABLE KEYS */;
INSERT INTO `Sign` VALUES(1,3,2020,6,18);
INSERT INTO `Sign` VALUES(2,3,2020,6,19);
INSERT INTO `Sign` VALUES(3,3,2020,6,20);
INSERT INTO `Sign` VALUES(4,3,2020,6,21);
/*!40000 ALTER TABLE `Sign` ENABLE KEYS */;
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