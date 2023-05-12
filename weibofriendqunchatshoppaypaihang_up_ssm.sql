/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : weibofriendqunchatshoppaypaihang_up_ssm

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2023-04-28 18:59:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wct_address
-- ----------------------------
DROP TABLE IF EXISTS `wct_address`;
CREATE TABLE `wct_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_address
-- ----------------------------
INSERT INTO `wct_address` VALUES ('1', 'xiaoxin 15123385885 某某地址', '2');

-- ----------------------------
-- Table structure for wct_bill
-- ----------------------------
DROP TABLE IF EXISTS `wct_bill`;
CREATE TABLE `wct_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gids` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `shop` varchar(100) DEFAULT NULL,
  `bill` varchar(2000) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ndate` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `way` varchar(50) DEFAULT NULL,
  `gnames` varchar(500) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `statecn` varchar(50) DEFAULT NULL,
  `cuidan` varchar(255) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `qusername` varchar(255) DEFAULT NULL,
  `qtel` varchar(255) DEFAULT NULL,
  `pnote` varchar(255) DEFAULT NULL,
  `pf` varchar(255) DEFAULT NULL,
  `shstatecn` varchar(255) DEFAULT NULL,
  `shnote` varchar(255) DEFAULT NULL,
  `shtype` varchar(255) DEFAULT NULL,
  `fhnote` varchar(255) DEFAULT NULL,
  `kid` varchar(255) DEFAULT NULL,
  `ktitle` varchar(255) DEFAULT NULL,
  `kcode` varchar(255) DEFAULT NULL,
  `gcounts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_bill
-- ----------------------------
INSERT INTO `wct_bill` VALUES ('1', '3', '', 'ideabobo', '2', '', '', '', '2023-03-17 09:00:49', '22', '', '记事本*1', '', '', 'xiaoxin 15123385885 某某地址', '', '', '已发货', '', null, '', '', '', '', '', '', '', '', '', '', '', '1');
INSERT INTO `wct_bill` VALUES ('2', '4,3', '', 'ideabobo', '2', '', '', '', '2023-03-17 09:06:59', '55', '', '小夹子*1,记事本*1', '', '', 'xiaoxin 15123385885 某某地址', '', '', '已付款', '', null, '', '', '', '', '', '', '', '', '', '', '', '1,1');

-- ----------------------------
-- Table structure for wct_blog
-- ----------------------------
DROP TABLE IF EXISTS `wct_blog`;
CREATE TABLE `wct_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `note` varchar(5000) DEFAULT NULL COMMENT '内容',
  `ndate` varchar(50) DEFAULT NULL COMMENT '日期',
  `btype` varchar(50) DEFAULT NULL COMMENT '大分类',
  `img` varchar(200) DEFAULT NULL COMMENT '图片',
  `video` varchar(255) DEFAULT NULL COMMENT '视频',
  `typeid` int(11) DEFAULT NULL COMMENT '分类id',
  `typecn` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `uid` int(11) DEFAULT NULL COMMENT '发布者id',
  `username` varchar(255) DEFAULT NULL COMMENT '发布者姓名',
  `favcount` int(11) DEFAULT NULL COMMENT '收藏次数',
  `zan` int(10) DEFAULT NULL COMMENT '点赞次数',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `cai` int(10) DEFAULT NULL COMMENT '踩次数',
  `fenxiang` int(10) DEFAULT NULL COMMENT '分享次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_blog
-- ----------------------------
INSERT INTO `wct_blog` VALUES ('1', '某某志愿者非常棒', '<p>详细描述信息</p><p><img src=\"upload/f6f74740-1726-42cd-b36c-cfa0b573cc8c.jpg\" style=\"max-width:100%;\"/><br/></p>', '2023-03-17 09:02:21', '1', 'ca1768ec-45e5-4233-9b6d-2a9097d00aaa.jpg', '', '3', '个人风采', '1', 'admin', '1', '1', '', null, null);
INSERT INTO `wct_blog` VALUES ('2', '某某公告', '<p>关于某某的公告,这里管理员发布一些信息</p><p><br/></p>', '2023-03-17 08:59:49', '1', 'a673edae-4d60-445d-8865-05c65ab0876b.jpg', '', '4', '公告通知', '1', 'admin', null, null, '', null, null);

