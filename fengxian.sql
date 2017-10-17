/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : fengxian

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-04-12 13:36:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fx_comment
-- ----------------------------
DROP TABLE IF EXISTS `fx_comment`;
CREATE TABLE `fx_comment` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `infoid` int(10) unsigned NOT NULL COMMENT '信息id',
  `userid` int(10) unsigned NOT NULL COMMENT '用户id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `addtime` int(10) unsigned DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_comment
-- ----------------------------
INSERT INTO `fx_comment` VALUES ('1', '70', '5', '121212', '1491874527');
INSERT INTO `fx_comment` VALUES ('2', '70', '5', '你好啊世界\r\n你好不好啊？\r\n你会更好的', '1491874548');
INSERT INTO `fx_comment` VALUES ('3', '70', '5', '11\r\n22\r\n33\r\n44\r\n55\r\n66', '1491876635');
INSERT INTO `fx_comment` VALUES ('4', '78', '5', '放假阿拉\r\n', '1491878187');
INSERT INTO `fx_comment` VALUES ('5', '56', '5', '很好特别好', '1491882283');
INSERT INTO `fx_comment` VALUES ('6', '56', '5', 'very good', '1491882294');
INSERT INTO `fx_comment` VALUES ('7', '74', '5', '11111', '1491882983');

