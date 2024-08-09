/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t304`;
CREATE DATABASE IF NOT EXISTS `t304` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t304`;

DROP TABLE IF EXISTS `bumenjihua`;
CREATE TABLE IF NOT EXISTS `bumenjihua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `bumenjihua_uuid_number` varchar(200) DEFAULT NULL COMMENT '部门计划编号 Search111  ',
  `bumenjihua_name` varchar(200) DEFAULT NULL COMMENT '部门计划标题 Search111  ',
  `bumenjihua_types` int NOT NULL COMMENT '部门计划类型 Search111 ',
  `bumenjihua_zhixing_time` date DEFAULT NULL COMMENT '执行时间',
  `bumenjihua_content` text COMMENT '部门计划详情',
  `insert_time` date DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='部门计划';

DELETE FROM `bumenjihua`;
INSERT INTO `bumenjihua` (`id`, `bumenjihua_uuid_number`, `bumenjihua_name`, `bumenjihua_types`, `bumenjihua_zhixing_time`, `bumenjihua_content`, `insert_time`, `create_time`) VALUES
	(1, '164975343017314', '部门计划标题1', 1, '2022-04-12', '部门计划详情1', '2022-04-12', '2022-04-12 08:50:30'),
	(2, '16497534301730', '部门计划标题2', 2, '2022-04-12', '部门计划详情2', '2022-04-12', '2022-04-12 08:50:30'),
	(3, '164975343017314', '部门计划标题3', 2, '2022-04-12', '部门计划详情3', '2022-04-12', '2022-04-12 08:50:30'),
	(4, '164975343017316', '部门计划标题4', 2, '2022-04-12', '部门计划详情4', '2022-04-12', '2022-04-12 08:50:30'),
	(5, '164975343017320', '部门计划标题5', 1, '2022-04-12', '部门计划详情5', '2022-04-12', '2022-04-12 08:50:30');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `daka`;
CREATE TABLE IF NOT EXISTS `daka` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `daka_types` int NOT NULL COMMENT '打卡类型 Search111 ',
  `daka_zhuangtai_types` int NOT NULL COMMENT '打卡状态 Search111 ',
  `daka_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `insert_time` date DEFAULT NULL COMMENT '打卡日期 Search111 ',
  `daka_content` text COMMENT '打卡备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='上下班打卡';