-- ----------------------------
-- Table structure for wct_choose
-- ----------------------------
DROP TABLE IF EXISTS `wct_choose`;
CREATE TABLE `wct_choose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `daan` varchar(500) DEFAULT NULL,
  `opa` varchar(255) DEFAULT NULL,
  `opb` varchar(255) DEFAULT NULL,
  `opc` varchar(255) DEFAULT NULL,
  `opd` varchar(255) DEFAULT NULL,
  `fenxi` varchar(2000) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `img` varchar(2000) DEFAULT NULL,
  `leixing` int(11) DEFAULT NULL,
  `rc` int(11) DEFAULT NULL,
  `wc` int(11) DEFAULT NULL,
  `btype` varchar(255) DEFAULT NULL,
  `txtype` varchar(255) DEFAULT NULL,
  `nianfen` varchar(255) DEFAULT NULL,
  `ctype` varchar(255) DEFAULT NULL,
  `note` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_choose
-- ----------------------------

-- ----------------------------
-- Table structure for wct_good
-- ----------------------------
DROP TABLE IF EXISTS `wct_good`;
CREATE TABLE `wct_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `jifen` varchar(10) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `typeid` varchar(10) DEFAULT NULL,
  `xiaoliang` int(11) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `shop` varchar(50) DEFAULT NULL,
  `mcount` varchar(50) DEFAULT NULL,
  `saleType` varchar(50) DEFAULT NULL,
  `sale` varchar(20) DEFAULT NULL,
  `shouye` int(11) DEFAULT NULL,
  `zan` int(11) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `codeimg` varchar(50) DEFAULT NULL,
  `pcount` varchar(255) DEFAULT NULL,
  `btype` varchar(255) DEFAULT NULL,
  `statecn` varchar(255) DEFAULT NULL,
  `stype` varchar(255) DEFAULT NULL,
  `ppid` int(11) DEFAULT NULL,
  `pptitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wct_good
-- ----------------------------
INSERT INTO `wct_good` VALUES ('1', '刷题笔', '33', '', '', '纪念品', '5226dcfb-ed21-4bbe-a0dd-958c3b88a9f3.jpg', null, '4', null, '', '', '', '2343', '', '', null, null, '', '', '', '', '1', '上架中', '', null, '');
INSERT INTO `wct_good` VALUES ('2', '计算器', '23', '', '', '生活用品', 'c50d596d-010f-4aa7-8415-767e2353cbfd.jpg', null, '1', null, '', '', '', '332', '', '', null, null, '', '', '', '', '1', '上架中', '', null, '');
INSERT INTO `wct_good` VALUES ('3', '记事本', '22', '', '', '纪念品', '4a512193-fcc1-49b4-909f-ceab1b9d82ae.jpg', null, '4', null, '', '', '', '3453', '', '', null, null, '', '', '', '', '1', '上架中', '', null, '');
INSERT INTO `wct_good` VALUES ('4', '小夹子', '33', '', '<p>这里自己对商品进行详细的介绍</p><p><img src=\"upload/ea21ab9b-0c86-45f9-b5bd-0c9e96694f30.jpg\" style=\"max-width:100%;\"/><br/></p><p>多图文都是可以的</p>', '生活用品', '2ce7eb4f-02a1-46fa-8f57-38c7f9ce1a33.jpg', null, '1', null, '', '', '', '425345', '', '', null, null, '', '', '', '', '1', '上架中', '', null, '');

-- ----------------------------
-- Table structure for wct_huihua
-- ----------------------------
DROP TABLE IF EXISTS `wct_huihua`;
CREATE TABLE `wct_huihua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '发送者id',
  `fid` int(11) DEFAULT NULL COMMENT '接收者id',
  `qid` int(11) DEFAULT NULL COMMENT '群id',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `zan` int(11) DEFAULT '0',
  `note` varchar(500) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL COMMENT '发送者名称',
  `fusername` varchar(50) DEFAULT NULL COMMENT '接收者名称',
  `attach` varchar(200) DEFAULT NULL,
  `attachname` varchar(200) DEFAULT NULL COMMENT '附件名称',
  `img` varchar(200) DEFAULT NULL COMMENT '图片',
  `qtitle` varchar(255) DEFAULT NULL,
  `msgtype` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_huihua