-- ----------------------------
-- Table structure for fx_info
-- ----------------------------
DROP TABLE IF EXISTS `fx_info`;
CREATE TABLE `fx_info` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned DEFAULT NULL COMMENT '上传者id',
  `title_cn` varchar(200) NOT NULL COMMENT '中文标题',
  `title_en` varchar(200) DEFAULT NULL COMMENT '英文标题',
  `zhaiyao_cn` text COMMENT '中文摘要',
  `zhaiyao_en` text COMMENT '英文摘要',
  `fujian` varchar(100) DEFAULT NULL COMMENT '附件',
  `fy_fujian` varchar(100) DEFAULT NULL COMMENT '翻译后的附件',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源名称',
  `links` varchar(200) DEFAULT NULL COMMENT '来源链接',
  `addtime` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned zerofill DEFAULT '1' COMMENT '状态0已删除1已上传2已加入翻译列表3翻译完成4提交审核 5审核通过 6审核未通过',
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_info
-- ----------------------------
INSERT INTO `fx_info` VALUES ('1', null, '国家卫计委扩大β-胡萝卜素使用范围', '', '核心提示：21日，国家卫计委发布公告称，扩大食品添加剂β-胡萝卜素使用范围。β-胡萝卜素可作为着色剂用于调理肉制品（生肉添加调理料）（食品类别 08.02.01），调节产品色泽，最大使用量为0.02g/kg.', '', '20170322\\aefc81919967fedf8f1bfa9680c0a779.docx', null, '食品伙伴网', 'http://news.foodmate.net/2017/03/422584.html', '1490170515', '2');
INSERT INTO `fx_info` VALUES ('2', null, '中华人民共和国民法总则(主席令第六十六号)', 'zhonghua renming gongheguo ', '核心提示：《中华人民共和国民法总则》已由中华人民共和国第十二届全国人民代表大会第五次会议于2017年3月15日通过，现予公布，自2017年10月1日起施行。', '12121afafaf', '20170327\\17c751d9fc61a76c96c3b48a77b91580.doc', '20170410\\4264f4d3baf203574f54bd69ad76130a.txt', '食品伙伴网', 'http://www.foodmate.net/law/jiben/190453.html', '1490580356', '5');
INSERT INTO `fx_info` VALUES ('3', null, '关于公开征集《宁夏回族自治区清真食品管理条例（征求意见稿）》意见的公告', 'about zhengji ningxia', '核心提示：为广泛听取社会各界的意见和建议，提高立法质量，现将《宁夏回族自治区清真食品管理条例（征求意见稿）》全文公布，征求意见。', 'hexin tishi ', '20170327\\df5ca84054431a646c20ef11d040afa5.xls', '20170410\\caf7224d212af9d5575c30f6ce24a4c9.xls', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190568.html', '1490580649', '5');
INSERT INTO `fx_info` VALUES ('4', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', null, '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '2');
INSERT INTO `fx_info` VALUES ('5', '5', '关于对《内蒙古自治区主要农作物审定标准》 征求意见的函', '', '核心提示：根据《中华人民共和国种子法》《主要农作物品种审定办法》规定，按照农业供给侧结构性改革和种业发展新形势对品种审定工作提出的新要求，我们组织有关人员在国家农作物品种审定标准（征求意见稿）的基础上，结合当前我区种业发展实际，形成了《内蒙古自治区主要农作物品种审定标准》（征求意见稿）。', '', '20170327\\fec0621ed29260df6ea20d9ba2fba5e5.doc', null, '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190517.html', '1490580918', '2');
INSERT INTO `fx_info` VALUES ('6', '5', '关于食品添加剂新品种氨基乙酸（羟基乙腈法）等的公告', '', '核心提示：根据《食品安全法》规定，审评机构组织专家对食品添加剂新品种氨基乙酸（羟基乙腈法）、食品用香料新品种乙基芳樟基醚和食品添加剂β-胡萝卜素扩大使用范围的安全性评估材料审查并通过。', '', '20170327\\ce67444c1ffc3c61f879f9df1e2830b7.xls', null, '食品伙伴网', 'http://www.foodmate.net/law/shipin/190536.html', '1490581037', '1');
INSERT INTO `fx_info` VALUES ('7', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', null, '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '0');
INSERT INTO `fx_info` VALUES ('8', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '1213333', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', 'fafafafaf11', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '20170410\\7a912e71a4780592f25d5492f54c14ac.xls', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '3');
INSERT INTO `fx_info` VALUES ('9', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', null, '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '4');
INSERT INTO `fx_info` VALUES ('10', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', null, '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('11', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知222', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170406\\3697515eedb0864cc495dff71c72ca42.docx', null, '121212', '222222', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('12', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', null, '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('13', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', null, '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('14', null, '国家卫计委扩大β-胡萝卜素使用范围', '', '核心提示：21日，国家卫计委发布公告称，扩大食品添加剂β-胡萝卜素使用范围。β-胡萝卜素可作为着色剂用于调理肉制品（生肉添加调理料）（食品类别 08.02.01），调节产品色泽，最大使用量为0.02g/kg.', '', '20170322\\aefc81919967fedf8f1bfa9680c0a779.docx', '', '食品伙伴网', 'http://news.foodmate.net/2017/03/422584.html', '1490170515', '2');
INSERT INTO `fx_info` VALUES ('15', null, '中华人民共和国民法总则(主席令第六十六号)', 'zhonghua renming gongheguo ', '核心提示：《中华人民共和国民法总则》已由中华人民共和国第十二届全国人民代表大会第五次会议于2017年3月15日通过，现予公布，自2017年10月1日起施行。', '12121afafaf', '20170327\\17c751d9fc61a76c96c3b48a77b91580.doc', '20170410\\4264f4d3baf203574f54bd69ad76130a.txt', '食品伙伴网', 'http://www.foodmate.net/law/jiben/190453.html', '1490580356', '5');
INSERT INTO `fx_info` VALUES ('16', null, '关于公开征集《宁夏回族自治区清真食品管理条例（征求意见稿）》意见的公告', 'about zhengji ningxia', '核心提示：为广泛听取社会各界的意见和建议，提高立法质量，现将《宁夏回族自治区清真食品管理条例（征求意见稿）》全文公布，征求意见。', 'hexin tishi ', '20170327\\df5ca84054431a646c20ef11d040afa5.xls', '20170410\\caf7224d212af9d5575c30f6ce24a4c9.xls', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190568.html', '1490580649', '5');
INSERT INTO `fx_info` VALUES ('17', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '2');
INSERT INTO `fx_info` VALUES ('18', '5', '关于对《内蒙古自治区主要农作物审定标准》 征求意见的函', '', '核心提示：根据《中华人民共和国种子法》《主要农作物品种审定办法》规定，按照农业供给侧结构性改革和种业发展新形势对品种审定工作提出的新要求，我们组织有关人员在国家农作物品种审定标准（征求意见稿）的基础上，结合当前我区种业发展实际，形成了《内蒙古自治区主要农作物品种审定标准》（征求意见稿）。', '', '20170327\\fec0621ed29260df6ea20d9ba2fba5e5.doc', '', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190517.html', '1490580918', '2');
INSERT INTO `fx_info` VALUES ('19', '5', '关于食品添加剂新品种氨基乙酸（羟基乙腈法）等的公告', '', '核心提示：根据《食品安全法》规定，审评机构组织专家对食品添加剂新品种氨基乙酸（羟基乙腈法）、食品用香料新品种乙基芳樟基醚和食品添加剂β-胡萝卜素扩大使用范围的安全性评估材料审查并通过。', '', '20170327\\ce67444c1ffc3c61f879f9df1e2830b7.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190536.html', '1490581037', '1');
INSERT INTO `fx_info` VALUES ('20', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '0');
INSERT INTO `fx_info` VALUES ('21', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '1213333', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', 'fafafafaf11', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '20170410\\7a912e71a4780592f25d5492f54c14ac.xls', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '3');
INSERT INTO `fx_info` VALUES ('22', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '4');
INSERT INTO `fx_info` VALUES ('23', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('24', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知222', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170406\\3697515eedb0864cc495dff71c72ca42.docx', '', '121212', '222222', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('25', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('26', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('27', null, '国家卫计委扩大β-胡萝卜素使用范围', '', '核心提示：21日，国家卫计委发布公告称，扩大食品添加剂β-胡萝卜素使用范围。β-胡萝卜素可作为着色剂用于调理肉制品（生肉添加调理料）（食品类别 08.02.01），调节产品色泽，最大使用量为0.02g/kg.', '', '20170322\\aefc81919967fedf8f1bfa9680c0a779.docx', '', '食品伙伴网', 'http://news.foodmate.net/2017/03/422584.html', '1490170515', '2');
INSERT INTO `fx_info` VALUES ('28', null, '中华人民共和国民法总则(主席令第六十六号)', 'zhonghua renming gongheguo ', '核心提示：《中华人民共和国民法总则》已由中华人民共和国第十二届全国人民代表大会第五次会议于2017年3月15日通过，现予公布，自2017年10月1日起施行。', '12121afafaf', '20170327\\17c751d9fc61a76c96c3b48a77b91580.doc', '20170410\\4264f4d3baf203574f54bd69ad76130a.txt', '食品伙伴网', 'http://www.foodmate.net/law/jiben/190453.html', '1490580356', '5');
INSERT INTO `fx_info` VALUES ('29', null, '关于公开征集《宁夏回族自治区清真食品管理条例（征求意见稿）》意见的公告', 'about zhengji ningxia', '核心提示：为广泛听取社会各界的意见和建议，提高立法质量，现将《宁夏回族自治区清真食品管理条例（征求意见稿）》全文公布，征求意见。', 'hexin tishi ', '20170327\\df5ca84054431a646c20ef11d040afa5.xls', '20170410\\caf7224d212af9d5575c30f6ce24a4c9.xls', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190568.html', '1490580649', '5');
INSERT INTO `fx_info` VALUES ('30', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '2');
INSERT INTO `fx_info` VALUES ('31', '5', '关于对《内蒙古自治区主要农作物审定标准》 征求意见的函', '', '核心提示：根据《中华人民共和国种子法》《主要农作物品种审定办法》规定，按照农业供给侧结构性改革和种业发展新形势对品种审定工作提出的新要求，我们组织有关人员在国家农作物品种审定标准（征求意见稿）的基础上，结合当前我区种业发展实际，形成了《内蒙古自治区主要农作物品种审定标准》（征求意见稿）。', '', '20170327\\fec0621ed29260df6ea20d9ba2fba5e5.doc', '', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190517.html', '1490580918', '2');
INSERT INTO `fx_info` VALUES ('32', '5', '关于食品添加剂新品种氨基乙酸（羟基乙腈法）等的公告', '', '核心提示：根据《食品安全法》规定，审评机构组织专家对食品添加剂新品种氨基乙酸（羟基乙腈法）、食品用香料新品种乙基芳樟基醚和食品添加剂β-胡萝卜素扩大使用范围的安全性评估材料审查并通过。', '', '20170327\\ce67444c1ffc3c61f879f9df1e2830b7.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190536.html', '1490581037', '1');
INSERT INTO `fx_info` VALUES ('33', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '0');
INSERT INTO `fx_info` VALUES ('34', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '1213333', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', 'fafafafaf11', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '20170410\\7a912e71a4780592f25d5492f54c14ac.xls', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '3');
INSERT INTO `fx_info` VALUES ('35', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '4');
INSERT INTO `fx_info` VALUES ('36', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('37', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知222', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170406\\3697515eedb0864cc495dff71c72ca42.docx', '', '121212', '222222', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('38', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('39', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('40', null, '国家卫计委扩大β-胡萝卜素使用范围', '', '核心提示：21日，国家卫计委发布公告称，扩大食品添加剂β-胡萝卜素使用范围。β-胡萝卜素可作为着色剂用于调理肉制品（生肉添加调理料）（食品类别 08.02.01），调节产品色泽，最大使用量为0.02g/kg.', '', '20170322\\aefc81919967fedf8f1bfa9680c0a779.docx', '', '食品伙伴网', 'http://news.foodmate.net/2017/03/422584.html', '1490170515', '2');
INSERT INTO `fx_info` VALUES ('41', null, '中华人民共和国民法总则(主席令第六十六号)', 'zhonghua renming gongheguo ', '核心提示：《中华人民共和国民法总则》已由中华人民共和国第十二届全国人民代表大会第五次会议于2017年3月15日通过，现予公布，自2017年10月1日起施行。', '12121afafaf', '20170327\\17c751d9fc61a76c96c3b48a77b91580.doc', '20170410\\4264f4d3baf203574f54bd69ad76130a.txt', '食品伙伴网', 'http://www.foodmate.net/law/jiben/190453.html', '1490580356', '5');
INSERT INTO `fx_info` VALUES ('42', null, '关于公开征集《宁夏回族自治区清真食品管理条例（征求意见稿）》意见的公告', 'about zhengji ningxia', '核心提示：为广泛听取社会各界的意见和建议，提高立法质量，现将《宁夏回族自治区清真食品管理条例（征求意见稿）》全文公布，征求意见。', 'hexin tishi ', '20170327\\df5ca84054431a646c20ef11d040afa5.xls', '20170410\\caf7224d212af9d5575c30f6ce24a4c9.xls', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190568.html', '1490580649', '5');
INSERT INTO `fx_info` VALUES ('43', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '2');
INSERT INTO `fx_info` VALUES ('44', '5', '关于对《内蒙古自治区主要农作物审定标准》 征求意见的函', '', '核心提示：根据《中华人民共和国种子法》《主要农作物品种审定办法》规定，按照农业供给侧结构性改革和种业发展新形势对品种审定工作提出的新要求，我们组织有关人员在国家农作物品种审定标准（征求意见稿）的基础上，结合当前我区种业发展实际，形成了《内蒙古自治区主要农作物品种审定标准》（征求意见稿）。', '', '20170327\\fec0621ed29260df6ea20d9ba2fba5e5.doc', '', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190517.html', '1490580918', '2');
INSERT INTO `fx_info` VALUES ('45', '5', '关于食品添加剂新品种氨基乙酸（羟基乙腈法）等的公告', '', '核心提示：根据《食品安全法》规定，审评机构组织专家对食品添加剂新品种氨基乙酸（羟基乙腈法）、食品用香料新品种乙基芳樟基醚和食品添加剂β-胡萝卜素扩大使用范围的安全性评估材料审查并通过。', '', '20170327\\ce67444c1ffc3c61f879f9df1e2830b7.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190536.html', '1490581037', '1');
INSERT INTO `fx_info` VALUES ('46', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '0');
INSERT INTO `fx_info` VALUES ('47', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '1213333', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', 'fafafafaf11', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '20170410\\7a912e71a4780592f25d5492f54c14ac.xls', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '3');
INSERT INTO `fx_info` VALUES ('48', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '4');
INSERT INTO `fx_info` VALUES ('49', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '5');
INSERT INTO `fx_info` VALUES ('50', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知222', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170406\\3697515eedb0864cc495dff71c72ca42.docx', '', '121212', '222222', '1490580870', '5');
INSERT INTO `fx_info` VALUES ('51', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '5');
INSERT INTO `fx_info` VALUES ('52', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '5');
INSERT INTO `fx_info` VALUES ('53', null, '国家卫计委扩大β-胡萝卜素使用范围', '', '核心提示：21日，国家卫计委发布公告称，扩大食品添加剂β-胡萝卜素使用范围。β-胡萝卜素可作为着色剂用于调理肉制品（生肉添加调理料）（食品类别 08.02.01），调节产品色泽，最大使用量为0.02g/kg.', '', '20170322\\aefc81919967fedf8f1bfa9680c0a779.docx', '', '食品伙伴网', 'http://news.foodmate.net/2017/03/422584.html', '1490170515', '5');
INSERT INTO `fx_info` VALUES ('54', null, '中华人民共和国民法总则(主席令第六十六号)', 'zhonghua renming gongheguo ', '核心提示：《中华人民共和国民法总则》已由中华人民共和国第十二届全国人民代表大会第五次会议于2017年3月15日通过，现予公布，自2017年10月1日起施行。', '12121afafaf', '20170327\\17c751d9fc61a76c96c3b48a77b91580.doc', '20170410\\4264f4d3baf203574f54bd69ad76130a.txt', '食品伙伴网', 'http://www.foodmate.net/law/jiben/190453.html', '1490580356', '5');
INSERT INTO `fx_info` VALUES ('55', null, '关于公开征集《宁夏回族自治区清真食品管理条例（征求意见稿）》意见的公告', 'about zhengji ningxia', '核心提示：为广泛听取社会各界的意见和建议，提高立法质量，现将《宁夏回族自治区清真食品管理条例（征求意见稿）》全文公布，征求意见。', 'hexin tishi ', '20170327\\df5ca84054431a646c20ef11d040afa5.xls', '20170410\\caf7224d212af9d5575c30f6ce24a4c9.xls', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190568.html', '1490580649', '5');
INSERT INTO `fx_info` VALUES ('56', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '2');
INSERT INTO `fx_info` VALUES ('57', '5', '关于对《内蒙古自治区主要农作物审定标准》 征求意见的函', '', '核心提示：根据《中华人民共和国种子法》《主要农作物品种审定办法》规定，按照农业供给侧结构性改革和种业发展新形势对品种审定工作提出的新要求，我们组织有关人员在国家农作物品种审定标准（征求意见稿）的基础上，结合当前我区种业发展实际，形成了《内蒙古自治区主要农作物品种审定标准》（征求意见稿）。', '', '20170327\\fec0621ed29260df6ea20d9ba2fba5e5.doc', '', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190517.html', '1490580918', '2');
INSERT INTO `fx_info` VALUES ('58', '5', '关于食品添加剂新品种氨基乙酸（羟基乙腈法）等的公告', '', '核心提示：根据《食品安全法》规定，审评机构组织专家对食品添加剂新品种氨基乙酸（羟基乙腈法）、食品用香料新品种乙基芳樟基醚和食品添加剂β-胡萝卜素扩大使用范围的安全性评估材料审查并通过。', '', '20170327\\ce67444c1ffc3c61f879f9df1e2830b7.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190536.html', '1490581037', '1');
INSERT INTO `fx_info` VALUES ('59', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '0');
INSERT INTO `fx_info` VALUES ('60', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '1213333', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', 'fafafafaf11', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '20170410\\7a912e71a4780592f25d5492f54c14ac.xls', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '3');
INSERT INTO `fx_info` VALUES ('61', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '4');
INSERT INTO `fx_info` VALUES ('62', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('63', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知222', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170406\\3697515eedb0864cc495dff71c72ca42.docx', '', '121212', '222222', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('64', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('65', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('66', null, '国家卫计委扩大β-胡萝卜素使用范围1212', '第二次变价', '核心提示：21日，国家卫计委发布公告称，扩大食品添加剂β-胡萝卜素使用范围。β-胡萝卜素可作为着色剂用于调理肉制品（生肉添加调理料）（食品类别 08.02.01），调节产品色泽，最大使用量为0.02g/kg.', '22223232323继续编辑一下', '20170322\\aefc81919967fedf8f1bfa9680c0a779.docx', '', '食品伙伴网2222', 'http://news.foodmate.net/2017/03/422584.html', '1490170515', '6');
INSERT INTO `fx_info` VALUES ('67', null, '中华人民共和国民法总则(主席令第六十六号)', 'zhonghua renming gongheguo ', '核心提示：《中华人民共和国民法总则》已由中华人民共和国第十二届全国人民代表大会第五次会议于2017年3月15日通过，现予公布，自2017年10月1日起施行。', '12121afafaf', '20170327\\17c751d9fc61a76c96c3b48a77b91580.doc', '20170410\\4264f4d3baf203574f54bd69ad76130a.txt', '食品伙伴网', 'http://www.foodmate.net/law/jiben/190453.html', '1490580356', '5');
INSERT INTO `fx_info` VALUES ('68', null, '关于公开征集《宁夏回族自治区清真食品管理条例（征求意见稿）》意见的公告', 'about zhengji ningxia', '核心提示：为广泛听取社会各界的意见和建议，提高立法质量，现将《宁夏回族自治区清真食品管理条例（征求意见稿）》全文公布，征求意见。', 'hexin tishi ', '20170327\\df5ca84054431a646c20ef11d040afa5.xls', '20170410\\caf7224d212af9d5575c30f6ce24a4c9.xls', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190568.html', '1490580649', '5');
INSERT INTO `fx_info` VALUES ('69', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '2');
INSERT INTO `fx_info` VALUES ('70', '5', '关于对《内蒙古自治区主要农作物审定标准》 征求意见的函', '', '核心提示：根据《中华人民共和国种子法》《主要农作物品种审定办法》规定，按照农业供给侧结构性改革和种业发展新形势对品种审定工作提出的新要求，我们组织有关人员在国家农作物品种审定标准（征求意见稿）的基础上，结合当前我区种业发展实际，形成了《内蒙古自治区主要农作物品种审定标准》（征求意见稿）。', '', '20170327\\fec0621ed29260df6ea20d9ba2fba5e5.doc', '', '食品伙伴网', 'http://www.foodmate.net/law/dongtai/190517.html', '1490580918', '2');
INSERT INTO `fx_info` VALUES ('71', '5', '关于食品添加剂新品种氨基乙酸（羟基乙腈法）等的公告', '', '核心提示：根据《食品安全法》规定，审评机构组织专家对食品添加剂新品种氨基乙酸（羟基乙腈法）、食品用香料新品种乙基芳樟基醚和食品添加剂β-胡萝卜素扩大使用范围的安全性评估材料审查并通过。', '', '20170327\\ce67444c1ffc3c61f879f9df1e2830b7.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190536.html', '1490581037', '1');
INSERT INTO `fx_info` VALUES ('72', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '0');
INSERT INTO `fx_info` VALUES ('73', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '1213333', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', 'fafafafaf11', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '20170410\\7a912e71a4780592f25d5492f54c14ac.xls', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '3');
INSERT INTO `fx_info` VALUES ('74', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '3');
INSERT INTO `fx_info` VALUES ('75', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('76', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知222', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170406\\3697515eedb0864cc495dff71c72ca42.docx', '', '121212', '222222', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('77', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');
INSERT INTO `fx_info` VALUES ('78', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1490580870', '1');

-- ----------------------------
-- Table structure for fx_member
-- ----------------------------
DROP TABLE IF EXISTS `fx_member`;
CREATE TABLE `fx_member` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `roleid` smallint(5) unsigned DEFAULT NULL COMMENT '角色id',
  `username` varchar(40) NOT NULL COMMENT '用户名',
  `passsalt` varchar(15) NOT NULL COMMENT '随机字符串，用来加密密码',
  `password` varchar(80) NOT NULL COMMENT '密码',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `logintimes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `truename` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `phone` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '3' COMMENT '用户状态 1已禁用 2待审核3正常',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_member
-- ----------------------------
INSERT INTO `fx_member` VALUES ('1', '1', 'hcd2008', 'CyScPc6w', 'fab61edf29dca58f9cc4', '1490080682', '0', '0', '黄传东', 'hcdong2008@126.com', '13022731091', '', '3');
INSERT INTO `fx_member` VALUES ('2', '2', 'lipeng', '0GAI2PbH', '466172482a34f2be5f7a', '1490081313', '0', '0', '李朋', '', '', '', '3');
INSERT INTO `fx_member` VALUES ('3', '1', 'gsb', 'PMIh9V7R', 'fec6639e96af635a94fc', '1490081340', '0', '0', '高松波', '', '', '', '3');
INSERT INTO `fx_member` VALUES ('4', '2', 'yangqianyu', 'Wf5r8Di1', 'd188ff386e62d8948d76', '1490081373', '0', '0', '杨倩玉', '', '15815064331', '', '3');
INSERT INTO `fx_member` VALUES ('5', '4', 'hcd', 'ENG7r8zz', '64d3e39cba204c30504e3a8a643f491b', '1490252439', '0', '0', '黄传东', '', '13022731091', '', '3');
INSERT INTO `fx_member` VALUES ('6', '3', 'admin', 'u1yPvhJU', 'cae7d0e74cbef20a930dba1575f055ee', '1491805726', '0', '0', '管理员', '', '', '', '3');

-- ----------------------------
-- Table structure for fx_record
-- ----------------------------
DROP TABLE IF EXISTS `fx_record`;
CREATE TABLE `fx_record` (
  `itemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned DEFAULT NULL COMMENT '上传者id',
  `title_cn` varchar(200) NOT NULL COMMENT '中文标题',
  `title_en` varchar(200) DEFAULT NULL COMMENT '英文标题',
  `zhaiyao_cn` text COMMENT '中文摘要',
  `zhaiyao_en` text COMMENT '英文摘要',
  `fujian` varchar(100) DEFAULT NULL COMMENT '附件',
  `fy_fujian` varchar(100) DEFAULT NULL COMMENT '翻译后的附件',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源名称',
  `links` varchar(200) DEFAULT NULL COMMENT '来源链接',
  `addtime` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned zerofill DEFAULT '1' COMMENT '状态0已删除1已上传2已加入翻译列表3翻译完成4提交审核 5审核通过 6审核未通过',
  `parentid` int(10) unsigned DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_record
-- ----------------------------
INSERT INTO `fx_record` VALUES ('79', '5', '农业部办公厅关于深入实施主食加工业提升行动的通知', '', '核心提示：为深入贯彻2017年中央1号文件和《国务院办公厅关于进一步促进农产品加工业发展的意见》（国办发〔2016〕93号）精神，深入实施主食加工业提升行动，现就有关工作通知如下。', '', '20170327\\ede991f5497ca8754c3cf09b40000206.xls', '', '食品伙伴网', 'http://www.foodmate.net/law/shipin/190563.html', '1491896552', '6', '74');
INSERT INTO `fx_record` VALUES ('80', null, '国家卫计委扩大β-胡萝卜素使用范围', '1111', '核心提示：21日，国家卫计委发布公告称，扩大食品添加剂β-胡萝卜素使用范围。β-胡萝卜素可作为着色剂用于调理肉制品（生肉添加调理料）（食品类别 08.02.01），调节产品色泽，最大使用量为0.02g/kg.', '2222', '20170322\\aefc81919967fedf8f1bfa9680c0a779.docx', '', '食品伙伴网', 'http://news.foodmate.net/2017/03/422584.html', '1491897127', '6', '66');
INSERT INTO `fx_record` VALUES ('81', null, '国家卫计委扩大β-胡萝卜素使用范围1212', '1111232323', '核心提示：21日，国家卫计委发布公告称，扩大食品添加剂β-胡萝卜素使用范围。β-胡萝卜素可作为着色剂用于调理肉制品（生肉添加调理料）（食品类别 08.02.01），调节产品色泽，最大使用量为0.02g/kg.', '22223232323', '20170322\\aefc81919967fedf8f1bfa9680c0a779.docx', '', '食品伙伴网111', 'http://news.foodmate.net/2017/03/422584.html', '1491897384', '6', '66');

-- ----------------------------
-- Table structure for fx_role
-- ----------------------------
DROP TABLE IF EXISTS `fx_role`;
CREATE TABLE `fx_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(20) NOT NULL,
  `quanxian` varchar(10) DEFAULT NULL COMMENT '权限',
  `addtime` int(10) unsigned DEFAULT NULL,
  `sort` int(5) unsigned DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 0为禁用1为正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) COMMENT '角色名唯一'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fx_role
-- ----------------------------
INSERT INTO `fx_role` VALUES ('1', '食品伙伴网', '1,3', '1489722466', '100', '1');
INSERT INTO `fx_role` VALUES ('2', '风险评估中心', '1,2,4', '1489727333', '100', '1');
INSERT INTO `fx_role` VALUES ('3', '管理员', '5', '1490073608', '100', '1');
INSERT INTO `fx_role` VALUES ('4', '超级管理员', '1,2,3,4,5', '1491869500', '100', '1');