DELETE FROM `daka`;
INSERT INTO `daka` (`id`, `yuangong_id`, `daka_types`, `daka_zhuangtai_types`, `daka_time`, `insert_time`, `daka_content`, `create_time`) VALUES
	(1, 3, 1, 1, '2022-04-12 08:50:30', '2022-04-12', '打卡备注1', '2022-04-12 08:50:30'),
	(4, 1, 1, 1, '2022-04-12 08:50:30', '2022-04-12', '打卡备注4', '2022-04-12 08:50:30'),
	(7, 1, 2, 2, '2022-04-12 09:32:01', '2022-04-12', '<p>是刚刚更换是</p>', '2022-04-12 09:32:01'),
	(9, 2, 1, 2, '2022-04-12 09:37:13', '2022-04-12', '<p>打卡</p>', '2022-04-12 09:37:13'),
	(10, 2, 2, 2, '2022-04-12 09:37:25', '2022-04-12', '<p>都很好</p>', '2022-04-12 09:37:25');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-12 08:50:19'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-12 08:50:19'),
	(3, 'bumen_types', '部门', 1, '部门1', NULL, NULL, '2022-04-12 08:50:19'),
	(4, 'bumen_types', '部门', 2, '部门2', NULL, NULL, '2022-04-12 08:50:19'),
	(5, 'bumen_types', '部门', 3, '部门3', NULL, NULL, '2022-04-12 08:50:19'),
	(6, 'zhiwei_types', '职位', 1, '职位1', NULL, NULL, '2022-04-12 08:50:19'),
	(7, 'zhiwei_types', '职位', 2, '职位2', NULL, NULL, '2022-04-12 08:50:19'),
	(8, 'zhiwei_types', '职位', 3, '职位3', NULL, NULL, '2022-04-12 08:50:19'),
	(9, 'huiyi_types', '会议类型', 1, '会议类型1', NULL, NULL, '2022-04-12 08:50:19'),
	(10, 'huiyi_types', '会议类型', 2, '会议类型2', NULL, NULL, '2022-04-12 08:50:19'),
	(11, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-12 08:50:19'),
	(12, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-12 08:50:19'),
	(13, 'waichudengji_types', '外出类型', 1, '采购', NULL, NULL, '2022-04-12 08:50:19'),
	(14, 'waichudengji_types', '外出类型', 2, '发货', NULL, NULL, '2022-04-12 08:50:19'),
	(15, 'waichudengji_types', '外出类型', 3, '接人', NULL, NULL, '2022-04-12 08:50:19'),
	(16, 'qingjia_types', '请假类型', 1, '病假', NULL, NULL, '2022-04-12 08:50:19'),
	(17, 'qingjia_types', '请假类型', 2, '有事', NULL, NULL, '2022-04-12 08:50:19'),
	(18, 'qingjia_types', '请假类型', 3, '其他', NULL, NULL, '2022-04-12 08:50:19'),
	(19, 'qingjia_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2022-04-12 08:50:19'),
	(20, 'qingjia_yesno_types', '审核状态', 2, '同意', NULL, NULL, '2022-04-12 08:50:19'),
	(21, 'qingjia_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-04-12 08:50:19'),
	(22, 'daka_types', '打卡类型', 1, '上班卡', NULL, NULL, '2022-04-12 08:50:19'),
	(23, 'daka_types', '打卡类型', 2, '下班卡', NULL, NULL, '2022-04-12 08:50:19'),
	(24, 'daka_zhuangtai_types', '打卡状态', 1, '正常打卡', NULL, NULL, '2022-04-12 08:50:19'),
	(25, 'daka_zhuangtai_types', '打卡状态', 2, '异常打卡', NULL, NULL, '2022-04-12 08:50:19'),
	(26, 'qiyejihua_types', '企业计划类型', 1, '企业计划类型1', NULL, NULL, '2022-04-12 08:50:19'),
	(27, 'qiyejihua_types', '企业计划类型', 2, '企业计划类型2', NULL, NULL, '2022-04-12 08:50:19'),
	(28, 'bumenjihua_types', '部门计划类型', 1, '部门计划类型1', NULL, NULL, '2022-04-12 08:50:19'),
	(29, 'bumenjihua_types', '部门计划类型', 2, '部门计划类型2', NULL, NULL, '2022-04-12 08:50:19'),
	(30, 'gerenjihua_types', '个人计划类型', 1, '个人计划类型1', NULL, NULL, '2022-04-12 08:50:19'),
	(31, 'gerenjihua_types', '个人计划类型', 2, '个人计划类型2', NULL, NULL, '2022-04-12 08:50:19'),
	(32, 'zhiwei_types', '职位', 4, '职位4', NULL, '', '2022-04-12 09:33:09');

DROP TABLE IF EXISTS `gerenjihua`;
CREATE TABLE IF NOT EXISTS `gerenjihua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `gerenjihua_uuid_number` varchar(200) DEFAULT NULL COMMENT '个人计划编号 Search111  ',
  `gerenjihua_name` varchar(200) DEFAULT NULL COMMENT '个人计划标题 Search111  ',
  `gerenjihua_types` int NOT NULL COMMENT '个人计划类型 Search111 ',
  `gerenjihua_zhixing_time` date DEFAULT NULL COMMENT '执行时间',
  `gerenjihua_content` text COMMENT '个人计划详情',
  `insert_time` date DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='个人计划';

DELETE FROM `gerenjihua`;
INSERT INTO `gerenjihua` (`id`, `yuangong_id`, `gerenjihua_uuid_number`, `gerenjihua_name`, `gerenjihua_types`, `gerenjihua_zhixing_time`, `gerenjihua_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '16497534301799', '个人计划标题1', 1, '2022-04-12', '个人计划详情1', '2022-04-12', '2022-04-12 08:50:30'),
	(2, 2, '16497534301797', '个人计划标题2', 1, '2022-04-12', '个人计划详情2', '2022-04-12', '2022-04-12 08:50:30'),
	(3, 1, '164975343017914', '个人计划标题3', 1, '2022-04-12', '个人计划详情3', '2022-04-12', '2022-04-12 08:50:30'),
	(4, 1, '16497534301791', '个人计划标题4', 1, '2022-04-12', '个人计划详情4', '2022-04-12', '2022-04-12 08:50:30'),
	(5, 3, '164975343017917', '个人计划标题5', 2, '2022-04-12', '个人计划详情5', '2022-04-12', '2022-04-12 08:50:30'),
	(6, 2, '1649756083621', '个人版加护1111', 1, '2022-04-13', '<p>市第九届</p>', '2022-04-12', '2022-04-12 09:35:01');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/qiyexinxiguanli/upload/gonggao1.jpg', 2, '2022-04-12 08:50:30', '公告详情1', '2022-04-12 08:50:30'),
	(2, '公告名称2', 'http://localhost:8080/qiyexinxiguanli/upload/gonggao2.jpg', 2, '2022-04-12 08:50:30', '公告详情2', '2022-04-12 08:50:30'),
	(3, '公告名称3', 'http://localhost:8080/qiyexinxiguanli/upload/gonggao3.jpg', 2, '2022-04-12 08:50:30', '公告详情3', '2022-04-12 08:50:30'),
	(4, '公告名称4', 'http://localhost:8080/qiyexinxiguanli/upload/gonggao4.jpg', 2, '2022-04-12 08:50:30', '公告详情4', '2022-04-12 08:50:30'),
	(5, '公告名称5', 'http://localhost:8080/qiyexinxiguanli/upload/gonggao5.jpg', 2, '2022-04-12 08:50:30', '公告详情5', '2022-04-12 08:50:30');

DROP TABLE IF EXISTS `huiyi`;
CREATE TABLE IF NOT EXISTS `huiyi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyi_uuid_number` varchar(200) DEFAULT NULL COMMENT '会议编号 Search111 ',
  `huiyi_name` varchar(200) DEFAULT NULL COMMENT '会议名称 Search111 ',
  `huiyi_types` int DEFAULT NULL COMMENT '会议类型 Search111',
  `huiyi_address` varchar(200) DEFAULT NULL COMMENT '会议地点 Search111 ',
  `kaihui_time` timestamp NULL DEFAULT NULL COMMENT '开会时间',
  `zuoye_content` text COMMENT '会议详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='会议';

DELETE FROM `huiyi`;
INSERT INTO `huiyi` (`id`, `huiyi_uuid_number`, `huiyi_name`, `huiyi_types`, `huiyi_address`, `kaihui_time`, `zuoye_content`, `insert_time`, `create_time`) VALUES
	(1, '164975343018514', '会议名称1', 1, '会议地点1', '2022-04-12 08:50:30', '会议详情1', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(2, '16497534301855', '会议名称2', 1, '会议地点2', '2022-04-12 08:50:30', '会议详情2', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(3, '164975343018519', '会议名称3', 2, '会议地点3', '2022-04-12 08:50:30', '会议详情3', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(4, '16497534301855', '会议名称4', 1, '会议地点4', '2022-04-12 08:50:30', '会议详情4', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(5, '164975343018512', '会议名称5', 2, '会议地点5', '2022-04-12 08:50:30', '会议详情5', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(6, '1649755993565', '会议111', 2, '地点111', '2022-04-13 09:33:24', '<p>收到货回家看看</p>', '2022-04-12 09:33:31', '2022-04-12 09:33:31');

DROP TABLE IF EXISTS `qingjia`;
CREATE TABLE IF NOT EXISTS `qingjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `qingjia_uuid_number` varchar(200) DEFAULT NULL COMMENT '请假编号 Search111  ',
  `qingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111  ',
  `qingjia_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '请假开始时间',
  `qingjia_jieshu_time` timestamp NULL DEFAULT NULL COMMENT '请假结束时间 ',
  `qingjia_types` int NOT NULL COMMENT '请假类型 Search111 ',
  `qingjia_content` text COMMENT '请假详情 ',
  `qingjia_yesno_types` int NOT NULL COMMENT '审核状态 Search111 ',
  `qingjia_yesno_text` text COMMENT '审核意见',
  `qingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='请假';

DELETE FROM `qingjia`;
INSERT INTO `qingjia` (`id`, `yuangong_id`, `qingjia_uuid_number`, `qingjia_name`, `qingjia_kaishi_time`, `qingjia_jieshu_time`, `qingjia_types`, `qingjia_content`, `qingjia_yesno_types`, `qingjia_yesno_text`, `qingjia_shenhe_time`, `insert_time`, `create_time`) VALUES
	(1, 3, '16497534301883', '请假标题1', '2022-04-12 08:50:30', '2022-04-12 08:50:30', 3, '请假详情1', 1, NULL, NULL, '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(2, 1, '16497534301885', '请假标题2', '2022-04-12 08:50:30', '2022-04-12 08:50:30', 1, '请假详情2', 1, NULL, NULL, '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(3, 1, '16497534301886', '请假标题3', '2022-04-12 08:50:30', '2022-04-12 08:50:30', 2, '请假详情3', 1, NULL, NULL, '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(4, 2, '164975343018819', '请假标题4', '2022-04-12 08:50:30', '2022-04-12 08:50:30', 3, '请假详情4', 1, NULL, NULL, '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(5, 2, '16497534301887', '请假标题5', '2022-04-12 08:50:30', '2022-04-12 08:50:30', 3, '请假详情5', 2, '同意', '2022-04-12 09:34:13', '2022-04-12 08:50:30', '2022-04-12 08:50:30');

DROP TABLE IF EXISTS `qiyejihua`;
CREATE TABLE IF NOT EXISTS `qiyejihua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiyejihua_uuid_number` varchar(200) DEFAULT NULL COMMENT '企业计划编号 Search111  ',
  `qiyejihua_name` varchar(200) DEFAULT NULL COMMENT '企业计划标题 Search111  ',
  `qiyejihua_types` int NOT NULL COMMENT '企业计划类型 Search111 ',
  `qiyejihua_zhixing_time` date DEFAULT NULL COMMENT '执行时间',
  `qiyejihua_content` text COMMENT '企业计划详情',
  `insert_time` date DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='企业计划';

DELETE FROM `qiyejihua`;
INSERT INTO `qiyejihua` (`id`, `qiyejihua_uuid_number`, `qiyejihua_name`, `qiyejihua_types`, `qiyejihua_zhixing_time`, `qiyejihua_content`, `insert_time`, `create_time`) VALUES
	(1, '164975343019017', '企业计划标题1', 2, '2022-04-12', '企业计划详情1', '2022-04-12', '2022-04-12 08:50:30'),
	(2, '164975343019019', '企业计划标题2', 2, '2022-04-12', '企业计划详情2', '2022-04-12', '2022-04-12 08:50:30'),
	(3, '16497534301909', '企业计划标题3', 2, '2022-04-12', '企业计划详情3', '2022-04-12', '2022-04-12 08:50:30'),
	(4, '16497534301907', '企业计划标题4', 1, '2022-04-12', '企业计划详情4', '2022-04-12', '2022-04-12 08:50:30'),
	(5, '164975343019013', '企业计划标题5', 1, '2022-04-12', '企业计划详情5', '2022-04-12', '2022-04-12 08:50:30');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'fvvqbiquswheyxebtjoqo7htenczvagg', '2022-04-12 08:52:06', '2024-07-30 07:03:17'),
	(2, 1, 'a1', 'yuangong', '员工', 'ypt5all0mstpayahh1bka6q0iz87twhn', '2022-04-12 09:12:16', '2024-07-30 07:04:28'),
	(3, 2, 'a2', 'yuangong', '员工', 'rvu8sde9jvg2esiwiho849qr7awvmrvy', '2022-04-12 09:34:27', '2022-04-12 10:34:28');

DROP TABLE IF EXISTS `tongxunlu`;
CREATE TABLE IF NOT EXISTS `tongxunlu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `tongxunlu_name` varchar(200) DEFAULT NULL COMMENT '朋友姓名 Search111 ',
  `tongxunlu_phone` varchar(200) DEFAULT NULL COMMENT '朋友手机号 Search111 ',
  `tongxunlu_photo` varchar(200) DEFAULT NULL COMMENT '朋友照片',
  `tongxunlu_address` varchar(200) DEFAULT NULL COMMENT '朋友现住址',
  `sex_types` int DEFAULT NULL COMMENT '朋友性别',
  `tongxunlu_gongsi` varchar(200) DEFAULT NULL COMMENT '朋友所在公司',
  `tongxunlu_zhiwei` varchar(200) DEFAULT NULL COMMENT '朋友所属职位',
  `tongxunlu_email` varchar(200) DEFAULT NULL COMMENT '朋友电子邮箱',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='通讯录';

DELETE FROM `tongxunlu`;
INSERT INTO `tongxunlu` (`id`, `yuangong_id`, `tongxunlu_name`, `tongxunlu_phone`, `tongxunlu_photo`, `tongxunlu_address`, `sex_types`, `tongxunlu_gongsi`, `tongxunlu_zhiwei`, `tongxunlu_email`, `insert_time`, `create_time`) VALUES
	(1, 1, '朋友姓名1', '17703786901', 'http://localhost:8080/qiyexinxiguanli/upload/yuangong1.jpg', '朋友现住址1', 2, '朋友所在公司1', '朋友所属职位1', '1@qq.com', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(2, 2, '朋友姓名2', '17703786902', 'http://localhost:8080/qiyexinxiguanli/upload/yuangong2.jpg', '朋友现住址2', 1, '朋友所在公司2', '朋友所属职位2', '2@qq.com', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(3, 3, '朋友姓名3', '17703786903', 'http://localhost:8080/qiyexinxiguanli/upload/yuangong3.jpg', '朋友现住址3', 1, '朋友所在公司3', '朋友所属职位3', '3@qq.com', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(4, 3, '朋友姓名4', '17703786904', 'http://localhost:8080/qiyexinxiguanli/upload/yuangong1.jpg', '朋友现住址4', 1, '朋友所在公司4', '朋友所属职位4', '4@qq.com', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(5, 3, '朋友姓名5', '17703786905', 'http://localhost:8080/qiyexinxiguanli/upload/yuangong2.jpg', '朋友现住址5', 1, '朋友所在公司5', '朋友所属职位5', '5@qq.com', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(6, 2, '张三', '17703786947', 'http://localhost:8080/qiyexinxiguanli/upload/1649756155188.jpg', '多兆1111', 1, '公司111', '职员', '11@qq.com', '2022-04-12 09:35:56', '2022-04-12 09:35:56');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `waichudengji`;
CREATE TABLE IF NOT EXISTS `waichudengji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `waichu_time` timestamp NULL DEFAULT NULL COMMENT '外出时间 ',
  `waichudengji_shiyou` varchar(200) DEFAULT NULL COMMENT '外出事由 Search111  ',
  `waichudengji_types` int NOT NULL COMMENT '外出类型 Search111 ',
  `waichudengji_content` text COMMENT '外出详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '登记时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='外出登记';

DELETE FROM `waichudengji`;
INSERT INTO `waichudengji` (`id`, `yuangong_id`, `waichu_time`, `waichudengji_shiyou`, `waichudengji_types`, `waichudengji_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '2022-04-12 08:50:30', '外出事由1', 2, '外出详情1', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(2, 1, '2022-04-12 08:50:30', '外出事由2', 3, '外出详情2', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(3, 3, '2022-04-12 08:50:30', '外出事由3', 3, '外出详情3', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(4, 3, '2022-04-12 08:50:30', '外出事由4', 1, '外出详情4', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(5, 1, '2022-04-12 08:50:30', '外出事由5', 2, '外出详情5', '2022-04-12 08:50:30', '2022-04-12 08:50:30'),
	(6, 2, '2022-04-11 16:00:00', '事由111', 2, '<p>是个很纠结</p>', '2022-04-12 09:36:13', '2022-04-12 09:36:13');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工工号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `bumen_types` int DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_uuid_number`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `bumen_types`, `zhiwei_types`, `yuangong_email`, `create_time`) VALUES
	(1, '员工1', '123456', '16497534302042', '员工姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/qiyexinxiguanli/upload/yuangong1.jpg', 1, 3, 2, '1@qq.com', '2022-04-12 08:50:30'),
	(2, '员工2', '123456', '164975343020412', '员工姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/qiyexinxiguanli/upload/yuangong2.jpg', 2, 1, 3, '2@qq.com', '2022-04-12 08:50:30'),
	(3, '员工3', '123456', '16497534302040', '员工姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/qiyexinxiguanli/upload/yuangong3.jpg', 1, 1, 1, '3@qq.com', '2022-04-12 08:50:30');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
