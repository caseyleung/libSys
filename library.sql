/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 28/04/2022 20:50:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` bigint(0) NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '123456', 'admin');

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `book_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ISBN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `language` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `pub_date` date NOT NULL,
  `book_class` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE,
  INDEX `fk_class_id`(`book_class`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, '死亡赋格', '保罗·策兰 ', '北京联合出版公司', '9787559636041 ', '保罗•策兰是二十世纪下半叶以来最具影响力的德语诗人。策兰的父母丧生于纳粹集中营，本人则历经磨难，在流亡中背负着沉重的记忆进行写作。策兰的诗深受法国超现实主义影响，充斥着奇崛的意象，主题则刻上了深沉且强烈的情感印记，以艰涩的语言和精妙的结构编织韵律感。他用诗歌为所有文学打开了在面对巨大丧失时坚持说话的可能性。', '中文', 65.00, '2021-01-21', '哲学', 9);
INSERT INTO `book_info` VALUES (2, '我们为什么要睡觉？', '[英] 马修·沃克', '北京联合出版公司', '9787559648600 ', '你认为自己最近睡眠充足吗？你还记得上一次自然醒后神清气爽的感觉吗？不用怀疑，我们正在进入一个失眠已经成为流行病的时代。作为一名杰出的神经科学家，沃克对生物的睡眠行为充满好奇，这促使他成了睡眠研究方面的专家。本书中，他总结了人类有史以来的睡眠研究成果，以及前沿的科学突破，告诉我们睡眠的运行机制、睡眠不足的坏处、睡眠与做梦的有益功能，以及睡眠对专业人士个人能力提升的惊人影响。我们的身体健康、心理健康、情商智商、记忆力、运动力、学习力、生产力、创造力、吸引力，甚至食欲，这些让日间生活丰富多彩的能力，原来都与夜间那场睡眠有着密不可分的关系。', '中文', 69.00, '2019-01-06', '经济', 10);
INSERT INTO `book_info` VALUES (3, '天生有罪', '[南非] 特雷弗·诺亚 ', '北京联合出版公司', '9787559614056 ', '“生而有罪”的崔那娃讲述贫民窟的成长经历 小崔出生在种族隔离制度下的南非，其父母属于跨种族结合，因此他生下来就犯了罪，再加上他从小生活在贫民窟，似乎注定要走上一条犯罪道路。然而，倔强的小崔与伟大的母亲凭借着幽默、乐观与智慧，最终摆脱了暴力与贫穷的怪圈，从南非的贫民窟走向了世界的舞台。', '中文', 58.00, '2017-04-03', '人物自传', 5);
INSERT INTO `book_info` VALUES (4, '你当像鸟飞往你的山', '[美] 塔拉·韦斯特弗', '南海出版公司', '9787544276986 ', '人们只看到我的与众不同：一个十七岁前从未踏入教室的大山女孩，却戴上一顶学历的高帽，熠熠生辉。只有我知道自己的真面目：我来自一个极少有人能想象的家庭。我的童年由垃圾场的废铜烂铁铸成，那里没有读书声，只有起重机的轰鸣。不上学，不就医，是父亲要我们坚持的忠诚与真理。父亲不允许我们拥有自己的声音，我们的意志是他眼中的恶魔。哈佛大学，剑桥大学，哲学硕士，历史博士……我知道，像我这样从垃圾堆里爬出来的无知女孩，能取得如今的成就，应当感激涕零才对。但我丝毫提不起热情。我曾怯懦、崩溃、自我怀疑，内心里有什么东西腐烂了，恶臭熏天。直到我逃离大山，打开另一个世界。那是教育给我的新世界，那是我生命的无限可能。', '中文', 59.00, '2019-05-05', '人物自传', 10);
INSERT INTO `book_info` VALUES (5, '人类简史', '[以色列] 尤瓦尔·赫拉利 ', '中信出版社', '9787508647357', '十万年前，地球上至少有六种不同的人。但今日，世界舞台为什么只剩下了我们自己？从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，从认知革命、农业革命，到科学革命、生物科技革命，我们如何登上世界舞台成为万物之灵的？从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，从帝国主义、资本主义，到自由主义、消费主义，从兽欲，到物欲，从兽性、人性，到神性，我们了解自己吗？我们过得更快乐吗？我们究竟希望自己得到什么、变成什么？', '英文', 68.00, '2014-11-01', '历史', 10);
INSERT INTO `book_info` VALUES (6, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。', '中文', 358.20, '2009-04-06', '历史', 10);
INSERT INTO `book_info` VALUES (7, '经济学原理（上下）', '[美] 曼昆 ', '机械工业出版社', '9787111126768', '此《经济学原理》的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。', '英文', 88.00, '2003-08-05', '经济', 8);
INSERT INTO `book_info` VALUES (8, '方向', '马克-安托万·马修 ', '后浪丨北京联合出版公司', '9787020125265', '《方向》即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。', '中文', 99.80, '2017-04-01', '文学', 8);
INSERT INTO `book_info` VALUES (9, '画的秘密', '马克-安托万·马修 ', '北京联合出版公司·后浪出版公司', '9787550265608', ' 一本关于友情的疗伤图像小说，直击人内心最为隐秘的情感。 一部追寻艺术的纸上悬疑电影，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。', '中文', 60.00, '2016-01-01', '文学', 9);
INSERT INTO `book_info` VALUES (10, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859', '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...', '中文', 39.50, '2017-06-01', '文学', 10);
INSERT INTO `book_info` VALUES (11, '控方证人', '阿加莎·克里斯蒂 ', '新星出版社', '9787513325745', '经典同名话剧六十年常演不衰； 比利•怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德•沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。', '中文', 35.00, '2017-05-01', '艺术', 9);
INSERT INTO `book_info` VALUES (12, '少有人走的路', 'M·斯科特·派克 ', '吉林文史出版社', '9787807023777', '这本书处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。', '中文', 26.00, '2007-01-01', '文学', 9);
INSERT INTO `book_info` VALUES (13, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734', '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。', '中文', 12.00, '2003-01-01', '文学', 10);
INSERT INTO `book_info` VALUES (14, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585', '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！', '中文', 42.00, '2015-06-01', '文学', 10);
INSERT INTO `book_info` VALUES (15, '高性能MySQL(第3版)', '施瓦茨 (Baron Schwartz)', '电子工业出版社', '9787121198854 ', '《高性能mysql(第3版)》是mysql 领域的经典之作，拥有广泛的影响力。第3 版更新了大量的内容，不但涵盖了最新mysql 5.5版本的新特性，也讲述了关于固态盘、高可扩展性设计和云计算环境下的数据库相关的新内容，原有的基准测试和性能优化部分也做了大量的扩展和补充。全书共分为16 章和6 个附录，内容涵盖mysql 架构和历史，基准测试和性能剖析，数据库软硬件性能优化，复制、备份和恢复，高可用与高可扩展性，以及云端的mysql 和mysql相关工具等方面的内容。每一章都是相对独立的主题，读者可以有选择性地单独阅读。', '中文', 128.00, '2013-05-01', '计算机', 8);
INSERT INTO `book_info` VALUES (16, 'Redis设计与实现', '黄健宏 ', '机械工业出版社', '9787111464747 ', '本书全面而完整地讲解了Redis的内部机制与实现方式，对Redis的大多数单机功能以及所有多机功能的实现原理进行了介绍，展示了这些功能的核心数据结构以及关键的算法思想,图示丰富，描述清晰，并给出大量参考信息。通过阅读本书，读者可以快速、有效地了解Redis的内部构造以及运作机制，更好、更高效地使用Redis。', '中文', 79.00, '2014-06-01', '计算机', 10);
INSERT INTO `book_info` VALUES (17, '小王子', '[法国] 安东尼·德·圣-埃克苏佩里', '人民文学出版社', '9787020042494', '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行星，开始了遨游太空的旅行。他先后访问了六个行星，各种见闻使他陷入忧伤，他感到大人们荒唐可笑、太不正常。只有在其中一个点灯人的星球上，小王子才找到一个可以作为朋友的人。但点灯人的天地又十分狭小，除了点灯人他自己，不能容下第二个人。在地理学家的指点下，孤单的小王子来到人类居住的地球。小王子发现人类缺乏想象力，只知像鹦鹉那样重复别人讲过的话。小王子这时越来越思念自己星球上的那枝小玫瑰。后来，小王子遇到一只小狐狸，小王子用耐心征服了小狐狸，与它结成了亲密的朋友。小狐狸把自己心中的秘密——肉眼看不见事务的本质，只有用心灵才能洞察一切——作为礼物，送给小王子。用这个秘密，小王子在撒哈拉大沙漠与遇险的飞行员一起找到了生命的泉水。最后，小王子在蛇的帮助下离开地球，重新回到他的B612号小行星上。童话描写小王子没有被成人那骗人的世界所征服，而最终找到自己的理想。这理想就是连结宇宙万物的爱，而这种爱又是世间所缺少的。因此，小王子常常流露出一种伤感的情绪。作者圣埃克絮佩里在献辞中说：这本书是献给长成了大人的从前那个孩子。《小王子》不仅赢得了儿童读者，也为成年人所喜爱，作品凝练的语言渗透了作者对人类及人类文明深邃的思索。它所表现出的讽刺与幻想，真情与哲理，使之成为法国乃至世界上最为著名的一部童话小说。', '中文', 22.00, '2003-08-01', '文学', 20);

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `class_id` int(0) NOT NULL,
  `class_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES (1, '马克思主义');
INSERT INTO `class_info` VALUES (2, '哲学');
INSERT INTO `class_info` VALUES (3, '社会科学总论');
INSERT INTO `class_info` VALUES (4, '政治法律');
INSERT INTO `class_info` VALUES (5, '军事');
INSERT INTO `class_info` VALUES (6, '经济');
INSERT INTO `class_info` VALUES (7, '文化');
INSERT INTO `class_info` VALUES (8, '语言');
INSERT INTO `class_info` VALUES (9, '文学');
INSERT INTO `class_info` VALUES (10, '艺术');
INSERT INTO `class_info` VALUES (11, '历史地理');
INSERT INTO `class_info` VALUES (12, '自然科学总论');
INSERT INTO `class_info` VALUES (13, ' 数理科学和化学');
INSERT INTO `class_info` VALUES (14, '天文学、地球科学');
INSERT INTO `class_info` VALUES (15, '生物科学');
INSERT INTO `class_info` VALUES (16, '医药、卫生');
INSERT INTO `class_info` VALUES (17, '农业科学');
INSERT INTO `class_info` VALUES (18, '工业技术');
INSERT INTO `class_info` VALUES (19, '交通运输');
INSERT INTO `class_info` VALUES (20, '航空、航天');
INSERT INTO `class_info` VALUES (21, '环境科学');
INSERT INTO `class_info` VALUES (22, '综合');

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list`  (
  `ser_num` bigint(0) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(0) NOT NULL,
  `reader_id` bigint(0) NOT NULL,
  `lend_date` timestamp(0) NULL DEFAULT NULL,
  `back_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`ser_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES (1, 16, 10000, '2022-04-16 22:11:22', NULL);
INSERT INTO `lend_list` VALUES (2, 3, 10000, '2022-04-16 22:11:31', '2022-04-16');
INSERT INTO `lend_list` VALUES (3, 4, 10000, '2022-04-16 22:11:33', '2022-04-17');
INSERT INTO `lend_list` VALUES (19, 3, 10001, '2022-04-16 22:19:33', NULL);
INSERT INTO `lend_list` VALUES (20, 8, 10001, '2022-04-16 22:19:35', NULL);
INSERT INTO `lend_list` VALUES (21, 1, 10002, '2022-04-16 22:19:55', NULL);
INSERT INTO `lend_list` VALUES (22, 3, 10002, '2022-04-16 22:19:57', NULL);
INSERT INTO `lend_list` VALUES (23, 15, 10002, '2022-04-16 22:20:00', '2022-04-16');
INSERT INTO `lend_list` VALUES (24, 16, 10002, '2022-04-16 22:20:03', '2022-04-16');
INSERT INTO `lend_list` VALUES (25, 15, 10002, '2022-04-16 22:20:44', NULL);
INSERT INTO `lend_list` VALUES (26, 16, 10002, '2022-04-16 22:20:46', NULL);
INSERT INTO `lend_list` VALUES (27, 7, 10002, '2022-04-16 22:20:53', NULL);
INSERT INTO `lend_list` VALUES (28, 3, 10003, '2022-04-16 22:21:09', NULL);
INSERT INTO `lend_list` VALUES (29, 15, 10003, '2022-04-16 22:21:17', NULL);
INSERT INTO `lend_list` VALUES (30, 11, 10003, '2022-04-16 22:21:21', NULL);
INSERT INTO `lend_list` VALUES (31, 9, 10003, '2022-04-16 22:21:26', NULL);
INSERT INTO `lend_list` VALUES (32, 3, 10004, '2022-04-16 22:21:39', NULL);
INSERT INTO `lend_list` VALUES (33, 8, 10004, '2022-04-16 22:21:41', NULL);
INSERT INTO `lend_list` VALUES (34, 12, 10004, '2022-04-16 22:21:43', NULL);
INSERT INTO `lend_list` VALUES (35, 7, 10004, '2022-04-16 22:21:43', NULL);
INSERT INTO `lend_list` VALUES (36, 15, 10000, '2022-04-16 22:22:12', NULL);
INSERT INTO `lend_list` VALUES (37, 3, 10000, '2022-04-16 22:22:14', NULL);
INSERT INTO `lend_list` VALUES (38, 26, 10000, '2022-04-17 13:36:26', '2022-04-17');

-- ----------------------------
-- Table structure for reader_card
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card`  (
  `reader_id` bigint(0) NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader_card
-- ----------------------------
INSERT INTO `reader_card` VALUES (10000, '扎西次仁', '123456');
INSERT INTO `reader_card` VALUES (10001, '李双', '123456');
INSERT INTO `reader_card` VALUES (10002, '刘静', '123456');
INSERT INTO `reader_card` VALUES (10003, '张华', '123456');
INSERT INTO `reader_card` VALUES (10004, '丁一', '123456');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`  (
  `reader_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth` date NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10008 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info` VALUES (10000, '扎西次仁', '男', '2000-04-16', '西藏自治区那曲市', '13838383838');
INSERT INTO `reader_info` VALUES (10001, '李双', '男', '1999-02-01', '北京市', '12345678909');
INSERT INTO `reader_info` VALUES (10002, '刘静', '女', '1999-04-15', '浙江省杭州市', '12345678908');
INSERT INTO `reader_info` VALUES (10003, '张华', '男', '2001-08-29', '江苏省南京市', '12345678907');
INSERT INTO `reader_info` VALUES (10004, '丁一', '男', '2000-01-13', '上海市', '15123659875');

SET FOREIGN_KEY_CHECKS = 1;
