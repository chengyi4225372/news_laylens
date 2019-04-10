/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : hunters

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-10 18:19:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `anli`
-- ----------------------------
DROP TABLE IF EXISTS `anli`;
CREATE TABLE `anli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `yulanimg` varchar(255) DEFAULT NULL,
  `zansimg` varchar(255) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `nandu` int(10) DEFAULT NULL,
  `tese` int(10) DEFAULT NULL,
  `tuijian` int(10) DEFAULT NULL,
  `reshu` varchar(50) DEFAULT NULL,
  `tianshu` varchar(50) DEFAULT NULL,
  `cheshu` varchar(50) DEFAULT NULL,
  `bushu` varchar(50) DEFAULT NULL,
  `didian` varchar(50) DEFAULT NULL,
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anli
-- ----------------------------
INSERT INTO `anli` VALUES ('1', '这是名称', '/static/upload/24a1160e2b8be7b8/a7b94e0844ec6231.png', '/static/upload/5e165d68aee4d82c/c4bdd49e4d7dc1fe.png', '这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介', '66', '666', '66', '66', '66', '66', '66', '66', '66', '<p>这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介</p>', '2018-12-21 12:07:09');
INSERT INTO `anli` VALUES ('2', '戴德梁行团建方案', '/static/upload/c78f7f2cb8c81499/d4c279bf61dcda2a.jpg', '/static/upload/28a4a283c43a0eed/765665a72930ece1.jpg', '围绕时间为主题定制专属方案', '360', '4', '5', '5', '40', '1', '1.5', '时间去哪儿主题团建方案', '深圳', '<p>一行40人一天的方案</p>', '2018-12-25 15:19:02');
INSERT INTO `anli` VALUES ('3', '灿锐科技新员工拓展培训', '/static/upload/ec5cbc6944cd34c2/fa09afbc400f3e19.jpg', '/static/upload/77d1ada462101d3e/a366febcc6ae09aa.jpg', '新员工拓展', '', '4', '3', '4', '80', '1', '2', '拓展培训一天行程', '七星湾游艇会', '<p>拓展+野炊+烧烤+趣味运动会+羽毛球PK</p>', '2018-12-25 15:21:39');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  `url` char(255) DEFAULT '#',
  `sort` int(11) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT '1',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('7', '趣味运动会', '/static/upload/82b560edee121c35/e2524b816d5c4ae5.jpg', '#', '0', '1', '2018-12-21 09:15:31');
INSERT INTO `banner` VALUES ('8', '花样年会', '/static/upload/4c923f43273acb62/fb477fd3366624e2.jpg', '#', '0', '1', '2018-12-21 09:19:50');
INSERT INTO `banner` VALUES ('9', '年会', '/static/upload/7618a48d0835a945/0f930458400dd3bb.jpg', '#', '0', '1', '2018-12-24 15:45:21');
INSERT INTO `banner` VALUES ('10', '关于我们标题', '', 'http://www.baidu.com', '0', '2', '2018-12-28 11:28:21');
INSERT INTO `banner` VALUES ('11', '标题2', '', 'http://www.baidu.com', '0', '2', '2018-12-28 11:28:35');
INSERT INTO `banner` VALUES ('12', '百度', '', 'http://www.baidu.com', '0', '3', '2018-12-28 11:28:48');

-- ----------------------------
-- Table structure for `caidan`
-- ----------------------------
DROP TABLE IF EXISTS `caidan`;
CREATE TABLE `caidan` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '菜单标题',
  `pid` int(10) unsigned DEFAULT NULL COMMENT 'parent-id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caidan
-- ----------------------------

-- ----------------------------
-- Table structure for `can_media`
-- ----------------------------
DROP TABLE IF EXISTS `can_media`;
CREATE TABLE `can_media` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `video_img` varchar(255) NOT NULL COMMENT '公司简介视频图',
  `video_title` char(100) NOT NULL COMMENT '公司简介视频标题',
  `video_com` varchar(255) NOT NULL COMMENT 'youtobe地址',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of can_media
-- ----------------------------
INSERT INTO `can_media` VALUES ('0000000001', '/static/upload/9aa657151da7595a/2c2fb21ec89ab476.jpg', 'hehehello', 'www.baidu.com', '2019-02-15 13:40:35');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) DEFAULT '0',
  `lid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '101', '3', '户外', '2018-12-26 12:09:57');
