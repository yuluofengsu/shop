/*
 Navicat Premium Data Transfer

 Source Server         : wenfan
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 01/07/2024 17:33:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `manager` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `manager`(`manager`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'mm', 'mm');
INSERT INTO `admin` VALUES (2, '123', '123');

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version`  (
  `version_num` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('57aaa8e1f498');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_id` int(0) DEFAULT NULL,
  `user_id` int(0) DEFAULT NULL,
  `number` int(0) DEFAULT NULL,
  `addtime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `ix_cart_addtime`(`addtime`) USING BTREE,
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 59, 1, 1, '2018-10-31 14:29:40');
INSERT INTO `cart` VALUES (2, 59, 0, 1, '2018-10-31 14:30:46');
INSERT INTO `cart` VALUES (3, 59, 0, 1, '2018-10-31 14:31:48');
INSERT INTO `cart` VALUES (4, 59, 0, 1, '2018-10-31 14:32:06');
INSERT INTO `cart` VALUES (5, 59, 0, 1, '2018-10-31 14:34:34');
INSERT INTO `cart` VALUES (6, 59, 0, 1, '2018-10-31 14:34:44');
INSERT INTO `cart` VALUES (7, 59, 0, 5, '2018-10-31 14:35:00');
INSERT INTO `cart` VALUES (8, 59, 0, 1, '2018-10-31 14:38:46');
INSERT INTO `cart` VALUES (9, 60, 0, 1, '2018-10-31 14:39:00');
INSERT INTO `cart` VALUES (10, 60, 0, 3, '2018-10-31 14:39:21');
INSERT INTO `cart` VALUES (11, 46, 0, 0, '2018-10-31 14:45:31');
INSERT INTO `cart` VALUES (12, 46, 0, 0, '2018-10-31 14:47:45');
INSERT INTO `cart` VALUES (13, 48, 0, 0, '2018-10-31 14:51:03');
INSERT INTO `cart` VALUES (14, 46, 0, 0, '2018-10-31 14:51:10');
INSERT INTO `cart` VALUES (15, 47, 0, 0, '2018-10-31 14:51:58');
INSERT INTO `cart` VALUES (16, 46, 0, 0, '2018-10-31 14:52:17');
INSERT INTO `cart` VALUES (17, 58, 0, 1, '2018-10-31 14:53:38');
INSERT INTO `cart` VALUES (18, 59, 0, 1, '2018-10-31 15:42:02');
INSERT INTO `cart` VALUES (19, 58, 0, 1, '2018-10-31 15:50:09');
INSERT INTO `cart` VALUES (20, 53, 0, 1, '2018-10-31 15:51:06');
INSERT INTO `cart` VALUES (21, 50, 0, 1, '2018-10-31 15:51:12');
INSERT INTO `cart` VALUES (22, 51, 0, 1, '2018-10-31 16:01:23');
INSERT INTO `cart` VALUES (23, 51, 0, 2, '2018-10-31 16:01:29');
INSERT INTO `cart` VALUES (24, 51, 0, 1, '2018-10-31 16:05:18');
INSERT INTO `cart` VALUES (25, 56, 0, 3, '2018-10-31 16:05:30');
INSERT INTO `cart` VALUES (26, 57, 0, 1, '2018-10-31 16:05:57');
INSERT INTO `cart` VALUES (27, 3, 0, 1, '2018-10-31 16:21:02');
INSERT INTO `cart` VALUES (28, 58, 0, 1, '2018-10-31 16:22:46');
INSERT INTO `cart` VALUES (29, 3, 0, 1, '2018-10-31 16:24:54');
INSERT INTO `cart` VALUES (30, 3, 0, 1, '2018-10-31 16:25:42');
INSERT INTO `cart` VALUES (31, 3, 0, 1, '2018-10-31 16:25:46');
INSERT INTO `cart` VALUES (32, 2, 0, 1, '2018-10-31 16:25:51');
INSERT INTO `cart` VALUES (33, 58, 0, 1, '2018-10-31 16:25:56');
INSERT INTO `cart` VALUES (34, 60, 0, 1, '2018-10-31 16:26:00');
INSERT INTO `cart` VALUES (35, 56, 0, 1, '2018-10-31 16:26:05');
INSERT INTO `cart` VALUES (36, 54, 0, 1, '2018-10-31 16:26:11');
INSERT INTO `cart` VALUES (37, 35, 0, 1, '2018-10-31 16:26:17');
INSERT INTO `cart` VALUES (38, 46, 0, 1, '2018-10-31 16:26:43');
INSERT INTO `cart` VALUES (39, 2, 0, 1, '2018-10-31 16:52:00');
INSERT INTO `cart` VALUES (40, 58, 0, 1, '2018-10-31 17:57:57');
INSERT INTO `cart` VALUES (41, 58, 0, 1, '2018-10-31 17:59:48');
INSERT INTO `cart` VALUES (42, 58, 0, 1, '2018-10-31 18:05:01');
INSERT INTO `cart` VALUES (43, 58, 0, 1, '2018-10-31 18:12:12');
INSERT INTO `cart` VALUES (44, 2, 0, 1, '2018-10-31 18:12:25');
INSERT INTO `cart` VALUES (45, 3, 0, 1, '2018-10-31 18:12:34');
INSERT INTO `cart` VALUES (46, 58, 0, 1, '2018-10-31 18:14:21');
INSERT INTO `cart` VALUES (47, 56, 0, 1, '2018-10-31 18:14:27');
INSERT INTO `cart` VALUES (48, 57, 0, 1, '2018-10-31 18:15:35');
INSERT INTO `cart` VALUES (49, 58, 0, 1, '2018-10-31 18:16:49');
INSERT INTO `cart` VALUES (50, 50, 0, 1, '2018-10-31 18:16:59');
INSERT INTO `cart` VALUES (51, 3, 0, 1, '2018-10-31 18:21:45');
INSERT INTO `cart` VALUES (52, 2, 0, 1, '2018-10-31 18:22:18');
INSERT INTO `cart` VALUES (53, 3, 0, 1, '2018-10-31 18:22:22');
INSERT INTO `cart` VALUES (54, 59, 0, 1, '2018-10-31 18:24:49');
INSERT INTO `cart` VALUES (55, 57, 0, 1, '2018-10-31 18:24:52');
INSERT INTO `cart` VALUES (56, 57, 0, 1, '2018-10-31 18:25:55');
INSERT INTO `cart` VALUES (57, 56, 0, 1, '2018-10-31 18:25:59');
INSERT INTO `cart` VALUES (58, 59, 0, 1, '2018-10-31 18:27:25');
INSERT INTO `cart` VALUES (59, 57, 0, 1, '2018-10-31 18:27:29');
INSERT INTO `cart` VALUES (60, 57, 0, 1, '2018-10-31 18:28:03');
INSERT INTO `cart` VALUES (61, 2, 0, 1, '2018-10-31 18:50:21');
INSERT INTO `cart` VALUES (62, 3, 0, 1, '2018-10-31 18:50:24');
INSERT INTO `cart` VALUES (63, 18, 0, 1, '2018-10-31 18:52:13');
INSERT INTO `cart` VALUES (64, 19, 0, 1, '2018-10-31 18:52:17');
INSERT INTO `cart` VALUES (65, 47, 0, 1, '2018-10-31 18:52:31');
INSERT INTO `cart` VALUES (66, 49, 0, 1, '2018-10-31 18:52:34');
INSERT INTO `cart` VALUES (67, 50, 0, 1, '2018-10-31 18:52:36');
INSERT INTO `cart` VALUES (68, 56, 0, 1, '2018-11-01 09:04:24');
INSERT INTO `cart` VALUES (69, 2, 0, 1, '2018-11-01 09:09:52');
INSERT INTO `cart` VALUES (70, 3, 0, 5, '2018-11-01 09:52:09');
INSERT INTO `cart` VALUES (71, 58, 0, 1, '2018-11-01 09:57:54');
INSERT INTO `cart` VALUES (72, 58, 0, 4, '2018-11-01 09:58:03');
INSERT INTO `cart` VALUES (73, 61, 0, 5, '2018-11-01 09:58:12');
INSERT INTO `cart` VALUES (74, 57, 0, 1, '2018-11-02 13:51:49');
INSERT INTO `cart` VALUES (75, 2, 0, 1, '2018-11-02 15:30:54');
INSERT INTO `cart` VALUES (76, 2, 0, 1, '2018-11-02 15:33:40');
INSERT INTO `cart` VALUES (77, 17, 0, 1, '2018-11-02 15:33:47');
INSERT INTO `cart` VALUES (78, 60, 0, 1, '2018-11-02 15:53:49');
INSERT INTO `cart` VALUES (79, 4, 0, 1, '2018-11-02 15:55:09');
INSERT INTO `cart` VALUES (80, 7, 0, 1, '2018-11-02 15:55:15');
INSERT INTO `cart` VALUES (81, 2, 0, 1, '2024-07-01 15:15:13');
INSERT INTO `cart` VALUES (82, 61, 0, 1, '2024-07-01 15:37:02');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `original_price` decimal(10, 2) DEFAULT NULL,
  `current_price` decimal(10, 2) DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `introduction` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `is_sale` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `addtime` datetime(0) DEFAULT NULL,
  `views_count` int(0) DEFAULT NULL,
  `subcat_id` int(0) DEFAULT NULL,
  `supercat_id` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_goods_addtime`(`addtime`) USING BTREE,
  INDEX `supercat_id`(`supercat_id`) USING BTREE,
  INDEX `subcat_id`(`subcat_id`) USING BTREE,
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`supercat_id`) REFERENCES `supercat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`subcat_id`) REFERENCES `subcat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (2, '从0到1：开启商业与未来的秘密', 27.00, 24.00, '1.jpg', '一位传奇的创投教父，一部开启秘密的商业之作，一部事关所有人的生存哲学：\r\n《从0到1》作者彼得蒂尔为首的“PayPal黑帮”开创了硅谷的新格局，他本身就是一部商业传奇！\r\n他是Facebook**位外部投资人，投资了Tesla（特斯拉）、LinkedIn（领英）、SpaceX、Yelp等企业。他创立的数据分析公司Palantir市值约150亿美元。\r\n在《从0到1》中，硅谷投资家彼得蒂尔将创业心法**手分享，在网络上造成560000人访问、2400000次的点击率，引起全球疯传！\r\n中美互联网界大佬集体追捧，2015创投极客论坛持续热议！\r\n周鸿?（中国互联网安全之父）对话彼得蒂尔，警惕“大数据”变“大忽悠”。\r\n徐小平（真格基金创始合伙人）称彼得蒂尔是改变世界的逆行者。\r\n吴伯凡（《21世纪商业评论》发行人）：对于投资者来说找鲨鱼苗是非常重要的。\r\n牛文文（《创业家》杂志总编辑）：《从0到1》让普通人变成创业者。\r\n唐彬（易宝支付CEO）：互联网进入深水区，从0到1带来*好的创业的时代。\r\n徐新（今日资本创始人）对话彼得蒂尔：赢家都有杀手本能。\r\n余晨（易宝支付联合创始人）：《从0到1》是近年来*好的商业书籍，没有之一！\r\n埃隆马斯克、马克扎克伯格、马克安德森、纳西姆塔勒布、雷军、傅盛、罗振宇、金错刀、杨守彬等商界领军人物，新浪、搜狐、网易、中国经济网、和讯网、南方网、环球网、钛媒体、36氪、中国新闻网、i黑马、虎嗅网、正和岛等持续报道，《对话》《创业家》《老友记》《罗辑思维》《三联生活周刊》《商业周刊》《北京青年报》《环球人物》《博客天下》《**财经周刊》《南方人物周刊》《经济观察报》等强势媒体鼎力推荐！\r\n《从0到1》揭开创新的秘密，纠正创业上的众多偏见：\r\n创新不是从1到N，而是从0到1；\r\n全球化并不全是进步；\r\n竞争扼杀创新；\r\n“产品会说话”是谎言；\r\n失败者才去竞争，创业者应当选择垄断；\r\n创业开局十分重要，“频繁试错”是错误的；\r\n没有科技公司可以仅靠品牌吃饭；\r\n初创公司要打造帮派文化。', 1, 0, '2016-07-20 09:58:53', 17, 27, 14);
INSERT INTO `goods` VALUES (3, '商海悟道：商亦有道，大道至简', 33.10, 30.10, '2.jpg', '商亦有道 大道至简\r\n字字都是经典 字字都是精华\r\n4年浓缩的生命真谛\r\n68000人传阅的商业智慧\r\n\r\n50000 粉丝追捧的管理智慧\r\n创业、战略、经营、管理、营销、员工\r\n资源整合、成功、社交、生活、两性、佛法\r\n困扰你的一切，这里都有答案！', 1, 0, '2016-07-20 10:10:38', 4, 27, 14);
INSERT INTO `goods` VALUES (4, '影响力（经典版）', 33.80, 30.00, '3.jpg', '[图书卖点]\r\n风靡全球二十载，***强大、*诡谲、*震慑人心的心理学畅销书！\r\n《财富》杂志鼎力推荐的75本商业必读书之一！\r\n没有专家解读，没有每章导读，这是*原汁原味的《影响力》！\r\n《牛奶可乐经济学》译者担纲翻译，全新译本，不容错过！\r\n[编辑推荐]\r\n如果你是营销、销售工作从事者，《影响力》是你应该从头到尾仔细阅读的**本书；如果你是新闻媒体工作者，请先读第4章，了解社会大众受媒体报道的影响所作出的模仿举动，为你以后再次报道此类事件提供三思而后行的参考；如果你是普通人，请你一定仔细阅读并牢记第4章中的一些内容，学会在紧急情况下如何呼救，不要因为不确定性而成为牺牲品；如果你想了解自己影响他人的水平到底如何，可以先做做第1章的影响力水平测试。', 1, 0, '2016-07-20 10:12:00', 0, 27, 14);
INSERT INTO `goods` VALUES (5, '离经叛道 不按常理出牌的人如何改变世界', 36.80, 30.00, '4.jpg', '2016年4月，一个拥有谜一样的微笑、留着X教授发型的男子，带着他的新书《离经叛道》（Originals）来到TED，分享了一次题为《原创思维者的惊人特质》的演讲（演讲内容即本书*、四两章）。没想到，短短15分钟的演讲人气爆棚，已经跃升为TED有史以来*受欢迎的分享之一。视频传入国内，一个多月的时间，仅在优酷和网易公开课平台就累积了近100万的点击量。到底有多赞？话不多说，视频直接上！\r\nhttp://v.youku.com/v_show/id_XMTU3NjM1MzA1Mg==.html?from=y1.9-3.1\r\n这本新作，厉害了！\r\n\r\n★《异类》作者 马尔科姆?格拉德威尔\r\n★ Facebook首席运营官、《向前一步》作者 谢丽尔?桑德伯格\r\n★ Paypal联合创始人、《从0到1》作者 彼得?蒂尔\r\n★ 维珍集团创始人 理查德?布兰森\r\n★《赫芬顿邮报创始人兼总编辑 阿里安娜?赫芬顿\r\n★《驱动力》《全新思维》作者 丹尼尔?平克\r\n★《星际迷航》《星球大战》导演、坏机器人制片公司联合创始人 J.J. 艾布拉姆斯\r\n★ 前雅虎营销总裁、《紫牛》作者 塞斯?高汀', 1, 0, '2016-07-20 10:13:06', 0, 27, 14);
INSERT INTO `goods` VALUES (6, '管理就是定制度走流程：企业制度与流程设计', 40.00, 30.00, '5.jpg', '1、管理的瓶颈不在于管理者的水平，而在于制度是否完善合理，流程是否规范高效。制度 流程，无疑是破解企业管理难题的两个点，本书将这两个点结合在一起，让好的制度管人，让好的流程管事。\r\n2、本书是作者多年来咨询培训经验的总结，可复制、借鉴，效果明显；本书以各种制度、流程图表、方法、工具为核心，简单实用；随书附赠企业制度与流程设计工具光盘，读者可根据企业具体情况简单修改、拿来即用。\r\n3、本书的受众群体为渴望改进或建立完善企业制度和简单高效流程的广大管理人士，亦可作为制度设计与流程管理的*培训教材，达到节省企业运营成本、提升执行效率、彻底解放管理者的目的。', 1, 0, '2016-07-20 10:14:24', 6, 27, 14);
INSERT INTO `goods` VALUES (7, '行动的勇气：金融危机及其余波回忆录', 58.50, 50.00, '6.jpg', '《行动的勇气》，全面阐释伯南克直面风险与拯救危局的金融哲学，是对经济危机救赎内幕前所未有的披露，以及他对金融政策的深入思考和现实考量。\r\n2006年，伯南克被任命为美联储主席。从南卡罗来纳州的小镇到声誉卓著的学术殿堂，再到担任公职，伯南克个人的职业生涯可谓达到了一个意想不到的巅峰。\r\n他根本无暇庆贺。\r\n2007年，房地产泡沫破裂，全球金融系统的内在缺陷暴露无遗，一度濒临崩溃。从投行贝尔斯登的崩溃到对保险业巨头AIG开展空前救助，伯南克及其团队殚精竭虑，采取一切可用工具，遏制金融危机蔓延态势，使得美国乃至世界经济得以持续运转。\r\n公众对华尔街的贪婪义愤填膺。伯南克及其团队承受了巨大压力，但他们在两位总统的积极支持下，终于成功地让一个摇摇欲坠的金融体系恢复了稳定。一旦美国经济彻底崩溃，规模与后果将不堪设想，但伯南克等人以非凡的创意和决心力挽狂澜。他们提出了一系列非传统的救助工具，帮助了美国经济的复苏，开创了令其他国家竞相效仿的模式。\r\n《行动的勇气》记录和阐释了大萧条以来最糟糕的金融危机和经济衰退，并以内部人士的视角回顾了华盛顿的应对政策，全面翔实地披露了决策过程的细节，栩栩如生地刻画了主要人物的个人形象，同时也梳理了伯南克在专业背景下对金融政策和工具的思考与反思。', 1, 0, '2016-07-20 10:18:19', 1, 28, 14);
INSERT INTO `goods` VALUES (8, '投融资那点事', 30.80, 26.80, '7.jpg', '赚钱容易的时代渐行渐远，如果还是靠胆识和运气赚钱，上帝昨天赐给你的财富，明天他仍可能收回去。大刀阔斧、激流勇进是年轻人的想法，一个人成熟的标志是在忍耐中懂得选择和放弃。在投融资决策中，关注收益，更要关注风险，不能学年轻人的“闪婚”，而是要用成年人“二婚”的心态来谨慎对待投融资。\r\n打麻将，必须学会吃别人的牌，否则很难赢牌。做企业也是同样的道理，发展到一定阶段，需要通过投资和融资的方式引入战略合作伙伴，否则闭门造车，事业难以做大。\r\n做企业是一种资源整合游戏，你能在多大半径内整合资源，就能干成多大的事。股东、团队、供应商、客户是一个公司的核心资源，你的整合半径有多大决定了你能做成多大的事！\r\n金融资本青睐的是外延式做大型企业，而不是内涵式做强型企业。前者能够描绘出巨大的成长空间，高调激进，剑走偏锋。这种风格迎合了金融资本鞭打快牛、拔苗助长、赔一赚十的博弈心态。\r\n融资不是“乞讨”，投资者也不会因为可怜你，就答应投资。如果一个投资者答应投资给你，肯定是觉得有利可图。换个角度说，你去融资，不是投资者施惠于你，而是你为他提供了赚钱的机会。\r\n婚姻是两个人的结合，而不是房子和汽车的结合。丈母娘经济学的误区就是“只认钱、不认人”。同样的道理，合资本质上是两群人的结合，不是厂房和设备的结合。在当今中国的商业环境下，好项目难找，好人更难找。\r\n对于企业投融资而言，仅仅实现资产与资金的结合是远远不够的，还需要各方对战略、业务、制度、人力资源和文化等所有企业要素进行进一步的整合，实现双方的完全融合，并产生预期的效益，才算真正实现了合资的目标。', 1, 1, '2016-07-20 10:20:10', 2, 28, 14);
INSERT INTO `goods` VALUES (9, '世界是部金融史', 31.20, 30.20, '8.jpg', '本书以时间为纲，以国家、人物、事件为目，围绕金融这个核心，采用诙谐生动的语言，将希腊、罗马、法兰西、西班牙、荷兰、日不落帝国、美国、克洛维、查理一世、约翰?劳、摩根、索罗斯、六一农、郁金香、南海事件、次贷危机等这些牛国、牛人以及牛事一一展现，并紧扣当前“美元量化宽松”“人民币升值”“通货膨胀”等金融热点，读之让人知行获益。\r\n融的力量\r\n破解金融的密码，回答金融的走向\r\n金融是个好东西，人人都该补点金融史\r\n要么懂得金融战略，要么受困金融阴谋', 1, 0, '2016-07-20 10:24:51', 1, 28, 14);
INSERT INTO `goods` VALUES (10, '中国式众筹：互联网革命的下半场', 36.80, 30.80, '9.jpg', '中国式众筹是以杨勇为代表的一批北大人率先发起的一场社会创新行动。2013年10月，杨勇牵头众筹的北大1898咖啡馆开业，标志着基于中国人圈层文化特点、完全不同于西方陌生人众筹的熟人圈众筹模式成功落地。两年间，杨勇与马化腾、任志强、刘永好、马蔚华、熊晓鸽等各界精英15000余人面对面碰撞吸纳智慧，与证监会、央行、北大国发院、清华大学五道口金融学院、中信集团、华夏同学会等数十家政、商、学机构深度分享交流，受到广泛欢迎，并先后成功推出金融客咖啡、佳美儿童口腔医院、经心书院、花色优品等众筹项目及全球首单人才众筹――杨勇人才IPO。同时还有F1赛车、商学院、慈善公益等重大众筹项目及数十条咖啡馆众筹线持续推进中。\r\n杨勇首倡的中国式众筹是在众创实践中产生的重大理论创新，是经系列案例验证的模式创新，为大众创业提供了落地利器，为万众创新赋予强大引擎。熟人圈众筹，把创业项目所需资源提前锁定为股东，构建投资者、消费者、推广者三合一的利益共同体，大大提高了创业成功率；它解决了互联网时代“信息太多，信任太少”的信用难题，促成人群的深度链接，共投共创共享的模式让创业、创新不再是难事！\r\n著名学者、企业家陈春花教授在序言中寄语读者：“希望透过本书，你可以成为时代的弄潮儿！”', 1, 0, '2016-07-20 10:26:06', 2, 28, 14);
INSERT INTO `goods` VALUES (11, '商业冒险：华尔街的12个经典故事', 40.70, 30.70, '10.jpg', '推荐收藏：\r\n商业冒险（精装典藏版）\r\n《商业冒险》上市以来，席卷美国、英国、欧洲、日本、台湾各地畅销榜，是2014-2015年度全球重要、非常畅销的财经商业书之一。巴菲特将此书推荐给比尔?盖茨，盖茨看后评价说：“《商业冒险》是我读过的特别好的商业书，约翰?布鲁克斯是我很喜爱的商业作家。”在比尔?盖茨“2014年推荐书目中”、“TED大会必读书目”第 一名，此外更获得了多家媒体“企业家必读书目”、“年度注目图书”等奖项。\r\n这本书叙述了12家企业/机构的冒险时刻，在危险与机会并存的时刻，这些企业家用全身心的智慧去运筹，用*无畏的精神迎战，有人折戟沉沙，有人高奏凯歌，有人功败垂成，有人知耻后勇。\r\n商业舞台上每天都上演着这样悲壮或辉煌的戏剧，商业的成功都来自冒险，而失败都源于无知。', 1, 0, '2016-07-20 10:27:22', 0, 28, 14);
INSERT INTO `goods` VALUES (12, '人力资源管理必备制度与表格范例', 28.00, 22.00, '11.jpg', '推荐一《人力资源管理必备制度与表格范例》――融入微信扫一扫，富有新意\r\n《人力资源管理必备制度与表格范例》融入了微信扫一扫，打破了传统书籍受页数限制不能呈现太多内容的弊端，将书中所涉及到的制度与表格制成电子表格存放在云空间中，通过微信扫一扫便能轻松下载，可直接使用或稍微修改一下使用，非常方便，能大大提升工作效率。\r\n推荐二《人力资源管理必备制度与表格范例》――管理制度与表格更加标准\r\n《人力资源管理必备制度与表格范例》延续人力资源管理的六大基础模块，分为六章，在每个章节中注入新元素，如根据新规定、行业动态选取新的制度、表格等。并且对制度、表格进行了标准化设计，更加规范、统一，方便大家理解、使用；同时将与每种制度紧密相关的表格放在相应的制度之后，增强了制度的针对性和可执行性，更加科学、标准，大大提升了实际执行的效果。\r\n推荐三《人力资源管理必备制度与表格范例》――双色排版，内容设计思路清晰\r\n《人力资源管理必备制度与表格范例》专门对规划、招聘与配置、培训与开发、薪酬与福利、劳动关系管理这六大模块的内容进行设计，以制度与图表的方式交互呈现，并采用双色排版，简洁明了。', 1, 0, '2016-07-20 10:29:44', 1, 29, 14);
INSERT INTO `goods` VALUES (13, '不懂说话，你怎么带团队？', 18.50, 16.50, '12.jpg', '用一句话成功引导下属。看似微不足道的一个措辞，既有可能让下属干劲十足地主动投入工作，也有可能令下属陷入沮丧。\r\n本书配合事例，针对不同场合??附和、询问、夸奖、委托、鼓励、传达、责备??进行讲解，教我们如何采取合适的措辞，如何用一句话拯救陷入困境中的下属。', 1, 0, '2016-07-20 10:31:56', 0, 29, 14);
INSERT INTO `goods` VALUES (14, '工匠精神', 20.00, 15.00, '13.jpg', '　付守永，中国价值型企业研究中心高级研究员\r\n　　价值型企业理论体系的创建者、实践者、传播者\r\n　　曾任世界500强企业高级管理者，３年时间带领1500人的团队缔造30亿元的销售神话！\r\n　　德胜洋楼（苏州）特邀观察员\r\n　　北京大学汇丰商学院专家顾问导师\r\n　　被业界誉为“用生命演讲的人”\r\n　　客户评价：\r\n　　震撼、颠覆、系统、实效\r\n　　付守永老师的人生使命：\r\n　　培养价值型企业家，构建价值型企业；\r\n　　传播“工匠精神”，重塑组织生命力！\r\n　　10余年来，付守永老师一直奋斗在管理实践、咨询、教育、研究一线，是深受企业家喜爱的实战派专家导师。', 1, 0, '2016-07-20 10:34:32', 0, 29, 14);
INSERT INTO `goods` VALUES (15, '归属感：创造一个员工想要归属其中的组织', 33.80, 30.80, '14.jpg', '所谓领导力，就是创造一个员工想要归属其中的组织的能力。\r\n\r\n*归属感之描绘愿景\r\n愿景不是“你要成为什么”，而是“你能为组织之外的事物做什么”。\r\n*归属感之规划路线\r\n战略规划应该这样做：先评估期望状态，再评估当前状态与预期状态之间的关系，最后确定由各个过度状态形成的通往预期状态的路径。\r\n*归属感之全面思考\r\n用梦想家的思维描绘愿景，用实干家的思维设计行动，用批评家的思维防范风险。\r\n*归属感之增强信念\r\n对于目标和个人能力的信念，会影响到人们在应对新的情况或困难时愿意付出多大的努力，会努力多长时间。\r\n*归属感之整合沟通\r\n领导者要懂得检测和管理他人的状态。一个人的状态会表现在他的语言和非语言信息上', 1, 0, '2016-07-20 10:39:48', 1, 29, 14);
INSERT INTO `goods` VALUES (16, '人力资源管理实用必备全书', 18.60, 16.60, '15.jpg', '人力资源是知识经济时代的首要资源。人力资源管理不仅是一门专业，更是一门艺术。本书涵盖人力资源管理制度、企业人员岗位职责、员工招聘与录用管理、绩效管理、薪酬管理、员工培训与职业发展等方面内容，分别从管理制度、流程、表格等角度，规范常用的操作流程，为企业管理者提供兼具针对性、实用性与操作性的管理方案，集知识、技能、工具于一体，是一套案头必备的实用管理全书。', 1, 0, '2016-07-20 10:40:43', 0, 29, 14);
INSERT INTO `goods` VALUES (17, 'SIEMENS/西门子 KA62DS50TI', 18800.00, 18500.00, '16.jpg', '颜色星空黑（玻璃门）\r\n容积-冷冻室（升）179\r\n容积-冷藏室（升）355\r\n容积-总容积（升）534\r\n外形尺寸 (高×宽×厚)1750cm×910cm×770cm(高×宽×厚)\r\n控制面板门上控制/LCD\r\n速冷、速冻功能√\r\n开门报警√\r\n制冷剂R600a\r\n技术数据-气候类别SN-T\r\n控制方式电脑\r\n触摸按键√\r\n按键锁定√\r\n升温报警√\r\n制冷方式风冷\r\n制冷循环双循环\r\n技术数据-冷冻能力(kg/24h)12\r\n技术数据-耗电量(kwh/24h)1.26*\r\n零度变温室√\r\n变频压缩机√\r\n能耗等级1级\r\n制冰方式自动制冰', 1, 0, '2016-07-20 10:43:27', 0, 30, 15);
INSERT INTO `goods` VALUES (18, 'Bosch/博世 KAD63P70TI', 23672.00, 23399.00, '17.jpg', '抗指纹不锈钢设计，时尚酷炫外观\r\n领先的“并联双循环”技术，提升冷藏室湿度，避免食物串味\r\n先进模糊控制技术，实现冷量优化匹配\r\n风冷全无霜技术，再无冰霜烦恼\r\n自动制冰机，满足冰块、碎冰、冰水三重需求\r\n一体式无框吧台，随时邂逅清凉\r\n独立维他保鲜室，对开门也能实现“维他保鲜”\r\n特设控湿抽屉，湿度控制更精确\r\n背光LED照明，绿色节能，极致大气风格\r\n颜色：抗指纹不锈钢\r\nLCD触摸屏\r\n机器尺寸(宽x厚x高)(厘米)：91x77x175.5\r\n总使用容量(升)：528\r\n冷冻室使用容量(升)：179\r\n冷藏室使用容量(升)：349\r\n其中冷藏室含维他保鲜区容积(升)：19\r\n能源效率等级：1', 1, 0, '2016-07-20 10:45:55', 0, 30, 15);
INSERT INTO `goods` VALUES (19, 'Ronshen/容声 BCD-202M/TX6', 1178.00, 1000.00, '18.jpg', '容声冰箱型号: BCD-202M/TX6冷冻室容积: 53L冷藏室容积: 103L净重: 62kg包装尺寸: 545x600x1703mm噪声: 38dB堆码层数极限: 2层尺寸: 545x600x1703mm总容量: 202L总容量范围: 181-210升智能类型: 不支持智能最大容积: 202L毛重: 65kg耗电量: 0.47Kwh/24h采购地: 中国大陆冰箱冷柜机型: 冷藏冷冻冰箱制冷方式: 直冷箱门结构: 三门式面板类型: VCM覆膜板能效等级: 一级售后服务: 全国联保颜色分类: 拉丝银制冷控制系统: 机械温控', 1, 0, '2016-07-20 10:46:55', 0, 30, 15);
INSERT INTO `goods` VALUES (20, 'Midea/美的 BCD-551WKM', 2599.00, 2299.00, '19.jpg', '美的冰箱型号: BCD-551WKM冷冻室容积: 206L冷藏室容积: 345L噪声: 43dB堆码层数极限: 2层总容量范围: 501-600升智能类型: 其他智能最大容积: 551L耗电量: 1.05Kwh/24h采购地: 中国大陆冰箱冷柜机型: 冷藏冷冻冰箱制冷方式: 风冷箱门结构: 对开双门式面板类型: pet能效等级: 一级售后服务: 全国联保同城服务: 同城物流送货上门颜色分类: A级轻瑕疵 红色制冷控制系统: 电脑温控', 1, 0, '2016-07-20 10:47:48', 0, 30, 15);
INSERT INTO `goods` VALUES (21, '海尔四开门冰箱 BCD-620WDGF', 6999.00, 6699.00, '20.jpg', '冰箱冰柜品牌: Haier/海尔海尔冰箱型号: 全新正品 海尔四开门冰箱BCD-620WDGF 620立升冰箱总容量范围: >600升智能类型: 其他智能采购地: 中国大陆制冷方式: 风冷箱门结构: 多门式面板类型: 钢化玻璃面板能效等级: 一级颜色分类: BCD-620WDGF', 1, 0, '2016-07-20 10:49:30', 0, 30, 15);
INSERT INTO `goods` VALUES (22, 'Samsung/三星 UA40JU5920CXXZ', 3399.00, 3199.00, '21.jpg', '证书编号：2015010808758923证书状态：有效申请人名称：三星电子株式会社制造商名称：天津三星电子有限公司产品名称：液晶彩色电视机 品牌: Samsung/三星 型号: UA40JU5920CXXZ分辨率: 3840x21603D类型: 无能效等级: 三级网络连接方式: 全部支持操作系统: 安卓', 1, 0, '2016-07-20 10:50:35', 0, 31, 15);
INSERT INTO `goods` VALUES (23, 'Philips/飞利浦 55PUF6031/T3', 2999.00, 2699.00, '22.jpg', '证书编号：2014010808723913证书状态：有效产品名称：LED背光源液晶电视，LED背光源网络电视，LED背光源智能电视产品名称：Philips/飞利浦 55PUF603...品牌: Philips/飞利浦飞利浦LED型号: 55PUF6031/T3分辨率: 3840x21603D类型: 无能效等级: 二级网络连接方式: 无线连接操作系统: 安卓', 1, 0, '2016-07-20 10:51:57', 0, 31, 15);
INSERT INTO `goods` VALUES (24, 'Hisense/海信 LED55EC520UA', 3049.00, 3000.00, '23.jpg', '证书编号：2015010808787658证书状态：有效申请人名称：青岛海信电器股份有限公司制造商名称：青岛海信电器股份有限公司产品名称：液晶电视3C产品型号：LED55EC520UA：220VAC 50Hz 170W产品名称：Hisense/海信 LED55EC520...品牌: Hisense/海信型号: LED55EC520UA分辨率: 3840x21603D类型: 无能效等级: 无网络连接方式: 全部支持操作系统: 安卓', 1, 0, '2016-07-20 10:52:58', 0, 31, 15);
INSERT INTO `goods` VALUES (25, 'MIUI/小米 55英寸套装', 3699.00, 3199.00, '24.jpg', '证书编号：2015010808807283证书状态：有效申请人名称：北京小米电子产品有限公司制造商名称：北京小米电子产品有限公司产品名称：小米电视3C产品型号：L55M4-AA AC100-240W 50/60Hz 180W产品名称：MIUI/小米 小米电视2 55英...品牌: Xiaomi/小米型号: 小米电视2 55英寸分辨率: 3840x21603D类型: 无能效等级: 三级网络连接方式: 全部支持操作系统: MIUI TV', 1, 0, '2016-07-20 10:54:58', 0, 31, 15);
INSERT INTO `goods` VALUES (26, 'Sony/索尼 KD-55X9000C', 9999.00, 9000.00, '25.jpg', '证书编号：2015010808769326证书状态：有效申请人名称：上海索广映像有限公司制造商名称：上海索广映像有限公司产品名称：电视机3C产品型号：KD-55X9000C ：220VAC 50Hz 241W产品名称：Sony/索尼 KD-55X9000C品牌: Sony/索尼索尼LED型号: KD-55X9000C分辨率: 3840x21603D类型: 偏光式3D能效等级: 三级网络连接方式: 全部支持操作系统: 安卓', 1, 0, '2016-07-20 10:56:21', 0, 31, 15);
INSERT INTO `goods` VALUES (27, 'Samsung/三星 WD80J6413AW', 4299.00, 4099.00, '26.jpg', '证书编号：2014010705746604证书状态：有效申请人名称：苏州三星电子有限公司制造商名称：苏州三星电子有限公司产品名称：全自动滚筒洗衣机3C产品型号：WW80J6413CW(XQG80-80J6413CW), WW80J6410CX(XQG80-80...产品名称：Samsung/三星 WD80J6413A...洗衣机品牌: Samsung/三星三星洗衣机型号: WD80J6413AW(XQG80-80J6413AW))产品类型: 洗烘一体机使用方式: 全自动洗衣程序: 精细织物 衬衫,内衣,窗帘,护肤,羽绒服 羊毛洗 大件洗 化纤洗 棉麻洗 快洗 预洗 单漂 单甩 强力洗 牛仔洗 标准洗 筒自洁能效等级: 一级电机类型: 变频电机', 1, 0, '2016-07-20 10:57:39', 0, 32, 15);
INSERT INTO `goods` VALUES (28, 'SIEMENS/西门子 XQG80-WM12N1C80W', 3999.00, 3599.00, '27.jpg', '证书编号：2015010705784184证书状态：有效申请人名称：博西威家用电器有限公司制造商名称：博西威家用电器有限公司产品名称：全自动滚筒式洗衣机3C产品型号：XQG70-WM10N0600W, XQG70-WM10N0R80W, XQG70-WM10N0C8...产品名称：SIEMENS/西门子 XQG80-W...洗衣机品牌: SIEMENS/西门子型号: XQG80-WM12N1C80W产品类型: 滚筒洗衣机使用方式: 全自动洗衣程序: 衬衫,内衣,窗帘,护肤,羽绒服 防过敏洗 羽绒服洗、羊毛洗、混合洗 羊毛洗 大件洗 化纤洗 棉麻洗 快洗 预洗 单漂 单排 真丝洗 牛仔洗 抗菌洗 筒自洁能效等级: 一级电机类型: 变频电机', 1, 0, '2016-07-20 10:58:36', 0, 32, 15);
INSERT INTO `goods` VALUES (29, 'LG WD-HH2430D', 2299.00, 2099.00, '28.jpg', '证书编号：2015010705764495证书状态：有效申请人名称：南京乐金熊猫电器有限公司制造商名称：南京乐金熊猫电器有限公司产品名称：全自动滚筒洗衣机3C产品型号：WD-T14415D, WD-T12415D, WD-T14410DM, WD-T14410DL, ...产品名称：LG WD-HH2430D洗衣机品牌: LG型号: WD-HH2430D产品类型: 滚筒洗衣机使用方式: 全自动洗衣程序: 羊毛洗 大件洗 化纤洗 棉麻洗 快洗 强力洗 筒自洁能效等级: 一级电机类型: DD变频直驱电机', 1, 0, '2016-07-20 11:00:27', 0, 32, 15);
INSERT INTO `goods` VALUES (30, 'TCL XQG80-F12102TB', 1699.00, 1399.00, '29.jpg', '证书编号：2015010705776204证书状态：有效产品名称：滚筒式全自动洗衣机产品名称：TCL XQG80-F12102TB洗衣机品牌: TCL型号: XQG80-F12102TB产品类型: 滚筒洗衣机使用方式: 全自动洗衣程序: 羊毛洗 化纤洗 棉麻洗 快洗 单甩 强力洗 筒自洁能效等级: 一级电机类型: 变频电机', 1, 0, '2016-07-20 11:01:39', 0, 32, 15);
INSERT INTO `goods` VALUES (31, 'Bosch/博世 XQG80-WDG244601W', 5590.00, 5490.00, '30.jpg', '证书编号：2014010705729421证书状态：有效申请人名称：博西华电器(江苏)有限公司制造商名称：博西华电器(江苏)有限公司产品名称：全自动滚筒式洗衣干衣机3C产品型号：XQG80-WDG244601W, XQG80-WDG244681W, 220V～ 50Hz 洗涤/...产品名称：Bosch/博世 XQG80-WDG24...洗衣机品牌: Bosch/博世型号: XQG80-WDG244601W产品类型: 洗烘一体机使用方式: 全自动洗衣程序: 羊毛洗 棉麻洗 快洗 单漂 烘干 抗菌洗能效等级: 一级电机类型: 变频电机', 1, 0, '2016-07-20 11:02:43', 0, 32, 15);
INSERT INTO `goods` VALUES (32, '七匹狼夹克 秋装新款中年男士翻领茄克衫外套jacket', 439.00, 409.00, '31.jpg', '材质成分：聚酯纤维100%货号：111510101432销售渠道类型：商场同款(线上线下都销售)面料分类：涤纶品牌：Septwolves/七匹狼厚薄：常规基础风格：商务绅士', 1, 0, '2016-07-20 11:04:26', 2, 33, 16);
INSERT INTO `goods` VALUES (33, '太平鸟男装 新款青年薄外套韩版潮流飞行员夹克男BWBC63202', 439.00, 409.00, '32.jpg', '材质成分：聚酯纤维100%货号：BWBC63202销售渠道类型：纯电商(只在线上销售)面料分类：涤纶品牌：PEACEBIRD/太平鸟厚薄：常规基础风格：时尚都市', 1, 1, '2016-07-20 11:06:02', 1, 33, 16);
INSERT INTO `goods` VALUES (34, '劲霸男装 夹克外套BKDU1120', 599.00, 499.00, '33.jpg', '货号：BKDU1120品牌：K-boxing/劲霸厚薄：常规基础风格：时尚都市  领型：立领  版型：修身  下摆设计：本布下摆', 1, 1, '2016-07-20 11:07:22', 1, 33, 16);
INSERT INTO `goods` VALUES (35, '柒牌 商务休闲男茄克703K2662', 169.00, 149.00, '34.jpg', '材质成分：聚酯纤维100%货号：703K2662面料分类：涤纶品牌：seven7/柒牌厚薄：常规基础风格：时尚都市', 1, 0, '2016-07-20 11:08:38', 1, 33, 16);
INSERT INTO `goods` VALUES (36, 'JackJones杰克琼 夹克外套S|216121074', 799.00, 769.00, '35.jpg', '材质成分：粘胶纤维(粘纤)69% 聚酯纤维13% 棉12% 金属纤维6%货号：216121074销售渠道类型：商场同款(线上线下都销售)面料分类：PU皮品牌：Jack Jones/杰克琼斯厚薄：常规基础风格：时尚都市', 1, 0, '2016-07-20 11:09:51', 2, 33, 16);
INSERT INTO `goods` VALUES (37, 'ZARA 女装 宽松长裤 02479149401', 139.00, 109.00, '36.jpg', '材质成分: 聚酯纤维100%裤长: 长裤销售 货号: 02479149401-20女裤裤型: 阔腿裤女裤腰高: 自然腰颜色分类: 蓝色品牌: ZARA尺寸: XS (160/62A) S (165/66A) M (170/70A) L (175/78A)服装款式细节: 印染厚薄: 常规', 1, 0, '2016-07-20 11:12:04', 0, 34, 16);
INSERT INTO `goods` VALUES (38, '乐町 新款女装潮破洞短裤', 139.00, 109.00, '37.jpg', '材质成分: 棉98.5% 聚氨酯弹性纤维(氨纶)1.5%裤长: 短裤 货号: CWGC61651女裤裤型: 直筒裤女裤腰高: 高腰面料: 棉布风格: 甜美甜美: 日系颜色分类: 白色品牌: 乐町尺寸: 155/S 160/M 165/L成分含量: 96%及以上服装款式细节: 手工磨破厚薄: 常规', 1, 0, '2016-07-20 11:13:03', 1, 34, 16);
INSERT INTO `goods` VALUES (39, '无印良品 MUJI', 149.00, 119.00, '38.jpg', '材质成分: 亚麻100%裤长: 七分裤 货号: W6SE432女裤裤型: 直筒裤女裤 腰高: 自然腰 颜色分类: 浅灰色 生成色 卡其绿 深蓝色 品牌: MUJI/无印良品 尺寸: S M L', 1, 0, '2016-07-20 11:14:48', 0, 34, 16);
INSERT INTO `goods` VALUES (40, 'Vero Moda 雪纺吊带九分阔腿连体裤|316144024', 349.50, 300.00, '39.jpg', '材质成分: 聚酯纤维100%裤长: 九分裤货号: 316144024女裤裤型: 阔腿裤女裤腰高: 自然腰面料: 其他风格: 通勤通勤: OL风格颜色分类: 010黑 023本白 070红品牌: Vero Moda尺寸: 155/60A/XSR 160/64A/SR 165/68A/MR 170/72A/LR 175/76A/XLR 180/80A/XXLR成分含量: 96%及以上厚薄: 常规', 1, 0, '2016-07-20 11:15:57', 0, 34, 16);
INSERT INTO `goods` VALUES (41, 'Amii[极简主义]休闲短裤女11670440', 149.00, 129.00, '40.jpg', '材质成分: 聚酯纤维100%裤长: 短裤货号: 11670440女裤裤型: 直筒裤女裤腰高: 高腰风格: 通勤通勤: 简约颜色分类: 米白 深蓝 黑色品牌: Amii尺寸: XS S M L XL XXL XXXL成分含量: 96%及以上厚薄: 常规', 1, 0, '2016-07-20 11:17:06', 3, 34, 16);
INSERT INTO `goods` VALUES (42, '齐齐熊 宝宝背心套装', 32.00, 29.00, '41.jpg', '品牌: CICIIBEAR/齐齐熊安全等级: 其他材质成分: 棉100%货号: QQ1668适用性别: 中性颜色分类: 每日前200名包邮！ 1668鸽子粉 1668鸽子蓝 1051小马白色 1751汽车白 1751汽车黄参考身高: 66cm(6M参考身高56-62cm) 73cm(12M参考身高64-70cm) 80cm(18M参考身高72-78cm) 90cm(24M参考身高80-86cm) 100cm(36M参考身高88-94cm) 110cm(48M参考身高96-104cm) 120cm(60M参考身高106-114cm)模特实拍: 实拍有模特适用场景: 爱意表达按关系送礼: 孩子是否带帽子: 无组合形式: 无袖+裤子面料: 纯棉(95%及以上)厚薄: 常规适用季节: 夏季风格: 其他衣门襟: 套头图案: 卡通动漫件数: 2件', 1, 1, '2016-07-20 11:18:48', 0, 35, 16);
INSERT INTO `goods` VALUES (43, '优贝宜 短袖T恤套装', 36.80, 30.00, '42.jpg', '品牌: Yobeyi/优贝宜安全等级: A类材质成分: 棉96% 聚氨酯弹性纤维(氨纶)4%货号: Y15282101适用性别: 中性颜色分类: 条纹猫头 围巾狗 面具 卡通大眼镜 卡通队长 高帽先生 小小熊 雪糕 小象灰 爆米花 熊 胡子 英文参考身高: 73cm 80cm 90cm 100cm 110cm 120cm 130cm 140cm 150cm 160cm 165cm模特实拍: 实拍无模特适用场景: 爱意表达按关系送礼: 孩子是否带帽子: 无组合形式: 其他面料: 纯棉(95%及以上)厚薄: 薄款适用季节: 夏季风格: 休闲衣门襟: 套头图案: 卡通动漫件数: 2件', 1, 1, '2016-07-20 11:20:07', 0, 35, 16);
INSERT INTO `goods` VALUES (44, 'TAGA儿童运动套装潮圆领2件套', 69.90, 69.90, '43.jpg', '品牌: TAGA安全等级: B类材质成分: 棉95% 聚氨酯弹性纤维(氨纶)5%货号: TG2K0745适用性别: 男颜色分类: 花灰0745 浅蓝0745 米白0732 花灰0732 浅花灰0761 浅蓝0734 花灰0734 阳光黄0745 阳光黄0734 米白色0734 米白0761参考身高: 100cm【2016夏款主打套装上市】 110cm【夏季新品时尚印花潮流百搭】 120cm【多重款式尽情挑选】 130cm【圆领纯棉套装 一套搞定所有】 140cm【 特色印染技术 印花不脱落不掉色】 150cm【 购买搭配套餐更划算更实惠】 160cm【主打套装库存限量务必抓紧购买】模特实拍: 实拍无模特适用场景: 爱意表达按关系送礼: 孩子是否带帽子: 有帽可拆组合形式: 短袖+裤子面料: 纯棉(95%及以上)厚薄: 薄款适用季节: 夏季风格: 休闲衣门襟: 套头图案: 卡通动漫件数: 2件', 0, 1, '2016-07-20 11:21:19', 0, 35, 16);
INSERT INTO `goods` VALUES (45, '安塞尔斯童装T恤套装', 69.00, 49.00, '44.jpg', '品牌: Ansel’s/安塞尔斯安全等级: A类材质成分: 棉100%货号: 1162070适用性别: 男颜色分类: 大红色 米白色（运动熊） 深橙红（数字） 米白色（时尚熊） 米白色 大红色（斑点） 大红色（萌猫） 深橙红 玻璃蓝 米白色（宝贝熊） 嫩绿色 法国蓝（萌猫） 考拉灰色 花灰色 深橙红（字母） 苹果绿萌飞熊 苹果绿创意熊 法国蓝 玻璃蓝（卡通） 大红色（卡通） 花灰色（字母熊） 米白色（字母熊） 米白色（潮萌熊） 大红色（可爱熊）参考身高: 73cm 80cm 90cm 100cm 110cm 120cm模特实拍: 实拍无模特适用场景: 上学送礼按关系送礼: 孩子是否带帽子: 无组合形式: 短袖+裤子面料: 纯棉(95%及以上)厚薄: 常规适用季节: 夏季风格: 休闲衣门襟: 套头图案: 卡通动漫件数: 2件', 1, 0, '2016-07-20 11:25:22', 0, 35, 16);
INSERT INTO `goods` VALUES (46, '莫伊儿短袖儿童套装', 19.90, 9.90, '45.jpg', '品牌: 莫伊儿货号: N-104适用性别: 男颜色分类: 学校套装兰 学校套装绿 1拉绿色 1拉兰色 1拉桔色 海军AI 藏青 小鸭子兰色 米姥鼠 YZ绿色 夏猫 卡通熊藏青 卡通熊红 羽毛藏青 羽毛红 大XX白色 迷彩灰 六角星绿 小黑帽绿色 PN兰 六角星兰 1拉白色 花袋白 W衬衫红 动物参考身高: 80码建议身高75CM以内 90码建议身高85CM以内 100码建议身高85-95CM 110码建议身高95-105CM 120码建议身高105-115CM是否带帽子: 无组合形式: 短袖+裤子面料: 棉混纺布厚薄: 常规适用季节: 春秋风格: 运动衣门襟: 套头图案: 格子件数: 2件', 1, 0, '2016-07-20 11:27:00', 0, 35, 16);
INSERT INTO `goods` VALUES (47, 'Razer/雷蛇 灵刃潜行版 RZ09-01682E22', 13499.00, 13000.00, '46.jpg', '证书编号：2015010902812387证书状态：有效申请人名称：Razer Inc.制造商名称：Razer Inc.产品名称：雷蛇灵刃潜行版 游戏笔记本电脑3C产品型号：RZ09-0168,RZ09-0184产品名称：Razer/雷蛇 灵刃潜行版 R...能效等级: 二级品牌: Razer/雷蛇型号: RZ09-01682E22屏幕尺寸: 12.5英寸CPU: Intel Core i7-6500U显卡类型: Intel HD Graphics 520显存容量: 共享内存容量机械硬盘容量: 无机械硬盘内存容量: 8GB操作系统: windows 10', 1, 1, '2016-07-20 11:28:23', 0, 36, 17);
INSERT INTO `goods` VALUES (48, 'Dell/戴尔 灵越15(7559) Ins15P-2748', 7199.00, 7000.00, '47.jpg', '证书编号：2015010902785887证书状态：有效产品名称：便携式计算机产品名称：Dell/戴尔 灵越15(7559)...能效等级: 一级品牌: Dell/戴尔型号: Ins15P-2748屏幕尺寸: 15.6英寸CPU: Core/酷睿 i7显卡类型: GTX 960M 4GB GDDR5显存容量: 4GB机械硬盘容量: 1TB内存容量: 8GB操作系统: windows 10', 1, 0, '2016-07-20 11:29:16', 0, 36, 17);
INSERT INTO `goods` VALUES (49, 'Asus/华硕 顽石4代', 5499.00, 5000.00, '48.jpg', '证书编号：2013010902601399证书状态：有效申请人名称：华硕电脑股份有限公司制造商名称：华硕电脑股份有限公司产品名称：笔记本电脑3C产品型号：见附件产品名称：Asus/华硕 顽石 顽石4代能效等级: 一级品牌: Asus/华硕型号: 顽石4代屏幕尺寸: 15.6英寸CPU: 第六代酷睿I7-6500U显卡类型: NVIDIA GeForce 940M显存容量: 2GB机械硬盘容量: 无机械硬盘内存容量: 4GB', 1, 0, '2016-07-20 11:30:20', 0, 36, 17);
INSERT INTO `goods` VALUES (50, 'Apple/苹果 MacBook Pro MJLT2CH/A', 17588.00, 17588.00, '49.jpg', '证书编号：2012010902552763证书状态：有效申请人名称：美国苹果公司制造商名称：美国苹果公司产品名称：笔记型电脑3C产品型号：A1398：20VDC，4.25A（电源适配器（可选）:A1424）产品名称：Apple/苹果 MacBook Pro ...能效等级: 无品牌: Apple/苹果MacBook Pro系列型号: MJLT2CH/A屏幕尺寸: 15英寸CPU: Intel 酷睿i7 4870HQ显卡类型: AMD Radeon R9 M370X 配备 2GB GDD显存容量: 2GB机械硬盘容量: 无机械硬盘内存容量: 16G操作系统: Mac OS', 0, 1, '2016-07-20 11:31:28', 0, 36, 17);
INSERT INTO `goods` VALUES (51, 'Lenovo/联想 YOGA710 -14ISK', 5499.00, 5499.00, '50.jpg', '证书编号：2014010902742663证书状态：有效申请人名称：联宝(合肥)电子科技有限公司制造商名称：联想(北京)有限公司产品名称：便携式计算机3C产品型号：Lenovo Yoga 3 14xxxx (x 代表0-9, a-z, A-Z, - 或空格,代表销...产品名称：Lenovo/联想 YOGA710 -1...能效等级: 一级品牌: Lenovo/联想型号: -14ISK屏幕尺寸: 14英寸CPU: Core/酷睿 i5 i5-6200U显卡类型: NVIDIA GeForce GT940MX显存容量: 2GB机械硬盘容量: 无机械硬盘内存容量: 4GB操作系统: windows 10', 0, 1, '2016-07-20 11:32:20', 8, 36, 17);
INSERT INTO `goods` VALUES (52, '联想台式机电脑G50500I', 3299.00, 3299.00, '51.jpg', '证书编号：2012010902583758证书状态：有效申请人名称：联宝(合肥)电子科技有限公司制造商名称：联想(北京)有限公司产品名称：便携式计算机3C产品型号：见附件CPU类型: Core/酷睿 i5型号: I5-4460新圆梦系列型号: H5050 I5-4460...适用品牌: Intel/英特尔内存容量: 4GB内存类型: DDR3硬盘容量: 1TB显卡类型: 独立显卡屏幕尺寸: 无显示器显示器类型: 无显示器', 0, 1, '2016-07-20 11:34:09', 2, 36, 17);
INSERT INTO `goods` VALUES (53, 'Dell/戴尔 I3650-1838', 5499.00, 5499.00, '52.jpg', 'CPU类型: Core/酷睿 i5型号: i5-6400内存容量: 8GB硬盘容量: 1TB显卡类型: 独立显卡显卡型号: NVIDIA GeForce 730 2GB GDDR3屏幕尺寸: 23英寸显示器类型: 其他/other', 0, 1, '2016-07-20 11:36:28', 0, 37, 17);
INSERT INTO `goods` VALUES (54, 'Alienware 外星人 ALPHA R2 ALWAD-4728', 8999.00, 8999.00, '53.jpg', '产品名称：alienware ALWAD-4728CPU类型: Core/酷睿 i7型号: i7 6700T内存容量: 8GB内存类型: 其他/other硬盘容量: 其他/other显卡类型: 独立显卡显卡型号: NVIDIA GeForce GTX 960 GPU屏幕尺寸: 无显示器显示器类型: 无显示器操作系统: 其他/other', 0, 1, '2016-07-20 11:37:29', 2, 37, 17);
INSERT INTO `goods` VALUES (55, '海尔电脑主机轰天雷X9', 3999.00, 3999.00, '54.jpg', '证书编号：2014010901684338证书状态：有效申请人名称：海尔信息科技(深圳)有限公司制造商名称：海尔信息科技(深圳)有限公司产品名称：微型计算机 产品名称：Haier/海尔 轰天雷X8-8G...CPU类型: Core/酷睿 i5型号: 4460适用品牌: Intel/英特尔台机Intel型号: 其他/other内存容量: 8GB内存类型: DDR3硬盘容量: 1T显卡类型: 独立显卡显卡型号: GTX950屏幕尺寸: 无显示器显示器类型: 无显示器操作系统: MS-DOS', 0, 1, '2016-07-20 11:38:45', 0, 37, 17);
INSERT INTO `goods` VALUES (56, 'asus/华硕 G11', 5899.00, 5899.00, '55.jpg', '产品名称：Asus/华硕 G11CDCPU类型: Core/酷睿 i7型号: I7-6700适用品牌: 其他/other内存容量: 8GB内存类型: DDR3硬盘容量: 1T显卡类型: 独立显卡显卡型号: 其他/other屏幕尺寸: 无显示器显示器类型: 无显示器', 0, 1, '2016-07-20 11:39:52', 2, 37, 17);
INSERT INTO `goods` VALUES (57, 'SNSIR/申士 Y207', 1298.00, 1298.00, '56.jpg', '产品名称：SNSIR/申士 Y207主机播放碟片格式: 无主机类型: 仅有功放无碟机毛重: 大约23KG视频连接方式: 无附加功能: AUX接口 USB接口 蓝牙连接 麦克风接口音效模式: Dolby Digital（AC-3）音箱箱体材质: 塑料音箱连接方式: 光纤传输 同轴传输颜色分类: 香槟色壁挂式5.1家庭影院 香槟色落地式5.1家庭影院品牌: SNSIR/申士型号: Y207声道数: 5.1是否DVD播放机: 不带DVD机', 0, 1, '2016-07-20 11:41:14', 3, 38, 17);
INSERT INTO `goods` VALUES (58, 'Philips/飞利浦 HTB3581/93', 2699.00, 2699.00, '57.jpg', '产品名称：Philips/飞利浦 HTB3581/...主机播放碟片格式: CD DVD VCD 蓝光主机类型: 功放与碟机一体式毛重: 26.3kg视频连接方式: HDMI 混合Video附加功能: AUX接口 LAN网络接口 USB接口 收音机 麦克风接口音效模式: DTS Dolby Digital（AC-3） Dolby Pro Logic Dolby Pro Logic II PCM sdds音箱箱体材质: 塑料音箱连接方式: HDMI传输 光纤传输 同轴传输 模拟传输颜色分类: 黑色品牌: Philips/飞利浦飞利浦家庭影院型号: HTB3581/93声道数: 5.1款式: 音柱式是否DVD播放机: 带DVD机输出功率: 801W(含)-1000W(含) 最大输出功率: 1000W', 0, 1, '2016-07-20 11:42:31', 5, 38, 17);
INSERT INTO `goods` VALUES (59, 'Yamaha/雅马哈 YHT-299', 2990.00, 2990.00, '58.jpg', '产品名称：Yamaha/雅马哈 YHT-299主机播放碟片格式: 无主机类型: 仅有功放无碟机毛重: 21kg视频连接方式: 无音效模式: DTS Dolby Pro Logic Dolby Pro Logic II音箱箱体材质: 塑料音箱连接方式: HDMI传输 光纤传输 同轴传输颜色分类: 黑色品牌: Yamaha/雅马哈型号: YHT-299声道数: 5.1款式: 卫星/迷你式是否DVD播放机: 不带DVD机输出功率: 601W(含)-800W(含) 最大输出功率: 675W', 0, 1, '2016-07-20 11:43:18', 77, 38, 17);
INSERT INTO `goods` VALUES (60, 'JBL ARENA180/VSX-531', 10580.00, 10580.00, '59.jpg', '主机播放碟片格式: 无主机类型: 仅有功放无碟机堆码层数极限: 3层毛重: 约60KG视频连接方式: HDMI附加功能: USB接口 收音机 蓝牙连接音效模式: DTS Dolby Digital（AC-3）音箱箱体材质: 木颜色分类: 180影院+先锋531品牌: JBL型号: ARENA180/VSX-531声道数: 5.1款式: 古典是否DVD播放机: 不带DVD机输出功率: 801W(含)-1000W(含)', 0, 1, '2016-07-20 11:44:21', 50, 38, 17);
INSERT INTO `goods` VALUES (61, 'Sony/索尼 BDV-N9200WL', 7038.00, 7038.00, '60.jpg', '产品名称：Sony/索尼 BDV-N9200WL主机播放碟片格式: CD DVD VCD 蓝光主机类型: 功放与碟机一体式堆码层数极限: 9层毛重: 28kg视频连接方式: HDMI附加功能: 2D转3D LAN网络接口 NFC USB接口 WIFI 收音机 蓝牙连接音效模式: DTS Dolby Digital（AC-3） Dolby Pro Logic Dolby Pro Logic II音箱箱体材质: 塑料音箱连接方式: 无线 模拟传输品牌: Sony/索尼索尼家庭影院型号: BDV-N9200WL声道数: 5.1款式: 音柱式是否DVD播放机: 带DVD机输出功率: 401W(含)-600W(含)售后服务: 全国联保', 0, 0, '2016-07-20 11:45:23', 20, 38, 17);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) DEFAULT NULL,
  `recevie_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `recevie_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `recevie_tel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `addtime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `ix_orders_addtime`(`addtime`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (21, 3, '测试', '這是誰', '18910441510', '闪电法师', '2018-10-31 18:50:36');
INSERT INTO `orders` VALUES (22, 3, '测试3', '手动阀', '18910441510', '手动阀', '2018-10-31 18:52:26');
INSERT INTO `orders` VALUES (23, 3, '侧室', '123', '18910441510', '的所发生的', '2018-10-31 18:52:50');
INSERT INTO `orders` VALUES (24, 3, '张三', '长春', '18910441510', '测试', '2018-11-01 09:06:16');
INSERT INTO `orders` VALUES (25, 3, '李四', '长春', '18910441510', '阿斯頓發生', '2018-11-01 09:52:41');
INSERT INTO `orders` VALUES (26, 6, '小明', '吉林长春', '18910441510', '请送货上门', '2018-11-02 15:55:01');
INSERT INTO `orders` VALUES (27, 6, '郭靖', '北京回龙观', '18910441510', '快点发货', '2018-11-02 15:55:50');

-- ----------------------------
-- Table structure for orders_detail
-- ----------------------------
DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_id` int(0) DEFAULT NULL,
  `order_id` int(0) DEFAULT NULL,
  `number` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_detail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_detail
-- ----------------------------
INSERT INTO `orders_detail` VALUES (8, 2, 21, 1);
INSERT INTO `orders_detail` VALUES (9, 3, 21, 1);
INSERT INTO `orders_detail` VALUES (10, 18, 22, 1);
INSERT INTO `orders_detail` VALUES (11, 19, 22, 1);
INSERT INTO `orders_detail` VALUES (12, 47, 23, 1);
INSERT INTO `orders_detail` VALUES (13, 49, 23, 1);
INSERT INTO `orders_detail` VALUES (14, 50, 23, 1);
INSERT INTO `orders_detail` VALUES (15, 56, 24, 1);
INSERT INTO `orders_detail` VALUES (16, 2, 25, 1);
INSERT INTO `orders_detail` VALUES (17, 3, 25, 5);
INSERT INTO `orders_detail` VALUES (18, 2, 26, 1);
INSERT INTO `orders_detail` VALUES (19, 17, 26, 1);
INSERT INTO `orders_detail` VALUES (20, 60, 26, 1);
INSERT INTO `orders_detail` VALUES (21, 4, 27, 1);
INSERT INTO `orders_detail` VALUES (22, 7, 27, 1);

-- ----------------------------
-- Table structure for subcat
-- ----------------------------
DROP TABLE IF EXISTS `subcat`;
CREATE TABLE `subcat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `addtime` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `super_cat_id` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `super_cat_id`(`super_cat_id`) USING BTREE,
  INDEX `ix_subcat_addtime`(`addtime`) USING BTREE,
  CONSTRAINT `subcat_ibfk_1` FOREIGN KEY (`super_cat_id`) REFERENCES `supercat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subcat
-- ----------------------------
INSERT INTO `subcat` VALUES (27, '管理', '2018-10-25 10:26:52', 14);
INSERT INTO `subcat` VALUES (28, '投资', '2018-10-25 10:26:52', 14);
INSERT INTO `subcat` VALUES (29, '理财', '2018-10-25 10:26:52', 14);
INSERT INTO `subcat` VALUES (30, '冰箱', '2018-10-25 10:26:52', 15);
INSERT INTO `subcat` VALUES (31, '电视', '2018-10-25 10:26:52', 15);
INSERT INTO `subcat` VALUES (32, '洗衣机', '2018-10-25 10:26:52', 15);
INSERT INTO `subcat` VALUES (33, '男装', '2018-10-25 10:26:52', 16);
INSERT INTO `subcat` VALUES (34, '女装', '2018-10-25 10:26:52', 16);
INSERT INTO `subcat` VALUES (35, '童装', '2018-10-25 10:26:52', 16);
INSERT INTO `subcat` VALUES (36, '笔记本', '2018-10-25 10:26:52', 17);
INSERT INTO `subcat` VALUES (37, '台式机', '2018-10-25 10:26:52', 17);
INSERT INTO `subcat` VALUES (38, '音响', '2018-10-25 10:26:52', 17);

-- ----------------------------
-- Table structure for supercat
-- ----------------------------
DROP TABLE IF EXISTS `supercat`;
CREATE TABLE `supercat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `addtime` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_supercat_addtime`(`addtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supercat
-- ----------------------------
INSERT INTO `supercat` VALUES (14, '图书', '2018-10-25 10:24:59');
INSERT INTO `supercat` VALUES (15, '家电', '2018-10-25 10:24:59');
INSERT INTO `supercat` VALUES (16, '服装', '2018-10-25 10:24:59');
INSERT INTO `supercat` VALUES (17, '电子', '2018-10-25 15:35:51');
INSERT INTO `supercat` VALUES (30, '是的法定', '2018-10-29 17:39:47');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `addtime` datetime(0) DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `consumption` decimal(10, 2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `phone`(`phone`) USING BTREE,
  INDEX `ix_user_addtime`(`addtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'andy', '694798056@qq.com', '13912345678', '2018-10-27 13:37:33', 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57', 0.00);
INSERT INTO `user` VALUES (2, 'Tom', '1232434@qq.com', '123343467', '2018-10-27 13:55:03', 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57', 0.00);
INSERT INTO `user` VALUES (3, 'zhangsan', '123456@qq.com', '18910441212', '2018-10-31 09:42:14', 'pbkdf2:sha256:50000$LSXCOuSP$8be298f1360258b419844a128bf053d63c84af626d30404237b3f8ca417e3d9b', 0.00);
INSERT INTO `user` VALUES (5, 'lisi', '1234567@qq.com', '18910441213', '2018-10-31 09:49:23', 'pbkdf2:sha256:50000$6ghkMYvc$d2c93fa14932f0dc6e6aa3ea98c39dafba21cd367c6a9c0d3d99360649c94755', 0.00);
INSERT INTO `user` VALUES (7, '小张2', 'yu@gmail.com', '15716743553', '2024-07-01 15:12:41', 'pbkdf2:sha256:50000$WzjoO3Q3$f0a155539437c7d10baa3d8efc88bc727a5325f987cef8a2e958bb93d26dc904', 0.00);

SET FOREIGN_KEY_CHECKS = 1;