-- ----------------------------
INSERT INTO `wct_huihua` VALUES ('1', '6', '2', null, null, null, '<div style=\"display: flex;align-items: center;word-wrap:break-word;\">哈哈,活动有什么问题就问我吧,我是负责人</div>', '2023-03-17 09:08:55', 'xiaoli', 'ideabobo', '', '', '8defcd6e-f77b-4a8c-a6e1-be07890a84cb.jpeg', '', '1');
INSERT INTO `wct_huihua` VALUES ('2', '2', '6', null, null, null, '<div style=\"display: flex;align-items: center;word-wrap:break-word;\">哈哈,活动有什么问题就问我吧,我是负责人</div>', '2023-03-17 09:08:55', 'ideabobo', 'xiaoli', '', '', '36578a0c-ec67-44ef-8a75-38622536f635.jpeg', '', '1');

-- ----------------------------
-- Table structure for wct_message
-- ----------------------------
DROP TABLE IF EXISTS `wct_message`;
CREATE TABLE `wct_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `fid` int(11) DEFAULT NULL COMMENT '朋友id',
  `qid` int(11) DEFAULT NULL COMMENT '群id',
  `type` varchar(11) DEFAULT NULL COMMENT '消息类型',
  `zan` int(11) DEFAULT '0',
  `note` varchar(5000) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL COMMENT '发送者名称',
  `fusername` varchar(50) DEFAULT NULL COMMENT '朋友名称',
  `attach` varchar(200) DEFAULT NULL COMMENT '附件文件',
  `attachname` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL COMMENT '图片',
  `qtitle` varchar(255) DEFAULT NULL,
  `msgtype` int(10) DEFAULT NULL,
  `fimg` varchar(255) DEFAULT NULL,
  `alength` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_message
-- ----------------------------
INSERT INTO `wct_message` VALUES ('1', '6', '2', null, 'text', null, '<div style=\"display: flex;align-items: center;word-wrap:break-word;\">可以和好友聊天方便沟通</div>', '2023-03-17 09:08:28', 'xiaoli', 'ideabobo', '', '', '36578a0c-ec67-44ef-8a75-38622536f635.jpeg', '', '1', '8defcd6e-f77b-4a8c-a6e1-be07890a84cb.jpeg', '');
INSERT INTO `wct_message` VALUES ('2', '6', '2', null, 'text', null, '<div style=\"display: flex;align-items: center;word-wrap:break-word;\">啊实打实的发</div>', '2023-03-17 09:08:30', 'xiaoli', 'ideabobo', '', '', '36578a0c-ec67-44ef-8a75-38622536f635.jpeg', '', '1', '8defcd6e-f77b-4a8c-a6e1-be07890a84cb.jpeg', '');
INSERT INTO `wct_message` VALUES ('3', '2', '6', null, 'text', null, '<div style=\"display: flex;align-items: center;word-wrap:break-word;\">哈哈,活动有什么问题就问我吧,我是负责人</div>', '2023-03-17 09:08:55', 'ideabobo', 'xiaoli', '', '', '8defcd6e-f77b-4a8c-a6e1-be07890a84cb.jpeg', '', '1', '36578a0c-ec67-44ef-8a75-38622536f635.jpeg', '');

-- ----------------------------
-- Table structure for wct_notice
-- ----------------------------
DROP TABLE IF EXISTS `wct_notice`;
CREATE TABLE `wct_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wct_notice
-- ----------------------------
INSERT INTO `wct_notice` VALUES ('1', '测试资讯信息', '<p>啊手动阀手动阀手动阀</p>', '2023-03-17 08:45:43', '1', 'db7479c0-6de5-4c4e-ad30-b432923b261c.jpg');
INSERT INTO `wct_notice` VALUES ('2', '测试新闻', '<p>啊手动阀手动阀啊手动阀啊手动阀阿斯顿发射点</p>', '2023-03-17 09:00:05', '1', 'f8e9b2e9-fe80-45c9-8b59-5cafa7d91588.jpg');