INSERT INTO `category` VALUES ('2', '201', '4', '新员工拓展', '2018-12-29 10:13:13');
INSERT INTO `category` VALUES ('3', '102', '3', '室内', '2018-12-26 12:09:57');
INSERT INTO `category` VALUES ('4', '401', '6', '深圳', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('5', '301', '5', '户外', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('6', '403', '6', '惠州', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('7', '402', '6', '广州', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('8', '302', '5', '室内', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('12', '404', '6', '东莞', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('13', '405', '6', '清远', '2018-12-26 12:12:28');
INSERT INTO `category` VALUES ('14', '202', '4', '管理团队拓展', '2018-12-29 10:13:36');
INSERT INTO `category` VALUES ('15', '203', '4', '销售团队拓展', '2018-12-29 10:13:52');
INSERT INTO `category` VALUES ('16', '204', '4', '团队魔训', '2018-12-29 10:15:08');
INSERT INTO `category` VALUES ('17', '205', '4', '海岛生存', '2018-12-29 10:15:25');

-- ----------------------------
-- Table structure for `cate_img`
-- ----------------------------
DROP TABLE IF EXISTS `cate_img`;
CREATE TABLE `cate_img` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `c_id` int(10) unsigned NOT NULL COMMENT '公司简介下二级分类id',
  `img` varchar(255) NOT NULL COMMENT '图片',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate_img
-- ----------------------------
INSERT INTO `cate_img` VALUES ('0000000002', '2', '/static/upload/352a006b2834ee27/1a6626091d70401b.jpg', '2019-02-15 15:45:26');

-- ----------------------------
-- Table structure for `chanping`
-- ----------------------------
DROP TABLE IF EXISTS `chanping`;
CREATE TABLE `chanping` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` char(100) DEFAULT NULL COMMENT '产品名',
  `img` varchar(255) DEFAULT NULL COMMENT '产品图',
  `cp_title` varchar(200) DEFAULT NULL COMMENT '产品标题',
  `pid` int(10) unsigned DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chanping
-- ----------------------------
INSERT INTO `chanping` VALUES ('0000000001', 'alignment', '', null, '0');
INSERT INTO `chanping` VALUES ('0000000002', 'tire-changers', '', '', '0');
INSERT INTO `chanping` VALUES ('0000000003', 'wheel-balancers', '', '', '0');
INSERT INTO `chanping` VALUES ('0000000004', 'lifts', '', null, '0');
INSERT INTO `chanping` VALUES ('0000000008', '', '/static/upload/d5b9566c6224f258/6c71f0f813c596d5.jpg', 'smarter', '1');
INSERT INTO `chanping` VALUES ('0000000009', '', '/static/upload/f0fdeab7f5670df0/ae7f91d15bf31d24.jpg', 'crown', '1');
INSERT INTO `chanping` VALUES ('0000000010', '', '/static/upload/67b785b633c7e813/15239b8db407d7bf.jpg', 'bosster', '1');
INSERT INTO `chanping` VALUES ('0000000011', '', '/static/upload/6001f02bf46d8c1a/017c3e516dcb76d4.jpg', 'xspuer', '1');
INSERT INTO `chanping` VALUES ('0000000012', '', '/static/upload/fc2e27cee3bcc044/275a40be0fc00767.jpg', 'x618', '2');
INSERT INTO `chanping` VALUES ('0000000013', '', '/static/upload/098d79917b4667a5/d219d5a46a1eac88.jpg', 'x306GT', '2');
INSERT INTO `chanping` VALUES ('0000000014', '', '/static/upload/1c49fee64f51eda8/008fffc050d0d62e.jpg', 'X203B-PX8', '2');
INSERT INTO `chanping` VALUES ('0000000015', '', '/static/upload/111a97d6d75bf66b/3c152b8a5e6c3c9a.jpg', 'X203A-PX6', '2');
INSERT INTO `chanping` VALUES ('0000000016', '', '/static/upload/baf2c5bcdf4c047b/926c04edde9c3f0a.jpg', 'X403', '2');
INSERT INTO `chanping` VALUES ('0000000022', '', '/static/upload/1d910c80fd81f3f7/e7e072aa43b36e42.jpg', 'X102', '2');
INSERT INTO `chanping` VALUES ('0000000018', '', '/static/upload/1aedd3433ecb30c3/7352a153fad0c765.jpg', 'B805', '3');
INSERT INTO `chanping` VALUES ('0000000019', '', '/static/upload/4399d6691657cd3f/ed53c389e6e20048.jpg', 'B705', '3');
INSERT INTO `chanping` VALUES ('0000000020', '', '/static/upload/6c594c7b91874ff3/4878b5635f1138fe.jpg', 'B605', '3');
INSERT INTO `chanping` VALUES ('0000000021', '', '/static/upload/9aa657151da7595a/2c2fb21ec89ab476.jpg', 'B505', '3');
INSERT INTO `chanping` VALUES ('0000000023', '', '/static/upload/cbc5c8c03e4fce62/aeb9cb32c6b4c8aa.jpg', 'LG8800', '4');
INSERT INTO `chanping` VALUES ('0000000024', '', '/static/upload/3068e9217f80f4b6/09ed1fd092a62f51.jpg', 'LG8000-xsuper', '4');
INSERT INTO `chanping` VALUES ('0000000025', '', '/static/upload/e9ba923e5dbdba40/14d28eb0b2978d5d.jpg', 'LG6800', '4');
INSERT INTO `chanping` VALUES ('0000000026', '', '/static/upload/c13ff6aaab377bcc/b37573c9f446c36e.jpg', 'LG3800', '4');
INSERT INTO `chanping` VALUES ('0000000027', '', '/static/upload/31e00e429c360700/713c66ba57de910a.jpg', 'LG3000', '4');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo图',
  `logo_title` char(100) DEFAULT NULL COMMENT 'logo标题',
  `title` char(100) DEFAULT NULL COMMENT '标题',
  `info` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('0000000007', '/static/upload/f8636c000575dfad/91b9f5620bfb88eb.jpg', 'LAWRENCE AUTO MACHINERY', '', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Guangzhou Lawrence Auto Machinery Co., Ltd., authorized and invested by Lawrence Auto Machinery (USA) as the sole agent in the Asia-Pacific region, is a large modern manu', '2019-04-02 14:30:20');

-- ----------------------------
-- Table structure for `company_xia`
-- ----------------------------
DROP TABLE IF EXISTS `company_xia`;
CREATE TABLE `company_xia` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `xiao_img` varchar(255) DEFAULT NULL COMMENT '小图',
  `cate_title` char(100) DEFAULT NULL COMMENT '小图  标题',
  `big_img` varchar(255) DEFAULT NULL COMMENT '详情页面大图',
  `xq_title` char(100) DEFAULT NULL COMMENT '详情标题',
  `content` text COMMENT '详情',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_xia
-- ----------------------------
INSERT INTO `company_xia` VALUES ('0000000002', '/static/upload/352a006b2834ee27/1a6626091d70401b.jpg', 'LAWRENCE TEAMWORK', '/static/upload/352a006b2834ee27/1a6626091d70401b.jpg', '2222222', '<p>111111111</p>', '2019-02-15 15:33:06');
INSERT INTO `company_xia` VALUES ('0000000003', '/static/upload/2e24f7ab52a5ce05/47ea527766d89055.jpg', 'SALES AND SERVICES', '/static/upload/2e24f7ab52a5ce05/47ea527766d89055.jpg', '33333333333', '<p>33333333333</p>', '2019-02-15 15:33:55');

-- ----------------------------
-- Table structure for `condition`
-- ----------------------------
DROP TABLE IF EXISTS `condition`;
CREATE TABLE `condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(2) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `conid` int(11) DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of condition
-- ----------------------------
INSERT INTO `condition` VALUES ('1', '0', '拓展目的', '0', '2018-12-18 18:37:30');
INSERT INTO `condition` VALUES ('3', '0', '拓展场地', '0', '2018-12-19 17:12:18');
INSERT INTO `condition` VALUES ('4', '0', '拓展人数', '0', '2018-12-19 17:13:04');
INSERT INTO `condition` VALUES ('5', '0', '拓展天数', '0', '2018-12-19 17:14:55');
INSERT INTO `condition` VALUES ('6', '0', '团队凝聚力', '1', '2018-12-19 17:19:44');

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联系我们表';

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('0000000001', 'Lawrence Auto Machinery Co., Ltd.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:16px;\"><span style=\"background:#ffffff\"><span style=\"font-family:Calibri\"><span style=\"font-family:Tahoma\"><span style=\"color:#5a5a5a\">Headquarter:</span></span><span style=\"font-family:宋体\"><span style=\"color:#5a5a5a\">&nbsp;Ave. Suite 3G Flushing, New York, 11354, USA</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:16px;\"><span style=\"background:#ffffff\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\"><span style=\"color:#5a5a5a\">Asia-Pacific General Agent: Guangzhou Lawrence Auto Machinery Co.,Ltd.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:16px;\"><span style=\"background:#ffffff\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\"><span style=\"color:#5a5a5a\">Production Base: No.53 Zhonghe Rd., 4</span></span><sup><span style=\"font-family:宋体\"><span style=\"color:#5a5a5a\"><span style=\"vertical-align:super\">th</span></span></span></sup><span style=\"font-family:宋体\"><span style=\"color:#5a5a5a\">&nbsp;Guangcong Rd., Guangzhou</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\">&nbsp;</p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:16px;\"><span style=\"background:#ffffff\"><span style=\"font-family:Calibri\"><span style=\"font-family:Tahoma\"><span style=\"color:#5a5a5a\">Tel: +86-20-8632 8363</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:16px;\"><span style=\"background:#ffffff\"><span style=\"font-family:Calibri\"><span style=\"font-family:Tahoma\"><span style=\"color:#5a5a5a\">Fax: +86-20-8631 8680</span></span><br />\r\n<br />\r\n<span style=\"font-family:Tahoma\"><span style=\"color:#5a5a5a\">E-mail<font face=\"宋体\">：</font>info@lawren3d.com</span></span></span></span></span></p>', '2019-04-04 10:50:29');

-- ----------------------------
-- Table structure for `dingzhi`
-- ----------------------------
DROP TABLE IF EXISTS `dingzhi`;
CREATE TABLE `dingzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cfd` varchar(255) DEFAULT NULL,
  `mdd` varchar(255) DEFAULT NULL,
  `csrs` varchar(255) DEFAULT NULL,
  `etrs` varchar(255) DEFAULT NULL,
  `hdts` varchar(255) DEFAULT NULL,
  `hdys` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingzhi
-- ----------------------------
INSERT INTO `dingzhi` VALUES ('1', '出发地', '目的地', '10', '1', '20', '500', '特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求', '10086', '女士', '10010', '4845', '0', '2018-12-27 11:43:31');

-- ----------------------------
-- Table structure for `distr`
-- ----------------------------
DROP TABLE IF EXISTS `distr`;
CREATE TABLE `distr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `disname` varchar(255) NOT NULL COMMENT '经销商',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of distr
-- ----------------------------
INSERT INTO `distr` VALUES ('5', '法国（波尔多经销商）');
INSERT INTO `distr` VALUES ('2', '日本(川崎经销商)');
INSERT INTO `distr` VALUES ('3', '中国（河北保定经销商）');
INSERT INTO `distr` VALUES ('4', '美国（亚特兰大经销商）');
INSERT INTO `distr` VALUES ('6', '意大利（AC米兰经销商）');

-- ----------------------------
-- Table structure for `download`
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `downpdf` varchar(255) NOT NULL COMMENT '产品pdf路径',
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES ('0000000001', '8', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-02 14:08:19');
INSERT INTO `download` VALUES ('0000000002', '9', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '0000-00-00 00:00:00');
INSERT INTO `download` VALUES ('0000000003', '10', '/static/upload/9193f1796cdeb05e/56b60c6082e01a95.pdf', '0000-00-00 00:00:00');
INSERT INTO `download` VALUES ('0000000004', '11', '/static/upload/1645c6744627c650/c2ff1f322045ee75.pdf', '0000-00-00 00:00:00');
INSERT INTO `download` VALUES ('0000000005', '12', '/static/upload/260f82b0f9510231/659d5ab361312d64.pdf', '0000-00-00 00:00:00');
INSERT INTO `download` VALUES ('0000000006', '14', '/static/upload/260f82b0f9510231/659d5ab361312d64.pdf', '0000-00-00 00:00:00');
INSERT INTO `download` VALUES ('0000000007', '15', '/static/upload/260f82b0f9510231/659d5ab361312d64.pdf', '0000-00-00 00:00:00');
INSERT INTO `download` VALUES ('0000000008', '13', '/static/upload/260f82b0f9510231/659d5ab361312d64.pdf', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `downloading`
-- ----------------------------
DROP TABLE IF EXISTS `downloading`;
CREATE TABLE `downloading` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `down_url` varchar(255) NOT NULL COMMENT '下载链接',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of downloading
-- ----------------------------
INSERT INTO `downloading` VALUES ('0000000001', '1.New 3D wheel alignment catalog', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:29:25');
INSERT INTO `downloading` VALUES ('0000000002', '2.New 3D wheel alignment catalog', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:38:09');
INSERT INTO `downloading` VALUES ('0000000003', '3.New Tire changer catalog', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:38:21');
INSERT INTO `downloading` VALUES ('0000000004', '4.New Tire changer catalog', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:38:44');
INSERT INTO `downloading` VALUES ('0000000005', '5.New wheel balancer catalog', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:38:56');
INSERT INTO `downloading` VALUES ('0000000006', '6.New wheel balancer catalog', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:39:25');
INSERT INTO `downloading` VALUES ('0000000007', '7.New car lift catalog', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:39:51');
INSERT INTO `downloading` VALUES ('0000000008', '8.New car lift catalog', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:40:16');

-- ----------------------------
-- Table structure for `features`
-- ----------------------------
DROP TABLE IF EXISTS `features`;
CREATE TABLE `features` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '产品id',
  `img` varchar(255) NOT NULL COMMENT '特征图片',
  `title` char(200) NOT NULL COMMENT '特征标题',
  `fea_info` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of features
-- ----------------------------
INSERT INTO `features` VALUES ('0000000002', '8', '/static/upload/211ddbfd3e9f5e84/92c23c4a5d64678b.jpg', '1.PATENTED INTELLIGENT DIGITAL DISPLAY', '<p>FRIENDLY GREETING IN STARTING UP WARM REMINDING DURING OPERATION</p>\r\n\r\n<p>INTERACTION BETWEEN OPERATOR AND EQUIPMENT SYNCHRONIZE DATA PROMPT NUMBERS</p>\r\n\r\n<p>INSTRUCT STEPS HELP WORDS</p>');
INSERT INTO `features` VALUES ('0000000003', '8', '/static/upload/d69e573ffdffb931/0a1bb360ef92c62c.jpg', '2. PATENTED HAND RECOGNITION FUNCTION', '<p>COVERING TARGET 3 TIMES TO ZOOM IN THE PICTURE GLOBAL ORIGINATION WITH PATENT SYNCHRONIZED WITH THE LATEST TECHNOLOGY HUMANIZED FUNCTION, UPLIFT EFFICIENCY</p>');
INSERT INTO `features` VALUES ('0000000004', '8', '/static/upload/e2df85d213568336/ab07bb4450e5e6de.jpg', '3. MINI BLACK TECH TARGET', '<p>MADE OF SPECIAL POLYMERIC MATERIAL WITH HIGH RESISTANCE MORE DURABLE AND SUN-FILTER, SERVICE LIFE UP TO TEN YEARS BE SUITABLE FOR DIFFICULT WORKING CONDITIONS</p>');
INSERT INTO `features` VALUES ('0000000005', '8', '/static/upload/f8f4d09faa40bc4c/ed243920fbf2fd22.jpg', '4. THREE POINTS WHEEL ADAPTOR', '<p data-ix=\"scroll-reveal\">NEWLY DEVELOPED TECHNOLOGY EASY TO GRIP THE TIRE, ELIMINATING METAL-TO-METAL CONTACT AND SUBSEQUENT RIM DAMAGE.</p>');
INSERT INTO `features` VALUES ('0000000006', '8', '/static/upload/f2a7b97812bb2735/604a8194754279f0.jpg', '5. QUICK CLAMPING ADAPTOR WHEEL ADAPTOR (OPTIONAL)', '<p>NEWLY DEVELOPED AND WITH PATENT EASY TO GRIP THE TIRE, ELIMINATING METAL-TO-METAL CONTACT AND SUBSEQUENT RIM DAMAGE CAN WORK WITH BIGGER TIRES.</p>');
INSERT INTO `features` VALUES ('0000000007', '8', '/static/upload/c9cc9913b763cf7d/72f52d8b942abbc1.jpg', '6. 6.4M USB3.0 HD INDUSTRIAL CAMERA', '<p data-ix=\"scroll-reveal\">NEWLY UPGRADED INDUSTRIAL CAMERA WITH HIGH DEFINITION MORE STABLE MEASUREMENTS AND FASTER</p>');
INSERT INTO `features` VALUES ('0000000008', '8', '/static/upload/ebb9f241a76bc467/b3fc2457f52e60d1.jpg', '7. AUTO TRACKING SYSTEM', '<p data-ix=\"scroll-reveal\">AUTO CAMERA BEAM SYNCHRONIZED WITH THE UP AND DOWN OF THE VEHICLES CONTINUOUSLY MONITORING ON TARGET POSITION, OFFERING FEEDBACK OF TARGET STATE ANY TIME</p>');
INSERT INTO `features` VALUES ('0000000009', '8', '/static/upload/7c881bba067eccec/97bf69dde08c8050.jpg', '8. SMARTER ALIGNMENT SOFTWARE', '<p data-ix=\"scroll-reveal\">DISPLAYING VEHICLE FROM 720&deg;VIEWING ANGLE AUTHENTIC IMAGE, SIMPLE AND EASY TO UNDERSTAND REAL-TIME MEASUREMENT, HIGH EFFICIENCY PATENTED SYSTEM, UNIQUE AND RELIABLE</p>');
INSERT INTO `features` VALUES ('0000000010', '8', '/static/upload/b2b0c7fe80192f12/e52cae9471334cb6.jpg', '9. SMARTER KINGPIN MEASUREMENT MODE', '<p>THREE MODES FOR KINGPIN MEASUREMENT INTELLIGENT IDENTIFICATION OF ANY MODE ACCORDING TO USER&rsquo;S OPERATION</p>');
INSERT INTO `features` VALUES ('0000000011', '8', '/static/upload/049691ef7dda5d11/7b48552d37823a32.jpg', '10. SMART TOE1', '<p data-ix=\"scroll-reveal\">THE BACKLASH HAS NO INFLUENCE ON TOE ADJUSTMENT ADJUST THE TOE WITHOUT STEERING WHEEL HOLDER FOR VEHICLES WITH BIG BACKLASH. THE STEERING WILL BE ALWAYS CENTER.</p>');
INSERT INTO `features` VALUES ('0000000012', '8', '/static/upload/9ef83a495c9016c0/a068ccd3a4563408.jpg', '11. SMART TOE2', '<p data-ix=\"scroll-reveal\">MORE SPECIAL CARS CAN BE ALIGNED, SUCH AS AUDI, WHICH DEMANDS FOR POSITIVE TOE DURING ADJUSTMENT TURN THE FRONT WHEELS LEFT OR RIGHT AND ACCESS DIFFICULT ADJUSTMENT POINTS WHILE STILL DISPLAYING CENTERED TOE READINGS. REDUCE THE REDUNDANT STEPS IN FRONT TOE ADJUSTMENTS.</p>');
INSERT INTO `features` VALUES ('0000000013', '8', '/static/upload/9a013ddf411de19f/d9c39548b9f69ef8.jpg', '12. RIDE HEIGHT MEASUREMENT', '<p>EQUIPPED WITH FUNCTION OF RIDE HEIGHT MEASUREMENT LARGELY FACILITATE WHEEL ALIGNMENT FOR HIGH-END VEHICLES MODELS DETECTION OF VEHICLE SUSPENSION</p>');
INSERT INTO `features` VALUES ('0000000014', '8', '/static/upload/8188b33ca3eaba6a/c8462fb8e9ac1c43.jpg', '13. CROSS DIAGONAL', '<p>IDENTIFYING&nbsp;VEHICLE&nbsp;FRAME&nbsp;OR&nbsp;STRUCTURAL&nbsp;CONDITIONS GOOD HELPER IN ALIGNMENT ADJUSTMENT</p>');
INSERT INTO `features` VALUES ('0000000015', '9', '/static/upload/c6bea9d82155debb/ff59def877e403c4.png', '1.Quick clamping adaptor wheel adaptor (Optional)', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#221815\">Newly developed and with patent </span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#221815\">Easy to grip the tire, eliminating metal-to-metal contact and subsequent rim damage</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#221815\">Can work with big tyres</span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000016', '9', '/static/upload/7212ba657ab82d40/61bdc0f3576b7c73.jpg', '2.Patented Intelligent Digital Display', '<p class=\"MsoBodyText\" style=\"margin-top:4.5000pt; margin-right:103.5500pt; text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:9pt\"><span style=\"line-height:110%\"><span style=\"font-family:Verdana\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">Warm</span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">reminding</span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">during</span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">operation </span></span></span></span></span></span></p>\r\n\r\n<p class=\"MsoBodyText\" style=\"margin-top:4.5000pt; margin-right:103.5500pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:9pt\"><span style=\"line-height:110%\"><span style=\"font-family:Verdana\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">Synchronize</span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">Data</span></span></span></span></span></span></p>\r\n\r\n<p class=\"MsoBodyText\" style=\"margin-right:178.7000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:9pt\"><span style=\"line-height:110%\"><span style=\"font-family:Verdana\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">Prompt Numbers </span></span></span></span></span></span></p>\r\n\r\n<p class=\"MsoBodyText\" style=\"margin-right:178.7000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:9pt\"><span style=\"line-height:110%\"><span style=\"font-family:Verdana\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">Instruct Steps</span></span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000017', '9', '/static/upload/e2df85d213568336/ab07bb4450e5e6de.jpg', '3.Mini Black Tech Target', '<p class=\"MsoBodyText\" style=\"margin-top:4.1000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:9pt\"><span style=\"font-family:Verdana\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">Made of special polymeric </span></span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">material with</span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">high resistance</span></span></span></span></span></p>\r\n\r\n<p class=\"MsoBodyText\" style=\"margin-top:3.0000pt; margin-right:19.5500pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:9pt\"><span style=\"font-family:Verdana\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">More durable and sun-filter, service life up</span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">to ten years</span></span></span></span></span></p>\r\n\r\n<p class=\"MsoBodyText\" style=\"margin-top:3.4000pt; margin-right:11.1500pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:9pt\"><span style=\"font-family:Verdana\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">Be</span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">suitable</span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\">for</span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\"><span style=\"letter-spacing:0.1000pt\">difficult</span></span></span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\"><span style=\"letter-spacing:0.1500pt\">working </span></span></span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:Verdana\"><span style=\"color:#221815\"><span style=\"letter-spacing:0.1000pt\">conditions</span></span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000018', '9', '/static/upload/b1a159cae3de2cee/dd728c4c210552b9.png', '4.SmartToe1', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:宋体\">The backlash has no influence on toe adjustment</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">Adjust the toe without steering wheel holder for vehicles with big backlash. </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">The steering will be always center.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000019', '9', '/static/upload/c31de7dfd279f8e5/81d4990387f809a6.png', '5.SmartToe2', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:宋体\">More special cars can be aligned, such as Audi, which demands for positive toe during adjustment</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:Arial\">Turn the front wheels left or right and access difficult adjustment points while still displaying centered toe readings.</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:Arial\">Reduce the redundant steps in front toe adjustments.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000020', '9', '/static/upload/c9cc9913b763cf7d/72f52d8b942abbc1.jpg', '6.5.0M USB3.0 HD Industrial Camera', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Newly upgraded industrial camera with high definition</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">More stable measurements and faster</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000021', '9', '/static/upload/ebb9f241a76bc467/b3fc2457f52e60d1.jpg', '7.Auto Tracking System', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Auto camera beam synchronized with the up and down of the vehicles</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Continuously monitoring on target position, offering feedback of target state any time</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000022', '9', '/static/upload/e5251b040e227eb3/cc6e2419b428c477.png', '8.Jack Up Adjustment', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">After alignment measurement, the values can be frozen for jack up adjustment.</span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000023', '9', '/static/upload/7d382f60e6e41807/455a0fe43a9b668d.png', '9.Fixed Model Aid', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">For fixed models, the program can guide the operators to achieve the best height of vehicles for alignment measurement.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000024', '9', '/static/upload/8188b33ca3eaba6a/c8462fb8e9ac1c43.jpg', '10.Cross Diagonal       ', '<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">Identifying&nbsp;vehicle&nbsp;frame&nbsp;or&nbsp;structural&nbsp;conditions</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">Good helper in alignment adjustment</span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Arial\">.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000025', '9', '/static/upload/cb6f78bba69456b9/3814072f6140e971.jpg', '11.Hand-held Aligner', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Built-in </span></span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">wifi</span></span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp;LAN system</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Data display synchronized with monitor</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Identify selected model automatically</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Remote-control each step</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Free software update</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Android system all applicable</span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000026', '9', '/static/upload/6109948cbc4a8ce9/4daa6c785c333ac9.png', '12.Image Stabilizing System', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Self-developed technology</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">No limit for rolling compensation, easy operation</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Cameras shoot on targets consistently for</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">stable and accurate reading</span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000027', '9', '/static/upload/11e3a59f33c242f8/8354fd5d9dde1d6f.png', '13.Engine Cradle Adjust', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Provide visual reference for simultaneous S.A.I and caster adjustment for vehicles with front sub-frames or cradles.</span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000028', '9', '/static/upload/40f71f87254de4ad/11d853fe91887657.png', '14.Drive-on Camera Aid', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">The drive-on camera aid helps guild the proper parking of the vehicle to be aligned, ensuring safety and efficiency.</span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000029', '10', '/static/upload/7212ba657ab82d40/61bdc0f3576b7c73.jpg', '1、Patented Intelligent Digital Display', '<p class=\"15\" style=\"margin-left:10.5000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Warm reminding during operation</span></span></span></p>\r\n\r\n<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">&nbsp;Synchronize Data</span></span></span></p>\r\n\r\n<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">&nbsp;Prompt Numbers</span></span></span></p>\r\n\r\n<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">&nbsp;Instruct Steps</span></span></span></p>');
INSERT INTO `features` VALUES ('0000000030', '10', '/static/upload/c9cc9913b763cf7d/72f52d8b942abbc1.jpg', '2、5.0M USB3.0 HD Industrial Camera', '<p class=\"15\" style=\"margin-left:21.0000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Continuous monitor target status and provide feedback at any time</span></span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:21.0000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Provide accurate and dynamic measurements</span></span></span></p>');
INSERT INTO `features` VALUES ('0000000031', '10', '/static/upload/e2df85d213568336/ab07bb4450e5e6de.jpg', '3、Black Tech Target', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">1Special Black Crystal Surface Plate</span></span></span></p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Made of special polymeric material with high resistance</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">More durable and sun-filter, service life up to ten years</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Be suitable for difficult working condition</span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000032', '10', '/static/upload/abcc5152783a12b5/0c85e66253bd2265.jpg', '4、Auto Tracking System', '<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Auto camera beam synchronized with the up and down of the vehicles</span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Continuously monitoring on target position,offering feedback of target state any time</span></span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000033', '10', '/static/upload/05f10d228d6d9ee3/95498b81209572d4.png', '5、i-Toe1', '<p class=\"15\" style=\"margin-left:10.5000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">The backlash has no influence on toe adjustment</span></span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:10.5000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Adjust the toe without steering wheel holder for vehicles with big backlash</span></span></span></p>\r\n\r\n<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">The steering will be always center</span></span></span></p>');
INSERT INTO `features` VALUES ('0000000034', '10', '/static/upload/c382b3eff428ed6b/1fb0d91bbe904fd2.png', '6、i-Toe2', '<p class=\"15\" style=\"margin-left:10.5000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">More special cars can be aligned, such as Audi, which demands for positive toe during adjustment</span></span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:10.5000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Turn the front wheels left or right and access difficult adjustment points while still displaying centered toe readings</span></span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:10.5000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">Reduce the redundant steps in front toe adjustments</span></span></span></p>');
INSERT INTO `features` VALUES ('0000000035', '10', '/static/upload/e8eeaf05f63f25b5/4ca57f08155ef7a9.png', '7、2-post and mini scissor lift Jack up Adjustment', '<p class=\"15\" style=\"margin-left:10.5000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\">After alignment measurement, the values can be frozen for 2-post and mini scissor lift Jack up Adjustment</span></span></span></p>');
INSERT INTO `features` VALUES ('0000000036', '10', '/static/upload/3eeeeb5a7c80cbdb/7896ff1f46dff561.png', '8、Fixed Model Aid', '<p style=\"margin-left:21.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">For fixed models, the program canguide the operators to achieve thebest height of vehicles for alignment measurement</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000037', '10', '/static/upload/b8e0cfd106e7ab40/3113afd450d0b11f.png', '9.Cross Diagonal And Wheel Diameter Measurement Function', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Identify vehicle frame or structural conditions before alignment adjustment </span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000038', '10', '/static/upload/11e3a59f33c242f8/8354fd5d9dde1d6f.png', '10.Engine Cradle Adjust', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Provide visual reference for simultaneous S.A.I and caster adjustment for vehicles with front sub-frames or cradles</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000039', '10', '/static/upload/6109948cbc4a8ce9/4daa6c785c333ac9.png', '11、Image Stabilizing System', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Self-developed technology</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:21.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">No limit for rolling compensation, easy operation</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:21.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Cameras shoot on targets consistently for stable and accurate reading</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000040', '10', '/static/upload/713aed0406d6e795/1035683fe55a8d33.png', '12、Two Operation Mode（Automatically\\ By manual）', '<p style=\"margin-left:21.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Classic steps buttons guide operators to do the smooth alignment procedures</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:21.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Button-less mode is intelligent and with auto steps skipping, can finish quick alignment and adjustment</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000041', '10', '/static/upload/40f71f87254de4ad/11d853fe91887657.png', '13、Drive-on Camera Aid', '<p style=\"margin-left:21.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">The drive- on camera aid helps guide the proper parking of the vehicle to be aligned, ensuring safety and efficiency</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000042', '10', '/static/upload/33410e7672453e6c/21075408337fe1bb.png', '14.Four/Two-Wheel Alignment Program', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Front wheel alignment is suitable for small bus or light trucks with long wheelbase</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Suitable for pickups without rear wheels adjustment</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000043', '10', '/static/upload/f5d3861e4acc303d/46b1d8dcbe260f3e.png', '15.Rich Help Videos', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">View detailed videos, of how to make needed adjustments to complete even the most complex tasks</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000044', '11', '/static/upload/2fd5dccd27b681a5/268b8a1b8979d29a.jpg', '1.5M USB3.0HD Industrial Digital Camera', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">Continuously monitor on target position&nbsp;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">Feedback on target status at any time </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">Provide accurate dynamic measuring results</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000045', '11', '/static/upload/3c0e65ac1946e6ae/45aa8864a06acb24.jpg', '2.Unique Accurate Target', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">Ultra-thin design, light and easy to install </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">Made of aluminum material, elegant and durable</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000046', '11', '/static/upload/6109948cbc4a8ce9/4daa6c785c333ac9.png', '3.Image Stabilizing System', '<p class=\"15\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:宋体\"><span style=\"color:#2e3033\">Self-developed technology</span></span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:宋体\"><span style=\"color:#2e3033\">No limit for rolling compensation, easy operation.</span></span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:宋体\"><span style=\"color:#2e3033\">Cameras shooting on target consistently for stable and accurate reading</span></span></span></p>');
INSERT INTO `features` VALUES ('0000000047', '11', '/static/upload/e8eeaf05f63f25b5/4ca57f08155ef7a9.png', '4.2-post and mini scissor lift Jack up Adjustment', '<p style=\"margin-left:15.7500pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">After alignment measurement, the values can be frozen for 2-post and mini scissor lift Jack up Adjustment</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000048', '11', '/static/upload/00f000e00938ba4f/f28b833a4ba0e13e.jpg', '5. IAA Lift System', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Automatically track targets and ready for the best measuring position any time for the operator. Global origination, leading technology, no human intervention, more efficient</span></span></p>');
INSERT INTO `features` VALUES ('0000000049', '11', '/static/upload/74b6089437d45a85/d253f3bca8e0cc5e.jpg', '6.Intelligent Switch', '<p class=\"15\" style=\"margin-left:6.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Quick Mode &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Expert Mode</span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:6.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">The AI program will switch between </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">&ldquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Quick Mode</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">&rdquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;or </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">&ldquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Expert Mode</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">&rdquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;base on operator</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s requirements.</span></span></p>');
INSERT INTO `features` VALUES ('0000000050', '11', '/static/upload/b12031dd9a954948/0cda1f665571ac07.jpg', '7. Two Adjustment Modes', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">Two modes of displaying the measuring and adjusting results are available in the program.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000051', '11', '/static/upload/8dd58967648d0378/2c634fad6e0dbc3b.jpg', '8.Drive-on Camera Assistant', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Mirror function of the PC camera can guide the best parking position on the platform effectively.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000052', '11', '/static/upload/e953c706f49fa410/7ec8720159c02f49.jpg', '9.Voice Intelligent System', '<p style=\"margin-left:6.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">It is more convenient and easier for the operator.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000053', '11', '/static/upload/d4c336e068868d8f/199bc66b5eacc0fe.jpg', '10.DIY Printout report', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:\'Times New Roman\'\">You can use your own language, your own logo, and your own ideas to design the printout.</span></span></p>');
INSERT INTO `features` VALUES ('0000000054', '11', '/static/upload/6b514d6357c520bf/268ee442fe0a5c85.jpg', '11.Rich Help Videos', '');
INSERT INTO `features` VALUES ('0000000055', '12', '', '1.Pneumatic Swing-Arm system', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Saves space over tilt-column designs &nbsp;</span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">S</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">uitable for installation by the wall</span></span></p>');
INSERT INTO `features` VALUES ('0000000056', '12', '/static/upload/bd6d709fb3be0ff3/15a54758eb0f1ade.jpg', '2.Center Air Lock automatically', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Italian Design, Equipped with </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">High standard high strength fitting.</span></span>&nbsp;</p>\r\n\r\n<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Powerful pneumatic clamp holds wheel secure &nbsp;</span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Center clamp design avoids clamping damage &nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp; Fast, safe and precise </span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000057', '12', '', '3.Italian Designed Leverless Tool   (Patent)', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Demounting without levers &nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">No risk of lever damage to operator or rim</span></span>&nbsp;</span></span></p>');
INSERT INTO `features` VALUES ('0000000058', '12', '', '4.Robot Control', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Up and down by Pneumatic control</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Easy operation and save both time and labor</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000059', '12', '', '5.Wheel lift', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Fast and ergonomic</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">, Reduces</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;operator effort in case of large and heavy wheels</span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Eases servicing of large assemblies &nbsp;</span></span></p>');
INSERT INTO `features` VALUES ('0000000060', '12', '', '6.Dual-disc Bead Breaker', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">The unique dual-disc bead breaker facilitates bead breaking, making it faster and more ergonomic and reducing the risk of damaging tire and rim.. </span></span></p>');
INSERT INTO `features` VALUES ('0000000061', '12', '', '7.One-click step of bead press disc', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">In the most effective way to complete the separation of the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">rim and tire</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">, proper, powerful and accurate, to achieve the tire and rim optimization matching</span></span></p>');
INSERT INTO `features` VALUES ('0000000062', '12', '', '8.Variable Speed Motor', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Easy to control and operate, saving time. </span></span></p>');
INSERT INTO `features` VALUES ('0000000063', '12', '', '9.Portable Blast inflation', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Directs large blast of air for tough bead seating</span></span>&nbsp;</p>');
INSERT INTO `features` VALUES ('0000000064', '12', '', '10.Three positions Pressing Arm', '<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;&nbsp;&nbsp;Space saving, easy to operate, ensure high efficiency in mounting and demounting tires, works for different tires.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000065', '12', '', '11.Pneumatic bead press arm', '');
INSERT INTO `features` VALUES ('0000000066', '13', '', '1.Leverless Tool   (Patent)', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Demounting without levers &nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">No risk of lever damage to operator or rim </span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000067', '13', '', '2.Bead Breaking System', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Tremendous power and control &nbsp;</span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Aids mounting and demounting </span></span></p>');
INSERT INTO `features` VALUES ('0000000068', '13', '', '3.Robot Control', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Up and down by Pneumatic control </span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Easy operation and save both time and labor </span></span></p>');
INSERT INTO `features` VALUES ('0000000069', '13', '', '4.Pneumatic Swing-Arm system', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Saves space over tilt-column designs &nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">S</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">uitable for installation by the wall</span></span>&nbsp;</span></span></p>');
INSERT INTO `features` VALUES ('0000000070', '13', '', '5.Blast inflation', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Directs large blast of air for tough bead seating </span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000071', '13', '', '6.Variable Speed Motor (Optional)', '<p style=\"margin-left:18.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Standard 2-speed Motor, precision and high torque at low speed for the best mounting and demounting result </span></span></span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:17.9500pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Easy to control and operate, saving time. </span></span></p>');
INSERT INTO `features` VALUES ('0000000072', '13', '', '7.Three positions Pressing Arm', '<p style=\"margin-left:15.7500pt; text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;&nbsp;&nbsp;Space saving, easy to operate, ensure high efficiency in mounting and demounting tires, works for different tires.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000073', '13', '', '8.Storage Shelf', '<p style=\"margin-left:18.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Convenient storage for your most used tools and accessories</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000074', '13', '', '9.Oil Filter', '<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">1.0Mpa high-quality water and oil filter which got resistance to high pressure</span></span></p>\r\n\r\n<p style=\"margin-left:18.0000pt; margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>');
INSERT INTO `features` VALUES ('0000000075', '13', '', '10.Standard turntable with gauge', '<p class=\"15\" style=\"margin-left:18.0000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">E</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">quipped with a large </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">turntable</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&nbsp;with the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">gauge</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&nbsp;to facilitate the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">mounting and dismounting efficiency</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">, the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">European </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">standard gasket can protect the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">operator during</span></span>&nbsp;<span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">mounting and dismounting</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">.</span></span></p>');
INSERT INTO `features` VALUES ('0000000076', '14', '', '1.Pneumatic Tilt Arm Structure', '<p class=\"15\" style=\"margin-left:18.0000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Tilt forth and back by pneumatic control and lock<font face=\"宋体\">，</font><font face=\"Calibri\">providing more upper space, convenient to mount and demount tires</font></span></span></p>');
INSERT INTO `features` VALUES ('0000000077', '14', '', '2.Bead Press System', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Tremendous power and control</span></span>&nbsp;</p>\r\n\r\n<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Aids mounting and demounting</span></span></p>');
INSERT INTO `features` VALUES ('0000000078', '14', '', '3.', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Mounting head made of high strength alloy steel,wear-resistant and corrosion-resistant, </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:宋体\">the positioning function of him, easy to operate and a good helper to mount and dismount tires</span></span></p>\r\n\r\n<p style=\"margin-left:18.0000pt; text-align:left; margin:0pt 0pt 0.0001pt\">&nbsp;</p>');
INSERT INTO `features` VALUES ('0000000079', '14', '', '4.Three positions Pressing Arm', '<p style=\"margin-left:15.7500pt; text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;&nbsp;&nbsp;Space saving, easy to operate, ensure high efficiency in mounting and demounting tires, works for different tires.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000080', '14', '', '5.', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">A</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">. E</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">quipped with a large </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">turntable</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">, with the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">gauge</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&nbsp;to facilitate the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">mounting and dismounting efficiency</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">, the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">European </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">standard gasket can protect the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">operator during mounting and dismounting</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">.</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Special clamp &nbsp;</span></span></p>\r\n\r\n<p class=\"15\" style=\"margin-left:18.0000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">B. The clamp is made of special material, strong and durable, also with plastic protective cover.</span></span></p>');
INSERT INTO `features` VALUES ('0000000081', '14', '', '6. 2-Speed Motor', '<p class=\"15\" style=\"margin-left:18.0000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Precision and high torque at low speed for the best mounting and demounting result</span></span></p>');
INSERT INTO `features` VALUES ('0000000082', '14', '', '7.', '<ol>\r\n	<li class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Foot control pedal with micro-control function provides precise clamping, avoiding damage to the rims</span></span></li>\r\n</ol>');
INSERT INTO `features` VALUES ('0000000083', '15', '', '1.Pneumatic Tilt Arm Structure', '<p class=\"15\" style=\"margin-left:18.0000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Tilt forth and back by pneumatic control and lock<font face=\"宋体\">，</font><font face=\"Calibri\">providing more upper space, convenient to mount and demount tires</font></span></span></p>');
INSERT INTO `features` VALUES ('0000000084', '15', '', '2.Bead Press System', '<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Tremendous power and control</span></span>&nbsp;</p>\r\n\r\n<p class=\"15\" style=\"margin-left:18.0000pt\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Aids mounting and demounting</span></span></p>');
INSERT INTO `features` VALUES ('0000000085', '15', '', '3.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Mounting head made of high strength alloy steel, wear-resistant and corrosion-resistant, </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:宋体\">the positioning function of him, easy to operate and a good helper to mount and dismount tires</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000086', '15', '', '4.Three positions Pressing Arm', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;&nbsp;Space saving, easy to operate, ensure high efficiency in mounting and demounting tires, works for different tires.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000087', '15', '', '5.', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">A</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">. E</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">quipped with a large </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">turntable</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">, with the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">gauge</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&nbsp;to facilitate the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">mounting and dismounting efficiency</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">, the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">European </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">standard gasket can protect the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">operator during mounting and dismounting</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">.</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Special clamp </span></span></span></span></p>\r\n\r\n<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5pt\"><span style=\"font-family:宋体\">B. The clamp is made of special material, strong and durable, also with plastic protective cover.</span></span></p>');
INSERT INTO `features` VALUES ('0000000088', '15', '', '6. 2-Speed Motor', '<p class=\"15\" style=\"margin-left:18.0000pt; text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Precision and high torque at low speed for the best mounting and demounting result</span></span></p>');
INSERT INTO `features` VALUES ('0000000089', '15', '', '7.', 'Foot control pedal with micro-control function provides precise clamping, avoiding damage to the rims.');
INSERT INTO `features` VALUES ('0000000090', '18', '', '1', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Complete independent intellectual property right</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000091', '18', '', '2', '<ol>\r\n	<li class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">With Android system, </span></span></li>\r\n	<li class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">strong expandability, </span></span></li>\r\n	<li class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">can update the software through the built-in USB port.</span></span></li>\r\n</ol>');
INSERT INTO `features` VALUES ('0000000092', '18', '', '3.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Laser light indicator: </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">The pinpoint,</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">fast and easy solution to position adhesive weights on the wheel.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000093', '18', '', '4.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">With auto width measurement,</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">input automatically the data of the tire and has dynamic balance mode, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">6 ALU </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">modes</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">, OPT function and motorcycle balance mode.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000094', '18', '', '5.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">256 point calculation method and positioning, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">make the test data more accurate</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000095', '18', '', '6.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Compare with the plastic measuring instrument,</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">the aluminum automatic measuring instrument not easy to deform and measurement more accurate.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000096', '18', '', '7.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Segment</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">ing and hiding the </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">unevenness</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">&nbsp;to the inner side of the tire</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000097', '18', '', '8.', '<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">The standard 40mm threaded shaft is universal for balancer </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">worldwide</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">. </span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">The junction surface to main shaft and locking thread adopt the fine grinding after ultrasonic quenching treatment,</span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">which is durable and artistic. &nbsp;&nbsp;&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">adaptors, can balance kinds of motorcycle tires.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000098', '18', '', '9.', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Equipped with tool box,</span></span></p>\r\n\r\n<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">can get access to the use of accessories easily.</span></span></p>');
INSERT INTO `features` VALUES ('0000000099', '18', '', '10.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Multi-functional software, including Android system, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">supporting many kinds of languages,</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">rich menu bar, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">d</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">irect calibration, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">multiple precision selection, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">self-diagnosis</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">&nbsp;and</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">&nbsp;fault troubleshooting</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">&nbsp;and so on</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000100', '18', '', '11.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">With foot brake, pasting </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">weight will </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">be more precise</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000101', '18', '', '12', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">OPT function&nbsp;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Check the wheel rim and tire imbalance </span></span></span></span></p>\r\n\r\n<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">respectively to match the best tire installation position </span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000102', '18', '', '13.', '<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Equipped with 19</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">monitor with clear display, </span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">with universal adjustment support frame, </span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">operator could operate the machine from any angle.</span></span></p>');
INSERT INTO `features` VALUES ('0000000103', '18', '', '14.', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Self-detection fault function can help customers to diagnose problems accurately when the machine is in trouble.</span></span></p>');
INSERT INTO `features` VALUES ('0000000104', '18', '', '15.', '<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Machine calibration is easy to operate,</span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">which can restore machine</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s precision quickly</span></span></p>');
INSERT INTO `features` VALUES ('0000000105', '18', '', '16.', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Auto Braking function (Optional)</span></span></p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\">&nbsp;</p>');
INSERT INTO `features` VALUES ('0000000106', '19', '/static/upload/df988190a0c68e1b/9ee09685b73f0d72.png', '', '<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">1. Complete independent intellectual property right</span></span></p>');
INSERT INTO `features` VALUES ('0000000107', '19', '/static/upload/f6047c5c66ef3208/7e98d455413e62cf.png', '', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">2.&nbsp;Including dynamic balance mode, 6 ALU modes, OPT function and motorcycle balance mode.</span></span></p>');
INSERT INTO `features` VALUES ('0000000108', '19', '/static/upload/ac7c8a3c7f2d46e0/b831e4c99e0dc3ca.png', '', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">3.&nbsp;Laser light indicator: The pinpoint, fast and easy solution to position adhesive weights on the wheel.</span></span></p>');
INSERT INTO `features` VALUES ('0000000109', '19', '', '4.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">With auto width measurement,</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">input automatically the data of the tire and has dynamic balance mode, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">6 ALU </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">modes</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">, OPT function and motorcycle balance mode.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000110', '19', '', '5.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">256 point calculation method and positioning, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">make the test data more accurate</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000111', '19', '', '6.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Compare with the plastic measuring instrument,</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">the aluminum automatic measuring instrument not easy to deform and measurement more accurate.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000112', '19', '', '7.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Segment</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">ing and hiding the </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">unevenness</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">&nbsp;to the inner side of the tire</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000113', '19', '', '8.', '<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">The standard 40mm threaded shaft is universal for balancer </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">worldwide</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">. </span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">The junction surface to main shaft and locking thread adopt the fine grinding after ultrasonic quenching treatment,</span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">which is durable and artistic. &nbsp;&nbsp;&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">adaptors, can balance kinds of motorcycle tires.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000114', '19', '', '9.', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Equipped with tool box,</span></span></p>\r\n\r\n<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">can get access to the use of accessories easily.</span></span></p>');
INSERT INTO `features` VALUES ('0000000115', '19', '', '10.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Multi-functional software, including Android system, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">supporting many kinds of languages,</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">rich menu bar, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">d</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">irect calibration, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">multiple precision selection, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">self-diagnosis</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">&nbsp;and</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">&nbsp;fault troubleshooting</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">&nbsp;and so on</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000116', '19', '', '11.', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">With foot brake, pasting </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">weight will </span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">be more precise</span></span><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">.</span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000117', '19', '', '12', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">OPT function&nbsp;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Check the wheel rim and tire imbalance </span></span></span></span></p>\r\n\r\n<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">respectively to match the best tire installation position </span></span></span></span></p>');
INSERT INTO `features` VALUES ('0000000118', '19', '', '13.', '<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Equipped with 19</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">monitor with clear display, </span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">with universal adjustment support frame, </span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">operator could operate the machine from any angle.</span></span></p>');
INSERT INTO `features` VALUES ('0000000119', '19', '', '14.', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Self-detection fault function can help customers to diagnose problems accurately when the machine is in trouble.</span></span></p>');
INSERT INTO `features` VALUES ('0000000120', '19', '', '15.', '<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Machine calibration is easy to operate,</span></span></p>\r\n\r\n<p class=\"15\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">which can restore machine</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s precision quickly</span></span></p>');
INSERT INTO `features` VALUES ('0000000121', '19', '', '16.', '<p class=\"15\" style=\"text-align:left\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:微软雅黑\">Auto Braking function (Optional)</span></span></p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\">&nbsp;</p>');
INSERT INTO `features` VALUES ('0000000122', '20', '/static/upload/df988190a0c68e1b/9ee09685b73f0d72.png', '', '<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">1. Complete independent intellectual property right</span></span></p>');
INSERT INTO `features` VALUES ('0000000123', '20', '/static/upload/f6047c5c66ef3208/7e98d455413e62cf.png', '', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">2. Including dynamic balance mode, 6 ALU modes, </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">OPT function and motorcycle balance mode.</span></span></p>');
INSERT INTO `features` VALUES ('0000000124', '20', '/static/upload/ac7c8a3c7f2d46e0/b831e4c99e0dc3ca.png', '', '<p><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">3. Laser light indicator: The pinpoint, fast and </span></span><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">easy </span></span><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">solution to position adhesive weights on the wheel.</span></span></p>');
INSERT INTO `features` VALUES ('0000000125', '20', '/static/upload/4478488ab00b568d/5444ea027db66706.jpg', '', '<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">4.&nbsp;256 point calculation method and positioning, make the test data more accurate.</span></span></p>');
INSERT INTO `features` VALUES ('0000000126', '20', '/static/upload/51abf6163767fbbd/6d3f1a45bd5db029.png', '', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">5.&nbsp;Compare with the plastic measuring instrument, the aluminum automatic measuring instrument not easy to deform and measurement more accurate.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">6.&nbsp;The new ruler can be used for maximum 24 - inch rim.</span></span></p>');
INSERT INTO `features` VALUES ('0000000127', '20', '/static/upload/4d8d524aefa01f0e/28d5fe55a917affc.png', '', '<p><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">7.&nbsp;Segmenting and hiding the balancing weight to the inner side of the tire.</span></span></p>');
INSERT INTO `features` VALUES ('0000000128', '20', '/static/upload/91a4855036ad9ae1/ebbdfe3447b6ad70.png', '', '<p style=\"margin-left:18.0pt; margin:0cm 0cm 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">8. The standard 36mm threaded shaft is universal for balancer worldwide. The junction surface to main shaft and locking thread adopt the fine grinding after ultrasonic quenching treatment, which is durable and artistic.</span></span></p>');
INSERT INTO `features` VALUES ('0000000129', '20', '/static/upload/79aef97a4d746e49/b906383b0dc4203c.png', '', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">9.&nbsp;With foot brake, pasting weight will be more precise.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">&nbsp; &nbsp;Auto Braking function is Optional.</span></span></p>');
INSERT INTO `features` VALUES ('0000000130', '20', '/static/upload/4509fa48c04dddbf/9487c734fa1e44be.png', '', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">10.&nbsp;Triple protection power supply through EMC certification.</span></span></p>');
INSERT INTO `features` VALUES ('0000000131', '20', '/static/upload/25c921f68d57cdae/c13b105ea772bed1.png', '', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">11. Self-detection fault function can help customers to diagnose problems accurately when the machine is in trouble.</span></span></p>');
INSERT INTO `features` VALUES ('0000000132', '20', '/static/upload/44f2d3031557f427/b5dc303879846ece.png', '', '<p style=\"margin-left:18.0pt; margin:0cm 0cm 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">12. Machine calibration is easy to operate, which can restore machine&rsquo;s precision quickly</span></span></p>');
INSERT INTO `features` VALUES ('0000000138', '21', '/static/upload/df988190a0c68e1b/9ee09685b73f0d72.png', '', '<p style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">1.Complete independent intellectual property right</span></span></p>');
INSERT INTO `features` VALUES ('0000000139', '21', '/static/upload/f6047c5c66ef3208/7e98d455413e62cf.png', '', '<p style=\"text-align: center;\"><span style=\"font-size:16px;\">2. Including dynamic balance mode, 6 ALU modes, </span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\">OPT function and motorcycle balance mode.</span></p>');
INSERT INTO `features` VALUES ('0000000140', '21', '/static/upload/51abf6163767fbbd/6d3f1a45bd5db029.png', '', '<p style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">3. Compare with the plastic measuring instrument, </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">the </span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">&nbsp; &nbsp; &nbsp; aluminum</span></span><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">&nbsp;automatic</span></span><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">&nbsp;measuring instrument not easy</span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">to deform and measurement more accurate.</span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">&nbsp; &nbsp;4. The new ruler can be used for maximum 24 - inch rim.</span></span></p>');
INSERT INTO `features` VALUES ('0000000141', '21', '/static/upload/25c921f68d57cdae/c13b105ea772bed1.png', '', '<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">5. Self-detection fault function can help customers to </span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;diagnose </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">problems accurately when the machine is in trouble.</span></span></p>');
INSERT INTO `features` VALUES ('0000000142', '21', '/static/upload/44f2d3031557f427/b5dc303879846ece.png', '', '<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">6. Machine calibration is easy to operate, </span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; which </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">can restore machine&rsquo;s precision quickly</span></span></p>');
INSERT INTO `features` VALUES ('0000000143', '21', '/static/upload/bed818a6ec95f6b9/52cf77905d167153.png', '', '<p style=\"text-align: center;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">7. Adopt traditional balancing machine design, </span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">easy to learn, convenient to use.</span></span></p>');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `banner` text,
  `nandud` int(10) DEFAULT NULL,
  `tesed` int(10) DEFAULT NULL,
  `tuijiand` int(10) DEFAULT NULL,
  `liangdian` varchar(255) DEFAULT NULL,
  `liyou` varchar(255) DEFAULT NULL,
  `reshu` varchar(255) DEFAULT NULL,
  `tianshu` varchar(255) DEFAULT NULL,
  `cheshu` varchar(255) DEFAULT NULL,
  `bushu` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `content1` text,
  `content2` text,
  `content3` text,
  `content4` text,
  `lid` int(10) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('2', '趣味运动会主题团建', '/static/upload/1ec8e5956daef240/b2fc5ff138ffe886.jpg', '/static/upload/de54d0f6c63e06ba/30ae4ce51d867208.jpg|/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg|/static/upload/88b2f08df0d7c3c9/a3032ab0e8498fd0.jpg', '3', '4', '5', '提升凝聚力 、 强化合作 、 拓展培训 、 提升荣誉感', '时下流行的团建方式', '40-500', '1', '1', 'TJ20190101', '230', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">罗湖体育馆</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">罗湖体育馆总投资1.9亿元，占地12502平方米，总建设面积24231平方米，共七层，分地下三层，地上四层；内设主馆、练习馆、游泳馆及配套用房、会所、停车场等设施。</span></span></p>\r\n\r\n<p><img border=\"0\" src=\"/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg\" style=\"max-width:800px\" title=\"image\" /></p>', '<p style=\"text-align: center;\"><img border=\"0\" src=\"/static/upload/88b2f08df0d7c3c9/a3032ab0e8498fd0.jpg\" style=\"max-width:880px\" title=\"image\" /><img border=\"0\" src=\"/static/upload/e47e3ea6ac1aad8f/cb2cb091e3918c48.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p style=\"text-align: center;\"><img border=\"0\" src=\"/static/upload/79e81a37893462bc/d9751b405c9983d3.jpg\" style=\"max-width:880px\" title=\"image\" /><img border=\"0\" src=\"/static/upload/de54d0f6c63e06ba/30ae4ce51d867208.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '', '<p>阿斯顿</p>', '5', '5', '2018-12-19 18:16:44');
INSERT INTO `goods` VALUES ('3', '新员工激活主题拓展1日活动', '/static/upload/c2ffc38238c06cab/b10d01de88776db9.jpg', '/static/upload/c584073e6b49cf07/a137cbd0d6899531.jpg|/static/upload/37938a28aa2151f2/5f92a35ed0db2a16.jpg|/static/upload/fe52a9df9f01a5c0/2cf13afd83f03a17.jpg', '5', '3', '4', '新员工激活主题拓展，趣味项目，团队挑战，有效的帮助员工完成转变。', '团队，游艇', '30-500', '1天', '1.5小时', '寻奇者拓展培训一天行程', '230', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">正确理解团体与个体、团队成员之间的关系；完善人格，实现畅快表达意原和聆听别人的观点；最终为形成高绩效团队奠定基础。 快速凝练即时团队。发掘1+1＞2 团队潜能，突破固有习惯障碍，寻找提升组织机能渠道。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">解除队员的思想武装，消除人与人之间的隔阂和陌生感，拉近团队队员的距离，为受训队员搭建友谊的桥梁，增强的团队成员的沟通、协调与凝聚力。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">在训练设施、后勤设施完备的训练基地，学员可以在专业培训师的引导下，接受挑战，突破自我惰性，建立自信心，实现有效沟通，整合团队目标，形成战斗力团队。课程设计以团队发展阶段的特点及各阶段团队成员的心理变化为主线，即： 团队成立期&rarr;团队组建、建立诚信 &nbsp; &nbsp; &nbsp; &nbsp; 团队探索期&rarr;明确目标，产生领导核心 团队动荡期&rarr;化解冲突、统一规则 &nbsp; &nbsp; &nbsp; &nbsp; 团队成熟期&rarr;凝聚企业文化，形成认同感 通过团队实操、心理启发、技术检测、个人尝试、团队作为、军事行为等项目体验参与及环环相扣的课目设计，令学员在全程培训的氛围中，寓教于乐、寓教于智，增强主动参与性，形成严守纪律、坚决执行、承担责任和永不放弃的团队精神，从而达到凝练企业团队合力作用的效果。</span></span></p>', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">建设鹰狼团队：塑造象鹰一样的个人，象狼一样的团队</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">鹰：刚毅、坚强、迅敏、果敢、专注、进取、雄居高山之巅，搏击蓝天之上</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">狼：协作、信任、服从、忠诚、关爱、智慧、冷静、顽强、策略、形成团队的狼族，是个强大，不可侵犯的整体。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">人的行为产生的原因可以分为外驱力和内驱力两种。内驱力指建立在个人自信心基础上的一种自我达成的成功精神。 在整个员工职能体系的大冰山上，&ldquo;知识、技能&rdquo;只是水上部分，而隐于水下不易测量的员工态度、个性、内驱力等情感智力部分，却是挖掘之&ldquo;本&rdquo;。也是企业发展的强大驱动力。寻奇者拓展培训项目将启动这一强大驱动力，满足员工的自尊和自我实现等心理需要，使员工渴求不断地完善自己，将自身的潜能发挥出来。在这个过程中，员工热情主动地投入项目任务的完成中，并将此激情延续到工作中去。</span></span></p>', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"1082\">\r\n	<tbody>\r\n		<tr height=\"28\">\r\n			<td colspan=\"2\" height=\"60\" rowspan=\"2\" width=\"196\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">时间</span></span></p>\r\n			</td>\r\n			<td height=\"60\" rowspan=\"2\" width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动内容</span></span></p>\r\n			</td>\r\n			<td height=\"60\" rowspan=\"2\" width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动方式</span></span></p>\r\n			</td>\r\n			<td colspan=\"3\" width=\"276\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动要求</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"28\">\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">体力</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">心理</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">智力</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td height=\"393\" rowspan=\"11\" width=\"57\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">第一天</span></span></p>\r\n			</td>\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">07:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">公司集中乘车出发</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"35\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">08:50~9:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">到达基地、稍事整理</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">09:00~10:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">破冰＋团队文化建设－个人与团队融入</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"37\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">10:00~11:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：共同进退－领导力、凝聚力、团队合力</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">分队</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">11:00~12:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：跳出真我－突破自己、挑战心理极限</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">个人</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">极高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"37\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">12:00~13:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中餐、稍事休息</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">13:30~14:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">团队热身</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">14:30~15:20</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：信任背摔－团队、信任、责任</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">分队</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">15:20~16:10</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：&nbsp;孤岛求生&mdash;组织&nbsp;、沟通、协作</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">高</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">16:10~17:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">毕业项目：毕业墙&mdash;进取、勇担责任、共同发展</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"40\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">17:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集中乘车返回</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">费用包含</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">1、人员：专业教练团队</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">2、道具：拓展培训物料使用、运输费用</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">3、服务：课程设计研发、活动培训费用</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">4、用餐：围餐（10人一围）</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">费用不含</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">1、费用包含以外的一切费用</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">2、交通：正规空调大巴往返接送</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">3、保险：专业户外拓展保险</span></span></p>', '4', '2', '2018-12-21 10:08:18');
INSERT INTO `goods` VALUES ('4', '皮划艇时速竞赛-南澳七星湾 一天团建', '/static/upload/106b3ed3a2da4ea1/11e2f3b8f24047f6.jpg', '/static/upload/a29d3310e03a1558/839c7384e7477aec.jpg|/static/upload/ac80e3d70be9435f/630d7ccff24cb4d7.jpg', '5', '5', '5', '七星湾游艇会，房车，游艇', '炎炎夏日，体验寻奇者皮划艇水上团建', '30', '1', '1.5小时', '深圳南澳一天', '380', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">大鹏七星湾拓展基地</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">享誉&ldquo;中国最美游艇会&rdquo;地处美丽的大鹏半岛七星湾畔，坐拥水质优良的港湾，背靠国家级地质公园七娘山，空气清新，得天独厚的滨海生态资源，孕育了七星湾的好山好水好风光。集户外运动、海上观光旅游、培训、休闲、娱乐、度假、博物馆、商务活动于一体，提供帆船体验、游艇租赁、海岛游、青少年及成人帆船培训、帆板体验、皮划艇体验、拓展培训、潜水体验、汽车电影、攀岩、艺术创作、购物、艇艇销售、展览、ATV试驾及住宿 、餐饮、会议等配套服务。</span></span></p>', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">破冰分组</span></span></p>\r\n\r\n<pre>\r\n<span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">以破冰游戏贯穿始终，展示我们公司成员的风采。破冰游戏将有效打破人与人之间的隔阂，创造良好的沟通氛围，激发热情与斗志。一个团队建立的过程：所有参加活动的人员以小队为单位，每一小队就是一个部落，部落的所有家庭成员必须共同面对困难、相互协作、迎接挑战、攻克难关。</span></span></pre>', '<p><span style=\"font-size:16px;\">08:00&nbsp;&nbsp;集合，出发<br />\r\n09:30&nbsp;&nbsp;破冰分组<br />\r\n10:30&nbsp;&nbsp;团队挑战任务&mdash;解手环、蛟龙出海<br />\r\n12:00&nbsp;&nbsp;享用午餐<br />\r\n14:00&nbsp;&nbsp;团队挑战任务&mdash;南水北调<br />\r\n15:00&nbsp;&nbsp;皮划艇竞赛专业的皮划艇教练教如何操作皮划艇，出海在海上竞赛，摆拍团队造型<br />\r\n17:00&nbsp;&nbsp;集体乘车返程</span></p>', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">费用包含</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">1、人员：专业教练团队</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">2、道具：拓展培训物料使用、运输费用</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">3、服务：课程设计研发、活动培训费用</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">4、交通：正规空调大巴往返接送</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">5、用餐：桌餐</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">6、保险：专业户外拓展保险</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">费用不含</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">1、费用包含以外的一切费用</span></span></p>', '3', '1', '2018-12-21 10:23:45');
INSERT INTO `goods` VALUES ('5', '击剑主题团建', '/static/upload/0392cc7790e26e83/a40d901ef8eeb57a.jpg', '/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '2018-12-25 16:14:24');
INSERT INTO `goods` VALUES ('6', '轰趴团建', '/static/upload/d257aa66995f4c9b/761972446a80f276.jpg', '/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '2018-12-25 16:15:51');
INSERT INTO `goods` VALUES ('7', '乌镇寻宝旅行', '/static/upload/bbecb35c7ff5b5e3/9b26b8633b5b1f93.jpg', '/static/upload/bbecb35c7ff5b5e3/9b26b8633b5b1f93.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 16:19:41');
INSERT INTO `goods` VALUES ('8', '趣味游戏式', '/static/upload/8dca812ef511a183/cc0fcaf770561264.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '4', '2', '2018-12-25 16:27:32');
INSERT INTO `goods` VALUES ('9', '泡泡趴，夏日主题系列活动', '/static/upload/f1f745012e0359a9/b619ba59ad530af4.png', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 17:42:16');
INSERT INTO `goods` VALUES ('10', '非洲鼓团建-秀一把文艺', '/static/upload/e2e17d012764d975/9773587ff289be23.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '2018-12-25 17:44:13');
INSERT INTO `goods` VALUES ('11', '厨师争霸赛+最强战队主题团建', '/static/upload/89f35b71411c61ac/818f89ebf37cdd64.png', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 17:45:56');
INSERT INTO `goods` VALUES ('12', '茶马古道文化体验之旅', '/static/upload/b42792c22da26f2d/279a0c9c60f35833.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 17:50:05');
INSERT INTO `goods` VALUES ('13', '七星湾游艇会-帆船游艇豪华体验', '/static/upload/099e94b10edbcf61/117156f3797581fd.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 17:53:37');
INSERT INTO `goods` VALUES ('14', '玫瑰海岸——浪漫婚纱摄影', '/static/upload/94dfd723e63a5498/4e250ab35a95abd0.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 17:56:08');
INSERT INTO `goods` VALUES ('15', '纳斯卡巨画 半日体验式团建', '/static/upload/01e539de4a1e6313/7c42e9e6287ee9c6.png', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 18:00:06');
INSERT INTO `goods` VALUES ('16', '新狮王争霸赛一天舞狮团建体验', '/static/upload/f27481ee93edcb40/e350cf6265fd742a.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 18:01:47');
INSERT INTO `goods` VALUES ('17', '双月湾', '/static/upload/37ce37e5a1edea65/450ab783d578218b.jpg', '/static/upload/e47e3ea6ac1aad8f/cb2cb091e3918c48.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '6', '2018-12-25 18:07:40');
INSERT INTO `goods` VALUES ('18', '探索重庆火锅的秘密主题团建', '/static/upload/83cac20a4c23c850/3684c5bd646caa39.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '6', '2018-12-25 18:11:34');
INSERT INTO `goods` VALUES ('19', '棒球体验团建', '/static/upload/a1e4e52a9c05a81b/8f639c879b5edeb2.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-25 19:30:56');
INSERT INTO `goods` VALUES ('20', '曲棍球团建', '/static/upload/80b76c70f20fea26/f208f687dd420f23.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-25 19:36:51');
INSERT INTO `goods` VALUES ('21', '皮划艇团建', '/static/upload/c5fbab3c846b9a73/c7e95775d0f90868.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-25 19:39:25');
INSERT INTO `goods` VALUES ('22', '卡丁车体验团建', '/static/upload/62f9898b5ec8ea09/de1de4585283407a.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-26 12:03:05');
INSERT INTO `goods` VALUES ('23', '帆船竞速体验团建', '/static/upload/b3788bc1e25a1d23/72b5ca94f4717dc4.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '<p><img border=\"0\" src=\"/static/upload/cf5b66e7a977a5f9/80fbaaf64ca818c9.png\" style=\"max-width:880px\" title=\"image\" /></p>', '', '', '', '5', '5', '2018-12-26 12:05:27');
INSERT INTO `goods` VALUES ('25', '团建实验', '/static/upload/80b76c70f20fea26/f208f687dd420f23.jpg', '/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg|/static/upload/88b2f08df0d7c3c9/a3032ab0e8498fd0.jpg', '5', '5', '5', '亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，', '体育团建，活力团队，户外体育', '80', '1', '2', 'jjty20190101', '350', '', '', '', '', '0', '0', '2019-01-04 17:00:19');

-- ----------------------------
-- Table structure for `home_video`
-- ----------------------------
DROP TABLE IF EXISTS `home_video`;
CREATE TABLE `home_video` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `home_img` varchar(255) NOT NULL COMMENT '视频展示图',
  `home_title` char(100) DEFAULT NULL COMMENT '视频标题',
  `home_com` varchar(255) NOT NULL COMMENT '视频网址',
  `home_info` varchar(255) DEFAULT NULL COMMENT '视频内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_video
-- ----------------------------
INSERT INTO `home_video` VALUES ('0000000001', '/static/upload/75edbd276cbaec80/ff57621a67fa9ddc.png', '1. LAWRENCE AUTO MACHINERY', 'https://www.youtube.com/embed/d7BV_6UsHP0', '', '2019-04-09 11:18:45');
INSERT INTO `home_video` VALUES ('0000000002', '/static/upload/7e4078b99cfdacfd/b721f3bcff64f808.png', '2. LAWRENCE CALIBRATION DEMO', 'https://www.youtube.com/embed/d7BV_6UsHP0', '', '2019-04-09 11:20:47');
INSERT INTO `home_video` VALUES ('0000000003', '/static/upload/476b9eadad53f6dc/53f89ae2964b7f24.png', '3. LAWRENCE ADVANTAGES', 'https://www.youtube.com/embed/d7BV_6UsHP0', '', '2019-04-09 11:21:21');
INSERT INTO `home_video` VALUES ('0000000004', '/static/upload/2699d4223671d336/a82de61d820447ef.png', '4. LAWRENCE INTRODUCTION', 'https://www.youtube.com/embed/d7BV_6UsHP0', '', '2019-04-09 11:21:51');
INSERT INTO `home_video` VALUES ('0000000005', '/static/upload/a5055ce7fad44c44/9179ed14fb1b4f99.png', 'HAWKEYE ELITE®', 'https://www.youtube.com/embed/d7BV_6UsHP0', 'Hunter\'s HawkEye Elite® alignment system is the world\'s leading wheel aligner, recording four-wheel alignment readings as fast as 90 seconds!', '2019-04-09 11:22:18');
INSERT INTO `home_video` VALUES ('0000000006', '/static/upload/7f5b75ad53a6f062/98292eb1842fc167.png', 'AUTOCOMP ELITE®', 'https://www.youtube.com/embed/d7BV_6UsHP0', 'AutoComp Elite® features automatic compensation, the result is the highest quality brake job possible.', '2019-04-09 11:23:14');
INSERT INTO `home_video` VALUES ('0000000007', '/static/upload/f251f738a649fdf8/481cc03798e957c0.png', 'ROAD FORCE® ELITE', 'https://www.youtube.com/embed/d7BV_6UsHP0', '', '2019-04-09 11:23:43');

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '产品id',
  `logo` varchar(255) NOT NULL COMMENT '产品logo',
  `logo_title` char(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '产品标题',
  `info_title` varchar(255) NOT NULL COMMENT '介绍标题',
  `info` text NOT NULL COMMENT '介绍详情',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='产品详情表';

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('0000000007', '8', '/static/upload/c8738bcd5ec104b2/67e4ba85dbc02e3e.jpg', 'smarter', 'SMARTER ALIGNMENT MACHINE', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">As Lawrence&rsquo;s latest&nbsp;generation 3D&nbsp;wheel alignment system, Smarter is an upgrader featured by its mini targets highly preferred by users.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Smarter applies the latest technology like 720&deg;panoramic display technology, Intelligent gesture recognition function etc., relieving users from drudgery operation with relaxed one-stop new alignment experience.Choose Smarter, smarter choice!</span></span></p>');
INSERT INTO `info` VALUES ('0000000008', '9', '/static/upload/874dc842240df1b5/eee96e3bc69cbd6e.jpg', 'CROWN', 'CROWN ALIGNMENT MACHINE', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">Crown 3d wheel alignment has gone through a decade&rsquo;s market tests, mature and trust-worthy as a choice of confidence, like the crown of the king.</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">As the three dimensional system leader, its precise measurement as well as outstanding quality have won Crown firm trust from customers.</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">Crown technology, superiorly unique</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000009', '10', '/static/upload/7f8901480aca4af1/334c5d61d88019dc.jpg', 'BOSSTAR', 'BOSSTAR ALIGNMENT MACHINE', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Arial\">The name of Bosstar is the combination of &quot;Boss and Star&quot;. The name itself embodies that</span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Arial\">the product will act like a great boss who is responsible and capable that profit will be brought</span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Arial\">to the owners continuously.</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Arial\">The Bosstar R&amp;D team is following the trend of the IT industry and leading the brand actively by</span></span>&nbsp;<span style=\"font-size:9.0000pt\"><span style=\"font-family:Arial\">injecting the most popular elements into the design.</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:9.0000pt\"><span style=\"font-family:Arial\">Established on the matured 3d measuring technology of Lawrence, Bosstar cannot help giving you awesome experience visually and physically.</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000010', '11', '/static/upload/812955020fc468a0/e69ec499f2accb75.jpg', 'XSUPER', 'XSUPER ALIGNMENT MACHINE', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&quot;Xsuper&quot; means a group of intelligent and energetic automotive science and technology talents, taking building</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;a</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">&nbsp;kingdom of automotive testing equipment as their responsibility, </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">bringing an unprecedented emerging technology flow for the development of automotive repair and maintenance industryand providing high cost-effective and high-quality</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\">product experience and services for global users.</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000011', '12', '/static/upload/1e8fe6f056ed7558/861d6ed8c28f5fa3.jpg', 'x618', 'MAGIC TYRE CHANGER X618', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">This Magic tyre changer X618 is the top one in its kind, fully automatic operation and very easy to use in the industry, it</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s kind of the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&ldquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Star Product</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rdquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;</span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">during international Exhibitions, its wheel lift and dual-disc bead breaker help saving labor, and the key parts are imported from Italy, </span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">its rim clamping range is 6</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">-37</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">, etc. </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Take this Magic tyre changer X618 to your workshop, it will bring in unexpected profits.</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000012', '13', '/static/upload/bfde6615528c48ad/e156d37db8bdb095.jpg', 'X360', 'AUTO TYRE CHANGER X306', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">This Auto tyre changer X306 is the top one in its kind, fully automatic operation and very easy to use in the industry, it</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s kind of the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&ldquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Star Product</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rdquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;during international Exhibitions, its wheel lift and dual-disc bead breaker help saving labor, and the key parts are imported from Italy, its rim clamping range is 6</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">-37</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">, etc. </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Take this Magic tyre changer X618 to your workshop, it will bring in unexpected profits.</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000013', '14', '/static/upload/2c462a9255bb8f58/184e57c1c3a0457c.jpg', 'X203-PX8', 'AUTO TYRE CHANGER X203-PX8', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">This Auto tyre changer X203-PX8 is the top one in its kind, fully automatic operation and very easy to use in the industry, it</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s kind of the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&ldquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Star Product</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rdquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;during international Exhibitions, its wheel lift and dual-disc bead breaker help saving labor, and the key parts are imported from Italy, its rim clamping range is 6</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">-37</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">, etc. </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Take this Magic tyre changer X618 to your workshop, it will bring in unexpected profits.</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000014', '15', '/static/upload/87fce4a9b1e82ebb/4fa71bb669cdd5bf.jpg', 'X203A-PX6', 'AUTO TYRE CHANGER X203-PX6', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">This Auto tyre changer X203-PX6 is the top one in its kind, fully automatic operation and very easy to use in the industry, it</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s kind of the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&ldquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Star Product</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rdquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;during international Exhibitions, its wheel lift and dual-disc bead breaker help saving labor, and the key parts are imported from Italy, its rim clamping range is 6</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">-37</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">, etc. </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Take this Magic tyre changer X618 to your workshop, it will bring in unexpected profits.</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000015', '16', '/static/upload/eeece52e88c526a1/12c352f9a6701c3f.jpg', 'x403', '', '');
INSERT INTO `info` VALUES ('0000000016', '22', '/static/upload/1be56c18f8cd92ea/37b315d70689f13e.jpg', 'x102', '', '');
INSERT INTO `info` VALUES ('0000000017', '18', '/static/upload/2e28acd057277c36/65099a1599f00ac9.jpg', 'b805', 'Top Wheel Balancer B805', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">This </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Top Wheel Balancer B805 </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">is the top one in its kind, fully automatic operation and very easy to use in the industry, it</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s kind of the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&ldquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Star Product</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rdquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;during international Exhibitions, its wheel lift and dual-disc bead breaker help saving labor, and the key parts are imported from Italy, its rim clamping range is 6</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">-37</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">, etc. </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Take this </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Top Wheel Balancer B805</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;to your workshop, it will bring in unexpected profits.</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000018', '19', '/static/upload/aeeabf64894cea1d/708f85d80b533385.jpg', 'b705', 'Top Wheel Balancer B805', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">This </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Top Wheel Balancer B805 </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">is the top one in its kind, fully automatic operation and very easy to use in the industry, it</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s kind of the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&ldquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Star Product</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rdquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;during international Exhibitions, its wheel lift and dual-disc bead breaker help saving labor, and the key parts are imported from Italy, its rim clamping range is 6</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">-37</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">, etc. </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Take this </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Top Wheel Balancer B805</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;to your workshop, it will bring in unexpected profits.</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000019', '20', '/static/upload/6040cb25edb4c3f8/bcd6529f9d1341fd.jpg', 'b605', 'Top Wheel Balancer B805', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">This </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Top Wheel Balancer B805 </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">is the top one in its kind, fully automatic operation and very easy to use in the industry, it</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">s kind of the </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&ldquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Star Product</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rdquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;during international Exhibitions, its wheel lift and dual-disc bead breaker help saving labor, and the key parts are imported from Italy, its rim clamping range is 6</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">-37</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:Arial\">&rsquo;&rsquo;</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">, etc. </span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Take this </span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">Top Wheel Balancer B805</span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\">&nbsp;to your workshop, it will bring in unexpected profits.</span></span></span></span></p>');
INSERT INTO `info` VALUES ('0000000020', '21', '/static/upload/d5b89f41a09fc439/4189be0ae1c2aac2.jpg', 'B505', 'Semi-Auto Wheel Balancer B505', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">This Semi-Auto Wheel Balancer B505 is the basic one in its kind, semi-automatic operation and very easy to use in the industry, it&rsquo;s very popular&nbsp;in east-south Asia market and Africa market because of its good price , for clients who just started business in this field, this one would be a better choice from the beginning, easy to operate, easy to calibrate and easy to sell to tire shops.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Take this Top Wheel Balancer B805&nbsp;to your workshop, it will bring in unexpected profits.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>');

-- ----------------------------
-- Table structure for `light`
-- ----------------------------
DROP TABLE IF EXISTS `light`;
CREATE TABLE `light` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` char(200) NOT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `img` varchar(255) NOT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of light
-- ----------------------------
INSERT INTO `light` VALUES ('0000000009', '2018 LAWRENCE Highlights', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE introduces Touchless&nbsp;wheel&nbsp;clamp&nbsp;and&nbsp;6.4&nbsp;Megapixel&nbsp;industry&nbsp;cameras&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE developed Auto&nbsp;Brake&nbsp;wheel&nbsp;balancer&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE exhibits fully range of machines at SEMA</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE releases new brochures of automotive equipment</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE visit UK dealer and do training</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE CIAACE visitors</span></span></p>', '/static/upload/f2a8e136dd871738/1aead5ce1892d945.jpg');
INSERT INTO `light` VALUES ('0000000008', '2017 LAWRENCE Highlights', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE developed Ride&nbsp;Height&nbsp;function&nbsp;in&nbsp;3D&nbsp;wheel&nbsp;alignment&nbsp;system</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE displays brand new wheel alignment system at AUTOPROMOTEC&nbsp;Italy </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE releases new brochures of wheel alignment system</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE visit Netherlands dealer and do training</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE Automechanika Shanghai visitors</span></span></p>', '/static/upload/80435d29dcf592e5/db88cecf25ce0425.jpg');
INSERT INTO `light` VALUES ('0000000006', '2015 LAWRENCE Highlights', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE developed Magic&nbsp;Tyre&nbsp;changer&nbsp;X618&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE showcases exciting new technology&nbsp;at AUTOPROMOTEC&nbsp;Italy </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE releases new brochures of full&nbsp;range of machines</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">New, LAWRENCE held a&nbsp;dealer partnership meeting in Guangzhou factory</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE visited Indonesia dealer and do training</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE visitors</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>', '/static/upload/21a1c6dbd6c70c11/825d5bea17f19431.jpg');
INSERT INTO `light` VALUES ('0000000007', '2016 LAWRENCE Highlights', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE developed Laser&nbsp;wheel&nbsp;balancer&nbsp;B805&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE introduces newly developed wheel aligning program at SEMA </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE releases new brochures of tyre changer and wheel balancer</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE visit United States dealer and do training</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">LAWRENCE visitors</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>', '/static/upload/13235f7ad516cea1/8281c2d0f3bfbab7.jpg');

-- ----------------------------
-- Table structure for `list`
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '0', '首页', 'Home', '', '', '', '');
INSERT INTO `list` VALUES ('2', '0', '公司介绍', 'About', '', null, null, null);
INSERT INTO `list` VALUES ('3', '0', '主题团建', 'League building', '', '', '', '');
INSERT INTO `list` VALUES ('4', '0', '拓展培训', 'Team training', '', '', '', '');
INSERT INTO `list` VALUES ('5', '0', '竞技体育', 'competitive sports', '', '', '', '');
INSERT INTO `list` VALUES ('6', '0', '旅行团建', 'Deep travel', '', '', '', '');
INSERT INTO `list` VALUES ('7', '0', '服务团队', 'Service team', '', '', '', '');
INSERT INTO `list` VALUES ('8', '0', '往期案例', 'Past cases', '', '', '', '');
INSERT INTO `list` VALUES ('9', '0', '新闻中心', 'News center', '', '', '', '');
INSERT INTO `list` VALUES ('10', '0', '联系我们', 'Contact us', '', '', '', '');

-- ----------------------------
-- Table structure for `media`
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '产品id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `img` varchar(255) NOT NULL COMMENT '图片',
  `com` char(200) NOT NULL COMMENT 'youtobe 地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES ('0000000002', '8', 'Safety System Alignment - Service Provider', '/static/upload/88d4e51800cd6bf2/3105cd84b2870b0a.png', '9U3m9uILg5s');
INSERT INTO `media` VALUES ('0000000003', '8', 'FIA Alignment', '/static/upload/cf7f4eef8dd35e61/26817619be8f1f9c.png', '2nnzYUeYQo8');
INSERT INTO `media` VALUES ('0000000004', '8', 'HawkEye Elite Drive Through Quick Check', '/static/upload/796dcb86abbb0463/39bdde9a6e9ff867.png', 'sESaG_l4gl4');
INSERT INTO `media` VALUES ('0000000005', '9', '11', '/static/upload/88d4e51800cd6bf2/3105cd84b2870b0a.png', '9U3m9uILg5s');
INSERT INTO `media` VALUES ('0000000006', '9', '22', '/static/upload/cf7f4eef8dd35e61/26817619be8f1f9c.png', '2nnzYUeYQo8');
INSERT INTO `media` VALUES ('0000000007', '9', '33', '/static/upload/796dcb86abbb0463/39bdde9a6e9ff867.png', 'sESaG_l4gl4');
INSERT INTO `media` VALUES ('0000000008', '10', '11', '/static/upload/88d4e51800cd6bf2/3105cd84b2870b0a.png', '9U3m9uILg5s');
INSERT INTO `media` VALUES ('0000000009', '10', '22', '/static/upload/cf7f4eef8dd35e61/26817619be8f1f9c.png', '2nnzYUeYQo8');
INSERT INTO `media` VALUES ('0000000010', '10', '33', '/static/upload/796dcb86abbb0463/39bdde9a6e9ff867.png', 'sESaG_l4gl4');
INSERT INTO `media` VALUES ('0000000011', '11', '11', '/static/upload/88d4e51800cd6bf2/3105cd84b2870b0a.png', '9U3m9uILg5s');
INSERT INTO `media` VALUES ('0000000012', '11', '22', '/static/upload/cf7f4eef8dd35e61/26817619be8f1f9c.png', '2nnzYUeYQo8');
INSERT INTO `media` VALUES ('0000000013', '11', '33', '/static/upload/796dcb86abbb0463/39bdde9a6e9ff867.png', 'sESaG_l4gl4');
INSERT INTO `media` VALUES ('0000000014', '12', '-3MNS5mBs2g', '/static/upload/88d4e51800cd6bf2/3105cd84b2870b0a.png', '-3MNS5mBs2g');
INSERT INTO `media` VALUES ('0000000015', '13', '-3MNS5mBs2g', '/static/upload/88d4e51800cd6bf2/3105cd84b2870b0a.png', '-3MNS5mBs2g');
INSERT INTO `media` VALUES ('0000000016', '15', 'X203-PX6', '/static/upload/88d4e51800cd6bf2/3105cd84b2870b0a.png', '-3MNS5mBs2g');
INSERT INTO `media` VALUES ('0000000017', '16', 'x403', '/static/upload/88d4e51800cd6bf2/3105cd84b2870b0a.png', '-3MNS5mBs2g');
INSERT INTO `media` VALUES ('0000000018', '22', 'x102', '/static/upload/88d4e51800cd6bf2/3105cd84b2870b0a.png', '-3MNS5mBs2g');
INSERT INTO `media` VALUES ('0000000019', '18', 'b805', '/static/upload/796dcb86abbb0463/39bdde9a6e9ff867.png', '-3MNS5mBs2g');
INSERT INTO `media` VALUES ('0000000020', '19', 'b705', '/static/upload/796dcb86abbb0463/39bdde9a6e9ff867.png', '-3MNS5mBs2g');
INSERT INTO `media` VALUES ('0000000021', '20', 'b605', '/static/upload/796dcb86abbb0463/39bdde9a6e9ff867.png', '-3MNS5mBs2g');
INSERT INTO `media` VALUES ('0000000022', '21', 'b505', '/static/upload/796dcb86abbb0463/39bdde9a6e9ff867.png', '-3MNS5mBs2g');

-- ----------------------------
-- Table structure for `new`
-- ----------------------------
DROP TABLE IF EXISTS `new`;
CREATE TABLE `new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `years` int(10) unsigned DEFAULT '0' COMMENT '年份',
  `img` varchar(255) DEFAULT NULL,
  `content` text,
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES ('8', 'Lawrence exhibits its newly upgraded wheel alignment system at the 2018 AUTOMECHANIKA SHANGHAI SHOW (Nov.29 – Dec.2).', '8', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><strong><span style=\"font-size:26px;\"><span style=\"font-family:KaiTi_GB2312;\">Nov. 29, 2018</span></span></strong></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><strong><span style=\"font-size:26px;\"><span style=\"font-family:KaiTi_GB2312;\">China, Shanghai &nbsp;</span></span></strong></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">It&rsquo;s the first day of 2018 Automechanika Shanghai Show,&nbsp;Lawrence displays its newly upgraded wheel alignment system, its new technology touchless wheel clamp and 6.4 Megapixel industry camera&nbsp;both attract hundreds of customers from all over the world.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">Touchless wheel clamp is easy to grip the tyre, eliminating metal-to-metal contact and subsequent rim damage; 6.4 Megapixel industry camera in wheel alignment system can make measurement more stable and accurate.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">In addition, center-clamp tyre changer X618 and auto brake wheel balancer B805 still are both very popular in European and American customers.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">Lawrence&nbsp;are&nbsp;specialized&nbsp;in&nbsp;developing&nbsp;and&nbsp;manufacturing&nbsp;tyre&nbsp;equipments&nbsp;for&nbsp;15&nbsp;years,&nbsp;like&nbsp;3D&nbsp;wheel&nbsp;alignment,&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">tyre&nbsp;changer&nbsp;and&nbsp;wheel&nbsp;balancer,&nbsp;and&nbsp;also&nbsp;providing&nbsp;supporting&nbsp;machines&nbsp;like&nbsp;car&nbsp;lifts&nbsp;and&nbsp;Nitrogen&nbsp;machine&nbsp;for&nbsp;our&nbsp;clients.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">For more information, please visit our website: <a href=\"http://www.lawren3d.com\"><u><span class=\"15\"><span style=\"color:#0000ff\"><span style=\"text-decoration:underline\">www.lawren3d.com</span></span></span></u></a>&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">or contact our service team: 0086 20 86328363</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:28px;\"><strong><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">LAWRENCE, MAKE A DIFFERENCE!</span></span></strong></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><img border=\"0\" src=\"/static/upload/e129b4d50885c150/631bb61c60c6d0d3.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><img border=\"0\" src=\"/static/upload/7b82b70060ff5992/1f0e9c34ee7bd32a.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></span></span></p>', '', '2018-09-29 00:00:00');
INSERT INTO `new` VALUES ('6', '版权和商标声明', '9', null, '<p class=\"p1\" style=\"border:0px; margin:0px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:28px;\"><strong><span style=\"box-sizing:border-box\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-variant-numeric:inherit\"><span style=\"font-variant-east-asian:inherit\"><span style=\"font-weight:400\"><span style=\"font-stretch:inherit\"><span style=\"line-height:1.5\"><span style=\"font-family:Arial, sans-serif\"><span style=\"vertical-align:baseline\"><span style=\"color:#333333\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">所有内容&copy;Lawrence &nbsp;Company。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">版权所有。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></strong></span></p>\r\n\r\n<p class=\"p1\" style=\"border:0px; margin:0px; padding:0px; text-align:start; -webkit-text-stroke-width:0px\"><span style=\"font-size:18px\"><span style=\"box-sizing:border-box\"><span style=\"font-style:normal\"><span style=\"font-variant-ligatures:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-variant-numeric:inherit\"><span style=\"font-variant-east-asian:inherit\"><span style=\"font-weight:400\"><span style=\"font-stretch:inherit\"><span style=\"line-height:1.5\"><span style=\"font-family:Arial, sans-serif\"><span style=\"vertical-align:baseline\"><span style=\"color:#333333\"><span style=\"letter-spacing:normal\"><span style=\"orphans:2\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:2\"><span style=\"word-spacing:0px\"><span style=\"background-color:#ffffff\"><span style=\"text-decoration-style:initial\"><span style=\"text-decoration-color:initial\"><font style=\"box-sizing:border-box; vertical-align:inherit\"><font style=\"box-sizing:border-box; vertical-align:inherit\">除非另有说明，否则本万维网站点上提供的所有资料的内容均为Lawrence&nbsp;Company版权所有。</font><font style=\"box-sizing:border-box; vertical-align:inherit\">除经劳伦斯公司事先书面同意外，所有权利均予以保留，不得以任何形式或任何方式复制，下载，传播或转让内容。</font></font></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>', '', '2019-01-19 09:58:41');
INSERT INTO `new` VALUES ('7', 'Privacy Statement for Lawrence  Website', '9', null, '<p>Lawrence Company knows that you care how information about you is used and shared, and we appreciate your trust that we will do so carefully and sensibly. This notice describes our privacy policy. By visiting our website, you are accepting the practices described in this Privacy Notice.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>What Personal Information About Customers Does lawrence.com Gather?</strong><br />\r\nThe information we learn from customers helps us personalize and continually improve the quality of Hunter equipment. Here are the types of information we gather.</p>\r\n\r\n<ul>\r\n	<li><strong>Information You Give Us:</strong>&nbsp;We receive and store some information you enter on the Hunter.com website. Examples of the information we store include your name, address and telephone number, email address and request. You can choose not to provide certain information. We use the information that you provide for such purposes as responding to your requests, improving the website, improving our equipment, and communicating with you.</li>\r\n	<li><strong>Information Your Browser Provides:</strong>&nbsp;Your web browser also provides information that we collect and analyze, including the Internet Protocol (IP) address used to connect your computer to the internet; computer and connection information such as browser type and version, operating system, and platform; the full Uniform Resource Locators (URL) to, through, and from our website, including date and time.</li>\r\n</ul>\r\n\r\n<p><strong>Does lawrence.com use Cookies?</strong>&nbsp;<br />\r\nYes, in some cases. If postal code (or country for international) is entered into a form, representative lookup, or request for information, then that broad location information will be saved to cookie for the sole purpose of correctly displaying the local Hunter representatives in your area on all subsequent visits to lawrence.com</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Does Lawrence Share the Information It Receives?</strong><br />\r\nInformation about our customers is an important part of our business, and we are not in the business of selling it to others. We share customer information only with authorized Hunter employees, representatives and distributors.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>What Choices Do I Have?</strong><br />\r\nAs discussed above, you can always choose not to provide information, although doing so may limit the usefulness of the Hunter.com site.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Third-party re-marketing information</strong><br />\r\nWe use third-party vendors, such as Google to show our ads on the internet. These third-party vendors use cookies to serve ads based on someone&#39;s past visits to our website. You can opt out of Google&#39;s use of cookies by visiting&nbsp;<a href=\"http://www.google.com/settings/ads\">Google&#39;s Ads Settings</a>. Alternatively, you can opt out of a third-party vendor&#39;s use of cookies by visiting the&nbsp;<a href=\"http://www.networkadvertising.org/managing/opt_out.asp\">Network Advertising Initiative opt-out page</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Conditions of Use, Notices, and Revisions</strong><br />\r\nIf you choose to visit Hunter.com, your visit and any dispute over privacy is subject to this notice. If you have any concern about privacy at lawrence.com, please send a thorough description to info@lawren3d.com, and we will try to resolve it. Our business changes constantly. This notice will change also, and use of information that we gather now is subject to the Privacy Notice in effect at the time of use. This policy applies only to data collected online for Hunter.com.</p>\r\n\r\n<p>&nbsp;</p>', 'Laurence', '2019-01-19 10:16:45');
INSERT INTO `new` VALUES ('9', 'Lawrence introduces its newly developed wheel balancer at the 2018 SEMA show (Oct.30-Nov.2)', '8', null, '<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><span style=\"font-size:26px;\"><strong><span style=\"font-family:KaiTi_GB2312;\"><span style=\"font-weight:bold\">Oct.31, 2018</span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><span style=\"font-size:26px;\"><strong><span style=\"font-family:KaiTi_GB2312;\"><span style=\"font-weight:bold\">United States, Las Vegas</span></span></strong></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">For this SEMA show from Oct.30 to Nov.2, Lawrence brings its newly developed auto brake wheel balancer B805;&nbsp;this&nbsp;innovative wheel balancer B805 helps make the wheel balancing more stable and accurate, both saving time and labor, more convenient to operate. So many purchasers from United States, Mexico, Canada and Chile speak highly of it and one of the buyers&nbsp;from Los Angles even paid the deposit to keep it for him&nbsp;to test. You are more than welcome to visit Lawrence booth (South hall, booth#44263).</span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer,</span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">For more information, please visit our website: www.lawren3d.com </span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">or contact our service team: 0086 20 86328363</span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><span style=\"font-size:28px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: justify;\"><br />\r\n<img border=\"0\" src=\"/static/upload/cf5c5b7e70d2bd86/e454d12350c455f3.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '', '2018-10-31 13:32:29');
INSERT INTO `new` VALUES ('10', 'Lawrence displays a full range of innovative products at the 2018 AUTOMECHANIKA FRANKFURT SHOW (Sep.11-Sep.15)', '8', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Sep.12, 2018</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Germany, Frankfurt</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">During this 2018 Automechanika Frankfurt show time from Sep.11 to Sep.15, Lawrence displays a full range of innovative products,&nbsp;and this time, Lawrence attended as a co-exhibitor of Timbo Company, which cooperated with Lawrence for a long time. Designed by a German company and manufactured in China, make the machines more suitable for European and American markets&nbsp;and more competitive. </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">For more information, please visit our website: www.lawren3d.com </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">or contact our service team: 0086 20 86328363</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:28px;\"><strong><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><b><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/233dcfbcf4f67b95/42e39a209688b19c.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></span></b></span></span></p>', '', '2018-09-11 13:33:57');
INSERT INTO `new` VALUES ('11', 'Hot Selling Time of Lawrence Full Range of Machines at CIAACE (July.1-July.3)', '8', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><strong><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">July.2, 2018</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><strong><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">China, </span></span><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">Guangzhou</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">During this 2018 CIAACE show time from July.1 to July.3, Lawrence displays a full range of popular products,&nbsp;and attracts many local customers, some of them already make an appointment with sales manager to visit Lawrence factory in Guangzhou;&nbsp;Lawrence displays center-clamp tyre changer &nbsp;X618 and top auto wheel balancer B705, they both can meet the requirements of domestic market.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">For more information, please visit our website: www.lawren3d.com </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:KaiTi_GB2312;\">Or contact our service team: 0086 20 86328363</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:28px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><b><span style=\"font-size:10.5000pt\"><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/b8ea20a0b24bf8c3/147f15440135d377.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></span></b></span></span></p>', '', '2018-07-02 13:35:24');
INSERT INTO `new` VALUES ('12', 'Lawrence introduces its newly developed Tyre changer at the AUTOMECHANIKA NEW DELHI', '5', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:26px;\"><span style=\"font-weight:bold\">Lawrence introduces its newly developed Tyre changer at the&nbsp;AUTOMECHANIKA NEW DELHI (FEB.26-MAR.1)</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:26px;\"><span style=\"font-weight:bold\">Feb.26, 2015</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:26px;\"><span style=\"font-weight:bold\">New Dehi, India</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">For this <b><span style=\"font-weight:bold\">AUTOMECHANIKA NEW DELHI</span></b><b>&nbsp;</b>show from Feb.26 to Mar.1, Lawrence brings its newly developed tyre changer X618;this&nbsp;innovative tyre changer X618canreduce the damage of rim when changer the tyre, both saving time and labor, more convenient to operate. So many purchasers from United States, Mexico, Canada and Chile speak highly of it and one of the buyers&nbsp;from Los Angles even paid the deposit to keep it for him&nbsp;to test. You are more than welcome to visit Lawrence booth (Stall N36 in Hall 12A)</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">For more information, please visit our website: www.lawren3d.com </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Or contact our service team: 0086 20 86328363</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:26px;\"><b><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/924c108cd1a3c11b/ee25d63f1e77cbb8.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></b></span></span></p>', '', '2015-02-26 18:17:18');
INSERT INTO `new` VALUES ('13', 'Lawrence exhibits its newly upgraded wheel alignment system at the 2015 BEIJING AMR SHOW', '5', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><b><span style=\"font-weight:bold\">Apr. 9, 2015</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><b><span style=\"font-weight:bold\">Beijing, China</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">It&rsquo;s the first day of 2015AMRBeijing Show, Lawrence displays its newly upgraded wheel alignment system, 5 Megapixel industry cameras attract hundreds of customers from all over the world.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">5 Megapixel industry cameras in wheel alignment system can make measurement more stable and accurate.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">In addition,&nbsp;the tyre changer X618 can&nbsp;reduce the damage of rim when changer the tyre and it&nbsp;is very popular in European and American customers.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">For more information, please visit our website: www.lawren3d.com </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Or contact our service team: 0086 20 86328363</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><b><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><b><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/23bf246798f4f175/cdd6df90eae3f572.jpg\" style=\"max-width:880px\" title=\"image\" /></span></b></span></span></p>', 'Lawrence', '2015-04-09 18:20:59');
INSERT INTO `new` VALUES ('28', 'Lawrence displays a full range of innovative products at the 2015 AUTOPROMOTEC SHOW (May.22--May.26)', '5', null, '<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">May.22, 2015</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Bologna, Italy</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">During this 2015 Autopromotec Bologna show time from May.22 to May.26, Lawrence displays a full range of innovative products and receives many cooperated clients and potential clients, they are very satisfied with Lawrence machines, Designed by an Italy company and manufactured in China, make Lawrence machines more suitable for European and American markets and become more competitive.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">For more information, please visit our website: www.lawren3d.com </span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Or contact our service team: 0086 20 86328363</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">LAWRENCE, MAKE A DIFFERENCE!</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><img border=\"0\" src=\"/static/upload/c07b14d2d4f19c85/173596ac91b52acf.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></p>', 'Lawrence', '2015-05-22 14:28:27');
INSERT INTO `new` VALUES ('15', 'NEWS! Lawrence exhibits at SEMA SHOW (Nov.3-Nov.6)', '5', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">NEWS! Lawrence exhibits&nbsp;at SEMA SHOW (Nov.3-Nov.6)</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">Nov.3, 2015</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">Las Vegas, United States</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">During this 2015 SEMA show time from Nov.3 to Nov.6, Lawrence displays a full range of </span><span style=\"font-family:Calibri\">popular products,</span><span style=\"font-family:宋体\">&nbsp;and attracts many local </span><span style=\"font-family:Calibri\">customers</span><span style=\"font-family:宋体\">, some of them already make an appointment with sales manager to visit Lawrence factory in Guangzhou</span><span style=\"font-family:Calibri\">;</span><span style=\"font-family:宋体\">&nbsp;Lawrence displays center-clamp tyre changer X618 and top auto wheel balancer B705, they both can meet the requirements of foreign and domestic market.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></b></span></span></p>', '', '2015-11-03 18:25:57');
INSERT INTO `new` VALUES ('16', 'Lawrence exhibits its newly upgraded wheel alignment system at 2015 AUTOMECHANIKA SHANGHAI SHOW (Dec.2 – Dec.5).', '5', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:SimSun;\"><span style=\"font-size:26px;\"><b><span style=\"font-weight:bold\">Lawrence&nbsp;exhibits&nbsp;its&nbsp;newly&nbsp;upgraded&nbsp;wheel&nbsp;alignment&nbsp;system&nbsp;at&nbsp;2015&nbsp;AUTOMECHANIKA&nbsp;SHANGHAI&nbsp;SHOW&nbsp;(Dec</span></b><b><span style=\"font-weight:bold\">.2&nbsp;&ndash;&nbsp;Dec.</span></b><b><span style=\"font-weight:bold\">5).</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:SimSun;\"><span style=\"font-size:26px;\"><b><span style=\"font-weight:bold\">Dec.&nbsp;2,&nbsp;201</span></b><b><span style=\"font-weight:bold\">5</span></b><br />\r\n<b><span style=\"font-weight:bold\">Shanghai, China</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">It&rsquo;s the first day of 2015 Automechanika Shanghai Show, Lawrence displays its newly upgraded wheel alignment system, its new technology,5 Megapixel industry camera attracts hundreds of customers from all over the world.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">5</span><span style=\"font-family:Calibri\">&nbsp;Megapixel&nbsp;industry&nbsp;cameras&nbsp;in&nbsp;wheel&nbsp;alignment&nbsp;system&nbsp;can&nbsp;make&nbsp;measurement&nbsp;more&nbsp;stable&nbsp;and&nbsp;accurate.</span><br />\r\n<span style=\"font-family:Calibri\">In&nbsp;addition,&nbsp;center-clamp&nbsp;tyre&nbsp;changer&nbsp;X618&nbsp;</span><span style=\"font-family:宋体\">is</span><span style=\"font-family:Calibri\">&nbsp;very&nbsp;popular&nbsp;in&nbsp;European&nbsp;and&nbsp;American&nbsp;c</span><span style=\"font-family:宋体\">lient</span><span style=\"font-family:Calibri\">s</span><span style=\"font-family:宋体\">.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/82a5820d44832ef5/ec2f76bd3db54577.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></b></span></span></p>', '', '2015-12-03 18:28:26');
INSERT INTO `new` VALUES ('17', 'Lawrence Attends 2016 AMR SHOW in Beijing (Mar.3-Mar.6)', '6', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">Lawrence Attends 2016 AMR SHOW in Beijing (Mar.3-Mar.6)</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">March 3, 2016</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">Beijing, China</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">Beijing, China, Mar. 3, 2016<font face=\"宋体\">&mdash;&mdash;</font><font face=\"Calibri\">Guangzhou Lawrence Auto Machinery Co Ltd , an experienced manufacturer of high-quality tyre service equipment, attending the AMR SHOW(#E1E07). Lawrence received new and old customers from home and abroad and had a cordial talk with them. Well, most buyers were very interested in our 3D wheel alignment branded X-super, especially from users across China, India, Malaysia, South Korea and so on. After the trial of our equipments, many customers have the intention to cooperate with Lawrence after the exhibition.</font></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!&nbsp;</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/5b44e8b2baed7207/db198221793fbd67.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></b></span></span></p>', '', '2016-03-03 14:12:41');
INSERT INTO `new` VALUES ('18', 'News! Lawrence Shows its Newly Laser Wheel Balancer B805 at the 2016 AUTOMECHANIKA FRANKFURT (Sept.13-Sept.17)', '6', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">News! Lawrence Shows its Newly Laser Wheel Balancer B805 at the 2016 AUTOMECHANIKA FRANKFURT (Sept.13-Sept.17)</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">Sept.13, 2016</span></b></span></span></p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">Frankfurt, Germany</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">At this exhibition (#Hall8.1, M71), Lawrence introduces the new balancing machine <font face=\"宋体\">&mdash;&mdash;</font><font face=\"Calibri\">Top Laser Wheel Balancer B805, with Android system, strong expandability can update the software through the built-in USB port. It equips multi-functional software, including Android system, supporting many kinds of languages, rich menu bar, direct calibration, multiple precision selection, </font></span><span style=\"font-family:Calibri\">and self</span><span style=\"font-family:宋体\">-diagnosis and fault trouble shooting and so on. The B805 has been well received at the exhibition. </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">It is worth believing that this product will be very popular among European and American customers in the near future. Furthermore, other equipments like 3D wheel alignment, tyre changer, car lift and so on, also attracted the attention </span><span style=\"font-family:Calibri\">of lots</span><span style=\"font-family:宋体\">&nbsp;of customers. </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:SimSun;\"><b><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>', '', '2016-09-13 14:14:04');
INSERT INTO `new` VALUES ('19', 'Lawrence Present at 2016 SEMA SHOW in United States (Nov.1-Nov.4)', '6', null, '<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Lawrence Present at 2016 </span></span></b><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">SEMA SHOW</span></span></b><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">&nbsp;in United States (Nov.1-Nov.4)</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Nov.1, 2016</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Las Vegas, United States</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">At the moment, Lawrence is at SEMA SHOW in Las Vegas(#</span><span style=\"font-family:Calibri\">48203</span><span style=\"font-family:宋体\">), USA. The exhibition hall is well organized and the customer is coming to Lawrence. The show is in full swing. Obviously, many customers are very interested in our equipment, especially for our newly developed wheel aligning program. Lawrence brings vivid, intelligent and user-friendly alignment experience to the users, made a very forceful impression on them. Subsequently, many customers have left the intention of cooperation with Lawrence. After the show, Lawrence made an appointment to visit customers and do the training. The exhibition ended successfully.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/1b87a015f2c31ed1/2a70a23cc1c9468a.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>', '', '2016-11-01 14:16:02');
INSERT INTO `new` VALUES ('20', 'Lawrence Introduces More Tyre Equipment with Technological Innovation at 2016 AUTOMECHANIKA SHANGHAI (Nov.30-Dec.3)', '6', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">Lawrence Introduces More Tyre Equipment with Technological Innovation at 2016 AUTOMECHANIKA SHANGHAI (Nov.30-Dec.3)</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Nov.30, 2016</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Shanghai. China</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">From Nov. 30th to Dec.3rd at the </span><span style=\"font-family:Calibri\">AUTOMECHANIKA SHANGHAI</span><span style=\"font-family:宋体\">&nbsp;exhibition, Lawrence releases new brochures of tyre changer and wheel balancer. Through our brochures, the customer has a good understanding of our machines. It is worth mentioning that many customers at home and abroad are very interested in our equipment, especially for our tyre changer (like X618<font face=\"宋体\">、</font><font face=\"Calibri\">X203) and wheel balancer (like B805</font><font face=\"宋体\">、</font><font face=\"Calibri\">B705</font><font face=\"宋体\">、</font><font face=\"Calibri\">B605). The machine is user-friendly and intelligent, and it is widely praised by customers. Lawrence held a dealer meeting after the show that day.</font></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/82a5820d44832ef5/ec2f76bd3db54577.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>', '', '2016-11-30 14:17:52');
INSERT INTO `new` VALUES ('21', 'Lawrence at 2017 CIAACE (Feb.17 to 20)', '7', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">Lawrence </span></span></b><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">at 2017 CIAACE (Feb.17 to 20)</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Feb.17, 2017</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Beijing, China</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">During this 2017 CIAACE show time from Feb.17 to 20,there are several advanced machines exhibited at Lawrence</span><span style=\"font-family:Calibri\">&rsquo;</span><span style=\"font-family:宋体\">s booth,like Smarter Series T9+,Crown Series RS-8,I9+ and so on,which attracting large amount of customer</span><span style=\"font-family:Calibri\">&rsquo;</span><span style=\"font-family:宋体\">s attention.Experts from Lawrence and our business partner from other countries introduced these products thorough,and answered questions for the visitors.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/8331d5e4f47db4b2/8ca87694f57c354f.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>', '', '2017-02-17 14:19:36');
INSERT INTO `new` VALUES ('22', 'Lawrence Attend 2017 Beijing AMR with newly developed Ride Height function in 3D wheel alignment System (March 30 to April 2)', '7', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">Lawrence Attend 2017 Beijing AMR with newly developed Ride Height function in 3D wheel alignment System (March 30 to April 2)</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Mar.30, 2017</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Beijing, China</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">From Mar.30 to Apr.2 2017, Lawrence </span><span style=\"font-family:Calibri\">attends</span><span style=\"font-family:宋体\">&nbsp;AMR in Beijing with many international partners. We have made great progresses in market expending, product promotion, collaborators communication and image building.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">This time we bring our newly developed Ride Height function in 3D wheel alignment system which can facilitate wheel alignment for high-end vehicle models largely,and detect of vehicle suspension.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\">&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!&nbsp;</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\"><img border=\"0\" src=\"/static/upload/24c56ce137520bd7/90ffbab22f6deda9.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>', '', '2017-03-30 14:21:27');
INSERT INTO `new` VALUES ('23', 'LAWRENCE displays brand new wheel alignment system at AUTOPROMOTEC Italy (May 24 to 28)', '7', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">LAWRENCE displays brand new wheel alignment system at AUTOPROMOTEC Italy (May 24 to 28)</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">May.25, 2017</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Bologna, Italy</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">During 2017AUTOPROMOTEC show from May.24 to 28, displays brand new wheel alignment system which is Smarter Series. Our booth is unique in design, beautiful in appearance, and innovative. The design pursues the whole product in every position of the booth, and it can attract people&#39;s attention with the lighting. It</span><span style=\"font-family:Calibri\">&rsquo;</span><span style=\"font-family:宋体\">s not only showed the company&#39;s brand image, but also attracted many merchants to come to consult and negotiate business, and the harvest was quite fruitful and achieved good results.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\">&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><img border=\"0\" src=\"/static/upload/0fad7dff43ae9dbb/e7fec9dfdc711e9e.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '', '2017-05-25 14:22:58');
INSERT INTO `new` VALUES ('24', 'Promotion time of Lawrence full range of machines at CIAACE', '7', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Promotion Time of Lawrence Full Range of Machines at CIAACE (July.1-July.3)</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">July.2, 2017</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">China, </span></span></b><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">Guangzhou</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">During Lawrence displays a full range of innovative products at CIAACE show from July.1 to July.3 in Guangzhou. China, attracts many local customers, some of them already make an appointment with sales manager to visit Lawrence factory in Guangzhou. In addition, Lawrence releases new brochures of wheel alignment system to help customer understand our products more clearly and intuitively. The service policy of Lawrence will leave a better reputation for customers and will win the appreciation of the market and the trust of customers.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\">&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><img border=\"0\" src=\"/static/upload/46052b057d33fb85/59f1c8794feca1ad.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '', '2017-07-02 14:24:32');
INSERT INTO `new` VALUES ('25', 'LAWRENCE Exhibits Brand New Tire Changer at 2017 SEMA SHOW (Oct.30 - Nov.3)', '7', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">LAWRENCE </span></span></b><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">Exhibits</span></span></b><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">&nbsp;Brand New Tire Changer at 2017 SEMA SHOW (Oct.30 - Nov.3)</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Nov.1, 2017</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Las Vegas, United States</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:宋体\">During this 2017 SEMA SHOW from Oct.30 to Nov.3, Lawrence displays a full range of popular products, </span><span style=\"font-family:Calibri\">especially</span><span style=\"font-family:宋体\">&nbsp;its newly developed brand new tire changer, attracts many local customers. Lawrence has shown its profession, high technology and high quality by mean of this exhibition, which provided us an excellent chance to promote our product directly. We received all straight praise via the show.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><img border=\"0\" src=\"/static/upload/002636e93194ac1f/cfa06e1fc4ccb250.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '', '2017-11-01 14:25:58');
INSERT INTO `new` VALUES ('26', 'Lawrence Attended Automechanika Shanghai Show with brand new outlook (Oct.30-Nov.2)', '7', null, '<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Lawrence Attended Automechanika Shanghai Show with brand new outlook (Oct.30-Nov.2)</span></span></b></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Nov.30, 2017</span></span></b></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:宋体\"><span style=\"font-weight:bold\">Shanghai, China</span></span></b></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence Auto Machinery booth is located at Booth 5.1F66 in Shanghai AUTOMECHANIKA FRANKFURT SHOW, covering an area of more than 100 square meters. There is a multimedia screen</span></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">&nbsp;in front of the booth,</span>&nbsp;<span style=\"font-family:Calibri\">introduce the process of R&amp;D, production, ex-factory and after-sales service of Lawrence products, Lawrence collects product quality and service into one, adhering to the cultural concept of urgency and imagination.</span>&nbsp;<span style=\"font-family:Calibri\">We believe that through the big stage of this exhibition, the image of Lawrence will spread more widely, and the brand effect of Lawrence will be deeper into the hearts of consumers.</span></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\">&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">Lawrence are specialized in developing and manufacturing tyre equipments for 15 years, like 3D wheel alignment, tyre changer and wheel balancer, and also providing supporting machines like car lifts and Nitrogen machine for our clients.</span></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">For more information, please visit our website: www.lawren3d.com </span></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">or contact our service team: 0086 20 86328363</span></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt;\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">LAWRENCE, MAKE A DIFFERENCE!</span></span></b></span></span></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\"><img border=\"0\" src=\"/static/upload/231382031f695f8f/cfc2eb22076a2f9a.jpg\" style=\"max-width: 880px; float: left;\" title=\"image\" /></p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"margin: 0pt 0pt 0.0001pt; text-align: center;\">\r\n	<p>&nbsp;</p>\r\n	</li>\r\n</ul>', '', '2017-11-30 14:27:46');
INSERT INTO `new` VALUES ('27', 'Lawrence Attended Beijing AMR show (Apr.1 – Apr.4)', '8', null, '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:\'Arial Unicode MS\'\"><span style=\"font-weight:bold\">2018.4.1 &nbsp;&nbsp;Lawrence Attended Beijing AMR show (Apr.1 </span></span></b><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">&ndash;</span></span></b><b><span style=\"font-family:\'Arial Unicode MS\'\"><span style=\"font-weight:bold\">&nbsp;Apr.4)</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:26px;\"><span style=\"font-family:Calibri\"><b><span style=\"font-family:Calibri\"><span style=\"font-weight:bold\">China, Beijing</span></span></b></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\"><span style=\"font-family:Calibri\">During this 201</span><span style=\"font-family:\'Arial Unicode MS\'\">8</span>&nbsp;<span style=\"font-family:\'Arial Unicode MS\'\">Beijing AMR</span><span style=\"font-family:Calibri\">&nbsp;show time from </span><span style=\"font-family:\'Arial Unicode MS\'\">Apr.1</span><span style=\"font-family:Calibri\">&nbsp;to </span><span style=\"font-family:\'Arial Unicode MS\'\">Apr.4</span><span style=\"font-family:Calibri\">,there are several advanced machines exhibited at Lawrence&rsquo;s booth,</span>&nbsp;<span style=\"font-family:Calibri\">like Smarter Series T9+,Crown Series RS-8,I9+ and so on,</span>&nbsp;<span style=\"font-family:Calibri\">which attracting large amount of customer&rsquo;s attention.</span>&nbsp;<span style=\"font-family:Calibri\">Experts from Lawrence and our business partner from other countries introduced these products thorough,</span>&nbsp;<span style=\"font-family:Calibri\">and answered questions for the visitors.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:left; margin:0pt 0pt 0.0001pt\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:16px;\"><span style=\"font-family:Calibri\">Lawrence&nbsp;are&nbsp;specialized&nbsp;in&nbsp;developing&nbsp;and&nbsp;manufacturing&nbsp;tyre&nbsp;equipments&nbsp;for&nbsp;15&nbsp;years,&nbsp;like&nbsp;3D&nbsp;wheel&nbsp;alignment,&nbsp;tyre&nbsp;changer&nbsp;and&nbsp;wheel&nbsp;balancer,&nbsp;and&nbsp;also&nbsp;providing&nbsp;supporting&nbsp;machines&nbsp;like&nbsp;car&nbsp;lifts&nbsp;and&nbsp;Nitrogen&nbsp;machine&nbsp;for&nbsp;our&nbsp;clients.</span><br />\r\n<span style=\"font-family:Calibri\">For&nbsp;more&nbsp;information,&nbsp;please&nbsp;visit&nbsp;our&nbsp;website:&nbsp; www.lawren3d.com&nbsp;</span><br />\r\n<span style=\"font-family:Calibri\">Or&nbsp;contact&nbsp;our&nbsp;service&nbsp;team:&nbsp;0086&nbsp;20&nbsp;86328363</span></span><br />\r\n<br />\r\n<span style=\"font-size:26px;\"><span style=\"font-family:Calibri\">LAWRENCE,&nbsp;MAKE&nbsp;A&nbsp;DIFFERENCE!</span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><img border=\"0\" src=\"/static/upload/748109cf79faa99d/1c31356919a0624e.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>', '', '2018-04-01 14:29:18');

-- ----------------------------
-- Table structure for `partner`
-- ----------------------------
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  `url` char(255) DEFAULT '#',
  `sort` int(11) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT '1',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of partner
-- ----------------------------
INSERT INTO `partner` VALUES ('10', '腾讯', '/static/upload/f8e29fbdd8f6e21d/a0da69a854086de5.jpg', '#', '0', '1', '2018-12-25 15:23:50');
INSERT INTO `partner` VALUES ('11', '华为', '/static/upload/60490b20a1494c60/e8c4bcd8f14299b7.jpg', '#', '0', '1', '2018-12-25 15:25:00');
INSERT INTO `partner` VALUES ('12', '招商银行', '/static/upload/a4c0ff0b9be993cc/44701abfd9c7176d.jpg', '#', '0', '1', '2018-12-25 15:26:57');
INSERT INTO `partner` VALUES ('13', '戴德梁行', '/static/upload/19c630cff8d7571c/f2e1de7fbc1e01a6.jpg', '#', '0', '1', '2018-12-25 15:27:39');
INSERT INTO `partner` VALUES ('14', '中海地产', '/static/upload/2b49a556d02aff7f/b9110a95e7d0a80a.jpg', '#', '0', '1', '2018-12-25 15:28:37');
INSERT INTO `partner` VALUES ('15', '万科地产', '/static/upload/1ed56a82ec0c36d3/dc5fb272c5f1353d.jpg', '#', '0', '1', '2018-12-25 15:30:06');

-- ----------------------------
-- Table structure for `patents`
-- ----------------------------
DROP TABLE IF EXISTS `patents`;
CREATE TABLE `patents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `tid` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patents
-- ----------------------------
INSERT INTO `patents` VALUES ('11', '', '/static/upload/94c4a34dd66d3815/02e471fce86fe067.jpg', '6');
INSERT INTO `patents` VALUES ('9', 'BOARDS', '', '0');
INSERT INTO `patents` VALUES ('10', '', '/static/upload/7cd1517f326a9f3d/dff7c3f6d4c798d5.jpg', '6');
INSERT INTO `patents` VALUES ('8', 'CERTIFICATES', '', '0');
INSERT INTO `patents` VALUES ('6', 'COPYRIGHTs', '', '0');
INSERT INTO `patents` VALUES ('7', 'PATENTS', '', '0');
INSERT INTO `patents` VALUES ('12', '', '/static/upload/1764dba113408d48/f5b7a5e673abc87c.jpg', '6');
INSERT INTO `patents` VALUES ('13', '', '/static/upload/84aac33651e6d744/77690e8128e31d11.jpg', '6');
INSERT INTO `patents` VALUES ('14', '', '/static/upload/7cb924caa577ff9e/0b62c81cb6c3f574.jpg', '6');
INSERT INTO `patents` VALUES ('15', '', '/static/upload/78c0dc827e1d3425/2ebf556c0413d501.jpg', '6');
INSERT INTO `patents` VALUES ('16', '', '/static/upload/15e992b9c1bc5ded/a630833456ceeef8.jpg', '7');
INSERT INTO `patents` VALUES ('17', '', '/static/upload/bc14d475a448f448/cef237f4321e7611.jpg', '7');
INSERT INTO `patents` VALUES ('18', '', '/static/upload/02d9ec0b196b0db1/eefe9f5d554f5e0f.jpg', '9');
INSERT INTO `patents` VALUES ('19', '', '/static/upload/554d6e867b0b11b0/8ca8cf5e9ae4e24f.jpg', '9');
INSERT INTO `patents` VALUES ('20', '', '/static/upload/1841c71641320e6e/a6648f7880efceb5.jpg', '9');
INSERT INTO `patents` VALUES ('21', '', '/static/upload/07b1a710b6fb22f9/da395631c97a83c5.jpg', '9');
INSERT INTO `patents` VALUES ('22', '', '/static/upload/9b95505f4ef8ef8f/a5aec86a316a729f.jpg', '7');

-- ----------------------------
-- Table structure for `protuct_cates`
-- ----------------------------
DROP TABLE IF EXISTS `protuct_cates`;
CREATE TABLE `protuct_cates` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '类型名称',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of protuct_cates
-- ----------------------------
INSERT INTO `protuct_cates` VALUES ('0000000001', 'Alignment Systems', '2019-04-10 09:38:52');
INSERT INTO `protuct_cates` VALUES ('0000000002', 'Wheel Balancers', '2019-04-10 09:40:31');
INSERT INTO `protuct_cates` VALUES ('0000000003', 'Lift Racks', '2019-04-10 09:40:44');
INSERT INTO `protuct_cates` VALUES ('0000000004', 'Tire Changers', '2019-04-10 09:41:10');

-- ----------------------------
-- Table structure for `protuct_infos`
-- ----------------------------
DROP TABLE IF EXISTS `protuct_infos`;
CREATE TABLE `protuct_infos` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '关联产品对比id',
  `img` varchar(255) NOT NULL COMMENT '产品对比图',
  `title` varchar(100) NOT NULL COMMENT '产品名称',
  `miaoshu` varchar(100) NOT NULL COMMENT '描述',
  `zhouqi` varchar(100) NOT NULL COMMENT '周期时间秒',
  `chelun` varchar(100) NOT NULL COMMENT '自动车轮',
  `zhong` varchar(100) NOT NULL COMMENT '自动重量',
  `tiao` varchar(100) NOT NULL COMMENT '自动跳动测量',
  `qudong` varchar(100) NOT NULL COMMENT '高扭矩驱动',
  `shijue` varchar(100) NOT NULL COMMENT '双摄像头视觉系统',
  `road` varchar(100) NOT NULL COMMENT 'RoadForce®测量',
  `jing` varchar(100) NOT NULL COMMENT '径向测量',
  `heng` varchar(100) NOT NULL COMMENT '横向力测量',
  `piancha` varchar(100) NOT NULL COMMENT '轮辋偏差测量',
  `peng` varchar(100) NOT NULL COMMENT '通货膨胀站',
  `smart` varchar(100) NOT NULL COMMENT 'SmartWeight®',
  `big_smart` varchar(100) NOT NULL COMMENT '增强的SmartWeight',
  `ecal` varchar(100) NOT NULL COMMENT 'ECAL™',
  `chumo` varchar(100) NOT NULL COMMENT '触摸屏',
  `shang` varchar(100) NOT NULL COMMENT '自动向上引擎盖',
  `bulls` varchar(100) NOT NULL COMMENT 'BullsEye™Collets',
  `hammer` varchar(100) NOT NULL COMMENT 'HammerHead™TDC激光系统',
  `lunshi` varchar(100) NOT NULL COMMENT '轮式升降机',
  `xianshi` varchar(100) NOT NULL COMMENT '彩色液晶显示器',
  `daying` varchar(100) NOT NULL COMMENT '打印机',
  `bang` varchar(100) NOT NULL COMMENT '最大装配重量（磅）',
  `chun` varchar(100) NOT NULL COMMENT '最大装配直径（英寸）',
  `tpms` varchar(100) NOT NULL COMMENT 'TPMS / VIN扫描',
  `bdc` varchar(100) NOT NULL COMMENT 'BDC激光',
  `speed` varchar(100) NOT NULL COMMENT 'SpeedClamp',
  `dianya` varchar(100) NOT NULL COMMENT '电压',
  `saomiao` varchar(100) NOT NULL COMMENT '轮辋扫描',
  `centering` varchar(100) NOT NULL COMMENT 'CenteringCheck®',
  `patch` varchar(100) NOT NULL COMMENT 'PatchBalancing®',
  `stop` varchar(100) NOT NULL COMMENT '伺服停止',
  `lok` varchar(100) NOT NULL COMMENT '主轴-Lok®部位	',
  `tranz` varchar(100) NOT NULL COMMENT 'TranzSaver™',
  `waibu` varchar(100) NOT NULL COMMENT '外部数据集臂',
  `youzhi` varchar(100) NOT NULL COMMENT '优质合金轴',
  `video` varchar(100) NOT NULL COMMENT '培训视频',
  `tru` varchar(100) NOT NULL COMMENT 'TruWeight',
  `luntai` varchar(100) NOT NULL COMMENT '轮胎/车轮组件的3D建模',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of protuct_infos
-- ----------------------------
INSERT INTO `protuct_infos` VALUES ('0000000001', '2', '/static/upload/2c9c801bff5d603d/ae2b1faf3ee857a4.png', 'Road Force® Elite', 'Premium Diagnostic Wheel Balancer', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard', 'Standard');
INSERT INTO `protuct_infos` VALUES ('0000000002', '2', '/static/upload/67ea9562bd245440/6119cae4e5bf7629.png', 'DSP9200', 'Entry Level Balancer', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No');
INSERT INTO `protuct_infos` VALUES ('0000000003', '2', '/static/upload/66e627ff6499c73f/79c4e542273c146b.png', 'SmartWeight Touch®', 'Standard Wheel Balancer', '80', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Standard', 'Standard', 'No', 'Standard', 'Standard', 'No', 'No', 'Standard', 'Standard', 'Standard', 'Standard', 'No', 'No', 'No', 'Standard', 'No', 'Standard');
INSERT INTO `protuct_infos` VALUES ('0000000004', '2', '/static/upload/e52d631f07913a88/96d00fc4722f3c38.png', 'DSP7705', 'Entry Level Balancer', '67 sec', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Standard', 'No', 'No', 'Standard', 'No', 'Standard', 'Standard', 'No', 'No', 'No', 'Standard', 'No', 'No');

-- ----------------------------
-- Table structure for `qa`
-- ----------------------------
DROP TABLE IF EXISTS `qa`;
CREATE TABLE `qa` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qa
-- ----------------------------
INSERT INTO `qa` VALUES ('0000000001', 'How to identify Real 3D', '<p><img border=\"0\" src=\"/static/upload/dd7639f1b390e255/bf0858169384c99e.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:16:31');
INSERT INTO `qa` VALUES ('0000000002', 'How to install software', '<p><img border=\"0\" src=\"/static/upload/dd7639f1b390e255/bf0858169384c99e.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:26:06');
INSERT INTO `qa` VALUES ('0000000003', 'How to check COM port', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:29:18');
INSERT INTO `qa` VALUES ('0000000004', 'How to set Startup', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:29:40');
INSERT INTO `qa` VALUES ('0000000005', 'How to Exit program', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:30:01');
INSERT INTO `qa` VALUES ('0000000006', 'How to solve OLE error', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:30:24');
INSERT INTO `qa` VALUES ('0000000007', 'How to add car data by user', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:30:43');
INSERT INTO `qa` VALUES ('0000000008', 'How to set camera parameters', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:33:02');
INSERT INTO `qa` VALUES ('0000000009', 'How to solve “Expired”', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:33:19');
INSERT INTO `qa` VALUES ('0000000010', 'How to set pushing degree', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:33:37');
INSERT INTO `qa` VALUES ('0000000011', 'How to set Toe in mm or Toe in degree', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:33:59');
INSERT INTO `qa` VALUES ('0000000012', 'How to check the Report history', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:34:18');
INSERT INTO `qa` VALUES ('0000000013', 'How to DIY your printout', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:34:37');
INSERT INTO `qa` VALUES ('0000000014', 'How to use Jack-up Adjustment function', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:35:00');
INSERT INTO `qa` VALUES ('0000000015', 'How to use Engine Cradle Adjust Function', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:35:23');
INSERT INTO `qa` VALUES ('0000000016', 'How to use Smart-Toe function', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:35:53');
INSERT INTO `qa` VALUES ('0000000017', 'How to do calibration', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:36:25');
INSERT INTO `qa` VALUES ('0000000018', 'How to check the config file is right or wrong', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:36:48');
INSERT INTO `qa` VALUES ('0000000019', 'How to change the software main screen', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:37:11');
INSERT INTO `qa` VALUES ('0000000020', 'How to set the accuracy', '<p><img border=\"0\" src=\"/static/upload/6335d5b27cbf36ae/7a693553f973809b.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-02-26 15:37:32');

-- ----------------------------
-- Table structure for `specs`
-- ----------------------------
DROP TABLE IF EXISTS `specs`;
CREATE TABLE `specs` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '产品id',
  `img` varchar(255) NOT NULL COMMENT '规格 图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of specs
-- ----------------------------
INSERT INTO `specs` VALUES ('0000000002', '8', '/static/upload/f82d5eaa69d2b4dd/d282f3003ead143c.jpg');
INSERT INTO `specs` VALUES ('0000000003', '8', '/static/upload/15b86ae3ea9ed0f1/7039a93b85f848c5.jpg');
INSERT INTO `specs` VALUES ('0000000004', '18', '/static/upload/e3b25ad34a7f5dc8/a4540c47c5b6027d.jpg');
INSERT INTO `specs` VALUES ('0000000005', '18', '/static/upload/15b86ae3ea9ed0f1/7039a93b85f848c5.jpg');
INSERT INTO `specs` VALUES ('0000000006', '19', '/static/upload/e3b25ad34a7f5dc8/a4540c47c5b6027d.jpg');
INSERT INTO `specs` VALUES ('0000000007', '19', '/static/upload/15b86ae3ea9ed0f1/7039a93b85f848c5.jpg');
INSERT INTO `specs` VALUES ('0000000008', '20', '/static/upload/e3b25ad34a7f5dc8/a4540c47c5b6027d.jpg');
INSERT INTO `specs` VALUES ('0000000009', '20', '/static/upload/15b86ae3ea9ed0f1/7039a93b85f848c5.jpg');
INSERT INTO `specs` VALUES ('0000000011', '21', '/static/upload/de32629a7616d9ac/76ddfbc7066cb9c4.jpg');

-- ----------------------------
-- Table structure for `support`
-- ----------------------------
DROP TABLE IF EXISTS `support`;
CREATE TABLE `support` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of support
-- ----------------------------
INSERT INTO `support` VALUES ('0000000001', 'AFTER-SALES SUPPORT', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:10.5pt\"><span style=\"font-size:10.5000pt\">For better serv</span><span style=\"font-size:10.5000pt\">ing</span><span style=\"font-size:10.5000pt\">&nbsp;customers </span><span style=\"font-size:10.5000pt\">from domestic</span><span style=\"font-size:10.5000pt\">&nbsp;and abroad, help customers to </span><span style=\"font-size:10.5000pt\">fix</span><span style=\"font-size:10.5000pt\">&nbsp;difficult </span><span style=\"font-size:10.5000pt\">problems</span><span style=\"font-size:10.5000pt\">&nbsp;and bring considerable profits to customers, Lawrence has established a professional after-sales service system. If you have any questions, please feel free to consult&nbsp;our team.</span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li class=\"16\"><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:10.5000pt\">We do remote assistance through internet; usually TEAMVIEWER installation required</span></span></li>\r\n	<li class=\"16\"><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:10.5000pt\">7-24 hours service by mail and phone</span></span></li>\r\n	<li class=\"16\"><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:10.5000pt\">Spare parts offered by LAWRENCE, if the machine is in warranty, spare parts offered freely, if the machine is out of warranty, the cost and service fee would be charged.</span></span></li>\r\n	<li class=\"16\"><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:10.5000pt\">On-site assistance by LAWRENCE Teamwork, this is specially offered to distributor.</span></span></li>\r\n	<li class=\"16\"><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:10.5000pt\">Software and Data bank upgrade. </span></span></li>\r\n	<li class=\"16\"><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:10.5000pt\">Training at LAWRENCE factory and at customer</span><span style=\"font-size:10.5000pt\">&rsquo;</span><span style=\"font-size:10.5000pt\">s site. this is specially offered to distributor</span></span></li>\r\n	<li class=\"16\"><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:10.5000pt\">Email Address: </span><a href=\"mailto:info@lawren3d.com\"><u><span class=\"15\"><span style=\"color:#0000ff\"><span style=\"text-decoration:underline\">info@lawren3d.com</span></span></span></u></a></span></li>\r\n	<li class=\"16\"><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:10.5000pt\">Tel: 0086-20-86328363</span></span></li>\r\n</ol>\r\n\r\n<p class=\"16\">&nbsp; &nbsp;&nbsp;<img border=\"0\" src=\"/static/upload/824ee4690a5cb540/7854babe88f538ac.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p class=\"16\">&nbsp;</p>\r\n\r\n<p class=\"16\"><img border=\"0\" src=\"/static/upload/bcc3f33267a028da/de0713e146b5ea11.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p class=\"16\">&nbsp;</p>\r\n\r\n<p class=\"16\"><img border=\"0\" src=\"/static/upload/a2394a409a98bf67/cffc3c6a2cac1119.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p class=\"16\">&nbsp;</p>\r\n\r\n<p class=\"16\"><img border=\"0\" src=\"/static/upload/c9c5b2d569dd3b2d/17545d08ec21ba93.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p class=\"16\">&nbsp;</p>\r\n\r\n<p class=\"16\"><img border=\"0\" src=\"/static/upload/54dab7ff2dbae64b/4d9a806ab7b08a09.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p class=\"16\">&nbsp;</p>\r\n\r\n<p class=\"16\"><img border=\"0\" src=\"/static/upload/22f0aa811fa419f8/6f643e71d3410fdd.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '2019-03-13 19:02:15');

-- ----------------------------
-- Table structure for `system_auth`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
-- Records of system_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `system_auth_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  PRIMARY KEY (`id`),
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色与节点绑定';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------

-- ----------------------------
-- Table structure for `system_config`
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`),
  KEY `index_system_config_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统参数配置';

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('1', 'app_name', '劳伦斯后台');
INSERT INTO `system_config` VALUES ('2', 'site_name', '');
INSERT INTO `system_config` VALUES ('3', 'app_version', '');
INSERT INTO `system_config` VALUES ('4', 'site_copy', '');
INSERT INTO `system_config` VALUES ('5', 'browser_icon', 'http://service.thinkadmin.top/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png');
INSERT INTO `system_config` VALUES ('6', 'tongji_baidu_key', '');
INSERT INTO `system_config` VALUES ('7', 'miitbeian', '粤ICP备16006642号-2');
INSERT INTO `system_config` VALUES ('8', 'storage_type', 'local');
INSERT INTO `system_config` VALUES ('9', 'storage_local_exts', 'png,jpg,rar,doc,icon,mp4,pdf');
INSERT INTO `system_config` VALUES ('10', 'storage_qiniu_bucket', '');
INSERT INTO `system_config` VALUES ('11', 'storage_qiniu_domain', '');
INSERT INTO `system_config` VALUES ('12', 'storage_qiniu_access_key', '');
INSERT INTO `system_config` VALUES ('13', 'storage_qiniu_secret_key', '');
INSERT INTO `system_config` VALUES ('47', 'sign_type', 'MD5');
INSERT INTO `system_config` VALUES ('48', 'input_charset', 'utf-8');
INSERT INTO `system_config` VALUES ('49', 'service', 'create_direct_pay_by_user');
INSERT INTO `system_config` VALUES ('50', 'payment_type', '1');
INSERT INTO `system_config` VALUES ('61', 'img', '');
INSERT INTO `system_config` VALUES ('62', 'wximg', '/static/upload/78a9bdf5144165ae/c989cf33295cda31.jpg');
INSERT INTO `system_config` VALUES ('64', 'sms_user', '');
INSERT INTO `system_config` VALUES ('65', 'sms_pwd', '');
INSERT INTO `system_config` VALUES ('66', 'sms_prefix', '');
INSERT INTO `system_config` VALUES ('67', 'sms_phone', '');
INSERT INTO `system_config` VALUES ('72', 'urlname', '劳伦斯后台管理');
INSERT INTO `system_config` VALUES ('73', 'keywords', '网站关键词，网站关键词，网站关键词，网站关键词，网站关键词，网站关键词，');
INSERT INTO `system_config` VALUES ('74', 'description', '网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，');
INSERT INTO `system_config` VALUES ('75', 'icon', '/static/upload/967b4537d937030e/62cfee19c8e8ee68.png');
INSERT INTO `system_config` VALUES ('76', 'addhtml', '');
INSERT INTO `system_config` VALUES ('77', 'logo', '/static/upload/f68dd4128884d68c/d7b580b171cb5969.png');
INSERT INTO `system_config` VALUES ('78', 'wb', '');
INSERT INTO `system_config` VALUES ('79', 'mobile', '075589255009');
INSERT INTO `system_config` VALUES ('80', 'mobileimg', '/static/upload/7365ecab9072b8b4/20ed1a612f251cee.png');
INSERT INTO `system_config` VALUES ('81', 'lng', '114.306812');
INSERT INTO `system_config` VALUES ('82', 'lat', '31.590857');
INSERT INTO `system_config` VALUES ('83', 'storage_oss_bucket', '');
INSERT INTO `system_config` VALUES ('84', 'storage_oss_endpoint', '');
INSERT INTO `system_config` VALUES ('85', 'storage_oss_domain', '');
INSERT INTO `system_config` VALUES ('86', 'storage_oss_keyid', '');
INSERT INTO `system_config` VALUES ('87', 'storage_oss_secret', '');

-- ----------------------------
-- Table structure for `system_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('1', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-05 10:54:37');
INSERT INTO `system_log` VALUES ('2', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-08 16:20:19');
INSERT INTO `system_log` VALUES ('3', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-09 09:21:05');
INSERT INTO `system_log` VALUES ('4', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-14 11:40:13');
INSERT INTO `system_log` VALUES ('5', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-19 11:34:21');
INSERT INTO `system_log` VALUES ('6', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-05-19 11:54:49');
INSERT INTO `system_log` VALUES ('7', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 11:05:20');
INSERT INTO `system_log` VALUES ('8', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 15:07:38');
INSERT INTO `system_log` VALUES ('9', '127.0.0.1', 'admin/login/index', '1111', '系统管理', '用户登录系统成功', '2018-05-26 15:07:47');
INSERT INTO `system_log` VALUES ('10', '127.0.0.1', 'admin/login/out', '1111', '系统管理', '用户退出系统成功', '2018-05-26 15:07:57');
INSERT INTO `system_log` VALUES ('11', '127.0.0.1', 'admin/login/index', '1111', '系统管理', '用户登录系统成功', '2018-05-26 15:08:13');
INSERT INTO `system_log` VALUES ('12', '127.0.0.1', 'admin/login/out', '1111', '系统管理', '用户退出系统成功', '2018-05-26 15:08:27');
INSERT INTO `system_log` VALUES ('13', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 15:08:34');
INSERT INTO `system_log` VALUES ('14', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 15:08:49');
INSERT INTO `system_log` VALUES ('15', '127.0.0.1', 'admin/login/index', '1111', '系统管理', '用户登录系统成功', '2018-05-26 15:08:56');
INSERT INTO `system_log` VALUES ('16', '127.0.0.1', 'admin/login/out', '1111', '系统管理', '用户退出系统成功', '2018-05-26 15:09:09');
INSERT INTO `system_log` VALUES ('17', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 15:09:14');
INSERT INTO `system_log` VALUES ('18', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 15:20:47');
INSERT INTO `system_log` VALUES ('19', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-26 15:20:56');
INSERT INTO `system_log` VALUES ('20', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-26 15:21:16');
INSERT INTO `system_log` VALUES ('21', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 15:21:26');
INSERT INTO `system_log` VALUES ('22', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 17:51:18');
INSERT INTO `system_log` VALUES ('23', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-27 17:53:29');
INSERT INTO `system_log` VALUES ('24', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 09:09:51');
INSERT INTO `system_log` VALUES ('25', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-28 17:55:52');
INSERT INTO `system_log` VALUES ('26', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-28 17:56:03');
INSERT INTO `system_log` VALUES ('27', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-28 17:56:18');
INSERT INTO `system_log` VALUES ('28', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 17:56:23');
INSERT INTO `system_log` VALUES ('29', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-28 17:58:15');
INSERT INTO `system_log` VALUES ('30', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-28 17:58:25');
INSERT INTO `system_log` VALUES ('31', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-28 17:58:39');
INSERT INTO `system_log` VALUES ('32', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 17:58:44');
INSERT INTO `system_log` VALUES ('33', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 17:59:45');
INSERT INTO `system_log` VALUES ('34', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 17:59:58');
INSERT INTO `system_log` VALUES ('35', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 18:00:47');
INSERT INTO `system_log` VALUES ('36', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 09:02:41');
INSERT INTO `system_log` VALUES ('37', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 09:05:42');
INSERT INTO `system_log` VALUES ('38', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-29 09:05:53');
INSERT INTO `system_log` VALUES ('39', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-29 09:06:14');
INSERT INTO `system_log` VALUES ('40', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 09:06:19');
INSERT INTO `system_log` VALUES ('41', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 14:07:58');
INSERT INTO `system_log` VALUES ('42', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 14:09:06');
INSERT INTO `system_log` VALUES ('43', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:40:11');
INSERT INTO `system_log` VALUES ('44', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:58:39');
INSERT INTO `system_log` VALUES ('45', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:58:54');
INSERT INTO `system_log` VALUES ('46', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:59:50');
INSERT INTO `system_log` VALUES ('47', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 15:13:23');
INSERT INTO `system_log` VALUES ('48', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 15:14:26');
INSERT INTO `system_log` VALUES ('49', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 15:14:39');
INSERT INTO `system_log` VALUES ('50', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 15:23:56');
INSERT INTO `system_log` VALUES ('51', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 15:24:12');
INSERT INTO `system_log` VALUES ('52', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 20:08:18');
INSERT INTO `system_log` VALUES ('53', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-30 09:07:53');
INSERT INTO `system_log` VALUES ('54', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-30 23:26:08');
INSERT INTO `system_log` VALUES ('55', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-31 09:16:08');
INSERT INTO `system_log` VALUES ('56', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-01 10:53:57');
INSERT INTO `system_log` VALUES ('57', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-02 13:23:00');
INSERT INTO `system_log` VALUES ('58', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-02 18:00:33');
INSERT INTO `system_log` VALUES ('59', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:05:09');
INSERT INTO `system_log` VALUES ('60', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:05:20');
INSERT INTO `system_log` VALUES ('61', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:11:51');
INSERT INTO `system_log` VALUES ('62', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:20:49');
INSERT INTO `system_log` VALUES ('63', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:21:30');
INSERT INTO `system_log` VALUES ('64', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:35:49');
INSERT INTO `system_log` VALUES ('65', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:36:01');
INSERT INTO `system_log` VALUES ('66', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:36:12');
INSERT INTO `system_log` VALUES ('67', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:36:26');
INSERT INTO `system_log` VALUES ('68', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:42:58');
INSERT INTO `system_log` VALUES ('69', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:43:28');
INSERT INTO `system_log` VALUES ('70', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:44:10');
INSERT INTO `system_log` VALUES ('71', '182.84.63.106', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:59:31');
INSERT INTO `system_log` VALUES ('72', '182.84.63.106', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:59:40');
INSERT INTO `system_log` VALUES ('73', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 10:18:45');
INSERT INTO `system_log` VALUES ('74', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:26:42');
INSERT INTO `system_log` VALUES ('75', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:34:59');
INSERT INTO `system_log` VALUES ('76', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:36:46');
INSERT INTO `system_log` VALUES ('77', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:37:56');
INSERT INTO `system_log` VALUES ('78', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 09:52:58');
INSERT INTO `system_log` VALUES ('79', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 09:53:18');
INSERT INTO `system_log` VALUES ('80', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 09:53:50');
INSERT INTO `system_log` VALUES ('81', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 10:28:29');
INSERT INTO `system_log` VALUES ('82', '115.152.48.112', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-05 10:30:32');
INSERT INTO `system_log` VALUES ('83', '115.152.48.112', 'admin/login/index', 'jinjie', '系统管理', '用户登录系统成功', '2018-06-05 10:30:47');
INSERT INTO `system_log` VALUES ('84', '115.152.48.112', 'admin/login/out', 'jinjie', '系统管理', '用户退出系统成功', '2018-06-05 10:31:44');
INSERT INTO `system_log` VALUES ('85', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 10:31:55');
INSERT INTO `system_log` VALUES ('86', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 10:47:54');
INSERT INTO `system_log` VALUES ('87', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 10:48:10');
INSERT INTO `system_log` VALUES ('88', '115.152.48.112', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-05 10:50:54');
INSERT INTO `system_log` VALUES ('89', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 10:51:04');
INSERT INTO `system_log` VALUES ('90', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 13:20:46');
INSERT INTO `system_log` VALUES ('91', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 17:37:06');
INSERT INTO `system_log` VALUES ('92', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-14 10:12:46');
INSERT INTO `system_log` VALUES ('93', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-20 10:08:22');
INSERT INTO `system_log` VALUES ('94', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-20 10:25:37');
INSERT INTO `system_log` VALUES ('95', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-20 13:44:14');
INSERT INTO `system_log` VALUES ('96', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-22 10:47:57');
INSERT INTO `system_log` VALUES ('97', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-23 15:35:25');
INSERT INTO `system_log` VALUES ('98', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-25 11:33:04');
INSERT INTO `system_log` VALUES ('99', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-07-02 11:07:50');
INSERT INTO `system_log` VALUES ('100', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-07-16 16:07:33');
INSERT INTO `system_log` VALUES ('101', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-08-13 15:01:37');
INSERT INTO `system_log` VALUES ('102', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-11 11:44:01');
INSERT INTO `system_log` VALUES ('103', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-11 17:20:49');
INSERT INTO `system_log` VALUES ('104', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-12 08:52:21');
INSERT INTO `system_log` VALUES ('105', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-15 14:52:12');
INSERT INTO `system_log` VALUES ('106', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-16 14:37:51');
INSERT INTO `system_log` VALUES ('107', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-17 13:09:09');
INSERT INTO `system_log` VALUES ('108', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-31 13:48:30');
INSERT INTO `system_log` VALUES ('109', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-02 15:19:05');
INSERT INTO `system_log` VALUES ('110', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-02 15:23:28');
INSERT INTO `system_log` VALUES ('111', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-02 16:03:48');
INSERT INTO `system_log` VALUES ('112', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-02 16:04:22');
INSERT INTO `system_log` VALUES ('113', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 08:55:47');
INSERT INTO `system_log` VALUES ('114', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 09:46:25');
INSERT INTO `system_log` VALUES ('115', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:26:07');
INSERT INTO `system_log` VALUES ('116', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:27:36');
INSERT INTO `system_log` VALUES ('117', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:27:49');
INSERT INTO `system_log` VALUES ('118', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:30:01');
INSERT INTO `system_log` VALUES ('119', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 10:39:39');
INSERT INTO `system_log` VALUES ('120', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 10:47:31');
INSERT INTO `system_log` VALUES ('121', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 11:00:01');
INSERT INTO `system_log` VALUES ('122', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 11:03:26');
INSERT INTO `system_log` VALUES ('123', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 11:04:17');
INSERT INTO `system_log` VALUES ('124', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 11:45:51');
INSERT INTO `system_log` VALUES ('125', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 13:48:56');
INSERT INTO `system_log` VALUES ('126', '27.18.180.225', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-03 13:49:59');
INSERT INTO `system_log` VALUES ('127', '125.118.109.117', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 13:53:25');
INSERT INTO `system_log` VALUES ('128', '125.118.109.117', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 14:41:51');
INSERT INTO `system_log` VALUES ('129', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 14:56:08');
INSERT INTO `system_log` VALUES ('130', '115.199.252.81', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-04 15:29:39');
INSERT INTO `system_log` VALUES ('131', '115.199.252.81', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-04 17:59:16');
INSERT INTO `system_log` VALUES ('132', '115.199.252.81', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-04 18:01:04');
INSERT INTO `system_log` VALUES ('133', '115.199.252.81', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-04 18:02:02');
INSERT INTO `system_log` VALUES ('134', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 08:57:49');
INSERT INTO `system_log` VALUES ('135', '125.120.211.181', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 10:17:58');
INSERT INTO `system_log` VALUES ('136', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 10:18:29');
INSERT INTO `system_log` VALUES ('137', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 10:18:39');
INSERT INTO `system_log` VALUES ('138', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 10:52:45');
INSERT INTO `system_log` VALUES ('139', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 17:35:11');
INSERT INTO `system_log` VALUES ('140', '115.199.252.81', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 17:44:25');
INSERT INTO `system_log` VALUES ('141', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-06 18:17:58');
INSERT INTO `system_log` VALUES ('142', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-06 18:26:57');
INSERT INTO `system_log` VALUES ('143', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 08:50:14');
INSERT INTO `system_log` VALUES ('144', '36.61.98.124', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 12:39:04');
INSERT INTO `system_log` VALUES ('145', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-09 15:16:26');
INSERT INTO `system_log` VALUES ('146', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-13 10:08:05');
INSERT INTO `system_log` VALUES ('147', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 13:13:21');
INSERT INTO `system_log` VALUES ('148', '27.17.243.131', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 16:54:44');
INSERT INTO `system_log` VALUES ('149', '103.73.166.211', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 17:46:19');
INSERT INTO `system_log` VALUES ('150', '103.73.166.213', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 17:50:16');
INSERT INTO `system_log` VALUES ('151', '103.73.166.211', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 18:49:31');
INSERT INTO `system_log` VALUES ('152', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-16 09:09:26');
INSERT INTO `system_log` VALUES ('153', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-16 13:14:07');
INSERT INTO `system_log` VALUES ('154', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-16 13:40:47');
INSERT INTO `system_log` VALUES ('155', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-16 14:00:29');
INSERT INTO `system_log` VALUES ('156', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 09:18:19');
INSERT INTO `system_log` VALUES ('157', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 14:43:55');
INSERT INTO `system_log` VALUES ('158', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 18:04:49');
INSERT INTO `system_log` VALUES ('159', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 14:58:26');
INSERT INTO `system_log` VALUES ('160', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 15:19:10');
INSERT INTO `system_log` VALUES ('161', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 16:43:58');
INSERT INTO `system_log` VALUES ('162', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 17:05:53');
INSERT INTO `system_log` VALUES ('163', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 17:10:22');
INSERT INTO `system_log` VALUES ('164', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 15:24:50');
INSERT INTO `system_log` VALUES ('165', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 15:28:57');
INSERT INTO `system_log` VALUES ('166', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-23 17:53:18');
INSERT INTO `system_log` VALUES ('167', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-24 11:08:06');
INSERT INTO `system_log` VALUES ('168', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-15 11:18:05');
INSERT INTO `system_log` VALUES ('169', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-18 15:52:57');
INSERT INTO `system_log` VALUES ('170', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 10:58:54');
INSERT INTO `system_log` VALUES ('171', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 09:06:15');
INSERT INTO `system_log` VALUES ('172', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 09:14:04');
INSERT INTO `system_log` VALUES ('173', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 10:09:00');
INSERT INTO `system_log` VALUES ('174', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 09:54:57');
INSERT INTO `system_log` VALUES ('175', '61.141.255.107', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 11:49:55');
INSERT INTO `system_log` VALUES ('176', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 11:50:27');
INSERT INTO `system_log` VALUES ('177', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-24 14:25:47');
INSERT INTO `system_log` VALUES ('178', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-24 18:02:41');
INSERT INTO `system_log` VALUES ('179', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-24 18:04:13');
INSERT INTO `system_log` VALUES ('180', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 10:24:34');
INSERT INTO `system_log` VALUES ('181', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 14:27:13');
INSERT INTO `system_log` VALUES ('182', '61.144.175.52', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-25 14:27:59');
INSERT INTO `system_log` VALUES ('183', '61.144.175.52', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-25 14:35:59');
INSERT INTO `system_log` VALUES ('184', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 17:41:20');
INSERT INTO `system_log` VALUES ('185', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 19:14:04');
INSERT INTO `system_log` VALUES ('186', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 12:02:15');
INSERT INTO `system_log` VALUES ('187', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 14:09:35');
INSERT INTO `system_log` VALUES ('188', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 15:18:15');
INSERT INTO `system_log` VALUES ('189', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 17:58:19');
INSERT INTO `system_log` VALUES ('190', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 18:12:55');
INSERT INTO `system_log` VALUES ('191', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 09:07:33');
INSERT INTO `system_log` VALUES ('192', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 10:11:58');
INSERT INTO `system_log` VALUES ('193', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:44:31');
INSERT INTO `system_log` VALUES ('194', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 13:50:39');
INSERT INTO `system_log` VALUES ('195', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:53:18');
INSERT INTO `system_log` VALUES ('196', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:55:28');
INSERT INTO `system_log` VALUES ('197', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:55:55');
INSERT INTO `system_log` VALUES ('198', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 14:12:27');
INSERT INTO `system_log` VALUES ('199', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 14:18:08');
INSERT INTO `system_log` VALUES ('200', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 14:19:51');
INSERT INTO `system_log` VALUES ('201', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 14:20:24');
INSERT INTO `system_log` VALUES ('202', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:10:14');
INSERT INTO `system_log` VALUES ('203', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:12:17');
INSERT INTO `system_log` VALUES ('204', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:20:36');
INSERT INTO `system_log` VALUES ('205', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:23:01');
INSERT INTO `system_log` VALUES ('206', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:25:26');
INSERT INTO `system_log` VALUES ('207', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:25:54');
INSERT INTO `system_log` VALUES ('208', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:31:20');
INSERT INTO `system_log` VALUES ('209', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 17:38:52');
INSERT INTO `system_log` VALUES ('210', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 10:42:01');
INSERT INTO `system_log` VALUES ('211', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 11:51:03');
INSERT INTO `system_log` VALUES ('212', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 11:54:44');
INSERT INTO `system_log` VALUES ('213', '121.35.182.237', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 17:24:21');
INSERT INTO `system_log` VALUES ('214', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 17:45:29');
INSERT INTO `system_log` VALUES ('215', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 17:58:30');
INSERT INTO `system_log` VALUES ('216', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 18:01:00');
INSERT INTO `system_log` VALUES ('217', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 18:13:02');
INSERT INTO `system_log` VALUES ('218', '121.35.182.237', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 18:15:58');
INSERT INTO `system_log` VALUES ('219', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 18:23:25');
INSERT INTO `system_log` VALUES ('220', '121.35.182.237', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-29 09:59:17');
INSERT INTO `system_log` VALUES ('221', '61.144.174.29', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 11:31:21');
INSERT INTO `system_log` VALUES ('222', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:36:33');
INSERT INTO `system_log` VALUES ('223', '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 11:37:14');
INSERT INTO `system_log` VALUES ('224', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:38:01');
INSERT INTO `system_log` VALUES ('225', '27.18.30.68', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:38:03');
INSERT INTO `system_log` VALUES ('226', '27.18.30.68', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:38:49');
INSERT INTO `system_log` VALUES ('227', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:11:37');
INSERT INTO `system_log` VALUES ('228', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:14:42');
INSERT INTO `system_log` VALUES ('229', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:17:06');
INSERT INTO `system_log` VALUES ('230', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:19:31');
INSERT INTO `system_log` VALUES ('231', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:21:53');
INSERT INTO `system_log` VALUES ('232', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:32:17');
INSERT INTO `system_log` VALUES ('233', '61.144.174.29', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 16:33:23');
INSERT INTO `system_log` VALUES ('234', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 16:48:01');
INSERT INTO `system_log` VALUES ('235', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-14 10:53:11');
INSERT INTO `system_log` VALUES ('236', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-17 11:33:59');
INSERT INTO `system_log` VALUES ('237', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-01-17 12:01:16');
INSERT INTO `system_log` VALUES ('238', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-17 12:01:29');
INSERT INTO `system_log` VALUES ('239', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-18 10:33:51');
INSERT INTO `system_log` VALUES ('240', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-18 17:48:16');
INSERT INTO `system_log` VALUES ('241', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-19 09:07:23');
INSERT INTO `system_log` VALUES ('242', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-24 15:45:39');
INSERT INTO `system_log` VALUES ('243', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-25 15:10:23');
INSERT INTO `system_log` VALUES ('244', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-26 10:45:04');
INSERT INTO `system_log` VALUES ('245', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-28 09:13:25');
INSERT INTO `system_log` VALUES ('246', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-12 16:58:44');
INSERT INTO `system_log` VALUES ('247', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-12 18:15:49');
INSERT INTO `system_log` VALUES ('248', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-13 09:16:50');
INSERT INTO `system_log` VALUES ('249', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-13 10:52:50');
INSERT INTO `system_log` VALUES ('250', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-13 11:27:36');
INSERT INTO `system_log` VALUES ('251', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-02-14 09:09:38');
INSERT INTO `system_log` VALUES ('252', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-14 09:09:49');
INSERT INTO `system_log` VALUES ('253', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-02-15 09:53:49');
INSERT INTO `system_log` VALUES ('254', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-15 09:54:00');
INSERT INTO `system_log` VALUES ('255', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-16 13:17:41');
INSERT INTO `system_log` VALUES ('256', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-18 09:40:26');
INSERT INTO `system_log` VALUES ('257', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-18 14:58:12');
INSERT INTO `system_log` VALUES ('258', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-19 09:17:50');
INSERT INTO `system_log` VALUES ('259', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-02-19 09:18:44');
INSERT INTO `system_log` VALUES ('260', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-20 18:23:45');
INSERT INTO `system_log` VALUES ('261', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-21 17:56:15');
INSERT INTO `system_log` VALUES ('262', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-25 14:03:11');
INSERT INTO `system_log` VALUES ('263', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-25 17:29:08');
INSERT INTO `system_log` VALUES ('264', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-25 17:32:27');
INSERT INTO `system_log` VALUES ('265', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-02-27 10:12:18');
INSERT INTO `system_log` VALUES ('266', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2019-02-27 10:27:39');
INSERT INTO `system_log` VALUES ('267', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-01 18:43:26');
INSERT INTO `system_log` VALUES ('268', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-04 15:55:07');
INSERT INTO `system_log` VALUES ('269', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-08 18:41:54');
INSERT INTO `system_log` VALUES ('270', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-09 10:37:10');
INSERT INTO `system_log` VALUES ('271', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-09 16:23:38');
INSERT INTO `system_log` VALUES ('272', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-12 11:49:41');
INSERT INTO `system_log` VALUES ('273', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-13 16:47:30');
INSERT INTO `system_log` VALUES ('274', '116.21.134.14', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-13 19:01:14');
INSERT INTO `system_log` VALUES ('275', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-14 10:54:37');
INSERT INTO `system_log` VALUES ('276', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-14 17:12:33');
INSERT INTO `system_log` VALUES ('277', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-15 09:29:08');
INSERT INTO `system_log` VALUES ('278', '113.109.199.53', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-27 17:17:42');
INSERT INTO `system_log` VALUES ('279', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-27 17:47:19');
INSERT INTO `system_log` VALUES ('280', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-27 18:15:54');
INSERT INTO `system_log` VALUES ('281', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-03-27 18:23:39');
INSERT INTO `system_log` VALUES ('282', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-02 10:51:15');
INSERT INTO `system_log` VALUES ('283', '113.111.170.115', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-02 10:53:02');
INSERT INTO `system_log` VALUES ('284', '113.111.170.115', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-03 11:03:21');
INSERT INTO `system_log` VALUES ('285', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-04 09:22:09');
INSERT INTO `system_log` VALUES ('286', '113.109.197.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-04 14:44:11');
INSERT INTO `system_log` VALUES ('287', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-04 16:28:55');
INSERT INTO `system_log` VALUES ('288', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-09 09:31:17');

-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '0', '系统设置', '', '', '#', '', '_self', '2000', '1', '10000', '2018-01-19 15:27:00');
INSERT INTO `system_menu` VALUES ('2', '10', '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', '10', '1', '10000', '2018-01-19 15:27:17');
INSERT INTO `system_menu` VALUES ('5', '11', '用户管理', '', 'fa fa-user', 'admin/user/index', '', '_self', '0', '1', '0', '2018-01-23 12:15:12');
INSERT INTO `system_menu` VALUES ('7', '0', '后台首页', '', '', 'admin/index/main', '', '_self', '1000', '1', '0', '2018-01-23 13:42:30');
INSERT INTO `system_menu` VALUES ('9', '10', '文件存储', '', 'fa fa-stop-circle', 'admin/config/file', '', '_self', '30', '1', '0', '2018-01-25 10:54:28');
INSERT INTO `system_menu` VALUES ('10', '1', '系统管理', '', 'fa fa-scribd', '#', '', '_self', '200', '1', '0', '2018-01-25 18:14:28');
INSERT INTO `system_menu` VALUES ('11', '1', '访问权限', '', 'fa fa-anchor', '#', '', '_self', '300', '1', '0', '2018-01-25 18:15:08');
INSERT INTO `system_menu` VALUES ('115', '11', '访问授权', '', 'fa fa-group', 'admin/auth/index', '', '_self', '0', '1', '0', '2018-12-18 15:57:58');
INSERT INTO `system_menu` VALUES ('116', '11', '访问节点', '', 'fa fa-fort-awesome', 'admin/node/index', '', '_self', '0', '1', '0', '2018-12-18 16:00:05');
INSERT INTO `system_menu` VALUES ('117', '0', '页面编辑', '', '', '#', '', '_self', '3000', '1', '0', '2018-12-18 16:28:55');
INSERT INTO `system_menu` VALUES ('118', '117', '轮播图管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-18 16:29:19');
INSERT INTO `system_menu` VALUES ('119', '118', '轮播图列表', '', '', 'tuanj/banner/index', '', '_self', '0', '0', '0', '2018-12-18 16:29:59');
INSERT INTO `system_menu` VALUES ('120', '117', '分类管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-18 16:35:51');
INSERT INTO `system_menu` VALUES ('121', '120', '菜单栏', '', '', 'tuanj/lists/index', '', '_self', '0', '0', '0', '2018-12-18 16:36:01');
INSERT INTO `system_menu` VALUES ('122', '120', '场地分类', '', '', 'tuanj/categorys/index', '', '_self', '0', '0', '0', '2018-12-18 16:37:10');
INSERT INTO `system_menu` VALUES ('123', '120', '拓展分类', '', '', 'tuanj/condition/index', '', '_self', '0', '0', '0', '2018-12-18 16:37:49');
INSERT INTO `system_menu` VALUES ('124', '117', '项目管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-19 17:07:24');
INSERT INTO `system_menu` VALUES ('125', '124', '项目列表', '', '', 'tuanj/goods/index', '', '_self', '0', '0', '0', '2018-12-19 17:07:43');
INSERT INTO `system_menu` VALUES ('126', '117', '合作伙伴', '', '', '#', '', '_self', '0', '0', '0', '2018-12-21 10:42:54');
INSERT INTO `system_menu` VALUES ('127', '126', '伙伴列表', '', '', 'tuanj/partner/index', '', '_self', '0', '0', '0', '2018-12-21 10:43:17');
INSERT INTO `system_menu` VALUES ('128', '117', '服务团队', '', '', '#', '', '_self', '0', '0', '0', '2018-12-21 11:41:20');
INSERT INTO `system_menu` VALUES ('129', '128', '团队列表', '', '', 'tuanj/tuandui/index', '', '_self', '0', '0', '0', '2018-12-21 11:41:42');
INSERT INTO `system_menu` VALUES ('130', '117', '往期案例', '', '', '#', '', '_self', '0', '0', '0', '2018-12-21 12:05:24');
INSERT INTO `system_menu` VALUES ('131', '130', '案例列表', '', '', 'tuanj/anli/index', '', '_self', '0', '0', '0', '2018-12-21 12:05:40');
INSERT INTO `system_menu` VALUES ('132', '117', '新闻中心', '', '', '#', '', '_self', '0', '0', '0', '2018-12-22 09:55:31');
INSERT INTO `system_menu` VALUES ('133', '132', '新闻列表', '', '', 'tuanj/news/index', '', '_self', '0', '0', '0', '2018-12-22 09:55:48');
INSERT INTO `system_menu` VALUES ('134', '117', '专属定制', '', '', '#', '', '_self', '0', '0', '0', '2018-12-27 11:41:48');
INSERT INTO `system_menu` VALUES ('135', '134', '定制列表', '', '', 'tuanj/dingzhi/index', '', '_self', '0', '0', '0', '2018-12-27 11:42:11');
INSERT INTO `system_menu` VALUES ('136', '117', '底部管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-28 11:26:40');
INSERT INTO `system_menu` VALUES ('137', '136', '关于我们', '', '', 'tuanj/gywm/index', '', '_self', '0', '0', '0', '2018-12-28 11:27:06');
INSERT INTO `system_menu` VALUES ('138', '136', '帮助中心', '', '', 'tuanj/help/index', '', '_self', '0', '0', '0', '2018-12-28 11:27:28');
INSERT INTO `system_menu` VALUES ('147', '117', 'services(客户服务)', '', 'fa fa-shopping-basket', '#', '', '_self', '0', '1', '0', '2019-02-13 14:52:13');
INSERT INTO `system_menu` VALUES ('148', '147', 'salessupport(售后支持)', '', 'fa fa-adjust', '/tuanj/support/index', '', '_self', '0', '1', '0', '2019-02-13 14:54:43');
INSERT INTO `system_menu` VALUES ('149', '117', 'product(产品)', '', 'fa fa-cubes', '#', '', '_self', '0', '1', '0', '2019-02-13 16:18:37');
INSERT INTO `system_menu` VALUES ('150', '149', 'product(设置产品)', '', 'fa fa-circle', '/tuanj/product/index', '', '_self', '0', '1', '0', '2019-02-13 16:19:35');
INSERT INTO `system_menu` VALUES ('151', '149', 'product(设置产品详情)', '', 'fa fa-book', '/tuanj/info/index', '', '_self', '0', '1', '0', '2019-02-14 09:55:50');
INSERT INTO `system_menu` VALUES ('152', '149', 'features(特征)', '', 'fa fa-check-circle', '/tuanj/features/index', '', '_self', '0', '1', '0', '2019-02-14 11:23:12');
INSERT INTO `system_menu` VALUES ('153', '149', 'media(视频)', '', 'fa fa-image', '/tuanj/media/index', '', '_self', '0', '1', '0', '2019-02-14 11:23:47');
INSERT INTO `system_menu` VALUES ('154', '149', 'specs(规格)', '', 'fa fa-leaf', '/tuanj/specs/index', '', '_self', '0', '1', '0', '2019-02-14 11:24:20');
INSERT INTO `system_menu` VALUES ('155', '149', 'Display-map(展示图)', '', 'fa fa-codiepie', '/tuanj/zhanshi/index', '', '_self', '0', '1', '0', '2019-02-15 11:01:41');
INSERT INTO `system_menu` VALUES ('156', '117', 'about(关于)', '', 'fa fa-ellipsis-h', '#', '', '_self', '0', '1', '0', '2019-02-15 11:55:26');
INSERT INTO `system_menu` VALUES ('157', '156', 'Company-profile(公司简介)', '', 'fa fa-calendar-o', '/tuanj/about/index', '', '_self', '0', '1', '0', '2019-02-15 11:57:08');
INSERT INTO `system_menu` VALUES ('158', '156', 'new(新闻)', '', 'fa fa-flag-checkered', '/tuanj/information/index', '', '_self', '0', '1', '0', '2019-02-15 12:06:22');
INSERT INTO `system_menu` VALUES ('159', '156', 'highlights(强调)', '', 'fa fa-file-photo-o', '/tuanj/highlight/index', '', '_self', '0', '1', '0', '2019-02-15 12:08:23');
INSERT INTO `system_menu` VALUES ('160', '156', 'patents(专利)', '', 'fa fa-hand-spock-o', '/tuanj/patents/index', '', '_self', '0', '1', '0', '2019-02-15 12:09:16');
INSERT INTO `system_menu` VALUES ('161', '156', 'media(公司简介视频)', '', 'fa fa-power-off', '/tuanj/commedia/index', '', '_self', '0', '1', '0', '2019-02-15 13:25:19');
INSERT INTO `system_menu` VALUES ('162', '156', 'categorys(公司简介下级分类)', '', 'fa fa-product-hunt', '/tuanj/canxia/index', '', '_self', '0', '1', '0', '2019-02-15 13:50:53');
INSERT INTO `system_menu` VALUES ('163', '117', 'International-Exhibition', '', 'fa fa-bed', '#', '', '_self', '0', '1', '0', '2019-02-15 14:02:24');
INSERT INTO `system_menu` VALUES ('164', '163', 'years(设置年份)', '', 'fa fa-calendar', '/tuanj/years/index', '', '_self', '0', '1', '0', '2019-02-15 14:02:52');
INSERT INTO `system_menu` VALUES ('165', '156', 'image(公司简介分类展示图)', '', 'fa fa-adjust', '/tuanj/cateimg/index', '', '_self', '0', '1', '0', '2019-02-15 15:06:14');
INSERT INTO `system_menu` VALUES ('166', '117', 'home(主页)', '', 'fa fa-bolt', '#', '', '_self', '0', '1', '0', '2019-02-16 09:22:04');
INSERT INTO `system_menu` VALUES ('167', '166', '设置主页视频', '', 'fa fa-calendar-times-o', '/tuanj/homes/index', '', '_self', '0', '1', '0', '2019-02-16 09:23:12');
INSERT INTO `system_menu` VALUES ('169', '166', '主页底部视频', '', 'fa fa-codiepie', '/tuanj/homevideo/index', '', '_self', '0', '1', '0', '2019-02-16 10:11:36');
INSERT INTO `system_menu` VALUES ('170', '147', 'Q&A', '', 'fa fa-bookmark-o', '/tuanj/listqa/index', '', '_self', '0', '1', '0', '2019-02-26 14:56:16');
INSERT INTO `system_menu` VALUES ('171', '149', '下载手册', '', 'fa fa-modx', '/tuanj/download/index', '', '_self', '0', '1', '0', '2019-03-13 17:26:02');
INSERT INTO `system_menu` VALUES ('172', '149', '视频地址', '', 'fa fa-bell-o', '/tuanj/videos/index', '', '_self', '0', '1', '0', '2019-03-13 17:29:03');
INSERT INTO `system_menu` VALUES ('174', '149', '要考虑的事情', '', 'fa fa-bicycle', '/tuanj/things/index', '', '_self', '0', '1', '0', '2019-03-14 10:17:07');
INSERT INTO `system_menu` VALUES ('175', '149', '要考虑的事情具体详情', '', 'fa fa-calendar-times-o', '/tuanj/thingsinfo/index', '', '_self', '0', '1', '0', '2019-03-14 11:29:04');
INSERT INTO `system_menu` VALUES ('176', '147', 'UPGRADE(升级)', '', 'fa fa-shopping-bag', '/tuanj/upgrade/index', '', '_self', '0', '1', '0', '2019-04-04 09:25:31');
INSERT INTO `system_menu` VALUES ('177', '147', 'Training (培训中心)', '', 'fa fa-bars', '/tuanj/training/index', '', '_self', '0', '1', '0', '2019-04-04 10:06:05');
INSERT INTO `system_menu` VALUES ('178', '147', 'Downloading(下载中心)', '', 'fa fa-caret-square-o-down', '/tuanj/downloading/index', '', '_self', '0', '1', '0', '2019-04-04 10:28:26');
INSERT INTO `system_menu` VALUES ('179', '147', 'contact(联系我们)', '', 'fa fa-clone', '/tuanj/contact/index', '', '_self', '0', '1', '0', '2019-04-04 10:43:22');
INSERT INTO `system_menu` VALUES ('180', '117', '产品对比', '', 'fa fa-group', '#', '', '_self', '0', '1', '0', '2019-04-10 09:26:34');
INSERT INTO `system_menu` VALUES ('181', '180', '产品类型', '', 'fa fa-cogs', '/tuanj/protuctcates/index', '', '_self', '0', '1', '0', '2019-04-10 09:27:23');
INSERT INTO `system_menu` VALUES ('182', '180', '产品详情', '', 'fa fa-glass', '/tuanj/protuctinfos/index', '', '_self', '0', '1', '0', '2019-04-10 09:30:45');

-- ----------------------------
-- Table structure for `system_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动RBAC权限控制',
  `is_login` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动登录控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_node_node` (`node`)
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统节点表';

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES ('1', 'admin', '系统管理', '0', '1', '1', '2018-01-23 12:39:13');
INSERT INTO `system_node` VALUES ('2', 'admin/auth', '权限管理', '0', '1', '1', '2018-01-23 12:39:14');
INSERT INTO `system_node` VALUES ('3', 'admin/auth/index', '权限列表', '1', '1', '1', '2018-01-23 12:39:14');
INSERT INTO `system_node` VALUES ('4', 'admin/auth/apply', '访问授权', '0', '1', '1', '2018-01-23 12:39:19');
INSERT INTO `system_node` VALUES ('5', 'admin/auth/add', '添加权限', '0', '1', '1', '2018-01-23 12:39:22');
INSERT INTO `system_node` VALUES ('6', 'admin/auth/edit', '编辑权限', '0', '1', '1', '2018-01-23 12:39:23');
INSERT INTO `system_node` VALUES ('7', 'admin/auth/forbid', '禁用权限', '0', '1', '1', '2018-01-23 12:39:23');
INSERT INTO `system_node` VALUES ('8', 'admin/auth/resume', '启用权限', '0', '1', '1', '2018-01-23 12:39:24');
INSERT INTO `system_node` VALUES ('9', 'admin/auth/del', '删除权限', '0', '1', '1', '2018-01-23 12:39:25');
INSERT INTO `system_node` VALUES ('10', 'admin/config/index', '系统参数', '1', '1', '1', '2018-01-23 12:39:25');
INSERT INTO `system_node` VALUES ('11', 'admin/config/file', '文件存储', '0', '1', '1', '2018-01-23 12:39:26');
INSERT INTO `system_node` VALUES ('13', 'admin/log/index', '日志记录', '1', '1', '1', '2018-01-23 12:39:28');
INSERT INTO `system_node` VALUES ('14', 'admin/log/sms', '短信记录', '0', '1', '1', '2018-01-23 12:39:29');
INSERT INTO `system_node` VALUES ('15', 'admin/log/del', '日志删除', '0', '1', '1', '2018-01-23 12:39:29');
INSERT INTO `system_node` VALUES ('16', 'admin/menu/index', '系统菜单列表', '1', '1', '1', '2018-01-23 12:39:31');
INSERT INTO `system_node` VALUES ('17', 'admin/menu/add', '添加系统菜单', '0', '1', '1', '2018-01-23 12:39:31');
INSERT INTO `system_node` VALUES ('18', 'admin/menu/edit', '编辑系统菜单', '0', '1', '1', '2018-01-23 12:39:32');
INSERT INTO `system_node` VALUES ('19', 'admin/menu/del', '删除系统菜单', '0', '1', '1', '2018-01-23 12:39:33');
INSERT INTO `system_node` VALUES ('20', 'admin/menu/forbid', '禁用系统菜单', '0', '1', '1', '2018-01-23 12:39:33');
INSERT INTO `system_node` VALUES ('21', 'admin/menu/resume', '启用系统菜单', '0', '1', '1', '2018-01-23 12:39:34');
INSERT INTO `system_node` VALUES ('22', 'admin/node/index', '系统节点列表', '1', '1', '1', '2018-01-23 12:39:36');
INSERT INTO `system_node` VALUES ('23', 'admin/node/save', '保存节点信息', '0', '1', '1', '2018-01-23 12:39:36');
INSERT INTO `system_node` VALUES ('24', 'admin/user/index', '系统用户列表', '1', '1', '1', '2018-01-23 12:39:37');
INSERT INTO `system_node` VALUES ('25', 'admin/user/auth', '用户授权操作', '0', '1', '1', '2018-01-23 12:39:38');
INSERT INTO `system_node` VALUES ('26', 'admin/user/add', '添加系统用户', '0', '1', '1', '2018-01-23 12:39:39');
INSERT INTO `system_node` VALUES ('27', 'admin/user/edit', '编辑系统用户', '0', '1', '1', '2018-01-23 12:39:39');
INSERT INTO `system_node` VALUES ('28', 'admin/user/pass', '修改用户密码', '0', '1', '1', '2018-01-23 12:39:40');
INSERT INTO `system_node` VALUES ('29', 'admin/user/del', '删除系统用户', '0', '1', '1', '2018-01-23 12:39:41');
INSERT INTO `system_node` VALUES ('30', 'admin/user/forbid', '禁用系统用户', '0', '1', '1', '2018-01-23 12:39:41');
INSERT INTO `system_node` VALUES ('31', 'admin/user/resume', '启用系统用户', '0', '1', '1', '2018-01-23 12:39:42');
INSERT INTO `system_node` VALUES ('32', 'admin/config', '系统配置', '0', '1', '1', '2018-01-23 13:34:37');
INSERT INTO `system_node` VALUES ('33', 'admin/log', '日志管理', '0', '1', '1', '2018-01-23 13:34:48');
INSERT INTO `system_node` VALUES ('34', 'admin/menu', '系统菜单管理', '0', '1', '1', '2018-01-23 13:34:58');
INSERT INTO `system_node` VALUES ('35', 'admin/node', '系统节点管理', '0', '1', '1', '2018-01-23 13:35:17');
INSERT INTO `system_node` VALUES ('36', 'admin/user', '系统用户管理', '0', '1', '1', '2018-01-23 13:35:26');
INSERT INTO `system_node` VALUES ('229', 'admin/node/clear', '清理无效记录', '0', '1', '1', '2018-03-09 12:24:31');
INSERT INTO `system_node` VALUES ('356', 'admin/index/index', '', '0', '1', '1', '2018-06-04 09:44:01');
INSERT INTO `system_node` VALUES ('357', 'admin/index/main', '', '0', '1', '1', '2018-06-04 09:44:02');
INSERT INTO `system_node` VALUES ('358', 'admin/index/pass', '', '0', '1', '1', '2018-06-04 09:44:02');
INSERT INTO `system_node` VALUES ('359', 'admin/index/info', '', '0', '1', '1', '2018-06-04 09:44:02');

-- ----------------------------
-- Table structure for `system_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`),
  KEY `index_system_sequence_number` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- ----------------------------
-- Records of system_sequence
-- ----------------------------

-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `name` char(255) DEFAULT NULL,
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `pic` char(255) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('10000', 'admin', '超级管理员', '21232f297a57a5a743894a0e4a801fc3', '', '', null, '', '', '23296', '2018-03-23 17:05:40', '1', '1', '0', null, '2015-11-13 15:14:22');

-- ----------------------------
-- Table structure for `things_info`
-- ----------------------------
DROP TABLE IF EXISTS `things_info`;
CREATE TABLE `things_info` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '二级分类id',
  `img` varchar(255) NOT NULL COMMENT '标题logo',
  `title` varchar(255) NOT NULL COMMENT '详情标题',
  `content` varchar(255) NOT NULL COMMENT '详情内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of things_info
-- ----------------------------
INSERT INTO `things_info` VALUES ('0000000001', '8', '/static/upload/a9c15d4ffd8c7ce3/07d3e741bb9d19c6.png', 'Does the Alignment Machine have a OBD2 Interface?', '<p>&nbsp;An increasing number of modern vehicles have advanced driver assistance systems (ADAS) such as electronic stability control, anti-lock brakes, lane departure warning, adaptive cruise control, traction control and many others. These systems can be');
INSERT INTO `things_info` VALUES ('0000000002', '8', '/static/upload/8155ca87b24044bb/ec2a8f891ee7bdd3.png', 'Does the Alignment System have Vehicle Protection Features?', '<p>Does the equipment protect the wheel and rest of the vehicle from damage? Can it handle the range of vehicles you will see in your facility? Does it reference a solid, adjustable vehicle surface like the wheel? Make sure you consider the overall vehicl');
INSERT INTO `things_info` VALUES ('0000000003', '8', '/static/upload/a9c15d4ffd8c7ce3/07d3e741bb9d19c6.png', 'Does the Alignment Machine offer Vehicle-Specific Procedures?', '<p>Vehicle manufacturers have set specific alignment specifications for every vehicle. Some wheel aligners know what adjustments are available and guide the technician through the correct procedure for alignment adjustments.</p>');
INSERT INTO `things_info` VALUES ('0000000004', '8', '/static/upload/6cc7ac72863b1718/c351157627780e1f.png', 'Does the Alignment Machine offer Training Assistance?', '<p>Measuring camber, caster, &amp; toe are important, but does the wheel alignment equipment you are considering feature any software tools to make common adjustments easier, reducing the skill and effort required to complete the wheel alignment on common');

-- ----------------------------
-- Table structure for `things_title`
-- ----------------------------
DROP TABLE IF EXISTS `things_title`;
CREATE TABLE `things_title` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '对应产品二级分类id',
  `small_title` varchar(100) NOT NULL COMMENT '小标题',
  `title` varchar(200) NOT NULL COMMENT '介绍标题',
  `info` text NOT NULL COMMENT '介绍详情',
  `img` varchar(255) NOT NULL COMMENT '页面展示图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of things_title
-- ----------------------------
INSERT INTO `things_title` VALUES ('0000000001', '8', 'smarter', '这是一个。。。', '<p><span style=\"font-family:FangSong_GB2312;\">时间安排奇偶的房间欧派的机票机打发票积分都评价的破解的方法破解的评价,哦萨克斯SOS按哦你的承诺死哦IC。</span></p>', '/static/upload/26e91582bc725904/4aebc0d1a2472749.jpg');

-- ----------------------------
-- Table structure for `training`
-- ----------------------------
DROP TABLE IF EXISTS `training`;
CREATE TABLE `training` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='培训中心表';

-- ----------------------------
-- Records of training
-- ----------------------------
INSERT INTO `training` VALUES ('0000000001', 'LAWRENCE TRAINING CENTER', '<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">For better serving and assisting Lawrence&nbsp;clients, we established training center in Lawrence&nbsp;factory, there are 3D wheel aligner, tire changer, wheel balancer, car lift for Lawrence&nbsp;clients to operate. </span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Lawrence engineers would like to explain the operating principle of the machines, technical terms, operational considerations, and professional maintenance&nbsp;to every visitor, if you have any interests in our products, please feel free to contact us and you are more than welcome to visit Lawrence training center.</span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img border=\"0\" src=\"/static/upload/ec3486c5da8680fc/d323a61971bc0b55.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img border=\"0\" src=\"/static/upload/52617f56994160ff/9996dbdb60ffad9c.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img border=\"0\" src=\"/static/upload/782d38c1d05aeea1/5945fb046af5b45e.jpg\" style=\"max-width:880px\" title=\"image\" /></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\">&nbsp;</p>', '2019-04-04 16:40:28');

-- ----------------------------
-- Table structure for `tuandui`
-- ----------------------------
DROP TABLE IF EXISTS `tuandui`;
CREATE TABLE `tuandui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `zhiwei` varchar(100) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `pingpai` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuandui
-- ----------------------------
INSERT INTO `tuandui` VALUES ('1', '0', '鹿晗', '/static/upload/b0901da5f80517c9/425385604cf3a9cf.jpg', '执行专员', '其实我小时候最大梦想是踢球，后来足球的梦想破灭了以后，逼不得已选择了第二条路当上了艺人...他让太多90后、00后能在他身上找到某一个部分的自己，每一个虽然普通但依然想要发光发热不愿意平庸的自己！嗯…也许这就是鹿晗这个“现象级超级人气偶像IP”存在的意义！', '深圳大学，深圳国税，中国银行', '2018-12-21 11:43:34');
INSERT INTO `tuandui` VALUES ('2', '0', '张艺兴', '/static/upload/65b5c38acf105b75/238d9e841cbbc6ec.jpg', '执行专员', '张艺兴（LAY），1991年10月7日出生于湖南省长沙市，内地流行男歌手、影视演员，男子演唱组合EXO/EXO-M中国籍成员。2005年， 张艺兴参加湖南经视《明星学院》比赛并获得总决赛季军。2008年，通过S.M. Casting System在中国的选拔成为韩国SM公司旗下练习生。2012年4月，以EXO团体和其子队EXO-M成员身份正式出道', '#', '2018-12-25 15:34:48');
INSERT INTO `tuandui` VALUES ('3', '0', '戚薇', '/static/upload/da113d9eb997e2a9/02d7f18ed3e635c2.jpg', '团建专员', '戚薇，1984年10月26日出生于四川省成都市武侯区，中国内地女演员、歌手，毕业于浙江传媒学院录音艺术专业。2006年因参加选秀节目《我型我秀》而正式出道，同年与袁成杰组成“男才女貌”组合，并凭借歌曲《外滩十八号》在歌坛获得关注。2010年因参演古装剧《美人心计》而被观众所熟知。2011年主演都市情感剧《夏家三千金》；同年签约海蝶音乐，并发行首张个人EP《如果爱忘了》', '#', '2018-12-25 15:36:28');
INSERT INTO `tuandui` VALUES ('4', '0', '柳岩', '/static/upload/d7ef011455cc87c6/0479b2669c784cc5.jpg', '团建专员', '柳岩（Ada），1980年11月8日出生于湖南衡阳，中国内地女演员、歌手、主持人。2000年，柳岩担任广东有线广播电视台信息频道《财经新闻》主持人，从而开始了她的主持生涯。2002年，参加湖南公共频道生活时尚资讯类节目《太太抢鲜看》的录制，担任主持人。2004年，担任广东卫视资讯栏目《粤港澳零距离》主播。2005年，柳岩签约光线传媒。2007年，出演个人首部电影《画皮》，从而正式进入演艺圈', '#', '2018-12-25 15:38:01');
INSERT INTO `tuandui` VALUES ('5', '0', '刘亦菲', '/static/upload/daefbd349ba1c45b/482665075411f1c6.jpg', '团建专员', '刘亦菲，1987年8月25日出生于湖北省武汉市，华语影视女演员、歌手，毕业于北京电影学院2002级表演系本科班。2002年主演个人首部电视剧《金粉世家》，从而踏入演艺圈。2003年因主演武侠剧《天龙八部》崭露头角。2004年凭借仙侠剧《仙剑奇侠传》赵灵儿一角获得了高人气与关注度。', '#', '2018-12-25 15:44:05');
INSERT INTO `tuandui` VALUES ('6', '0', '杰森·斯坦森', '/static/upload/06e21299a97314aa/bab68483fa9dc692.jpg', '团建教练', '1992年，杰森·斯坦森作为英国国家跳水队运动员代表英国参加了第十二届世界跳水冠军赛，获得了第12名 [1]  。1998年，杰森出演了盖伊·里奇的犯罪电影《两杆大烟枪》，进入演艺圈。2002年，杰森开始担任电影《非常人贩》系列电影的男主角。2008年，他加盟了电影《敢死队》。2013年4月，全球健美杂志《Men', '#', '2018-12-25 15:45:45');
INSERT INTO `tuandui` VALUES ('8', '0', '范·迪塞尔', '/static/upload/f9d8d6cc26e2e69e/bd9dcc776caed094.jpg', '团建教练', '范·迪塞尔（Vin Diesel），1967年7月18日出生于美国纽约，美国电影演员，制片人。 1999年，自制短片担任演员参加戛纳电影节得奖，并得到大导演史蒂文·斯皮尔伯格赏识邀请其参加战争片《拯救大兵瑞恩》的演出。在出演《速度与激情》系列电影后成为好莱坞明星。2005年，他出演喜剧片《神勇奶爸》。', '#', '2018-12-25 15:51:48');
INSERT INTO `tuandui` VALUES ('7', '0', '吴亦凡', '/static/upload/0084f13e38c93b8b/fdcc5e53510792a8.jpg', '团建教练', '吴亦凡（Kris），1990年11月6日出生于广东省广州市，华语影视男演员、流行乐歌手。2007年，吴亦凡加入了韩国SM娱乐公司。2012年作为EXO组合成员正式出道，担任EXO/EXO-M队长、主Rapper、门面。2014年5月15日，吴亦凡正式向首尔中央地方法院请求判决与SM娱乐公司专属合同无效。之后吴亦凡回归中国发展，出演个人首部电影，担任徐静蕾执导的电影《有一个地方只有我们知道》男主角', '#', '2018-12-25 15:48:08');
INSERT INTO `tuandui` VALUES ('9', '0', '汤姆•克鲁斯', '/static/upload/1998af7148d5e65e/22320bb137e754df.jpg', '团建教练', '汤姆·克鲁斯（Tom Cruise），1962年7月3日出生于美国纽约州，美国电影演员、电影制片人。 1981年，汤姆·克鲁斯进入演艺圈。1983年凭借《乖仔也疯狂》首获金球奖最佳男主角提名。1986年凭借《壮志凌云》成名，并于同年10月16日留名好莱坞星光大道。1988年与达斯汀·霍夫曼合作电影《雨人》。1990年，汤姆·克鲁斯主演电影《生于七月四日》，首次获得奥斯卡金像奖最佳男主角提名。', '#', '2018-12-25 15:54:18');
INSERT INTO `tuandui` VALUES ('10', '0', '尼古拉斯·凯奇', '/static/upload/efde1ce2a23c4d26/1a12ec0ec2ccba97.jpg', '团建教练', '1982年，17岁的尼古拉斯·凯奇进入电影行业，出演影片《开放的美国学府》。1984年，凯奇主演了影片《鸟人》。1988年，他出演了《吸血鬼之吻》。1992年，他凭借影片《我心狂野》中的表演，获得了第43届戛纳电影节金棕榈大奖。1996年，他主演的动作片《勇闯夺命岛》，并凭借《离开拉斯维加斯》中的酒鬼一角获得当年奥斯卡最佳男主角奖。而后出演《变脸》、《空中监狱》等动作片。', '#', '2018-12-25 15:55:30');

-- ----------------------------
-- Table structure for `upgrade`
-- ----------------------------
DROP TABLE IF EXISTS `upgrade`;
CREATE TABLE `upgrade` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `down_url` varchar(255) NOT NULL COMMENT '下载链接',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upgrade
-- ----------------------------
INSERT INTO `upgrade` VALUES ('0000000001', '1.Newly upgraded Software', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 09:50:00');
INSERT INTO `upgrade` VALUES ('0000000002', '2.The newest databank', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:35:55');
INSERT INTO `upgrade` VALUES ('0000000003', '3.The newest brochure', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:36:08');
INSERT INTO `upgrade` VALUES ('0000000004', '4.The newest brochure', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:36:27');
INSERT INTO `upgrade` VALUES ('0000000005', '5.The newest brochure', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:36:47');
INSERT INTO `upgrade` VALUES ('0000000006', '6.The newest brochure', '/static/upload/f5f43abb349bbea0/dcf2eec194342555.pdf', '2019-04-04 10:37:02');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `video` varchar(255) NOT NULL COMMENT '首页视频',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('0000000002', '/static/upload/ba20dab1d78a245a/76d8cd069c66388c.mp4', '2019-04-09 11:14:25');

-- ----------------------------
-- Table structure for `videos`
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '产品二级分类id',
  `video_com` varchar(255) NOT NULL COMMENT '视频地址',
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('0000000002', '8', '-3MNS5mBs2g', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `years`
-- ----------------------------
DROP TABLE IF EXISTS `years`;
CREATE TABLE `years` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `year` int(10) DEFAULT '0' COMMENT '年份',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of years
-- ----------------------------
INSERT INTO `years` VALUES ('0000000002', '2012');
INSERT INTO `years` VALUES ('0000000003', '2013');
INSERT INTO `years` VALUES ('0000000004', '2014');
INSERT INTO `years` VALUES ('0000000005', '2015');
INSERT INTO `years` VALUES ('0000000006', '2016');
INSERT INTO `years` VALUES ('0000000007', '2017');
INSERT INTO `years` VALUES ('0000000008', '2018');
INSERT INTO `years` VALUES ('0000000009', '2019');

-- ----------------------------
-- Table structure for `zhanshi_img`
-- ----------------------------
DROP TABLE IF EXISTS `zhanshi_img`;
CREATE TABLE `zhanshi_img` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '产品id',
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `title` varchar(100) NOT NULL COMMENT '展示 型号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhanshi_img
-- ----------------------------
INSERT INTO `zhanshi_img` VALUES ('0000000001', '8', '/static/upload/e99928217ca2d420/9a681b3e90d7ab11.jpg', 'ls8');
INSERT INTO `zhanshi_img` VALUES ('0000000002', '8', '/static/upload/fd5ea0e38d31b071/7035ff5fed2a705c.jpg', 't9');
INSERT INTO `zhanshi_img` VALUES ('0000000003', '8', '/static/upload/d1e658cce94bd05e/297ac92c6565b3dd.jpg', 'ls6');
INSERT INTO `zhanshi_img` VALUES ('0000000004', '8', '/static/upload/f073f091e807b5b9/f079b6debc5cf0b9.jpg', 'cube11');
INSERT INTO `zhanshi_img` VALUES ('0000000005', '9', '/static/upload/0488b006a3855b73/c4c4665dee9aa562.jpg', '11');
INSERT INTO `zhanshi_img` VALUES ('0000000006', '9', '/static/upload/e9ed86c712fd8a50/bd78ff5fb0d56b12.jpg', '22');
INSERT INTO `zhanshi_img` VALUES ('0000000007', '9', '/static/upload/11b45e0fdfdbb9d9/4c0c62504f88e0ef.jpg', '33');
INSERT INTO `zhanshi_img` VALUES ('0000000008', '9', '/static/upload/c9422731de16ebfe/f19dbda486303fa3.jpg', '44');
INSERT INTO `zhanshi_img` VALUES ('0000000009', '10', '/static/upload/09fa65595325c599/4e8fcc4833d241e7.jpg', '11');
INSERT INTO `zhanshi_img` VALUES ('0000000010', '10', '/static/upload/89d8aa52b79187c2/93c04450a4ca9e5b.jpg', '22');
INSERT INTO `zhanshi_img` VALUES ('0000000011', '11', '/static/upload/97e72dee5bde0f7c/42b4a9ffd96ea160.jpg', 'x88');
INSERT INTO `zhanshi_img` VALUES ('0000000012', '11', '/static/upload/0ec75008fba9740d/59ea6ae63fb312de.jpg', 'X96 plus');
INSERT INTO `zhanshi_img` VALUES ('0000000013', '11', '/static/upload/d6ed1e7ac56736f6/d1b10a707031b6f7.jpg', 'x96');
INSERT INTO `zhanshi_img` VALUES ('0000000014', '11', '/static/upload/5215051196d50081/898370ed156c9a8f.jpg', 'x98');
INSERT INTO `zhanshi_img` VALUES ('0000000016', '13', '/static/upload/ff3865759f1a7b4e/bf0a315ed4827dfb.jpg', 'x306');
INSERT INTO `zhanshi_img` VALUES ('0000000017', '14', '/static/upload/b662752613b538d5/c0a0929fd4b0f06b.jpg', 'X203-PX8');
INSERT INTO `zhanshi_img` VALUES ('0000000018', '15', '/static/upload/8ac360ead2a1253d/3a5730ed6291b6f0.jpg', 'X203-PX6');
INSERT INTO `zhanshi_img` VALUES ('0000000019', '16', '/static/upload/06891475ca39aba2/e417d4171620bac7.jpg', 'x403');
INSERT INTO `zhanshi_img` VALUES ('0000000020', '22', '/static/upload/ca5673e5f67232dd/a910042d99874414.jpg', 'x102');
INSERT INTO `zhanshi_img` VALUES ('0000000027', '12', '/static/upload/ce54d7bc024c0766/baeef3aa44b984cb.jpg', 'x618');
INSERT INTO `zhanshi_img` VALUES ('0000000021', '18', '/static/upload/496c63587ac164d0/3404c842fc1d2452.jpg', '');
INSERT INTO `zhanshi_img` VALUES ('0000000022', '19', '/static/upload/82af9782f6e4c535/ad31e84472cbfe01.jpg', '');
INSERT INTO `zhanshi_img` VALUES ('0000000023', '20', '/static/upload/ce966fd2df3a1a11/587ca25f9bc154ac.jpg', '');
INSERT INTO `zhanshi_img` VALUES ('0000000024', '21', '/static/upload/23b6208bebeb96c1/9fe4f74cf1613339.jpg', '');
INSERT INTO `zhanshi_img` VALUES ('0000000026', '12', '/static/upload/ce54d7bc024c0766/baeef3aa44b984cb.jpg', 'x618');
