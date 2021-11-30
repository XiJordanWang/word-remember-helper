/*
 Navicat Premium Data Transfer

 Source Server         : localhost@test
 Source Server Type    : MariaDB
 Source Server Version : 100605
 Source Host           : localhost:3306
 Source Schema         : word_remember_helper

 Target Server Type    : MariaDB
 Target Server Version : 100605
 File Encoding         : 65001

 Date: 30/11/2021 23:05:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 唯一主键',
  `word_en` varchar(255) DEFAULT NULL COMMENT '英文单词',
  `word_description` varchar(255) DEFAULT NULL COMMENT '单词描述',
  `un_remember_times` int(11) DEFAULT NULL COMMENT '没记住次数',
  `remember_date` datetime DEFAULT NULL COMMENT '第一次记忆时间',
  `is_remember` tinyint(1) DEFAULT NULL COMMENT '是否记住了',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of word
-- ----------------------------
BEGIN;
INSERT INTO `word` VALUES (1, 'essence', 'n.本质，精髓', 0, '2021-11-27 20:49:10', 1);
INSERT INTO `word` VALUES (2, 'pastel', 'a.彩色蜡笔的;柔和的 n.彩色蜡笔（画）', 0, '2021-11-27 23:58:45', 1);
INSERT INTO `word` VALUES (3, 'cultivate', 'vt.耕种;培养', 0, '2021-11-28 13:48:30', 1);
INSERT INTO `word` VALUES (4, 'recover', 'v.复原，恢复；重新获得；收回', 0, '2021-11-28 16:01:06', 1);
INSERT INTO `word` VALUES (5, 'substitute', 'n.代替者，代替品 v.代替', 0, '2021-11-28 16:03:59', 1);
INSERT INTO `word` VALUES (6, 'renaissance', 'n.(欧洲14至16世纪的)文艺复兴；文艺复兴时期；复兴；再生', 0, '2021-11-28 16:05:58', 1);
INSERT INTO `word` VALUES (7, 'sweat', 'n.汗；一身汗;v.(使)出汗', 0, '2021-11-28 16:07:04', 1);
INSERT INTO `word` VALUES (8, 'underscore', 'vt.强调；在...之下划线 n.底线', 0, '2021-11-28 16:10:09', 1);
INSERT INTO `word` VALUES (9, 'conform', 'vi.遵守，服从；符合；适应', 1, '2021-11-28 16:11:37', 1);
INSERT INTO `word` VALUES (10, 'husk', 'n.(果类、谷物等的)外壳，外皮 vt.去壳，削皮', 0, '2021-11-28 16:12:44', 1);
INSERT INTO `word` VALUES (11, 'tide', 'v.涨落 n.潮，潮汐；潮流，趋势', 0, '2021-11-28 16:15:53', 1);
INSERT INTO `word` VALUES (12, 'decade', 'n.十年；十年期', 0, '2021-11-28 16:16:32', 1);
INSERT INTO `word` VALUES (13, 'pluralism', 'n.多元化，多元性；多元主义', 0, '2021-11-28 16:17:28', 1);
INSERT INTO `word` VALUES (14, 'vagrant', 'n.无业游民，流浪者 a.漂泊的', 0, '2021-11-28 16:18:11', 1);
INSERT INTO `word` VALUES (15, 'incline', 'v.(使)倾斜；（使）倾向于 n.斜坡，斜面', 0, '2021-11-28 16:19:09', 1);
INSERT INTO `word` VALUES (16, 'grievous', 'a.令人忧伤的；极严重的', 1, '2021-11-28 16:21:27', 1);
INSERT INTO `word` VALUES (17, 'saucy', 'a.无礼的；俏皮的；漂亮的', 0, '2021-11-28 16:22:21', 1);
INSERT INTO `word` VALUES (18, 'disproportionate', 'a.不成比例的', 0, '2021-11-28 16:23:29', 1);
INSERT INTO `word` VALUES (19, 'withhold', 'vt.拒绝给,不给；抑制；忍住', 0, '2021-11-28 16:24:05', 1);
INSERT INTO `word` VALUES (20, 'nosy', 'a.爱管闲事的，好打听的', 0, '2021-11-28 16:24:26', 1);
INSERT INTO `word` VALUES (21, 'stumble', 'vi.绊脚；蹒跚而行；（说话时）结巴', 0, '2021-11-28 16:25:12', 1);
INSERT INTO `word` VALUES (22, 'imaginative', 'a.富有想象力的；创新的', 0, '2021-11-28 16:25:58', 1);
INSERT INTO `word` VALUES (23, 'chaotic', 'a.混乱的，无秩序的', 0, '2021-11-28 16:26:29', 1);
INSERT INTO `word` VALUES (24, 'renown', 'n.名望，声誉', 0, '2021-11-28 16:26:53', 1);
INSERT INTO `word` VALUES (25, 'scroll', 'n.卷轴；纸卷，画卷；名册', 0, '2021-11-28 16:27:27', 1);
INSERT INTO `word` VALUES (26, 'embrace', 'v.拥抱；包含；欣然接受 n.拥抱', 0, '2021-11-28 16:28:07', 1);
INSERT INTO `word` VALUES (27, 'obliterate', 'vt.覆盖；消灭；忘却', 0, '2021-11-28 16:28:59', 1);
INSERT INTO `word` VALUES (28, 'colonization', 'n.殖民地化', 0, '2021-11-28 16:29:56', 1);
INSERT INTO `word` VALUES (29, 'affiliate', 'vt.使隶属于 n.分公司', 0, '2021-11-28 16:30:28', 1);
INSERT INTO `word` VALUES (30, 'rancorous', 'a.怨恨的，满怀恶意的', 0, '2021-11-28 16:31:11', 1);
INSERT INTO `word` VALUES (31, 'subculture', 'n.（某群体所特有的）亚文化行为观念，次文化', 0, '2021-11-28 16:31:52', 1);
INSERT INTO `word` VALUES (32, 'forum', 'n.论坛；讨论会', 0, '2021-11-28 16:32:38', 1);
INSERT INTO `word` VALUES (33, 'participant', 'n.参与者；参赛者', 0, '2021-11-28 16:33:16', 1);
INSERT INTO `word` VALUES (34, 'strain', 'n.拉力，压力，张力；扭伤 vt.扭伤；使紧张；拉紧', 0, '2021-11-28 16:34:05', 1);
INSERT INTO `word` VALUES (35, 'vary', 'v.改变，变化', 0, '2021-11-28 16:34:54', 1);
INSERT INTO `word` VALUES (36, 'mediate', 'v.调节，调停', 0, '2021-11-28 16:35:45', 1);
INSERT INTO `word` VALUES (37, 'sensitive', 'a.敏感的；灵敏的', 0, '2021-11-28 16:36:01', 1);
INSERT INTO `word` VALUES (38, 'exposition', 'n.展览会，博览会；阐释', 0, '2021-11-28 16:36:33', 1);
INSERT INTO `word` VALUES (39, 'sphere', 'n.球（体）；范围，领域；阶层', 0, '2021-11-28 16:37:18', 1);
INSERT INTO `word` VALUES (40, 'discharge', 'n.流出物；放电；v.释放；放（电）；解雇；清偿；履行', 0, '2021-11-28 16:38:26', 1);
INSERT INTO `word` VALUES (41, 'giant', 'a.巨大的；超群的；n.巨大的动物（或植物）；才智超群的人', 0, '2021-11-28 16:39:06', 1);
INSERT INTO `word` VALUES (42, 'melt', 'v.(使)融化，（使）熔化；（使）消散', 0, '2021-11-28 16:40:11', 1);
INSERT INTO `word` VALUES (43, 'solicit', 'v.恳请；乞求；征求；勾引；招揽（生意）', 0, '2021-11-28 16:40:51', 1);
INSERT INTO `word` VALUES (44, 'leisure', 'n.空闲，闲暇', 0, '2021-11-28 16:41:20', 1);
INSERT INTO `word` VALUES (45, 'unravel', 'v.澄清；解体，瓦解；揭开', 0, '2021-11-28 16:42:05', 1);
INSERT INTO `word` VALUES (46, 'nail', 'n.指甲，爪；钉 vt.将...钉牢，钉住', 0, '2021-11-28 16:43:32', 1);
INSERT INTO `word` VALUES (47, 'attain', 'vt.达到；获得', 0, '2021-11-28 16:44:05', 1);
INSERT INTO `word` VALUES (48, 'constitute', 'v.组成；设立；制定', 3, '2021-11-28 16:44:34', 1);
INSERT INTO `word` VALUES (49, 'unsubstantiated', 'a.未经证实的，无事实根据的', 0, '2021-11-28 16:45:15', 1);
INSERT INTO `word` VALUES (50, 'stylized', 'a.(绘画、写作等手法)非写实的；程式化的', 0, '2021-11-28 16:46:03', 1);
INSERT INTO `word` VALUES (51, 'intrepid', 'a.勇敢的，无谓的', 0, '2021-11-28 16:46:29', 1);
INSERT INTO `word` VALUES (52, 'nominee', 'n.被提名者，被任命者', 0, '2021-11-28 16:46:59', 1);
INSERT INTO `word` VALUES (53, 'panic', 'n./v. 惊慌', 0, '2021-11-28 16:47:39', 1);
INSERT INTO `word` VALUES (54, 'lure', 'vt.吸引，诱惑 n.诱惑力；诱饵', 0, '2021-11-28 16:48:20', 1);
INSERT INTO `word` VALUES (55, 'routine', 'n.例行公事；惯例，常规 a.例行的；常规的', 0, '2021-11-28 16:48:59', 1);
INSERT INTO `word` VALUES (56, 'solution', 'n.溶液；解答，解决（办法）', 0, '2021-11-28 16:49:40', 1);
INSERT INTO `word` VALUES (57, 'revere', 'vt.尊敬，敬畏', 0, '2021-11-28 16:50:03', 1);
INSERT INTO `word` VALUES (58, 'idealize', 'vt.将...理想化', 0, '2021-11-28 16:50:21', 1);
INSERT INTO `word` VALUES (59, 'flash', 'n.闪光；闪现 vi.闪光；反射', 0, '2021-11-28 16:50:51', 1);
INSERT INTO `word` VALUES (60, 'secrete', 'vt.分泌；藏匿；躲藏', 0, '2021-11-28 16:51:26', 1);
INSERT INTO `word` VALUES (61, 'issue', 'n.问题，争论点；发型；（报刊的）一期 vt.颁布；发行', 0, '2021-11-28 16:52:24', 1);
INSERT INTO `word` VALUES (62, 'aria', 'n.独唱曲，咏叹调', 0, '2021-11-28 16:52:54', 1);
INSERT INTO `word` VALUES (63, 'facilitate', 'vt.推动，促进', 1, '2021-11-28 16:53:26', 1);
INSERT INTO `word` VALUES (64, 'electricity', 'n.电；电流', 0, '2021-11-28 16:54:16', 1);
INSERT INTO `word` VALUES (65, 'progressive', 'a.进步的；逐步的；渐进的；进行时的；', 0, '2021-11-28 17:48:49', 1);
INSERT INTO `word` VALUES (66, 'reef', 'n.礁，暗礁', 0, '2021-11-28 17:49:20', 1);
INSERT INTO `word` VALUES (67, 'president', 'n.总统，（大学）校长，（大会）主席', 0, '2021-11-28 17:49:57', 1);
INSERT INTO `word` VALUES (68, 'feeble', 'a.虚弱的，衰弱的，无力的', 0, '2021-11-28 17:50:29', 1);
INSERT INTO `word` VALUES (69, 'influx', 'n.注入，涌入', 0, '2021-11-28 17:50:44', 1);
INSERT INTO `word` VALUES (70, 'receptacle', 'n.容器；插座', 0, '2021-11-28 17:51:05', 1);
INSERT INTO `word` VALUES (71, 'accent', 'n.重音；口音；重音符号 vt.重读', 1, '2021-11-28 17:51:42', 1);
INSERT INTO `word` VALUES (72, 'kernel', 'n.（硬壳果）仁；（谷物去核后的）粒；核心，要点', 0, '2021-11-28 17:52:42', 1);
INSERT INTO `word` VALUES (73, 'secure', 'a.安全的，有保障的；可靠的；确定的；稳固的 vt.获得；确保', 0, '2021-11-28 17:53:21', 1);
INSERT INTO `word` VALUES (74, 'electron', 'n.电子', 0, '2021-11-28 17:53:38', 1);
INSERT INTO `word` VALUES (75, 'segment', 'n.音段；段，部分', 0, '2021-11-28 17:54:11', 1);
INSERT INTO `word` VALUES (76, 'nourish', 'vt.滋养；养育', 0, '2021-11-28 17:54:27', 1);
INSERT INTO `word` VALUES (77, 'engulf', 'vt.吞没', 0, '2021-11-28 17:54:43', 1);
INSERT INTO `word` VALUES (78, 'bedrock', 'n.基础，根基；基岩', 0, '2021-11-28 17:55:09', 1);
INSERT INTO `word` VALUES (79, 'due', 'a.到期的；预期的；应得的；恰当的，适当的；应支付的', 6, '2021-11-28 17:55:44', 1);
INSERT INTO `word` VALUES (80, 'unprecedented', 'a.空前的', 0, '2021-11-28 17:55:59', 1);
INSERT INTO `word` VALUES (81, 'expel', 'vt.开除；驱逐；排出', 1, '2021-11-28 17:56:36', 1);
INSERT INTO `word` VALUES (82, 'verbal', 'a.口头的；言辞的；动词的', 0, '2021-11-28 17:56:55', 1);
INSERT INTO `word` VALUES (83, 'deadline', 'n.最后期限，截止时间', 1, '2021-11-28 17:57:12', 1);
INSERT INTO `word` VALUES (84, 'tolerate', 'vt.忍受；容许，承认', 1, '2021-11-28 17:57:27', 1);
INSERT INTO `word` VALUES (85, 'identity', 'n.身份；特征，特征；同一性', 1, '2021-11-28 17:57:49', 1);
INSERT INTO `word` VALUES (86, 'seep', 'v.漏出，渗漏', 1, '2021-11-28 17:58:19', 1);
INSERT INTO `word` VALUES (87, 'patriarch', 'n.家长，族长', 1, '2021-11-28 17:58:40', 1);
INSERT INTO `word` VALUES (88, 'engage', 'v.(使)从事于，（使）忙于；吸引；（使）订婚；聘用', 0, '2021-11-28 18:00:49', 1);
INSERT INTO `word` VALUES (89, 'constrain', 'vt.束缚，限制', 0, '2021-11-28 18:01:12', 1);
INSERT INTO `word` VALUES (90, 'innocent', 'a.天真的；清白的；无恶意的', 0, '2021-11-28 18:01:45', 1);
INSERT INTO `word` VALUES (91, 'interior', 'a.内部的；内地的 n.内部；内陆', 0, '2021-11-28 18:08:33', 1);
INSERT INTO `word` VALUES (92, 'constitution', 'n.宪法，章程；体质；构成', 1, '2021-11-28 18:09:08', 1);
INSERT INTO `word` VALUES (93, 'freeze', 'v.(使)结冰，(使)凝固', 0, '2021-11-28 18:09:38', 1);
INSERT INTO `word` VALUES (94, 'dehydrate', 'v.(使)脱水', 0, '2021-11-28 18:10:15', 1);
INSERT INTO `word` VALUES (95, 'sinuous', 'a.蜿蜒的；迂回的', 0, '2021-11-28 18:11:18', 1);
INSERT INTO `word` VALUES (96, 'alarm', 'n.闹钟；警报 vt.使惊恐；使担心', 0, '2021-11-28 18:11:49', 1);
INSERT INTO `word` VALUES (97, 'machinery', 'n.<总称>机器，机械；机构', 0, '2021-11-28 18:12:24', 1);
INSERT INTO `word` VALUES (98, 'expect', 'v.预期，期望，指望', 0, '2021-11-28 18:12:43', 1);
INSERT INTO `word` VALUES (99, 'anticipate', 'v.预见，预期；先于...行动', 3, '2021-11-28 18:13:12', 1);
INSERT INTO `word` VALUES (100, 'critic', 'n.评论家，批评家；吹毛求疵者', 0, '2021-11-28 18:13:44', 1);
INSERT INTO `word` VALUES (101, 'instinctual', 'a.本能的', 1, '2021-11-28 18:14:18', 1);
INSERT INTO `word` VALUES (102, 'uncanny', 'a.神秘的；异乎寻常的', 0, '2021-11-28 18:14:50', 1);
INSERT INTO `word` VALUES (103, 'arrest', 'n./vt.逮捕，拘留；停止，阻止；吸引', 0, '2021-11-28 18:15:42', 1);
INSERT INTO `word` VALUES (104, 'sprinkle', 'v.撒，洒，喷 n.少量', 0, '2021-11-28 18:16:08', 1);
INSERT INTO `word` VALUES (105, 'orthodox', 'a.传统的；正统的', 0, '2021-11-28 18:16:44', 1);
INSERT INTO `word` VALUES (106, 'preliterate', 'a.文字出现以前的，没有文字的', 0, '2021-11-28 18:17:24', 1);
INSERT INTO `word` VALUES (107, 'nominal', 'a.名义上的；（费用等）微不足道的', 0, '2021-11-28 18:18:00', 1);
INSERT INTO `word` VALUES (108, 'certitude', 'n.确定，确信；必然性', 0, '2021-11-28 18:18:23', 1);
INSERT INTO `word` VALUES (109, 'hustle', 'n.忙碌 vt.猛推；催促', 2, '2021-11-28 18:19:12', 1);
INSERT INTO `word` VALUES (110, 'fake', 'a.冒充的 n.假货；骗子 v.伪造；伪装', 0, '2021-11-28 18:19:47', 1);
INSERT INTO `word` VALUES (111, 'engrave', 'vt. (在...上)雕刻；铭刻', 0, '2021-11-28 18:20:14', 1);
INSERT INTO `word` VALUES (112, 'prohibit', 'v.禁止，阻止', 1, '2021-11-28 18:20:43', 1);
INSERT INTO `word` VALUES (113, 'homage', 'n.尊敬，敬意', 0, '2021-11-28 18:21:12', 1);
INSERT INTO `word` VALUES (114, 'dramatize', 'v.改编成喜剧；（使）戏剧化，戏剧性地表现', 0, '2021-11-28 18:21:48', 1);
INSERT INTO `word` VALUES (115, 'infatuate', 'vt.使迷恋；使糊涂', 1, '2021-11-28 18:22:47', 1);
INSERT INTO `word` VALUES (116, 'exclusive', 'a.独占的；除外的，排他的；奢华的 n.独家新闻', 1, '2021-11-28 18:23:42', 1);
INSERT INTO `word` VALUES (117, 'cynical', 'a.愤世嫉俗的，冷嘲热讽的', 4, '2021-11-28 18:24:11', 0);
INSERT INTO `word` VALUES (118, 'discriminate', 'v.区别；歧视', 2, '2021-11-28 18:24:35', 1);
INSERT INTO `word` VALUES (119, 'associate', 'v.结交；关联 a.副的；合伙的 n.伙伴', 0, '2021-11-28 18:25:28', 1);
INSERT INTO `word` VALUES (120, 'spare', 'vt.抽出（时间等）；免除 a.备用的；空闲的 n.备用品', 0, '2021-11-28 18:26:08', 1);
INSERT INTO `word` VALUES (121, 'database', 'n.数据库', 0, '2021-11-28 18:26:20', 1);
INSERT INTO `word` VALUES (122, 'proclaim', 'v.宣布，声明；显示', 1, '2021-11-28 18:26:54', 1);
INSERT INTO `word` VALUES (123, 'level', 'n.水平；高度；级别 a.平坦的；等高的 vt.夷平，使平坦', 0, '2021-11-28 18:27:46', 1);
INSERT INTO `word` VALUES (124, 'controversy', 'n.争论，辩论', 4, '2021-11-28 18:28:20', 0);
INSERT INTO `word` VALUES (125, 'oppose', 'v.反对，对抗', 0, '2021-11-28 18:28:42', 1);
INSERT INTO `word` VALUES (126, 'toxic', 'a.有毒的；中毒的', 0, '2021-11-28 18:28:57', 1);
INSERT INTO `word` VALUES (127, 'lead', 'v.领导，引导；领先，占首位；通向，导致，引起 n.带领，引导', 0, '2021-11-28 18:29:41', 1);
INSERT INTO `word` VALUES (128, 'rustproof', 'a.不锈的', 0, '2021-11-28 18:30:06', 1);
INSERT INTO `word` VALUES (129, 'sunlit', 'a.阳光照射的', 0, '2021-11-28 18:30:23', 1);
INSERT INTO `word` VALUES (130, 'profession', 'n.职业；同行；专业；宣称', 0, '2021-11-28 18:30:42', 1);
INSERT INTO `word` VALUES (131, 'hay', 'n.干草', 0, '2021-11-28 18:30:59', 1);
INSERT INTO `word` VALUES (132, 'vegetarian', 'n.素食者 a.素食者的', 0, '2021-11-28 18:31:34', 1);
INSERT INTO `word` VALUES (133, 'column', 'n.专栏（文章）；圆柱，支柱；纵队', 1, '2021-11-28 18:33:15', 1);
INSERT INTO `word` VALUES (134, 'microbe', 'n.微生物，细菌', 0, '2021-11-28 18:33:51', 1);
INSERT INTO `word` VALUES (135, 'homestead', 'n.家宅，农庄；宅地', 0, '2021-11-28 18:34:26', 1);
INSERT INTO `word` VALUES (136, 'canyon', 'n.峡谷', 1, '2021-11-28 18:34:41', 1);
INSERT INTO `word` VALUES (137, 'portraiture', 'n.画像技法；肖像，画像', 3, '2021-11-28 18:35:16', 1);
INSERT INTO `word` VALUES (138, 'alloy', 'n.合金 vt.使成合金', 1, '2021-11-28 18:35:42', 1);
INSERT INTO `word` VALUES (139, 'microscopic', 'a.用显微镜可见的；极小的', 0, '2021-11-28 18:37:17', 1);
INSERT INTO `word` VALUES (140, 'verse', 'n.诗歌；韵文；诗节', 0, '2021-11-28 18:37:54', 1);
INSERT INTO `word` VALUES (141, 'credential', 'n.证书；文凭；资格', 0, '2021-11-28 18:38:21', 1);
INSERT INTO `word` VALUES (142, 'towering', 'a.高耸的；杰出的', 0, '2021-11-28 18:38:48', 1);
INSERT INTO `word` VALUES (143, 'pervasive', 'a.普遍深入的；遍及的，弥漫的', 4, '2021-11-28 18:39:49', 0);
INSERT INTO `word` VALUES (144, 'lush', 'a.茂盛的', 0, '2021-11-28 18:40:00', 1);
INSERT INTO `word` VALUES (145, 'igneous', 'a.火的，似火的；火成的，火成岩的', 0, '2021-11-28 18:40:41', 1);
INSERT INTO `word` VALUES (146, 'salient', 'a.显著的，突出的', 4, '2021-11-28 18:41:07', 0);
INSERT INTO `word` VALUES (147, 'rescue', 'vt./n.营救，搭救', 1, '2021-11-28 18:41:39', 1);
INSERT INTO `word` VALUES (148, 'acquire', 'vt.获得，取得', 4, '2021-11-28 18:42:09', 0);
INSERT INTO `word` VALUES (149, 'geometry', 'n.几何；几何学', 0, '2021-11-28 18:42:29', 1);
INSERT INTO `word` VALUES (150, 'inner', 'a.内部的；内心的 n.内部；内心', 0, '2021-11-28 18:42:57', 1);
INSERT INTO `word` VALUES (151, 'combine', 'v.(使)联合，(使)结合', 0, '2021-11-28 18:43:33', 1);
INSERT INTO `word` VALUES (152, 'shrivel', 'v.(使)枯萎', 0, '2021-11-28 18:43:57', 1);
INSERT INTO `word` VALUES (153, 'infancy', 'n.幼年；(发展或生长的)初期', 2, '2021-11-28 18:44:36', 1);
INSERT INTO `word` VALUES (154, 'syrup', 'n.糖浆', 0, '2021-11-28 18:44:53', 1);
INSERT INTO `word` VALUES (155, 'hemp', 'n.大麻；由大麻制成的麻醉药', 0, '2021-11-28 18:45:25', 1);
INSERT INTO `word` VALUES (156, 'ethical', 'a.道德的', 2, '2021-11-28 18:45:43', 1);
INSERT INTO `word` VALUES (157, 'weed', 'n.杂草；水草', 1, '2021-11-28 18:45:56', 1);
INSERT INTO `word` VALUES (158, 'trend', 'n.趋势，倾向', 1, '2021-11-28 18:46:13', 1);
INSERT INTO `word` VALUES (159, 'motivate', 'vt.激励；激发', 0, '2021-11-28 18:47:09', 1);
INSERT INTO `word` VALUES (160, 'dilate', 'v.(使)膨胀，扩大；详述', 2, '2021-11-28 18:47:35', 1);
INSERT INTO `word` VALUES (161, 'peak', 'a.最高的，高峰的 n.最高点，顶峰', 0, '2021-11-28 18:47:59', 1);
INSERT INTO `word` VALUES (162, 'homing', 'a.有返回原地本能的', 0, '2021-11-28 18:48:18', 1);
INSERT INTO `word` VALUES (163, 'flagellum', 'n.鞭毛', 0, '2021-11-28 18:48:43', 1);
INSERT INTO `word` VALUES (164, 'intricate', 'a.错综复杂的', 4, '2021-11-28 18:49:03', 0);
INSERT INTO `word` VALUES (165, 'tournament', 'n.比赛；锦标赛', 0, '2021-11-28 18:49:26', 1);
INSERT INTO `word` VALUES (166, 'advocate', 'vt.提倡 n.倡导者', 4, '2021-11-28 18:49:45', 0);
INSERT INTO `word` VALUES (167, 'crush', 'vt.碾碎；使变形；镇压', 0, '2021-11-28 18:50:07', 1);
INSERT INTO `word` VALUES (168, 'ingredient', 'n.成分，要素；（烹调的）原料', 0, '2021-11-28 18:50:31', 1);
INSERT INTO `word` VALUES (169, 'terminal', 'n.终点站；终点；航站楼 a.末端的', 0, '2021-11-28 18:51:00', 1);
INSERT INTO `word` VALUES (170, 'rub', 'n./v. 擦，摩擦', 3, '2021-11-28 18:51:16', 1);
INSERT INTO `word` VALUES (171, 'mighty', 'a. 强有力的；巨大的', 0, '2021-11-28 18:51:37', 1);
INSERT INTO `word` VALUES (172, 'accident', 'n.意外事件，事故', 0, '2021-11-28 18:51:55', 1);
INSERT INTO `word` VALUES (173, 'inflammation', 'n.炎症，发炎', 0, '2021-11-28 18:52:36', 1);
INSERT INTO `word` VALUES (174, 'shield', 'n.防护物；盾  vt. 保护', 0, '2021-11-28 18:54:05', 1);
INSERT INTO `word` VALUES (175, 'mammoth', 'a.巨大的 n.猛犸，毛象', 0, '2021-11-28 18:54:27', 1);
INSERT INTO `word` VALUES (176, 'nightmare', 'n.噩梦；无法摆脱的恐惧；可怕的事', 0, '2021-11-28 18:54:59', 1);
INSERT INTO `word` VALUES (177, 'accord', 'n.协议，条约 v.与...一致，符合', 0, '2021-11-28 18:55:34', 1);
INSERT INTO `word` VALUES (178, 'versus', 'prep.对，对抗；与...相对，与...相比', 0, '2021-11-28 18:56:09', 1);
INSERT INTO `word` VALUES (179, 'musician', 'n.音乐家，乐师', 0, '2021-11-28 18:56:38', 1);
INSERT INTO `word` VALUES (180, 'dwarf', 'vt.使显得带笑，使相形见绌 a.矮小的 n.侏儒，矮人', 0, '2021-11-28 18:57:33', 1);
INSERT INTO `word` VALUES (181, 'classic', 'a.经典的；典型的 n.经典作品；古典文学', 0, '2021-11-28 18:58:04', 1);
INSERT INTO `word` VALUES (182, 'muggy', 'a.(天气)闷热的', 1, '2021-11-29 20:28:06', 1);
INSERT INTO `word` VALUES (183, 'skyscraper', 'n.摩天楼', 0, '2021-11-30 22:32:57', 1);
INSERT INTO `word` VALUES (184, 'compliment', 'vt.赞美，称赞 n.赞美；问候', 0, '2021-11-30 22:33:51', 1);
INSERT INTO `word` VALUES (185, 'pest', 'n.害虫；令人讨厌的人（或物）', 0, '2021-11-30 22:34:20', 1);
INSERT INTO `word` VALUES (186, 'genius', 'n.天才;天赋', 1, '2021-11-30 22:34:39', 0);
INSERT INTO `word` VALUES (187, 'repute', 'v.(被)成为，认为 n.名声，名誉', 0, '2021-11-30 22:35:12', 1);
INSERT INTO `word` VALUES (188, 'fauna', 'n.动物群', 0, '2021-11-30 22:35:25', 1);
INSERT INTO `word` VALUES (189, 'healthful', 'a.有益健康的', 0, '2021-11-30 22:35:48', 1);
INSERT INTO `word` VALUES (190, 'sympathetic', 'a.感应的，交感的；有同情心的；体谅的', 0, '2021-11-30 22:36:34', 1);
INSERT INTO `word` VALUES (191, 'mortality', 'n.死亡率', 0, '2021-11-30 22:36:58', 1);
INSERT INTO `word` VALUES (192, 'wanna', 'v.想要', 0, '2021-11-30 22:37:10', 1);
INSERT INTO `word` VALUES (193, 'predecessor', 'n.前辈；前任；（被取代的）原有事物', 0, '2021-11-30 22:37:57', 1);
INSERT INTO `word` VALUES (194, 'scrub', 'v.擦洗；取消（计划等）n.灌木丛；丛林地带', 2, '2021-11-30 22:38:31', 0);
INSERT INTO `word` VALUES (195, 'check', 'n.支票；账单；检查 v.检查；制止', 0, '2021-11-30 22:39:01', 1);
INSERT INTO `word` VALUES (196, 'dive', 'vi./n 跳水；潜水', 0, '2021-11-30 22:39:22', 1);
INSERT INTO `word` VALUES (197, 'rough', 'a.粗糙不平的；粗暴的；艰难的 n.高低不平的地面', 0, '2021-11-30 22:39:58', 1);
INSERT INTO `word` VALUES (198, 'stain', 'v.沾污；留下污渍；n.污点，污渍', 0, '2021-11-30 22:40:46', 1);
INSERT INTO `word` VALUES (199, 'multiple', 'a.多样的；多重的 n.倍数', 0, '2021-11-30 22:41:12', 1);
INSERT INTO `word` VALUES (200, 'visual', 'a.视觉的', 0, '2021-11-30 22:41:29', 1);
INSERT INTO `word` VALUES (201, 'rationality', 'n.理性；合理性', 0, '2021-11-30 22:42:07', 1);
INSERT INTO `word` VALUES (202, 'tout', 'v.吹捧；兜售', 0, '2021-11-30 22:42:25', 1);
INSERT INTO `word` VALUES (203, 'stubborn', 'a.顽固的，倔强的；难对付的', 0, '2021-11-30 22:43:00', 1);
INSERT INTO `word` VALUES (204, 'outrage', 'n.暴行；愤慨 vt.激怒', 0, '2021-11-30 22:43:36', 1);
INSERT INTO `word` VALUES (205, 'intrigue', 'n.阴谋，诡计 v.密谋；迷住', 0, '2021-11-30 22:44:16', 1);
INSERT INTO `word` VALUES (206, 'connote', 'v.意味着；暗示', 0, '2021-11-30 22:44:44', 1);
INSERT INTO `word` VALUES (207, 'persistent', 'a.坚持的，百折不挠的；持续的', 0, '2021-11-30 22:45:15', 1);
INSERT INTO `word` VALUES (208, 'secede', 'vi.正式脱离，退出（组织等）', 0, '2021-11-30 22:45:42', 1);
INSERT INTO `word` VALUES (209, 'disquiet', 'v.（使）不安，（使）焦虑 n.不安，焦虑', 0, '2021-11-30 22:46:18', 1);
INSERT INTO `word` VALUES (210, 'bode', 'vi.预示', 0, '2021-11-30 22:46:31', 1);
INSERT INTO `word` VALUES (211, 'folkway', 'n.社会风俗', 0, '2021-11-30 22:46:49', 1);
INSERT INTO `word` VALUES (212, 'console', 'vt.安慰，抚慰', 0, '2021-11-30 22:47:09', 1);
INSERT INTO `word` VALUES (213, 'overrun', 'v. 超过，溢出；泛滥；横行 n.泛滥；超出的部分', 0, '2021-11-30 22:47:51', 1);
INSERT INTO `word` VALUES (214, 'turmoil', 'n.骚动，混乱；焦虑', 2, '2021-11-30 22:48:16', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