-- ----------------------------
-- Table structure for wct_posts
-- ----------------------------
DROP TABLE IF EXISTS `wct_posts`;
CREATE TABLE `wct_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `sdate` varchar(255) DEFAULT NULL,
  `typecn` varchar(255) DEFAULT NULL,
  `attacn` varchar(255) DEFAULT NULL,
  `edate` varchar(255) DEFAULT NULL,
  `statecn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_posts
-- ----------------------------
INSERT INTO `wct_posts` VALUES ('1', '活动内的交流发帖', '<p>啊手动阀手动阀</p>', '2', 'ideabobo', '2023-03-17 09:05:15', '', '1', '2', '', '', '', '', '');
INSERT INTO `wct_posts` VALUES ('2', '某某通知', '<p>啊实打实的发是打发打发</p>', '2', 'ideabobo', '2023-03-17 09:05:31', '', '3', '2', '', '', '', '', '');
INSERT INTO `wct_posts` VALUES ('3', '大家真辛苦', '<p><br></p>', '2', 'ideabobo', '2023-03-17 09:06:02', '3fc7b55e-a466-4d66-88db-f8b1e34290e8.jpg', '5', '2', '', '', '', '', '');

-- ----------------------------
-- Table structure for wct_qiandao
-- ----------------------------
DROP TABLE IF EXISTS `wct_qiandao`;
CREATE TABLE `wct_qiandao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `sdate` varchar(255) DEFAULT NULL,
  `uids` varchar(255) DEFAULT NULL,
  `statecn` varchar(255) DEFAULT NULL,
  `yzm` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `edate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_qiandao
-- ----------------------------
INSERT INTO `wct_qiandao` VALUES ('35', '第一次活动签到', '<p>备注</p>', '55', 'ideabobo', '2023-03-09 11:44:58', '', 'undefined', '37', '2023-03-09 12:41', '55,61,60', '', '1122', '', '', '第一篮球场', '2023-03-09 13:41');
INSERT INTO `wct_qiandao` VALUES ('36', '篮球联赛活动签到', '<p>本次活动的具体介绍,需要按时签到</p>', '55', 'ideabobo', '2023-03-09 16:44:22', '', 'undefined', '37', '2023-03-09 16:40', '55,61,60', '', '1122', '', '', '某某位置', '2023-03-09 17:40');
INSERT INTO `wct_qiandao` VALUES ('37', '第一次活动签到', '<p>这里自己描述签到说明</p>', '58', 'xiaobo', '2023-03-09 14:48:17', '', 'undefined', '38', '2023-03-10 14:42', '58,60', '', '1122', '', '', '图书馆', '2023-03-10 13:17');
INSERT INTO `wct_qiandao` VALUES ('38', '集合签到', '<p><br></p>', '2', 'ideabobo', '2023-03-17 08:53:40', '', 'undefined', '2', '2023-03-17 08:53:29', '2', '', '', '', '', '', '2023-03-18 08:53:00');
INSERT INTO `wct_qiandao` VALUES ('39', '活动与签到', '<p>备注签到内容</p>', '2', 'ideabobo', '2023-03-17 09:04:48', '', 'undefined', '2', '2023-03-17 09:04:24', '2,6', '', '', '', '', '', '2023-03-18 09:04:00');

-- ----------------------------
-- Table structure for wct_qiandaoreplay
-- ----------------------------
DROP TABLE IF EXISTS `wct_qiandaoreplay`;
CREATE TABLE `wct_qiandaoreplay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(10) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_qiandaoreplay
-- ----------------------------
INSERT INTO `wct_qiandaoreplay` VALUES ('3', '35', '正常', '60', '小走', '2023-03-09 11:46:30', null, '7f001b9b-efae-4e13-9dfe-97569ced75ad.jpg');
INSERT INTO `wct_qiandaoreplay` VALUES ('4', '36', '正常', '55', 'ideabobo', '2023-03-09 16:44:43', null, '69515003-cc86-4873-ae45-b9936f785df5.jpeg');
INSERT INTO `wct_qiandaoreplay` VALUES ('5', '36', '111111', '62', 'xiaomeili', '2023-03-09 16:48:55', null, '17fb6199-e04e-419b-ba6e-4525fcbb6a6f.jpg');
INSERT INTO `wct_qiandaoreplay` VALUES ('6', '36', '正常', '60', '小走', '2023-03-09 14:44:09', null, '7f001b9b-efae-4e13-9dfe-97569ced75ad.jpg');
INSERT INTO `wct_qiandaoreplay` VALUES ('7', '39', '正常', '2', 'ideabobo', '2023-03-17 09:04:55', null, '8defcd6e-f77b-4a8c-a6e1-be07890a84cb.jpeg');

-- ----------------------------
-- Table structure for wct_qunzu
-- ----------------------------
DROP TABLE IF EXISTS `wct_qunzu`;
CREATE TABLE `wct_qunzu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '分组名称',
  `note` varchar(500) DEFAULT NULL COMMENT '分组备注',
  `uid` varchar(10) DEFAULT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `ndate` varchar(50) DEFAULT NULL COMMENT '日期',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `type` varchar(255) DEFAULT NULL,
  `uids` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_qunzu
-- ----------------------------
INSERT INTO `wct_qunzu` VALUES ('1', '交通志愿者活动', '<p>详细的志愿者活动介绍</p><p><img src=\"upload/46bdeb4b-1f94-45ae-b2e6-7dd0f552db4c.jpg\" style=\"max-width:100%;\"/><br/></p><p><img src=\"upload/4af656a5-e4a4-4faf-8734-9493585289fb.jpg\" style=\"max-width:100%;\"/><br/></p>', '2', 'ideabobo', '2023-03-17 08:49:56', '270847ea-0fcd-4203-9a91-1dd8c9a5aa22.jpg', '', '2', '29.576551', '106.21305', '重庆市璧山区璧泉街道双星大道60号秀水湾B2层');
INSERT INTO `wct_qunzu` VALUES ('2', '爱护绿色活动', '<p>详细的志愿者活动介绍</p><p>活动活动吧</p><p><br/></p>', '2', 'ideabobo', '2023-03-17 09:04:04', 'f7608d15-cb41-4e38-b193-c7db18fb7225.jpg', '', '2,6', '29.573835', '106.220053', '重庆市璧山区双星大道9号');

-- ----------------------------
-- Table structure for wct_replay
-- ----------------------------
DROP TABLE IF EXISTS `wct_replay`;
CREATE TABLE `wct_replay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(10) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_replay
-- ----------------------------
INSERT INTO `wct_replay` VALUES ('1', '1', '查看信息,点赞评论等', '6', 'xiaoli', '2023-03-17 09:02:31', '2');

-- ----------------------------
-- Table structure for wct_type
-- ----------------------------
DROP TABLE IF EXISTS `wct_type`;
CREATE TABLE `wct_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wct_type
-- ----------------------------
INSERT INTO `wct_type` VALUES ('1', '新闻', '');
INSERT INTO `wct_type` VALUES ('2', '活动风采', '');
INSERT INTO `wct_type` VALUES ('3', '个人风采', '');
INSERT INTO `wct_type` VALUES ('4', '公告通知', '');

-- ----------------------------
-- Table structure for wct_type2
-- ----------------------------
DROP TABLE IF EXISTS `wct_type2`;
CREATE TABLE `wct_type2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wct_type2
-- ----------------------------
INSERT INTO `wct_type2` VALUES ('1', '生活用品', '');
INSERT INTO `wct_type2` VALUES ('2', '食品', '');
INSERT INTO `wct_type2` VALUES ('3', '小工具', '');
INSERT INTO `wct_type2` VALUES ('4', '纪念品', '');

-- ----------------------------
-- Table structure for wct_user
-- ----------------------------
DROP TABLE IF EXISTS `wct_user`;
CREATE TABLE `wct_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `roletype` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wechat` varchar(50) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `sid` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `statecn` varchar(50) DEFAULT NULL,
  `clientId` varchar(200) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `favs` varchar(200) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `openid` varchar(200) DEFAULT NULL,
  `imgurl` varchar(200) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `fids` varchar(255) DEFAULT NULL,
  `qids` varchar(255) DEFAULT NULL,
  `xuexiao` varchar(255) DEFAULT NULL,
  `zhuanye` varchar(255) DEFAULT NULL,
  `note` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wct_user
-- ----------------------------
INSERT INTO `wct_user` VALUES ('1', 'admin', 'admin', '1', null, '15123385885', null, null, null, null, '7027588b-478a-42b1-87fa-5649793cf940.jpg', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `wct_user` VALUES ('2', 'ideabobo', '111111', '2', '', '15124485885', '', '', '女', '', '8defcd6e-f77b-4a8c-a6e1-be07890a84cb.jpeg', '', '', '', '', '', '', '1945', '', '', '', '6', '', '', '', '<p>计算机小能手</p>');
INSERT INTO `wct_user` VALUES ('3', '小新', '111111', '2', '', '15123385885', '', '', '女', '', '327c55a1-0ccc-4537-b25d-011611fcb30b.jpg', '', '', '', '', '', '', null, '', '', '', '', '', '', '', '');
INSERT INTO `wct_user` VALUES ('4', '小明', '111111', '2', '', '15123385885', '', '', '女', '', 'ac225bd9-b7e6-4ba5-9b89-bbb043febb6c.jpeg', '', '', '', '', '', '', null, '', '', '', '', '', '', '', '');
INSERT INTO `wct_user` VALUES ('5', '小红', '111111', '2', '', '15123385885', '', '', '女', '', '1c5e6afb-82d6-447e-96f5-30e0397a39ea.jpeg', '', '', '', '', '', '', null, '', '', '', '', '', '', '', '');
INSERT INTO `wct_user` VALUES ('6', 'xiaoli', '111111', '2', '', '15123385885', '', '', '女', '', '36578a0c-ec67-44ef-8a75-38622536f635.jpeg', '', '', '', '', '', '1', null, '', '', '', '2', '', '', '', '');

-- ----------------------------
-- Table structure for wct_yzmessage
-- ----------------------------
DROP TABLE IF EXISTS `wct_yzmessage`;
CREATE TABLE `wct_yzmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ndate` varchar(255) DEFAULT NULL COMMENT '时间',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `tid` int(11) DEFAULT NULL COMMENT '接收者id',
  `fid` int(11) DEFAULT NULL COMMENT '发送者id',
  `fuser` varchar(255) DEFAULT NULL COMMENT '发送者',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `note` varchar(500) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_yzmessage
-- ----------------------------
INSERT INTO `wct_yzmessage` VALUES ('1', '2023-03-17 09:04:04', '已同意', '2', '6', 'xiaoli', '36578a0c-ec67-44ef-8a75-38622536f635.jpeg', '报名活动申请加入,这里写申请理由,然后由负责人审核通过后加入活动', '申请加入爱护绿色活动', '2');
INSERT INTO `wct_yzmessage` VALUES ('2', '2023-03-17 09:08:08', '已同意', '6', '2', 'ideabobo', '8defcd6e-f77b-4a8c-a6e1-be07890a84cb.jpeg', '可以好友', '申请添加好友', null);

-- ----------------------------
-- Table structure for wct_zan
-- ----------------------------
DROP TABLE IF EXISTS `wct_zan`;
CREATE TABLE `wct_zan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(10) DEFAULT NULL COMMENT '目标id',
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `ndate` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `ttype` varchar(50) DEFAULT NULL,
  `hot` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_zan
-- ----------------------------
