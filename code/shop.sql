# Host: localhost  (Version: 5.7.26)
# Date: 2020-03-01 16:02:11
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "tb_article"
#

DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章管理ID',
  `cid` varchar(255) DEFAULT '1' COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `author` varchar(255) DEFAULT NULL COMMENT '文章作者',
  `image_input` varchar(255) NOT NULL COMMENT '文章图片',
  `synopsis` varchar(255) DEFAULT NULL COMMENT '文章简介',
  `share_title` varchar(255) DEFAULT NULL COMMENT '文章分享标题',
  `share_synopsis` varchar(255) DEFAULT NULL COMMENT '文章分享简介',
  `visit` varchar(255) DEFAULT NULL COMMENT '浏览次数',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `url` varchar(255) DEFAULT NULL COMMENT '原文链接',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `mer_id` int(10) unsigned DEFAULT '0' COMMENT '商户id',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT '产品关联id',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门(小程序)',
  `is_banner` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否轮播图(小程序)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章管理表';

#
# Data for table "tb_article"
#


#
# Structure for table "tb_article_category"
#

DROP TABLE IF EXISTS `tb_article_category`;
CREATE TABLE `tb_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章分类id',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `title` varchar(255) NOT NULL COMMENT '文章分类标题',
  `intr` varchar(255) DEFAULT NULL COMMENT '文章分类简介',
  `image` varchar(255) NOT NULL COMMENT '文章分类图片',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1删除0未删除',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章分类表';

#
# Data for table "tb_article_category"
#


#
# Structure for table "tb_article_content"
#

DROP TABLE IF EXISTS `tb_article_content`;
CREATE TABLE `tb_article_content` (
  `nid` int(10) unsigned NOT NULL COMMENT '文章id',
  `content` text NOT NULL COMMENT '文章内容',
  UNIQUE KEY `nid` (`nid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章内容表';

#
# Data for table "tb_article_content"
#


#
# Structure for table "tb_cache"
#

DROP TABLE IF EXISTS `tb_cache`;
CREATE TABLE `tb_cache` (
  `key` varchar(32) NOT NULL,
  `result` text COMMENT '缓存数据',
  `expire_time` int(10) NOT NULL DEFAULT '0' COMMENT '失效时间0=永久',
  `add_time` int(10) DEFAULT NULL COMMENT '缓存时间',
  PRIMARY KEY (`key`) USING BTREE,
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信缓存表';

#
# Data for table "tb_cache"
#


#
# Structure for table "tb_express"
#

DROP TABLE IF EXISTS `tb_express`;
CREATE TABLE `tb_express` (
  `id` mediumint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '快递公司id',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '快递公司简称',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '快递公司全称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `code` (`code`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 COMMENT='快递公司表';

#
# Data for table "tb_express"
#

INSERT INTO `tb_express` VALUES (1,'LIMINWL','利民物流',1,0),(2,'XINTIAN','鑫天顺物流',1,0),(3,'henglu','恒路物流',1,0),(4,'klwl','康力物流',1,0),(5,'meiguo','美国快递',1,0),(6,'a2u','A2U速递',1,0),(7,'benteng','奔腾物流',1,0),(8,'ahdf','德方物流',1,0),(9,'timedg','万家通',1,0),(10,'ztong','智通物流',1,0),(11,'xindan','新蛋物流',1,0),(12,'bgpyghx','挂号信',1,0),(13,'XFHONG','鑫飞鸿物流快递',1,0),(14,'ALP','阿里物流',1,0),(15,'BFWL','滨发物流',1,0),(16,'SJWL','宋军物流',1,0),(17,'SHUNFAWL','顺发物流',1,0),(18,'TIANHEWL','天河物流',1,0),(19,'YBWL','邮联物流',1,0),(20,'SWHY','盛旺货运',1,0),(21,'TSWL','汤氏物流',1,0),(22,'YUANYUANWL','圆圆物流',1,0),(23,'BALIANGWL','八梁物流',1,0),(24,'ZGWL','振刚物流',1,0),(25,'JIAYU','佳宇物流',1,0),(26,'SHHX','昊昕物流',1,0),(27,'ande','安得物流',1,0),(28,'ppbyb','贝邮宝',1,0),(29,'dida','递达快递',1,0),(30,'jppost','日本邮政',1,0),(31,'intmail','中国邮政',96,0),(32,'HENGCHENGWL','恒诚物流',1,0),(33,'HENGFENGWL','恒丰物流',1,0),(34,'gdems','广东ems快递',1,0),(35,'xlyt','祥龙运通',1,0),(36,'gjbg','国际包裹',1,0),(37,'uex','UEX',1,0),(38,'singpost','新加坡邮政',1,0),(39,'guangdongyouzhengwuliu','广东邮政',1,0),(40,'bht','BHT',1,0),(41,'cces','CCES快递',1,0),(42,'cloudexpress','CE易欧通国际速递',1,0),(43,'dasu','达速物流',1,0),(44,'pfcexpress','皇家物流',1,0),(45,'hjs','猴急送',1,0),(46,'huilian','辉联物流',1,0),(47,'huanqiu','环球速运',1,0),(48,'huada','华达快运',1,0),(49,'htwd','华通务达物流',1,0),(50,'hipito','海派通',1,0),(51,'hqtd','环球通达',1,0),(52,'airgtc','航空快递',1,0),(53,'haoyoukuai','好又快物流',1,0),(54,'hanrun','韩润物流',1,0),(55,'ccd','河南次晨达',1,0),(56,'hfwuxi','和丰同城',1,0),(57,'Sky','荷兰',1,0),(58,'hongxun','鸿讯物流',1,0),(59,'hongjie','宏捷国际物流',1,0),(60,'httx56','汇通天下物流',1,0),(61,'lqht','恒通快递',1,0),(62,'jinguangsudikuaijian','京广速递快件',1,0),(63,'junfengguoji','骏丰国际速递',1,0),(64,'jiajiatong56','佳家通',1,0),(65,'jrypex','吉日优派',1,0),(66,'jinchengwuliu','锦程国际物流',1,0),(67,'jgwl','景光物流',1,0),(68,'pzhjst','急顺通',1,0),(69,'ruexp','捷网俄全通',1,0),(70,'jmjss','金马甲',1,0),(71,'lanhu','蓝弧快递',1,0),(72,'ltexp','乐天速递',1,0),(73,'lutong','鲁通快运',1,0),(74,'ledii','乐递供应链',1,0),(75,'lundao','论道国际物流',1,0),(76,'mailikuaidi','麦力快递',1,0),(77,'mchy','木春货运',1,0),(78,'meiquick','美快国际物流',1,0),(79,'valueway','美通快递',1,0),(80,'nuoyaao','偌亚奥国际',1,0),(81,'euasia','欧亚专线',1,0),(82,'pca','澳大利亚PCA快递',1,0),(83,'pingandatengfei','平安达腾飞',1,0),(84,'pjbest','品骏快递',1,0),(85,'qbexpress','秦邦快运',1,0),(86,'quanxintong','全信通快递',1,0),(87,'quansutong','全速通国际快递',1,0),(88,'qinyuan','秦远物流',1,0),(89,'qichen','启辰国际物流',1,0),(90,'quansu','全速快运',1,0),(91,'qzx56','全之鑫物流',1,0),(92,'qskdyxgs','千顺快递',1,0),(93,'runhengfeng','全时速运',1,0),(94,'rytsd','日益通速递',1,0),(95,'ruidaex','瑞达国际速递',1,0),(96,'shiyun','世运快递',1,0),(97,'sfift','十方通物流',1,0),(98,'stkd','顺通快递',1,0),(99,'bgn','布谷鸟快递',1,0),(100,'jiahuier','佳惠尔快递',1,0),(101,'pingyou','小包',1,0),(102,'yumeijie','誉美捷快递',1,0),(103,'meilong','美龙快递',1,0),(104,'guangtong','广通速递',1,0),(105,'STARS','星晨急便',1,0),(106,'NANHANG','中国南方航空股份有限公司',1,0),(107,'lanbiao','蓝镖快递',1,0),(109,'baotongda','宝通达物流',1,0),(110,'dashun','大顺物流',1,0),(111,'dada','大达物流',1,0),(112,'fangfangda','方方达物流',1,0),(113,'hebeijianhua','河北建华物流',1,0),(114,'haolaiyun','好来运快递',1,0),(115,'jinyue','晋越快递',1,0),(116,'kuaitao','快淘快递',1,0),(117,'peixing','陪行物流',1,0),(118,'hkpost','香港邮政',1,0),(119,'ytfh','一统飞鸿快递',1,0),(120,'zhongxinda','中信达快递',1,0),(121,'zhongtian','中天快运',1,0),(122,'zuochuan','佐川急便',1,0),(123,'chengguang','程光快递',1,0),(124,'cszx','城市之星',1,0),(125,'chuanzhi','传志快递',1,0),(126,'feibao','飞豹快递',1,0),(127,'huiqiang','汇强快递',1,0),(128,'lejiedi','乐捷递',1,0),(129,'lijisong','成都立即送快递',1,0),(130,'minbang','民邦速递',1,0),(131,'ocs','OCS国际快递',1,0),(132,'santai','三态速递',1,0),(133,'saiaodi','赛澳递',1,0),(134,'jd','京东快递',1,0),(135,'zengyi','增益快递',1,0),(136,'fanyu','凡宇速递',1,0),(137,'fengda','丰达快递',1,0),(138,'coe','东方快递',1,0),(139,'ees','百福东方快递',1,0),(140,'disifang','递四方速递',1,0),(141,'rufeng','如风达快递',1,0),(142,'changtong','长通物流',1,0),(143,'chengshi100','城市100快递',1,0),(144,'feibang','飞邦物流',1,0),(145,'haosheng','昊盛物流',1,0),(146,'yinsu','音速速运',1,0),(147,'kuanrong','宽容物流',1,0),(148,'tongcheng','通成物流',1,0),(149,'tonghe','通和天下物流',1,0),(150,'zhima','芝麻开门',1,0),(151,'ririshun','日日顺物流',1,0),(152,'anxun','安迅物流',1,0),(153,'baiqian','百千诚国际物流',1,0),(154,'chukouyi','出口易',1,0),(155,'diantong','店通快递',1,0),(156,'dajin','大金物流',1,0),(157,'feite','飞特物流',1,0),(159,'gnxb','国内小包',1,0),(160,'huacheng','华诚物流',1,0),(161,'huahan','华翰物流',1,0),(162,'hengyu','恒宇运通',1,0),(163,'huahang','华航快递',1,0),(164,'jiuyi','久易快递',1,0),(165,'jiete','捷特快递',1,0),(166,'jingshi','京世物流',1,0),(167,'kuayue','跨越快递',1,0),(168,'mengsu','蒙速快递',1,0),(169,'nanbei','南北快递',1,0),(171,'pinganda','平安达快递',1,0),(172,'ruifeng','瑞丰速递',1,0),(173,'rongqing','荣庆物流',1,0),(174,'suijia','穗佳物流',1,0),(175,'simai','思迈快递',1,0),(176,'suteng','速腾快递',1,0),(177,'shengbang','晟邦物流',1,0),(178,'suchengzhaipei','速呈宅配',1,0),(179,'wuhuan','五环速递',1,0),(180,'xingchengzhaipei','星程宅配',1,0),(181,'yinjie','顺捷丰达',1,0),(183,'yanwen','燕文物流',1,0),(184,'zongxing','纵行物流',1,0),(185,'aae','AAE快递',1,0),(186,'dhl','DHL快递',1,0),(187,'feihu','飞狐快递',1,0),(188,'shunfeng','顺丰速运',92,1),(189,'spring','春风物流',1,0),(190,'yidatong','易达通快递',1,0),(191,'PEWKEE','彪记快递',1,0),(192,'PHOENIXEXP','凤凰快递',1,0),(193,'CNGLS','GLS快递',1,0),(194,'BHTEXP','华慧快递',1,0),(195,'B2B','卡行天下',1,0),(196,'PEISI','配思货运',1,0),(197,'SUNDAPOST','上大物流',1,0),(198,'SUYUE','苏粤货运',1,0),(199,'F5XM','伍圆速递',1,0),(200,'GZWENJIE','文捷航空速递',1,0),(201,'yuancheng','远成物流',1,0),(202,'dpex','DPEX快递',1,0),(203,'anjie','安捷快递',1,0),(204,'jldt','嘉里大通',1,0),(205,'yousu','优速快递',1,0),(206,'wanbo','万博快递',1,0),(207,'sure','速尔物流',1,0),(208,'sutong','速通物流',1,0),(209,'JUNCHUANWL','骏川物流',1,0),(210,'guada','冠达快递',1,0),(211,'dsu','D速快递',1,0),(212,'LONGSHENWL','龙胜物流',1,0),(213,'abc','爱彼西快递',1,0),(214,'eyoubao','E邮宝',1,0),(215,'aol','AOL快递',1,0),(216,'jixianda','急先达物流',1,0),(217,'haihong','山东海红快递',1,0),(218,'feiyang','飞洋快递',1,0),(219,'rpx','RPX保时达',1,0),(220,'zhaijisong','宅急送',1,0),(221,'tiantian','天天快递',99,0),(222,'yunwuliu','云物流',1,0),(223,'jiuye','九曳供应链',1,0),(224,'bsky','百世快运',1,0),(225,'higo','黑狗物流',1,0),(226,'arke','方舟速递',1,0),(227,'zwsy','中外速运',1,0),(228,'jxy','吉祥邮',1,0),(229,'aramex','Aramex',1,0),(230,'guotong','国通快递',1,0),(231,'jiayi','佳怡物流',1,0),(232,'longbang','龙邦快运',1,0),(233,'minhang','民航快递',1,0),(234,'quanyi','全一快递',1,0),(235,'quanchen','全晨快递',1,0),(236,'usps','USPS快递',1,0),(237,'xinbang','新邦物流',1,0),(238,'yuanzhi','元智捷诚快递',1,0),(239,'zhongyou','中邮物流',1,0),(240,'yuxin','宇鑫物流',1,0),(241,'cnpex','中环快递',1,0),(242,'shengfeng','盛丰物流',1,0),(243,'yuantong','圆通速递',97,1),(244,'jiayunmei','加运美物流',1,0),(245,'ywfex','源伟丰快递',1,0),(246,'xinfeng','信丰物流',1,0),(247,'wanxiang','万象物流',1,0),(248,'menduimen','门对门',1,0),(249,'mingliang','明亮物流',1,0),(250,'fengxingtianxia','风行天下',1,0),(251,'gongsuda','共速达物流',1,0),(252,'zhongtong','中通快递',100,1),(253,'quanritong','全日通快递',1,0),(254,'ems','EMS',1,1),(255,'wanjia','万家物流',1,0),(256,'yuntong','运通快递',1,0),(257,'feikuaida','飞快达物流',1,0),(258,'haimeng','海盟速递',1,0),(259,'zhongsukuaidi','中速快件',1,0),(260,'yuefeng','越丰快递',1,0),(261,'shenghui','盛辉物流',1,0),(262,'datian','大田物流',1,0),(263,'quanjitong','全际通快递',1,0),(264,'longlangkuaidi','隆浪快递',1,0),(265,'neweggozzo','新蛋奥硕物流',1,0),(266,'shentong','申通快递',95,1),(267,'haiwaihuanqiu','海外环球',1,0),(268,'yad','源安达快递',1,0),(269,'jindawuliu','金大物流',1,0),(270,'sevendays','七天连锁',1,0),(271,'tnt','TNT快递',1,0),(272,'huayu','天地华宇物流',1,0),(273,'lianhaotong','联昊通快递',1,0),(274,'nengda','港中能达快递',1,0),(275,'LBWL','联邦物流',1,0),(276,'ontrac','onTrac',1,0),(277,'feihang','原飞航快递',1,0),(278,'bangsongwuliu','邦送物流',1,0),(279,'huaxialong','华夏龙物流',1,0),(280,'ztwy','中天万运快递',1,0),(281,'fkd','飞康达物流',1,0),(282,'anxinda','安信达快递',1,0),(283,'quanfeng','全峰快递',1,0),(284,'shengan','圣安物流',1,0),(285,'jiaji','佳吉物流',1,0),(286,'yunda','韵达快运',94,0),(287,'ups','UPS快递',1,0),(288,'debang','德邦物流',1,0),(289,'yafeng','亚风速递',1,0),(290,'kuaijie','快捷速递',98,0),(291,'huitong','百世快递',93,0),(293,'aolau','AOL澳通速递',1,0),(294,'anneng','安能物流',1,0),(295,'auexpress','澳邮中国快运',1,0),(296,'exfresh','安鲜达',1,0),(297,'bcwelt','BCWELT',1,0),(298,'youzhengguonei','挂号信',1,0),(299,'xiaohongmao','北青小红帽',1,0),(300,'lbbk','宝凯物流',1,0),(301,'byht','博源恒通',1,0),(302,'idada','百成大达物流',1,0),(303,'baitengwuliu','百腾物流',1,0),(304,'birdex','笨鸟海淘',1,0),(305,'bsht','百事亨通',1,0),(306,'dayang','大洋物流快递',1,0),(307,'dechuangwuliu','德创物流',1,0),(308,'donghanwl','东瀚物流',1,0),(309,'dfpost','达方物流',1,0),(310,'dongjun','东骏快捷物流',1,0),(311,'dindon','叮咚澳洲转运',1,0),(312,'dazhong','大众佐川急便',1,0),(313,'decnlh','德中快递',1,0),(314,'dekuncn','德坤供应链',1,0),(315,'eshunda','俄顺达',1,0),(316,'ewe','EWE全球快递',1,0),(317,'fedexuk','FedEx英国',1,0),(318,'fox','FOX国际速递',1,0),(319,'rufengda','凡客如风达',1,0),(320,'fandaguoji','颿达国际快递',1,0),(321,'hnfy','飞鹰物流',1,0),(322,'flysman','飞力士物流',1,0),(323,'sccod','丰程物流',1,0),(324,'farlogistis','泛远国际物流',1,0),(325,'gsm','GSM',1,0),(326,'gaticn','GATI快递',1,0),(327,'gts','GTS快递',1,0),(328,'gangkuai','港快速递',1,0),(329,'gtsd','高铁速递',1,0),(330,'tiandihuayu','华宇物流',1,0),(331,'huangmajia','黄马甲快递',1,0),(332,'ucs','合众速递',1,0),(333,'huoban','伙伴物流',1,0),(334,'nedahm','红马速递',1,0),(335,'huiwen','汇文配送',1,0),(336,'nmhuahe','华赫物流',1,0),(337,'hangyu','航宇快递',1,0),(338,'minsheng','闽盛物流',1,0),(339,'riyu','日昱物流',1,0),(340,'sxhongmajia','山西红马甲',1,0),(341,'syjiahuier','沈阳佳惠尔',1,0),(342,'shlindao','上海林道货运',1,0),(343,'shunjiefengda','顺捷丰达',1,0),(344,'subida','速必达物流',1,0),(345,'bphchina','速方国际物流',1,0),(346,'sendtochina','速递中国',1,0),(347,'suning','苏宁快递',1,0),(348,'sihaiet','四海快递',1,0),(349,'tianzong','天纵物流',1,0),(350,'chinatzx','同舟行物流',1,0),(351,'nntengda','腾达速递',1,0),(352,'sd138','泰国138',1,0),(353,'tongdaxing','通达兴物流',1,0),(354,'tlky','天联快运',1,0),(355,'youshuwuliu','UC优速快递',1,0),(356,'ueq','UEQ快递',1,0),(357,'weitepai','微特派快递',1,0),(358,'wtdchina','威时沛运',1,0),(359,'wzhaunyun','微转运',1,0),(360,'gswtkd','万通快递',1,0),(361,'wotu','渥途国际速运',1,0),(362,'xiyoute','希优特快递',1,0),(363,'xilaikd','喜来快递',1,0),(364,'xsrd','鑫世锐达',1,0),(365,'xtb','鑫通宝物流',1,0),(366,'xintianjie','信天捷快递',1,0),(367,'xaetc','西安胜峰',1,0),(368,'xianfeng','先锋快递',1,0),(369,'sunspeedy','新速航',1,0),(370,'xipost','西邮寄',1,0),(371,'sinatone','信联通',1,0),(372,'sunjex','新杰物流',1,0),(373,'yundaexus','韵达美国件',1,0),(374,'yxwl','宇鑫物流',1,0),(375,'yitongda','易通达',1,0),(376,'yiqiguojiwuliu','一柒物流',1,0),(377,'yilingsuyun','亿领速运',1,0),(378,'yujiawuliu','煜嘉物流',1,0),(379,'gml','英脉物流',1,0),(380,'leopard','云豹国际货运',1,0),(381,'czwlyn','云南中诚',1,0),(382,'sdyoupei','优配速运',1,0),(383,'yongchang','永昌物流',1,0),(384,'yufeng','御风速运',1,0),(385,'yamaxunwuliu','亚马逊物流',1,0),(386,'yousutongda','优速通达',1,0),(387,'yishunhang','亿顺航',1,0),(388,'yongwangda','永旺达快递',1,0),(389,'ecmscn','易满客',1,0),(390,'yingchao','英超物流',1,0),(391,'edlogistics','益递物流',1,0),(392,'yyexpress','远洋国际',1,0),(393,'onehcang','一号仓',1,0),(394,'ycgky','远成快运',1,0),(395,'lineone','一号线',1,0),(396,'ypsd','壹品速递',1,0),(397,'vipexpress','鹰运国际速递',1,0),(398,'el56','易联通达物流',1,0),(399,'yyqc56','一运全成物流',1,0),(400,'zhongtie','中铁快运',1,0),(401,'ZTKY','中铁物流',1,0),(402,'zzjh','郑州建华快递',1,0),(403,'zhongruisudi','中睿速递',1,0),(404,'zhongwaiyun','中外运速递',1,0),(405,'zengyisudi','增益速递',1,0),(406,'sujievip','郑州速捷',1,0),(407,'zhichengtongda','至诚通达快递',1,0),(408,'zhdwl','众辉达物流',1,0),(409,'kuachangwuliu','直邮易',1,0),(410,'topspeedex','中运全速',1,0),(411,'otobv','中欧快运',1,0),(412,'zsky123','准实快运',1,0),(413,'donghong','东红物流',1,0),(414,'kuaiyouda','快优达速递',1,0),(415,'balunzhi','巴伦支快递',1,0),(416,'hutongwuliu','户通物流',1,0),(417,'xianchenglian','西安城联速递',1,0),(418,'youbijia','邮必佳',1,0),(419,'feiyuan','飞远物流',1,0),(420,'chengji','城际速递',1,0),(421,'huaqi','华企快运',1,0),(422,'yibang','一邦快递',1,0),(423,'citylink','CityLink快递',1,0),(424,'meixi','美西快递',1,0),(425,'acs','ACS',1,0);

#
# Structure for table "tb_routine_access_token"
#

DROP TABLE IF EXISTS `tb_routine_access_token`;
CREATE TABLE `tb_routine_access_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '小程序access_token表ID',
  `access_token` varchar(256) NOT NULL COMMENT 'openid',
  `stop_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='小程序access_token表';

#
# Data for table "tb_routine_access_token"
#

INSERT INTO `tb_routine_access_token` VALUES (1,'20_z3MAutcbznCSyQPqMVOQVRUktcvLYUXAAICpCMXkpu5rLoVnBB0u88rnJr1sWDJlwj-S6aVhmswmLdW86e9Bg2ugd3BOayE6ntY6FfckSXWgvW2y5N0bLkBxHpCjJH2bQpuvnmMIZr08G32hWSQfACAZVT',1554809658);

#
# Structure for table "tb_routine_form_id"
#

DROP TABLE IF EXISTS `tb_routine_form_id`;
CREATE TABLE `tb_routine_form_id` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表单ID表ID',
  `uid` int(11) DEFAULT '0' COMMENT '用户uid',
  `form_id` varchar(36) NOT NULL COMMENT '表单ID',
  `stop_time` int(11) unsigned DEFAULT NULL COMMENT '表单ID失效时间',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态1 未使用 2不能使用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表单id表记录表';

#
# Data for table "tb_routine_form_id"
#


#
# Structure for table "tb_routine_qrcode"
#

DROP TABLE IF EXISTS `tb_routine_qrcode`;
CREATE TABLE `tb_routine_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信二维码ID',
  `third_type` varchar(32) NOT NULL COMMENT '二维码类型 spread(用户推广) product_spread(产品推广)',
  `third_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态 0不可用 1可用',
  `add_time` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `page` varchar(255) DEFAULT NULL COMMENT '小程序页面路径带参数',
  `qrcode_url` varchar(255) DEFAULT NULL COMMENT '小程序二维码路径',
  `url_time` int(11) unsigned DEFAULT NULL COMMENT '二维码添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小程序二维码管理表';

#
# Data for table "tb_routine_qrcode"
#


#
# Structure for table "tb_routine_template"
#

DROP TABLE IF EXISTS `tb_routine_template`;
CREATE TABLE `tb_routine_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `tempkey` char(50) NOT NULL COMMENT '模板编号',
  `name` char(100) NOT NULL COMMENT '模板名',
  `content` varchar(1000) NOT NULL COMMENT '回复内容',
  `tempid` char(100) DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) NOT NULL COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tempkey` (`tempkey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='微信模板';

#
# Data for table "tb_routine_template"
#

INSERT INTO `tb_routine_template` VALUES (1,'1128','订单配送通知','商品信息{{thing8.DATA}}\n订单编号{{character_string1.DATA}}\n配送人{{name4.DATA}}\n配送员电话{{phone_number10.DATA}}','4wN7p3nF1IPiPNIPZnoOY3nZlrVP3dzM-Km0OLcpW48','1575364233',1),(2,'1470','提现结果通知','提现状态{{thing1.DATA}}\n提现金额{{amount2.DATA}}\n提现账号{{thing3.DATA}}\n提现时间{{date4.DATA}}','xtBEkHdxyFSIQfiNe_CRga2mrmQizfArgSk7zC3hnbs','1575364292',1),(3,'1481','收货结果通知','订单类型{{thing1.DATA}}\n订单商品{{thing2.DATA}}\n收货时间{{date5.DATA}}','AVmUHvKandN9a9ms_-5QsP9_PAzDoJ_VBB0vqQI1Eo0','1575364327',1),(4,'1134','订单取消通知','取消原因{{thing1.DATA}}\n订单号{{number7.DATA}}\n取消时间{{date2.DATA}}\n订单类型{{thing5.DATA}}','xBilsNHAH527HBqrMgNoIA_biTfQ7A_bCbMxMx1uMM0','1575364399',1),(5,'1458','发货通知','快递单号{{character_string2.DATA}}\n快递公司{{thing1.DATA}}\n发货时间{{time3.DATA}}\n订单商品{{thing5.DATA}}','vBrJgvoj4CgBOUIVQcRfsUkYun4orcllCfQ11SSs4wk','1575364437',1),(6,'3098','拼团成功通知','活动名称{{thing1.DATA}}\n团长{{name3.DATA}}\n开团时间{{date5.DATA}}\n成团人数{{number2.DATA}}','V9fd7ssFZr5_twdgf--RfAExR4N08zU9Hk9auWDAI8g','1575364508',1),(7,'2727','砍价成功通知','商品名称{{thing1.DATA}}\n底价{{amount2.DATA}}\n备注{{thing3.DATA}}','ehNGy-NRBJIENTdlwT8nBddGW2B4dPo6eKv3x1H6fOg','1575364579',1),(8,'3116',' 核销成功通知','商品名称{{thing2.DATA}}\n订单号{{character_string3.DATA}}\n核销时间{{time4.DATA}}','5wiR0TK43wguWdGzexocKvn9-nhELiJtoBKeqptsf84','1575364738',1),(9,'1476',' 新订单提醒','订单商品{{thing2.DATA}}\n订单金额{{amount3.DATA}}\n订单编号{{character_string4.DATA}}\n订单时间{{date6.DATA}}\n订单类型{{thing1.DATA}}','F7ju2FdKqFQ8rXXzkB34HSYKa5_kOzJrpF9EZQc1pJ8','1575364792',1),(10,'1451',' 退款通知','退款状态{{thing1.DATA}}\n退款商品{{thing2.DATA}}\n退款金额{{amount3.DATA}}\n退款单号{{character_string6.DATA}}','aqp6PzdU9vCUOUCHsuGFWvkZgp_cGQ_RKW7XCe9118I','1575364895',1),(11,'755',' 充值成功通知','交易单号{{character_string1.DATA}}\n充值金额{{amount3.DATA}}\n账户余额{{amount4.DATA}}\n充值时间{{date5.DATA}}','_0KAysps9Yj0SM3nacaF_9xw77w1NQYjOpnl4TQAp7k','1575365017',1),(12,'1927','付款成功通知','付款单号{{character_string1.DATA}}\n付款金额{{amount2.DATA}}\n付款时间{{date3.DATA}}','jY2vT0Fge2srW9Izc-3wEE6WII-FQBvEi2J_duiAAck','1575365111',1),(13,'1468','申请退款通知','订单编号{{character_string4.DATA}}\n申请时间{{date5.DATA}}\n订单金额{{amount2.DATA}}\n退款状态{{phrase7.DATA}}\n备注{{thing8.DATA}}','NOfT3qoOS3hkSzwt2LJg_LnU0NBzwSHXkSwKdx6QDwc','1575440940',1),(14,'335','积分到账提醒','订单编号{{character_string2.DATA}}\n商品名称{{thing3.DATA}}\n支付金额{{amount4.DATA}}\n获得积分{{number5.DATA}}\n累计积分{{number6.DATA}}','TtdbifwMN-6D3hNld8jTc97A8Ohlqg4FtgmIgB28JPc','1575516565',1),(15,'3353','拼团状态通知','商品名称{{thing2.DATA}}\n拼团人数{{thing1.DATA}}\n备注{{thing3.DATA}}','LkYDDYO-HQKT7NydGjrN7AJ1OUCf3mgZf3otVruhxOo','1575516605',1);

#
# Structure for table "tb_store_bargain"
#

DROP TABLE IF EXISTS `tb_store_bargain`;
CREATE TABLE `tb_store_bargain` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价产品ID',
  `product_id` int(11) unsigned NOT NULL COMMENT '关联产品ID',
  `title` varchar(255) NOT NULL COMMENT '砍价活动名称',
  `image` varchar(150) NOT NULL COMMENT '砍价活动图片',
  `unit_name` varchar(16) DEFAULT NULL COMMENT '单位名称',
  `stock` int(11) unsigned DEFAULT NULL COMMENT '库存',
  `sales` int(11) unsigned DEFAULT NULL COMMENT '销量',
  `images` varchar(2000) NOT NULL COMMENT '砍价产品轮播图',
  `start_time` int(11) unsigned NOT NULL COMMENT '砍价开启时间',
  `stop_time` int(11) unsigned NOT NULL COMMENT '砍价结束时间',
  `store_name` varchar(255) DEFAULT NULL COMMENT '砍价产品名称',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价金额',
  `min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价商品最低价',
  `num` int(11) unsigned DEFAULT NULL COMMENT '每次购买的砍价产品数量',
  `bargain_max_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最大金额',
  `bargain_min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最小金额',
  `bargain_num` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '用户每次砍价的次数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '砍价状态 0(到砍价时间不自动开启)  1(到砍价时间自动开启时间)',
  `description` text COMMENT '砍价详情',
  `give_integral` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '反多少积分',
  `info` varchar(255) DEFAULT NULL COMMENT '砍价活动简介',
  `cost` decimal(8,2) unsigned DEFAULT NULL COMMENT '成本价',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐0不推荐1推荐',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否包邮 0不包邮 1包邮',
  `postage` decimal(10,2) unsigned DEFAULT NULL COMMENT '邮费',
  `rule` text COMMENT '砍价规则',
  `look` int(11) unsigned DEFAULT '0' COMMENT '砍价产品浏览量',
  `share` int(11) unsigned DEFAULT '0' COMMENT '砍价产品分享量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='砍价表';

#
# Data for table "tb_store_bargain"
#


#
# Structure for table "tb_store_bargain_user"
#

DROP TABLE IF EXISTS `tb_store_bargain_user`;
CREATE TABLE `tb_store_bargain_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户参与砍价表ID',
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `bargain_id` int(11) unsigned DEFAULT NULL COMMENT '砍价产品id',
  `bargain_price_min` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价的最低价',
  `bargain_price` decimal(8,2) DEFAULT NULL COMMENT '砍价金额',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍掉的价格',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1参与中 2 活动结束参与失败 3活动结束参与成功',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '参与时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否取消',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户参与砍价表';

#
# Data for table "tb_store_bargain_user"
#


#
# Structure for table "tb_store_bargain_user_help"
#

DROP TABLE IF EXISTS `tb_store_bargain_user_help`;
CREATE TABLE `tb_store_bargain_user_help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价用户帮助表ID',
  `uid` int(11) unsigned DEFAULT NULL COMMENT '帮助的用户id',
  `bargain_id` int(11) unsigned DEFAULT NULL COMMENT '砍价产品ID',
  `bargain_user_id` int(11) unsigned DEFAULT NULL COMMENT '用户参与砍价表id',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '帮助砍价多少金额',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='砍价用户帮助表';

#
# Data for table "tb_store_bargain_user_help"
#


#
# Structure for table "tb_store_cart"
#

DROP TABLE IF EXISTS `tb_store_cart`;
CREATE TABLE `tb_store_cart` (
  `id` bigint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表ID',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `product_attr_unique` varchar(16) NOT NULL DEFAULT '' COMMENT '商品属性',
  `cart_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = 未购买 1 = 已购买',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为立即购买',
  `combination_id` int(11) unsigned DEFAULT '0' COMMENT '拼团id',
  `seckill_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '砍价id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`uid`) USING BTREE,
  KEY `goods_id` (`product_id`) USING BTREE,
  KEY `uid` (`uid`,`is_pay`) USING BTREE,
  KEY `uid_2` (`uid`,`is_del`) USING BTREE,
  KEY `uid_3` (`uid`,`is_new`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车表';

#
# Data for table "tb_store_cart"
#

INSERT INTO `tb_store_cart` VALUES (1,1,'product',11,'',1,1582608706,0,0,1,0,0,0);

#
# Structure for table "tb_store_category"
#

DROP TABLE IF EXISTS `tb_store_category`;
CREATE TABLE `tb_store_category` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类表ID',
  `pid` mediumint(11) NOT NULL COMMENT '父id',
  `cate_name` varchar(100) NOT NULL COMMENT '分类名称',
  `sort` mediumint(11) NOT NULL COMMENT '排序',
  `pic` varchar(128) NOT NULL DEFAULT '' COMMENT '图标',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否推荐',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `is_base` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

#
# Data for table "tb_store_category"
#

INSERT INTO `tb_store_category` VALUES (1,0,'热门推荐',2,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3db8b933d92.jpg',1,1547205038),(2,1,'热门促销',0,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dba1366885.jpg',1,1547205055),(3,1,'折扣专区',0,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg',1,1547550363),(4,1,'新品上线',0,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc6a38fab.jpg',1,1553783295),(6,0,'居家生活',1,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3db8b933d92.jpg',1,1553783609),(7,6,'床垫',1,'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9de8b7c5cc5.png',1,1553784473),(8,6,'灯具',0,'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9def00c2882.png',1,1553784490),(9,0,'家电电器',3,'',1,1553852206),(10,0,'手机数码',4,'',1,1553852227),(11,0,'智能设备',5,'',1,1553852259),(12,0,'影音音响',6,'',1,1553852288),(13,0,'服饰鞋帽',7,'',1,1553852314),(14,0,'餐厨厨房',8,'',1,1553852353),(15,0,'洗护健康',9,'',1,1553852370),(16,0,'日杂用品',10,'',1,1553852390),(17,0,'出行交通',11,'',1,1553852413),(18,0,'配件设备',13,'http://kaifa.crmeb.net/uploads/attach/2019/08/20190809/6801781ff4403bdbb6764f4182394729.png',1,1553852458),(19,6,'家具',0,'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9def5fa968c.png',1,1553854308),(20,6,'床品件套',0,'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9df11e13742.png',1,1553854755),(21,6,'家饰花卉',0,'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9df170010cb.png',1,1553854835),(22,6,'布艺软装',0,'http://datong.crmeb.net/public/uploads/attach/2019/03/29/5c9df1b8f0a7a.png',1,1553854908);

#
# Structure for table "tb_store_combination"
#

DROP TABLE IF EXISTS `tb_store_combination`;
CREATE TABLE `tb_store_combination` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `mer_id` int(10) unsigned DEFAULT '0' COMMENT '商户id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(2000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `attr` varchar(255) DEFAULT NULL COMMENT '活动属性',
  `people` int(2) unsigned NOT NULL COMMENT '参团人数',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` int(10) unsigned NOT NULL COMMENT '库存',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `is_host` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_show` tinyint(1) unsigned NOT NULL COMMENT '产品状态',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `combination` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `mer_use` tinyint(1) unsigned DEFAULT NULL COMMENT '商户是否可用1可用0不可用',
  `is_postage` tinyint(1) unsigned NOT NULL COMMENT '是否包邮1是0否',
  `postage` decimal(10,2) unsigned NOT NULL COMMENT '邮费',
  `description` text NOT NULL COMMENT '拼团内容',
  `start_time` int(11) unsigned NOT NULL COMMENT '拼团开始时间',
  `stop_time` int(11) unsigned NOT NULL COMMENT '拼团结束时间',
  `effective_time` int(11) NOT NULL DEFAULT '0' COMMENT '拼团订单有效时间',
  `cost` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '拼图产品成本',
  `browse` int(11) DEFAULT '0' COMMENT '浏览量',
  `unit_name` varchar(32) NOT NULL DEFAULT '' COMMENT '单位名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼团产品表';

#
# Data for table "tb_store_combination"
#


#
# Structure for table "tb_store_combination_attr"
#

DROP TABLE IF EXISTS `tb_store_combination_attr`;
CREATE TABLE `tb_store_combination_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值',
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

#
# Data for table "tb_store_combination_attr"
#


#
# Structure for table "tb_store_combination_attr_result"
#

DROP TABLE IF EXISTS `tb_store_combination_attr_result`;
CREATE TABLE `tb_store_combination_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间',
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性详情表';

#
# Data for table "tb_store_combination_attr_result"
#


#
# Structure for table "tb_store_combination_attr_value"
#

DROP TABLE IF EXISTS `tb_store_combination_attr_value`;
CREATE TABLE `tb_store_combination_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

#
# Data for table "tb_store_combination_attr_value"
#


#
# Structure for table "tb_store_coupon"
#

DROP TABLE IF EXISTS `tb_store_coupon`;
CREATE TABLE `tb_store_coupon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '优惠券表ID',
  `title` varchar(64) NOT NULL COMMENT '优惠券名称',
  `integral` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换消耗积分值',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '兑换的优惠券面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `coupon_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券有效期限（单位：天）',
  `sort` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态（0：关闭，1：开启）',
  `add_time` int(11) unsigned NOT NULL COMMENT '兑换项目添加时间',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `state` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `coupon_time` (`coupon_time`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券表';

#
# Data for table "tb_store_coupon"
#


#
# Structure for table "tb_store_coupon_issue"
#

DROP TABLE IF EXISTS `tb_store_coupon_issue`;
CREATE TABLE `tb_store_coupon_issue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT NULL COMMENT '优惠券ID',
  `start_time` int(10) DEFAULT NULL COMMENT '优惠券领取开启时间',
  `end_time` int(10) DEFAULT NULL COMMENT '优惠券领取结束时间',
  `total_count` int(10) DEFAULT NULL COMMENT '优惠券领取数量',
  `remain_count` int(10) DEFAULT NULL COMMENT '优惠券剩余领取数量',
  `is_permanent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否无限张数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常 0 未开启 -1 已无效',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) DEFAULT NULL COMMENT '优惠券添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `start_time` (`start_time`,`end_time`) USING BTREE,
  KEY `remain_count` (`remain_count`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券前台领取表';

#
# Data for table "tb_store_coupon_issue"
#


#
# Structure for table "tb_store_coupon_issue_user"
#

DROP TABLE IF EXISTS `tb_store_coupon_issue_user`;
CREATE TABLE `tb_store_coupon_issue_user` (
  `uid` int(10) DEFAULT NULL COMMENT '领取优惠券用户ID',
  `issue_coupon_id` int(10) DEFAULT NULL COMMENT '优惠券前台领取ID',
  `add_time` int(10) DEFAULT NULL COMMENT '领取时间',
  UNIQUE KEY `uid` (`uid`,`issue_coupon_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券前台用户领取记录表';

#
# Data for table "tb_store_coupon_issue_user"
#


#
# Structure for table "tb_store_coupon_user"
#

DROP TABLE IF EXISTS `tb_store_coupon_user`;
CREATE TABLE `tb_store_coupon_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券发放记录id',
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换的项目id',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券所属用户',
  `coupon_title` varchar(32) NOT NULL COMMENT '优惠券名称',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券的面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `add_time` int(11) unsigned NOT NULL COMMENT '优惠券创建时间',
  `end_time` int(11) unsigned NOT NULL COMMENT '优惠券结束时间',
  `use_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `type` varchar(32) NOT NULL DEFAULT 'send' COMMENT '获取方式',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0：未使用，1：已使用, 2:已过期）',
  `is_fail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `end_time` (`end_time`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_fail` (`is_fail`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券发放记录表';

#
# Data for table "tb_store_coupon_user"
#


#
# Structure for table "tb_store_order"
#

DROP TABLE IF EXISTS `tb_store_order`;
CREATE TABLE `tb_store_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_id` varchar(32) NOT NULL COMMENT '订单号',
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL COMMENT '用户姓名',
  `user_phone` varchar(18) NOT NULL COMMENT '用户电话',
  `user_address` varchar(100) NOT NULL COMMENT '详细地址',
  `cart_id` varchar(256) NOT NULL DEFAULT '[]' COMMENT '购物车id',
  `freight_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '运费金额',
  `total_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单商品总数',
  `total_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `total_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `pay_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际支付金额',
  `pay_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付邮费',
  `deduction_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  `coupon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券金额',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_time` int(11) unsigned DEFAULT NULL COMMENT '支付时间',
  `pay_type` varchar(32) NOT NULL COMMENT '支付方式',
  `add_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款）',
  `refund_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 未退款 1 申请中 2 已退款',
  `refund_reason_wap_img` varchar(255) DEFAULT NULL COMMENT '退款图片',
  `refund_reason_wap_explain` varchar(255) DEFAULT NULL COMMENT '退款用户说明',
  `refund_reason_time` int(11) unsigned DEFAULT NULL COMMENT '退款时间',
  `refund_reason_wap` varchar(255) DEFAULT NULL COMMENT '前台退款原因',
  `refund_reason` varchar(255) DEFAULT NULL COMMENT '不退款的理由',
  `refund_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `delivery_name` varchar(64) DEFAULT NULL COMMENT '快递名称/送货人姓名',
  `delivery_type` varchar(32) DEFAULT NULL COMMENT '发货类型',
  `delivery_id` varchar(64) DEFAULT NULL COMMENT '快递单号/手机号',
  `gain_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '消费赚取积分',
  `use_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '使用积分',
  `back_integral` decimal(8,2) unsigned DEFAULT NULL COMMENT '给用户退了多少积分',
  `mark` varchar(512) NOT NULL COMMENT '备注',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `unique` char(32) NOT NULL COMMENT '唯一id(md5加密)类似id',
  `remark` varchar(512) DEFAULT NULL COMMENT '管理员备注',
  `mer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `is_mer_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `combination_id` int(11) unsigned DEFAULT '0' COMMENT '拼团产品id0一般产品',
  `pink_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '拼团id 0没有拼团',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `seckill_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int(11) unsigned DEFAULT '0' COMMENT '砍价id',
  `verify_code` varchar(12) NOT NULL DEFAULT '' COMMENT '核销码',
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '门店id',
  `shipping_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配送方式 1=快递 ，2=门店自提',
  `is_channel` tinyint(1) unsigned DEFAULT '0' COMMENT '支付渠道(0微信公众号1微信小程序)',
  `is_remind` tinyint(1) unsigned DEFAULT '0' COMMENT '消息提醒',
  `is_system_del` tinyint(1) DEFAULT '0' COMMENT '后台是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id_2` (`order_id`,`uid`) USING BTREE,
  UNIQUE KEY `unique` (`unique`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pay_price` (`pay_price`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE,
  KEY `pay_time` (`pay_time`) USING BTREE,
  KEY `pay_type` (`pay_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `coupon_id` (`coupon_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

#
# Data for table "tb_store_order"
#


#
# Structure for table "tb_store_order_cart_info"
#

DROP TABLE IF EXISTS `tb_store_order_cart_info`;
CREATE TABLE `tb_store_order_cart_info` (
  `oid` int(11) unsigned NOT NULL COMMENT '订单id',
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购物车id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `cart_info` text NOT NULL COMMENT '购买东西的详细信息',
  `unique` char(32) NOT NULL COMMENT '唯一id',
  UNIQUE KEY `oid` (`oid`,`unique`) USING BTREE,
  KEY `cart_id` (`cart_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单购物详情表';

#
# Data for table "tb_store_order_cart_info"
#


#
# Structure for table "tb_store_order_status"
#

DROP TABLE IF EXISTS `tb_store_order_status`;
CREATE TABLE `tb_store_order_status` (
  `oid` int(10) unsigned NOT NULL COMMENT '订单id',
  `change_type` varchar(32) NOT NULL COMMENT '操作类型',
  `change_message` varchar(256) NOT NULL COMMENT '操作备注',
  `change_time` int(10) unsigned NOT NULL COMMENT '操作时间',
  KEY `oid` (`oid`) USING BTREE,
  KEY `change_type` (`change_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单操作记录表';

#
# Data for table "tb_store_order_status"
#


#
# Structure for table "tb_store_pink"
#

DROP TABLE IF EXISTS `tb_store_pink`;
CREATE TABLE `tb_store_pink` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `order_id` varchar(32) NOT NULL COMMENT '订单id 生成',
  `order_id_key` int(10) unsigned NOT NULL COMMENT '订单id  数据库',
  `total_num` int(10) unsigned NOT NULL COMMENT '购买商品个数',
  `total_price` decimal(10,2) unsigned NOT NULL COMMENT '购买总金额',
  `cid` int(10) unsigned NOT NULL COMMENT '拼团产品id',
  `pid` int(10) unsigned NOT NULL COMMENT '产品id',
  `people` int(10) unsigned NOT NULL COMMENT '拼图总人数',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '拼团产品单价',
  `add_time` varchar(24) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(24) NOT NULL,
  `k_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '团长id 0为团长',
  `is_tpl` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否发送模板消息0未发送1已发送',
  `is_refund` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否退款 0未退款 1已退款',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1进行中2已完成3未完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼团表';

#
# Data for table "tb_store_pink"
#


#
# Structure for table "tb_store_product"
#

DROP TABLE IF EXISTS `tb_store_product`;
CREATE TABLE `tb_store_product` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `mer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户Id(0为总后台管理员创建,不为0的时候是商户后台创建)',
  `image` varchar(256) NOT NULL COMMENT '商品图片',
  `slider_image` varchar(2000) NOT NULL COMMENT '轮播图',
  `store_name` varchar(128) NOT NULL COMMENT '商品名称',
  `store_info` varchar(256) NOT NULL COMMENT '商品简介',
  `keyword` varchar(256) NOT NULL COMMENT '关键字',
  `bar_code` varchar(15) NOT NULL DEFAULT '' COMMENT '产品条码（一维码）',
  `cate_id` varchar(64) NOT NULL COMMENT '分类id',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `vip_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '会员价格',
  `ot_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `unit_name` varchar(32) NOT NULL COMMENT '单位名',
  `sort` smallint(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `sales` mediumint(11) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` mediumint(11) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0：未上架，1：上架）',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否热卖',
  `is_benefit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否优惠',
  `is_best` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否精品',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `description` text NOT NULL COMMENT '产品描述',
  `add_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `mer_use` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '商户是否代理 0不可代理1可代理',
  `give_integral` decimal(8,2) unsigned NOT NULL COMMENT '获得积分',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `is_seckill` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀状态 0 未开启 1已开启',
  `is_bargain` tinyint(1) unsigned DEFAULT NULL COMMENT '砍价状态 0未开启 1开启',
  `is_good` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否优品推荐',
  `ficti` mediumint(11) DEFAULT '100' COMMENT '虚拟销量',
  `browse` int(11) DEFAULT '0' COMMENT '浏览量',
  `code_path` varchar(64) NOT NULL DEFAULT '' COMMENT '产品二维码地址(用户小程序海报)',
  `soure_link` varchar(255) DEFAULT '' COMMENT '淘宝京东1688类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cate_id` (`cate_id`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `is_benefit` (`is_benefit`) USING BTREE,
  KEY `is_best` (`is_best`) USING BTREE,
  KEY `is_new` (`is_new`) USING BTREE,
  KEY `toggle_on_sale, is_del` (`is_del`) USING BTREE,
  KEY `price` (`price`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `sales` (`sales`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `is_postage` (`is_postage`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='商品表';

#
# Data for table "tb_store_product"
#

INSERT INTO `tb_store_product` VALUES (1,0,'https://record-1251018669.cos.ap-chengdu.myqcloud.com/0ee17201905151741257691.png','[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba1366885.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dba4187461.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3db9de2b73a.jpg\"]','无线吸尘器F8 玫瑰金礼盒版','【年货节活动价1699元，领取吸尘器优惠券再减50元，到手价仅1649元】','无线吸尘器','','2,7',0.01,0.00,1699.00,1.00,'件',1,293,330,0,1,0,1,1,'<p><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbb137d656.jpeg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbb229e820.jpeg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbb3b37f84.jpeg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbb513b06f.jpeg\"/></p>',1547205504,0,1,0,1699.00,100.00,0,0,0,81,0,'',NULL),(2,0,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg','[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc6a38fab.jpg\"]','智能马桶盖 AI版','智能马桶盖 AI版','智能马桶','','3,2',0.01,0.00,1999.00,5.00,'件',0,212,938,1,1,1,1,1,'<p><img src=\"http://kaifa.crmeb.net/uploads/config/image/20190725/8827bb36f160a1c33ae710883966063b.png\"/></p>',1547516202,1,0,0,1999.00,1500.00,0,0,0,20,0,'',NULL),(3,0,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc0ef27068.jpg','[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\"]','智米加湿器 白色','智米加湿器 白色','加湿器','','3,2',249.00,0.00,299.00,0.00,'件',0,110,3949,1,1,1,1,1,'<p><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc1730a0c0.jpg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc182bccac.jpg\"/></p>',1547551009,1,0,0,249.00,10.00,0,0,0,8,0,'',NULL),(4,0,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc23646fff.jpg','[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc23646fff.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc0ef27068.jpg\"]','互联网电热水器1A','3000w双管速热，动态360L热水用量，双重漏电保护，智能APP操控','电热水器','','3,2',999.00,0.00,1599.00,0.00,'件',0,86,414,0,1,1,0,1,'<p><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc286862fd.jpg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc294a9a0a.jpg\"/><img src=\"http://datong.crmeb.net/public/uploads/editor/20190115/5c3dc2ba18a77.jpg\"/></p>',1547551346,1,0,0,999.00,888.00,0,0,0,10,0,'',NULL),(5,0,'http://datong.crmeb.net/public/uploads/editor/20190115/5c3dbb513b06f.jpeg','[\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/editor\\/20190115\\/5c3dc294a9a0a.jpg\",\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/editor\\/20190115\\/5c3dbb513b06f.jpeg\"]','测试','阿萨德啊','去','','4,7,2,3,19',1.00,0.00,1.00,0.00,'件',0,7,94,1,1,0,1,0,'',1554863537,0,1,0,1.00,1.00,0,NULL,0,1,0,'',NULL),(6,0,'https://activityu.crmeb.net//ed0437125c6a0b03313c95c180ad82cd.jpg','[\"https:\\/\\/activityu.crmeb.net\\/\\/ed0437125c6a0b03313c95c180ad82cd.jpg\",\"https:\\/\\/activityu.crmeb.net\\/\\/ed5a330b2e4df8743e7c8747d2ba077d.jpg\",\"https:\\/\\/activityu.crmeb.net\\/\\/982ee257498f8ab6e757c09cbf2f6865.jpg\",\"https:\\/\\/activityu.crmeb.net\\/\\/ecc9f0b3ae923da5ec116a9b40bd851c.jpg\",\"https:\\/\\/activityu.crmeb.net\\/\\/2ca5fd434e88a579238aeaf31389e2ab.jpg\",\"https:\\/\\/activityu.crmeb.net\\/\\/33f86af708018fbaeead7220642c6e83.jpg\"]','【小米小米9】小米94800万超广角三摄6GB+128GB全息幻彩蓝骁龙855全网通4G双卡双待水滴全面屏拍照游戏智能手机','【小米小米9】小米94800万超广角三摄6GB+128GB全息幻彩蓝骁龙855全网通4G双卡双待水滴全面屏拍照游戏智能手机','小米9','','2',3999.00,0.00,3999.00,0.00,'件',0,0,100,0,1,0,0,0,'<br><div id=\"zbViewModulesH\" value=\"26470\"></div><input id=\"zbViewModulesHeight\" type=\"hidden\" value=\"26470\"><div skudesign=\"100010\"></div><div class=\"ssd-module-wrap\">\n    <div class=\"ssd-module M155426253860522 animate-M155426253860522\" data-id=\"M155426253860522\">\n        \n</div>\n<div class=\"ssd-module M155426253862223 animate-M155426253862223\" data-id=\"M155426253862223\">\n        \n</div>\n<div class=\"ssd-module M155426253863924 animate-M155426253863924\" data-id=\"M155426253863924\">\n        \n</div>\n<div class=\"ssd-module M155426253865225 animate-M155426253865225\" data-id=\"M155426253865225\">\n        \n</div>\n<div class=\"ssd-module M155426253867026 animate-M155426253867026\" data-id=\"M155426253867026\">\n        \n</div>\n<div class=\"ssd-module M155426253868827 animate-M155426253868827\" data-id=\"M155426253868827\">\n        \n</div>\n<div class=\"ssd-module M155426253870528 animate-M155426253870528\" data-id=\"M155426253870528\">\n        \n</div>\n<div class=\"ssd-module M155426253872529 animate-M155426253872529\" data-id=\"M155426253872529\">\n        \n</div>\n<div class=\"ssd-module M155426253874230 animate-M155426253874230\" data-id=\"M155426253874230\">\n        \n</div>\n<div class=\"ssd-module M155426253875531 animate-M155426253875531\" data-id=\"M155426253875531\">\n        \n</div>\n<div class=\"ssd-module M155426253876832 animate-M155426253876832\" data-id=\"M155426253876832\">\n        \n</div>\n<div class=\"ssd-module M155426253878633 animate-M155426253878633\" data-id=\"M155426253878633\">\n        \n</div>\n<div class=\"ssd-module M155426253880434 animate-M155426253880434\" data-id=\"M155426253880434\">\n        \n</div>\n<div class=\"ssd-module M155426253881935 animate-M155426253881935\" data-id=\"M155426253881935\">\n        \n</div>\n<div class=\"ssd-module M155426253883836 animate-M155426253883836\" data-id=\"M155426253883836\">\n        \n</div>\n<div class=\"ssd-module M155426253885437 animate-M155426253885437\" data-id=\"M155426253885437\">\n        \n</div>\n<div class=\"ssd-module M155426253887338 animate-M155426253887338\" data-id=\"M155426253887338\">\n        \n</div>\n<div class=\"ssd-module M155426253889039 animate-M155426253889039\" data-id=\"M155426253889039\">\n        \n</div>\n<div class=\"ssd-module M155426253890540 animate-M155426253890540\" data-id=\"M155426253890540\">\n        \n</div>\n<div class=\"ssd-module M155426253892241 animate-M155426253892241\" data-id=\"M155426253892241\">\n        \n</div>\n<div class=\"ssd-module M155426253894142 animate-M155426253894142\" data-id=\"M155426253894142\">\n        \n</div>\n\n</div>\n<!-- 2019-04-11 10:18:24 --> <br><script></script><br>',1558580351,0,1,0,0.00,3999.00,0,NULL,0,123,0,'','https://item.jd.com/7437708.html'),(7,0,'http://activity.crmeb.net/public/uploads/attach/2019/05/29//6f2a1ece45e307f274e3384410a3bd3a.jpg','[\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/6f2a1ece45e307f274e3384410a3bd3a.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/ec8484e93ac49309b5576bb5f96d202f.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/60fff157d277d17154d738403870a489.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/3bfee3357bbf0091c2cdfe7aa1da5eec.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/6f2bbcd0dffd379c6f91e95a308bcfb6.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/f92383a6a1be19a7588ccd227e458afd.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/353d754027763daf1ce61d94f7c3709a.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/5f273c529aa59d313f08a36a50a20380.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/27cf255f9990535ed3b333009f1df52c.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/a7dbbc6d4a2ecf16b592b880d937a770.jpg\"]','【华为畅享9S】华为HUAWEI畅享9S6GB+64GB珊瑚红全网通2400万超广角三摄珍珠屏大存储移动联通电信4G手机双卡双待','【华为畅享9S】华为HUAWEI畅享9S6GB+64GB珊瑚红全网通2400万超广角三摄珍珠屏大存储移动联通电信4G手机双卡双待','件','','2',100.00,0.00,2000.00,0.00,'件',0,25,76,1,1,0,1,0,'<br><div cssurl=\"//sku-market-gw.jd.com/css/pc/100005088680.css?t=1555464055068\"></div><div skucode=\"100010\"></div><center>\n<div class=\"content_tpl\">\n<div class=\"formwork\">\n<div class=\"formwork_img\">\n<img src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/29//51de55dd382eb9fd9bdc6b9c4218d866.jpg\" usemap=\"#Mapnate20\" border=\"0\"> \n<map name=\"Mapnate20\">\n<area shape=\"rect\" coords=\"14,27,246,400\" href=\"//item.jd.com/100004323338.html\" target=\"_blank\"> <area shape=\"rect\" coords=\"261,27,491,400\" href=\"https://item.jd.com/100000766433.html#crumb-wrap\" target=\"_blank\"> <area shape=\"rect\" coords=\"506,27,736,400\" href=\"https://item.jd.com/100002293114.html#crumb-wrap\" target=\"_blank\"> \n</map>\n<img src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/29//3495c08138194a6f26d821760d6d62a7.jpg\"> <img src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/29//e030f09b773f5a7c8b8a19f77c0ea713.jpg\"> \n</div>\n</div>\n</div>\n</center><br><script></script><br>',1559101322,0,0,0,10.00,1000.00,0,NULL,0,0,0,'','https://item.jd.com/100005088680.html'),(8,0,'http://activity.crmeb.net/public/uploads/attach/2019/05/29//71e85589cb7d3398d08f0d55bdb9031d.jpg','[\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/71e85589cb7d3398d08f0d55bdb9031d.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/996c4bad976844b4f3bcf73cbd6e0f15.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/e47f51861c11fc648a298b16c24d8627.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/105cf3b5bbe2e1c7e6366d09b71e88b2.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/e275a4c451e06248cecc0cfb2ed24fed.jpg\"]','【AppleiPhone8】AppleiPhone8(A1863)256GB深空灰色移动联通电信4G手机','【AppleiPhone8】AppleiPhone8(A1863)256GB深空灰色移动联通电信4G手机','件','','2',0.00,0.00,1000.00,0.00,'件',0,20,982,1,1,0,0,0,'<br><div skucode=\"100010\"></div><table id=\"__01\" width=\"750\" height=\"1272\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td><img src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/29//da410a5d704e8d94ada293edb79678a7.jpg\" alt=\"\" width=\"750\" height=\"249\" usemap=\"#Map01\" border=\"0\" <=\"\" d=\"\"></td></tr><tr><td><img src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/29//9ccac843781c262ae1e35bd176d43411.jpg\" width=\"750\" height=\"341\" alt=\"\"></td></tr><tr><td><img src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/29//57064ab7664452fef3b9dab19668f915.jpg\" width=\"750\" height=\"405\" alt=\"\" usemap=\"#Map02\" border=\"0\"></td></tr><tr><td><img src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/29//92d55c4dc01ade157aba628edc00be0b.jpg\" width=\"640\" alt=\"\" usemap=\"#Map03\"><map name=\"Map01\"><area shape=\"rect\" coords=\"5,41,98,177\" href=\"https://pro.m.jd.com/mall/active/bFBgZuiq1QFNCPfzog9sEHDfeN5/index.html\" target=\"_blank\"><area shape=\"rect\" coords=\"231,67,330,194\" href=\"https://mall.jd.com/view_page-86030491.html#jingzhunda\" target=\"_blank\"> <area shape=\"rect\" coords=\"418,67,517,195\" href=\"https://mall.jd.com/view_page-86030491.html#jingdongweixiu\" target=\"_blank\"> <area shape=\"rect\" coords=\"606,67,705,195\" href=\"https://mall.jd.com/view_page-86030491.html#yijiuhuanxin\" target=\"_blank\"> <map name=\"Map02\"><area shape=\"rect\" coords=\"3,38,250,402\" href=\"https://item.jd.com/4996353.html\" target=\"_blank\"> <area shape=\"rect\" coords=\"252,38,495,402\" href=\"https://item.jd.com/771942.html\" target=\"_blank\"> <area shape=\"rect\" coords=\"501,39,745,400\" href=\"https://item.jd.com/5164987.html\" target=\"_blank\"> </map><map name=\"Map03\"><area shape=\"rect\" coords=\"196,220,532,252\" href=\"https://support.apple.com/zh-cn/HT204073\" target=\"_blank\"> </map></map></td></tr></tbody></table><br><script></script><br>',1559101359,0,0,0,0.00,1000.00,0,NULL,0,0,0,'','https://item.jd.com/5089241.html'),(9,0,'http://activity.crmeb.net/public/uploads/attach/2019/05/29//51308e61ace45968fdef953b2ac6c241.jpg','[\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/51308e61ace45968fdef953b2ac6c241.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/d3f3999622cb39eddb966d8cc041cb79.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/c2a01686bee0024c0ae3d08367ef9836.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/7121d81126a84b20a4f8b7e1252d0306.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/a6cc4157d0cf8e79f5b4a7cac1423f25.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/391618fe80748151243ce5e8650ee3bb.jpg\"]','【雷神911Air星战】雷神(ThundeRobot)911Air星战二代旗舰版15.6英寸窄边框游戏笔记本电脑i79750H512GSSDRGB键盘GTX1650','【雷神911Air星战】雷神(ThundeRobot)911Air星战二代旗舰版15.6英寸窄边框游戏笔记本电脑i79750H512GSSDRGB键盘GTX1650','件','','2',1000.00,0.00,1000.00,0.00,'件',0,23,983,1,1,0,0,1,'<br><div id=\"zbViewModulesH\" value=\"12744\"></div><input id=\"zbViewModulesHeight\" type=\"hidden\" value=\"12744\"><div skudesign=\"100010\"></div><div class=\"ssd-module-wrap\">\n    <div class=\"ssd-module M15574696198181 animate-M15574696198181\" data-id=\"M15574696198181\">\n        \n</div>\n<div class=\"ssd-module M15574696198302 animate-M15574696198302\" data-id=\"M15574696198302\">\n        \n</div>\n<div class=\"ssd-module M15574696198423 animate-M15574696198423\" data-id=\"M15574696198423\">\n        \n</div>\n<div class=\"ssd-module M15574696198564 animate-M15574696198564\" data-id=\"M15574696198564\">\n        \n</div>\n<div class=\"ssd-module M15574696198705 animate-M15574696198705\" data-id=\"M15574696198705\">\n        \n</div>\n<div class=\"ssd-module M15574696198856 animate-M15574696198856\" data-id=\"M15574696198856\">\n        \n</div>\n<div class=\"ssd-module M15574696199077 animate-M15574696199077\" data-id=\"M15574696199077\">\n        \n</div>\n<div class=\"ssd-module M15574696199278 animate-M15574696199278\" data-id=\"M15574696199278\">\n        \n</div>\n<div class=\"ssd-module M15574696199519 animate-M15574696199519\" data-id=\"M15574696199519\">\n        \n</div>\n<div class=\"ssd-module M155746961996910 animate-M155746961996910\" data-id=\"M155746961996910\">\n        \n</div>\n<div class=\"ssd-module M155746961998811 animate-M155746961998811\" data-id=\"M155746961998811\">\n        \n</div>\n<div class=\"ssd-module M155746962001812 animate-M155746962001812\" data-id=\"M155746962001812\">\n        \n</div>\n<div class=\"ssd-module M155746962004613 animate-M155746962004613\" data-id=\"M155746962004613\">\n        \n</div>\n<div class=\"ssd-module M155746962006814 animate-M155746962006814\" data-id=\"M155746962006814\">\n        \n</div>\n<div class=\"ssd-module M155746962008915 animate-M155746962008915\" data-id=\"M155746962008915\">\n        \n</div>\n\n</div>\n<!-- 2019-05-10 02:27:40 --> <br><script></script><br>',1559110455,0,0,0,0.00,1000.00,0,NULL,0,20,0,'','https://item.jd.com/100005518258.html'),(10,0,'http://activity.crmeb.net/public/uploads/attach/2019/05/30//b58f452dc89775b344bade7fdc3ede14.jpg','[\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/b58f452dc89775b344bade7fdc3ede14.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/fe90dcb696cfcef739565894f9e93d9d.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/75a24145aac82bce88931019f91e928a.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/cdbc02ce7907670aa099c486f8959154.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/f8c0ffa71bfc8efae28082bf05c8969a.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/5fda52231265c835f853dd284d7437f9.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/0eaba55adaedcd7d0b17c7202225eed9.jpg\"]','【华为华为10000mAh快充移动电源/充电宝】华为10000毫安充电宝/移动电源18W双向快充MicroUSB口输入白色适用于安卓/苹果/平板等','【华为华为10000mAh快充移动电源/充电宝】华为10000毫安充电宝/移动电源18W双向快充MicroUSB口输入白色适用于安卓/苹果/平板等','','','4',300.00,0.00,300.00,0.00,'件',0,0,100,0,1,0,1,0,'<br><div cssurl=\"//sku-market-gw.jd.com/css/pc/100002611539.css?t=1552645455602\"></div><div skucode=\"100010\"></div><center>\n<img src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//efbee681cb31fe72ed52c006b56f31cf.jpg\"> \n</center><br><script></script><br>',1559198939,0,0,0,0.00,400.00,0,NULL,0,50,0,'','https://item.jd.com/100002611539.html'),(11,0,'http://activity.crmeb.net/public/uploads/attach/2019/05/30//0eecbfbca9ebc315c2882590fd55a209.jpg','[\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/0eecbfbca9ebc315c2882590fd55a209.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/1a730a7edcb0c373f8188b4d6090999e.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/1da1cff5adc9c053022373596032cbb4.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/d116eb69f06169eed8efd06fcd4dcb90.jpg\",\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/30\\/\\/33f645b107441db0b05eaa428a888ac6.jpg\"]','伊利酸奶畅轻整箱装乳酸菌燕麦黄桃草莓早餐奶250克9瓶风味发酵乳','伊利酸奶畅轻整箱装乳酸菌燕麦黄桃草莓早餐奶250克9瓶风味发酵乳','','','4',80.00,0.00,80.00,0.00,'件',0,63,937,1,1,0,1,0,'<div style=\"width: 790.0px;height: 13870.0px;overflow: hidden;\"><div style=\"width: 790.0px;height: 13870.0px;overflow: hidden;\"><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//4466609a8fd2572a4366a0786f7893a5.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//f37e16bbbc014195001bc16fcc6cae63.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//960bad190414f774241379ccdf073576.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//8f20a9984fd968785de5e32053be9747.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//c00e4506123402f687405c69b80bb5c8.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//e8bccebd6534055129a8af8c488528a3.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//547c56bac0eb97085b776234e6104d42.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//ebd3cccb57e2d1b7a06b18fb1ee19978.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//a2981e2259068977cb15205d5516046b.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//e768dca53e023a3a79215fe2f2cf25fb.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//57ad0f7b95a510e91f5c080cd0ef45f0.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//3b2c7bafc9bfba1e01da50f2d44da19c.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//4af68ddf547e251bc349daac6b7ddc21.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//c59c6f708dda1ac28df3f627b1543f4e.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//a4cfd1a15c188d1c7793dcd6762c607f.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//83d0a242bbf6c4fce431da5a45ba72dc.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//c56ca302f42d2d16a770d3f87796e614.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//7d2008368b7a9122465c34f459ed55d7.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//cfef919448f30e5b433572edbd316ef5.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//793c7f0f2d8cdc74c7d94dc9c5a3d125.jpg\"/><img style=\"display: block;width: 100.0%;\" src=\"http://activity.crmeb.net/public/uploads/attach/2019/05/30//0d8fd269982df7991462bffcb92904f1.jpg\"/></div></div>',1559199293,0,0,0,0.00,90.00,0,NULL,0,10,0,'','https://detail.tmall.com/item.htm?spm=a1z10.5-b-s.w4011-19034888351.47.551172542eL9Go&id=569589000841&rn=cdeb08db2601055d6c446c7400b0057f&abbucket=3'),(12,0,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','[\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\"]','测撒测试','测撒测试','测撒测试','','3',10.00,0.00,10.00,0.00,'件',0,4,996,1,1,1,1,1,'',1560650420,1,1,0,0.00,5.00,0,NULL,0,100,0,'',''),(13,0,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','[\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\"]','测撒测试','测撒测试','测撒测试','','3',10.00,0.00,10.00,0.00,'件',0,1,999,1,1,1,1,1,'',1560650420,1,1,0,0.00,5.00,0,NULL,0,100,0,'',''),(14,0,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','[\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\"]','测撒测试','测撒测试','测撒测试','','3',10.00,0.00,10.00,0.00,'件',0,3,997,1,1,1,1,1,'',1560650420,1,1,0,0.00,5.00,0,NULL,0,100,0,'',''),(15,0,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','[\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\"]','测撒测试','测撒测试','测撒测试','','3',10.00,0.00,10.00,0.00,'件',0,15,998,1,1,1,1,1,'',1560650420,1,1,0,0.00,5.00,0,NULL,0,100,0,'',''),(17,0,'http://localhost/uploads/attach/2020/02/20200223/67989f4fe1caa64d3af716f32726c7c6.jpg','[\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/67989f4fe1caa64d3af716f32726c7c6.jpg\"]','微信小程序公众号商城源码模板开发定制作拼团购带后台教程CRMEB','微信小程序公众号商城源码模板开发定制作拼团购带后台教程CRMEB','','','4',498.00,0.00,498.00,0.00,'件',0,0,498,1,0,0,0,0,'<p><br/></p><p><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/60a1b15d3a76d624e8fe4f29d6405329.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/4d756807800de48cf64515abde691858.jpg\" style=\"max-width: 750.0px;\"/><a href=\"http://undefined\" target=\"_blank\"><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/6eb36373e34467b616caf8ebd628b8a9.jpg\" style=\"max-width: 750.0px;\"/></a><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/9fd1c33715375d14a910dc6ac16a1f01.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/cf82af05b3627661f7311b437fd4ef75.png\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/6a199d8d05c1ade1d9d9d430af0c2135.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/ba7b6671f1ab84b7d1ff9f7ae483db97.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/17c4918d59ef74b5f15b63ce905cc301.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/29bcd8aeffa602b6bc37c9ea219f54a1.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/5ccce7202973e32e7b2086010e29038b.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/dc887ac553f4ea66365e69a626b4f030.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/77aedb47edfd4f9f3fe4d0be51bb2994.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/c57055e3fbd06b6947e49da47751ed7e.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/efdf887ad14277311c8f373197bd95ad.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/39154c06e825503436d4e488aecfc466.jpg\" style=\"max-width: 750.0px;\"/><img src=\"http://kaifa.crmeb.net/uploads/attach/2019/07/30/3bbf70c1bbebee6dec6717700a1a0fb1.jpg\" style=\"max-width: 750.0px;\"/></p><p><br/></p><div style=\"height: 1.0px;overflow: hidden;line-height: 20.0px;\">添加影藏字符</div>',1564471319,0,1,0,0.00,498.00,0,NULL,0,498,0,'','https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-10814341800.8.26d7346bMJoug6&id=575636560349'),(18,0,'http://localhost/uploads/attach/2020/02/20200223/67989f4fe1caa64d3af716f32726c7c6.jpg','[\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/67989f4fe1caa64d3af716f32726c7c6.jpg\"]','111','111','111','','',20.00,0.00,20.00,0.00,'件',0,0,20,0,0,0,0,0,'',1565148206,0,1,0,0.00,0.00,0,NULL,0,0,0,'',''),(19,0,'http://kaifa.crmeb.net/uploads/attach/2019/08/13/4e3396f4248e9e5ef2eab5505216ade0.jpg','[\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/13\\/4e3396f4248e9e5ef2eab5505216ade0.jpg\",\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/13\\/5653627e73313cf61c9620725c45a376.jpg\",\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/13\\/1d9d4158d2d7c7f0466e78207246e845.jpg\",\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/13\\/3f9bfd12b76f290d3ed82ea44ebb399a.jpg\",\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/13\\/e8c9d50e6b7cef371fe742ab08abd6a4.jpg\"]','【直营】ZOJIRUSHI象印进口不锈钢便携保温杯KB48480ml日本tmall.hk天猫国际','【直营】ZOJIRUSHI象印进口不锈钢便携保温杯KB48480ml日本tmall.hk天猫国际','','','4',22.00,0.00,56.00,0.00,'件',0,0,222,1,0,0,0,0,'<div> <a name=\"hlg_list_1_17635940_start\"></a> </div> <div> <a name=\"hlg_list_1_17599564_end\"></a> </div> <div> <a name=\"hlg_list_1_17537058_start\"></a> </div> <table style=\"margin: 0.0px auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">  <tbody><tr> <td> <div> &nbsp; </div> <div> <a href=\"https://detail.tmall.hk/hk/item.htm?id=575153295527\" target=\"_blank\"></a><a href=\"https://detail.tmall.hk/hk/item.htm?id=575153295527\" target=\"_blank\"></a> </div> </td> </tr>  </tbody></table> <div> &nbsp; </div> <div> <img width=\"790\" height=\"719\" style=\"font-weight: bold;font-size: 1.5em;\" src=\"http://kaifa.crmeb.net/uploads/attach/2019/08/13/e882d4dffdca67b65a7a1e66fb209c4c.jpg\"><img width=\"790\" height=\"589\" style=\"font-weight: bold;font-size: 1.5em;\" src=\"http://kaifa.crmeb.net/uploads/attach/2019/08/13/feb565a57f5d42c370c54df7bdacb050.jpg\"><img width=\"790\" height=\"581\" style=\"font-weight: bold;font-size: 1.5em;\" src=\"http://kaifa.crmeb.net/uploads/attach/2019/08/13/12709ee798ac2dd5c21d7ab030aa4e13.png\"><img width=\"790\" height=\"1060\" style=\"font-weight: bold;font-size: 1.5em;\" src=\"http://kaifa.crmeb.net/uploads/attach/2019/08/13/5cc24febd1722f8c7ec7d5cf74262743.png\"><img width=\"790\" height=\"1051\" style=\"font-weight: bold;font-size: 1.5em;\" src=\"http://kaifa.crmeb.net/uploads/attach/2019/08/13/28ccd5e15404129a793045f57049f149.jpg\"><img width=\"790\" height=\"354\" style=\"font-weight: bold;font-size: 1.5em;\" src=\"http://kaifa.crmeb.net/uploads/attach/2019/08/13/42cc797e7005e47baf26cc33655b4667.jpg\"><img width=\"790\" height=\"553\" style=\"font-weight: bold;font-size: 1.5em;\" src=\"http://kaifa.crmeb.net/uploads/attach/2019/08/13/0a8d0d2e2cb85c94c0d5380058603c56.jpg\"><img width=\"790\" height=\"884\" style=\"font-weight: bold;font-size: 1.5em;\" src=\"http://kaifa.crmeb.net/uploads/attach/2019/08/13/26b2896f313fb594884fb992e33c5fa8.jpg\"><img width=\"790\" height=\"891\" style=\"font-weight: bold;font-size: 1.5em;\" src=\"http://kaifa.crmeb.net/uploads/attach/2019/08/13/7d1991d9b7bf33e84782c6cd942224f6.jpg\"> </div>',1565687845,0,0,0,0.00,22.00,0,NULL,0,22,0,'','https://detail.tmall.hk/hk/item.htm?spm=a1z10.1-b.w4004-21302208419.5.46261c5bwAUxpO&pvid=b786cf12-f690-4910-9535-e0fe5825e8f6&pos=2&acm=03068.1003.1.702815&id=586996993214&scm=1007.12941.28043.100200300000000');

#
# Structure for table "tb_store_product_attr"
#

DROP TABLE IF EXISTS `tb_store_product_attr`;
CREATE TABLE `tb_store_product_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值',
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

#
# Data for table "tb_store_product_attr"
#

INSERT INTO `tb_store_product_attr` VALUES (3,'容量','3L,4L'),(3,'颜色','白色,黑色'),(15,'颜色','黑色,白色,紫色'),(15,'规则','大,小'),(2,'孔距','30cm,40cm'),(2,'材质','陶瓷,不锈钢'),(7,'1','2,3'),(7,'3','1'),(8,'1','1,3'),(8,'2','2');

#
# Structure for table "tb_store_product_attr_result"
#

DROP TABLE IF EXISTS `tb_store_product_attr_result`;
CREATE TABLE `tb_store_product_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间',
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性详情表';

#
# Data for table "tb_store_product_attr_result"
#

INSERT INTO `tb_store_product_attr_result` VALUES (2,'{\"attr\":[{\"value\":\"\\u5b54\\u8ddd\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"30cm\",\"40cm\"]},{\"value\":\"\\u6750\\u8d28\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u9676\\u74f7\",\"\\u4e0d\\u9508\\u94a2\"]}],\"value\":[{\"detail\":{\"\\u5b54\\u8ddd\":\"30cm\",\"\\u6750\\u8d28\":\"\\u9676\\u74f7\"},\"cost\":\"1500.00\",\"price\":0.02,\"sales\":936,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"check\":false},{\"detail\":{\"\\u5b54\\u8ddd\":\"30cm\",\"\\u6750\\u8d28\":\"\\u4e0d\\u9508\\u94a2\"},\"cost\":\"1500.00\",\"price\":0.03,\"sales\":936,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"check\":false},{\"detail\":{\"\\u5b54\\u8ddd\":\"40cm\",\"\\u6750\\u8d28\":\"\\u9676\\u74f7\"},\"cost\":\"1500.00\",\"price\":\"0.01\",\"sales\":938,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"check\":false},{\"detail\":{\"\\u5b54\\u8ddd\":\"40cm\",\"\\u6750\\u8d28\":\"\\u4e0d\\u9508\\u94a2\"},\"cost\":\"1500.00\",\"price\":\"0.01\",\"sales\":937,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dbc27c69c7.jpg\",\"check\":false}]}',1565600373),(3,'{\"attr\":[{\"value\":\"\\u5bb9\\u91cf\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"3L\",\"4L\"]},{\"value\":\"\\u989c\\u8272\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u767d\\u8272\",\"\\u9ed1\\u8272\"]}],\"value\":[{\"detail\":{\"\\u5bb9\\u91cf\":\"3L\",\"\\u989c\\u8272\":\"\\u9ed1\\u8272\"},\"cost\":\"10.00\",\"price\":249,\"sales\":20,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\",\"check\":false},{\"detail\":{\"\\u5bb9\\u91cf\":\"4L\",\"\\u989c\\u8272\":\"\\u9ed1\\u8272\"},\"cost\":\"10.00\",\"price\":299,\"sales\":999,\"pic\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc15ba1972.jpg\",\"check\":false}]}',1559378824),(7,'{\"attr\":[{\"value\":\"1\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"2\",\"3\"]},{\"value\":\"3\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"1\"]}],\"value\":[{\"detail\":{\"1\":\"2\",\"3\":\"1\"},\"cost\":\"1000.00\",\"price\":\"100.00\",\"sales\":76,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/6f2a1ece45e307f274e3384410a3bd3a.jpg\",\"check\":false},{\"detail\":{\"1\":\"3\",\"3\":\"1\"},\"cost\":\"1000.00\",\"price\":\"100.00\",\"sales\":76,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/6f2a1ece45e307f274e3384410a3bd3a.jpg\",\"check\":false}]}',1565665933),(8,'{\"attr\":[{\"value\":\"1\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"1\",\"3\"]},{\"value\":\"2\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"2\"]}],\"value\":[{\"detail\":{\"1\":\"1\",\"2\":\"2\"},\"cost\":\"1000.00\",\"price\":\"0.00\",\"sales\":982,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/71e85589cb7d3398d08f0d55bdb9031d.jpg\",\"check\":false},{\"detail\":{\"1\":\"3\",\"2\":\"2\"},\"cost\":\"1000.00\",\"price\":\"0.00\",\"sales\":982,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/71e85589cb7d3398d08f0d55bdb9031d.jpg\",\"check\":false}]}',1565680773),(9,'{\"attr\":[{\"value\":\"\\u914d\\u7f6e\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"i7-9750H 512GSSD RGB\\u952e\\u76d8 GTX1650\",\"i7-9750H 8G 512GSSD GTX1050\",\"i5-9300H 8G 512GSSD GTX1050)\"]}],\"value\":[{\"detail\":{\"\\u914d\\u7f6e\":\"i7-9750H 512GSSD RGB\\u952e\\u76d8 GTX1650\"},\"cost\":\"1000.00\",\"price\":\"1000.00\",\"sales\":984,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/51308e61ace45968fdef953b2ac6c241.jpg\",\"check\":false},{\"detail\":{\"\\u914d\\u7f6e\":\"i7-9750H 8G 512GSSD GTX1050\"},\"cost\":\"1000.00\",\"price\":900,\"sales\":984,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/51308e61ace45968fdef953b2ac6c241.jpg\",\"check\":false},{\"detail\":{\"\\u914d\\u7f6e\":\"i5-9300H 8G 512GSSD GTX1050)\"},\"cost\":\"1000.00\",\"price\":800,\"sales\":984,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/05\\/29\\/\\/51308e61ace45968fdef953b2ac6c241.jpg\",\"check\":false}]}',1565172349),(15,'{\"attr\":[{\"value\":\"\\u989c\\u8272\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u9ed1\\u8272\",\"\\u767d\\u8272\",\"\\u7d2b\\u8272\"]},{\"value\":\"\\u89c4\\u5219\",\"detailValue\":\"\",\"attrHidden\":true,\"detail\":[\"\\u5927\",\"\\u5c0f\"]}],\"value\":[{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\",\"\\u89c4\\u5219\":\"\\u5927\"},\"price\":70,\"cost\":\"5.00\",\"sales\":998,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u9ed1\\u8272\",\"\\u89c4\\u5219\":\"\\u5c0f\"},\"cost\":\"5.00\",\"price\":60,\"sales\":998,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\",\"\\u89c4\\u5219\":\"\\u5927\"},\"cost\":\"5.00\",\"price\":50,\"sales\":998,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u767d\\u8272\",\"\\u89c4\\u5219\":\"\\u5c0f\"},\"cost\":\"5.00\",\"price\":40,\"sales\":998,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u7d2b\\u8272\",\"\\u89c4\\u5219\":\"\\u5927\"},\"cost\":\"5.00\",\"price\":10,\"sales\":202,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false},{\"detail\":{\"\\u989c\\u8272\":\"\\u7d2b\\u8272\",\"\\u89c4\\u5219\":\"\\u5c0f\"},\"cost\":\"5.00\",\"price\":20,\"sales\":200,\"pic\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\",\"check\":false}]}',1563346586);

#
# Structure for table "tb_store_product_attr_value"
#

DROP TABLE IF EXISTS `tb_store_product_attr_value`;
CREATE TABLE `tb_store_product_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `bar_code` varchar(50) NOT NULL DEFAULT '' COMMENT '产品条码',
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

#
# Data for table "tb_store_product_attr_value"
#

INSERT INTO `tb_store_product_attr_value` VALUES (15,'小,白色',997,1,40.00,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','08af4c92',5.00,''),(15,'大,黑色',993,5,70.00,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','1bf9fad8',5.00,''),(8,'1,2',980,2,0.00,'http://activity.crmeb.net/public/uploads/attach/2019/05/29//71e85589cb7d3398d08f0d55bdb9031d.jpg','304d1fc7',1000.00,''),(2,'40cm,不锈钢',937,0,0.01,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg','39b97621',1500.00,''),(2,'30cm,不锈钢',936,0,0.03,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg','51c7f751',1500.00,''),(8,'2,3',982,0,0.00,'http://activity.crmeb.net/public/uploads/attach/2019/05/29//71e85589cb7d3398d08f0d55bdb9031d.jpg','5fe3af25',1000.00,''),(2,'30cm,陶瓷',924,12,0.02,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg','63912ead',1500.00,''),(7,'1,2',75,1,100.00,'http://activity.crmeb.net/public/uploads/attach/2019/05/29//6f2a1ece45e307f274e3384410a3bd3a.jpg','76862ff5',1000.00,''),(15,'大,紫色',202,0,10.00,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','7a06e7f9',5.00,''),(2,'40cm,陶瓷',938,0,0.01,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dbc27c69c7.jpg','a6c4ecd2',1500.00,''),(3,'4L,黑色',967,32,299.00,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc15ba1972.jpg','aa5915e8',10.00,''),(3,'3L,黑色',0,20,249.00,'http://datong.crmeb.net/public/uploads/attach/2019/01/15/5c3dc15ba1972.jpg','c1fd48a6',10.00,''),(15,'小,紫色',195,5,20.00,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','d630e29a',5.00,''),(7,'1,3',76,0,100.00,'http://activity.crmeb.net/public/uploads/attach/2019/05/29//6f2a1ece45e307f274e3384410a3bd3a.jpg','d7b47f88',1000.00,''),(15,'小,黑色',997,1,60.00,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','e4d9a758',5.00,''),(15,'大,白色',997,1,50.00,'http://activity.crmeb.net/public/uploads/editor/20190605/5cf737bf264e4.jpg','f208c727',5.00,'');

#
# Structure for table "tb_store_product_cate"
#

DROP TABLE IF EXISTS `tb_store_product_cate`;
CREATE TABLE `tb_store_product_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0' COMMENT '产品id',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='产品分类辅助表';

#
# Data for table "tb_store_product_cate"
#

INSERT INTO `tb_store_product_cate` VALUES (14,6,2,1558580351),(24,4,3,1559110372),(25,4,2,1559110372),(28,3,3,1559110403),(29,3,2,1559110403),(38,12,3,1560650420),(49,5,4,1562729229),(50,5,7,1562729229),(51,5,2,1562729229),(52,5,3,1562729229),(53,5,19,1562729229),(55,11,4,1562729250),(59,10,4,1562741711),(60,1,2,1562835320),(61,1,7,1562835320),(65,2,3,1565148046),(66,2,2,1565148046),(68,9,2,1565148922),(70,8,2,1565426114),(71,7,2,1565600246),(72,19,4,1565687845),(73,18,0,1582471954),(74,17,4,1582471980);

#
# Structure for table "tb_store_product_relation"
#

DROP TABLE IF EXISTS `tb_store_product_relation`;
CREATE TABLE `tb_store_product_relation` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `type` varchar(32) NOT NULL COMMENT '类型(收藏(collect）、点赞(like))',
  `category` varchar(32) NOT NULL COMMENT '某种类型的商品(普通商品、秒杀商品)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  UNIQUE KEY `uid` (`uid`,`product_id`,`type`,`category`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `category` (`category`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品点赞和收藏表';

#
# Data for table "tb_store_product_relation"
#


#
# Structure for table "tb_store_product_reply"
#

DROP TABLE IF EXISTS `tb_store_product_reply`;
CREATE TABLE `tb_store_product_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `oid` int(11) NOT NULL COMMENT '订单ID',
  `unique` char(32) NOT NULL COMMENT '唯一id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `reply_type` varchar(32) NOT NULL DEFAULT 'product' COMMENT '某种商品类型(普通商品、秒杀商品）',
  `product_score` tinyint(1) NOT NULL COMMENT '商品分数',
  `service_score` tinyint(1) NOT NULL COMMENT '服务分数',
  `comment` varchar(512) NOT NULL COMMENT '评论内容',
  `pics` text NOT NULL COMMENT '评论图片',
  `add_time` int(11) NOT NULL COMMENT '评论时间',
  `merchant_reply_content` varchar(300) DEFAULT NULL COMMENT '管理员回复内容',
  `merchant_reply_time` int(11) DEFAULT NULL COMMENT '管理员回复时间',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未删除1已删除',
  `is_reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未回复1已回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id_2` (`oid`,`unique`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `parent_id` (`reply_type`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `product_score` (`product_score`) USING BTREE,
  KEY `service_score` (`service_score`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

#
# Data for table "tb_store_product_reply"
#


#
# Structure for table "tb_store_seckill"
#

DROP TABLE IF EXISTS `tb_store_seckill`;
CREATE TABLE `tb_store_seckill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品秒杀产品表id',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(2000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `cost` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '成本',
  `ot_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `give_integral` decimal(10,2) unsigned NOT NULL COMMENT '返多少积分',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `stock` int(10) unsigned NOT NULL COMMENT '库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `unit_name` varchar(16) NOT NULL COMMENT '单位名',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `description` text COMMENT '内容',
  `start_time` varchar(128) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(128) NOT NULL COMMENT '结束时间',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '产品状态',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '热门推荐',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除 0未删除1已删除',
  `num` int(11) unsigned NOT NULL COMMENT '最多秒杀几个',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '显示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE,
  KEY `start_time` (`start_time`,`stop_time`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `is_show` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `is_postage` (`is_postage`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品秒杀产品表';

#
# Data for table "tb_store_seckill"
#


#
# Structure for table "tb_store_seckill_attr"
#

DROP TABLE IF EXISTS `tb_store_seckill_attr`;
CREATE TABLE `tb_store_seckill_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值',
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性表';

#
# Data for table "tb_store_seckill_attr"
#


#
# Structure for table "tb_store_seckill_attr_result"
#

DROP TABLE IF EXISTS `tb_store_seckill_attr_result`;
CREATE TABLE `tb_store_seckill_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间',
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性详情表';

#
# Data for table "tb_store_seckill_attr_result"
#


#
# Structure for table "tb_store_seckill_attr_value"
#

DROP TABLE IF EXISTS `tb_store_seckill_attr_value`;
CREATE TABLE `tb_store_seckill_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性值表';

#
# Data for table "tb_store_seckill_attr_value"
#


#
# Structure for table "tb_store_service"
#

DROP TABLE IF EXISTS `tb_store_service`;
CREATE TABLE `tb_store_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服id',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `uid` int(11) NOT NULL COMMENT '客服uid',
  `avatar` varchar(250) NOT NULL COMMENT '客服头像',
  `nickname` varchar(50) NOT NULL COMMENT '代理名称',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0隐藏1显示',
  `notify` int(2) DEFAULT '0' COMMENT '订单通知1开启0关闭',
  `customer` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否展示统计管理',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服表';

#
# Data for table "tb_store_service"
#


#
# Structure for table "tb_store_service_log"
#

DROP TABLE IF EXISTS `tb_store_service_log`;
CREATE TABLE `tb_store_service_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服用户对话记录表ID',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `msn` text NOT NULL COMMENT '消息内容',
  `uid` int(11) NOT NULL COMMENT '发送人uid',
  `to_uid` int(11) NOT NULL COMMENT '接收人uid',
  `add_time` int(11) NOT NULL COMMENT '发送时间',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读（0：否；1：是；）',
  `remind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否提醒过',
  `msn_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '消息类型 1=文字 2=表情 3=图片 4=语音',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服用户对话记录表';

#
# Data for table "tb_store_service_log"
#


#
# Structure for table "tb_store_visit"
#

DROP TABLE IF EXISTS `tb_store_visit`;
CREATE TABLE `tb_store_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL COMMENT '产品ID',
  `product_type` varchar(32) DEFAULT NULL COMMENT '产品类型',
  `cate_id` int(11) DEFAULT NULL COMMENT '产品分类ID',
  `type` char(50) DEFAULT NULL COMMENT '产品类型',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `count` int(11) DEFAULT NULL COMMENT '访问次数',
  `content` varchar(255) DEFAULT NULL COMMENT '备注描述',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='产品浏览分析表';

#
# Data for table "tb_store_visit"
#

INSERT INTO `tb_store_visit` VALUES (1,11,NULL,4,'viwe',1,1,'',1582608703);

#
# Structure for table "tb_system_admin"
#

DROP TABLE IF EXISTS `tb_system_admin`;
CREATE TABLE `tb_system_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '后台管理员表ID',
  `account` varchar(32) NOT NULL COMMENT '后台管理员账号',
  `pwd` char(32) NOT NULL COMMENT '后台管理员密码',
  `real_name` varchar(16) NOT NULL COMMENT '后台管理员姓名',
  `roles` varchar(128) NOT NULL COMMENT '后台管理员权限(menus_id)',
  `last_ip` varchar(16) DEFAULT NULL COMMENT '后台管理员最后一次登录ip',
  `last_time` int(10) unsigned DEFAULT NULL COMMENT '后台管理员最后一次登录时间',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '后台管理员添加时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '后台管理员级别',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '后台管理员状态 1有效0无效',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

#
# Data for table "tb_system_admin"
#

INSERT INTO `tb_system_admin` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','admin','1','::1',1583047220,1582208741,0,0,1,0),(2,'test','47ec2dd791e31e2ef2076caf64ed9b3d','test','','::1',1582209070,0,0,1,1,0);

#
# Structure for table "tb_system_attachment"
#

DROP TABLE IF EXISTS `tb_system_attachment`;
CREATE TABLE `tb_system_attachment` (
  `att_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '附件名称',
  `att_dir` varchar(200) NOT NULL DEFAULT '' COMMENT '附件路径',
  `satt_dir` varchar(200) DEFAULT NULL COMMENT '压缩图片路径',
  `att_size` char(30) NOT NULL DEFAULT '' COMMENT '附件大小',
  `att_type` char(30) NOT NULL DEFAULT '' COMMENT '附件类型',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '分类ID0编辑器,1产品图片,2拼团图片,3砍价图片,4秒杀图片,5文章图片,6组合数据图',
  `time` int(11) NOT NULL DEFAULT '0' COMMENT '上传时间',
  `image_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '图片上传类型 1本地 2七牛云 3OSS 4COS ',
  `module_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '图片上传模块类型 1 后台上传 2 用户生成',
  PRIMARY KEY (`att_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1218 DEFAULT CHARSET=utf8 COMMENT='附件管理表';

#
# Data for table "tb_system_attachment"
#

INSERT INTO `tb_system_attachment` VALUES (336,'69eb5f09f947ff53244a57d5c021b817.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/69eb5f09f947ff53244a57d5c021b817.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/69eb5f09f947ff53244a57d5c021b817.jpg','377824','image/jpeg',9,1564471315,1,1),(337,'69eb5f09f947ff53244a57d5c021b817.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/69eb5f09f947ff53244a57d5c021b817.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/69eb5f09f947ff53244a57d5c021b817.jpg','377824','image/jpeg',9,1564471315,1,1),(338,'ce0a2ed478552ca0bfc7092f337c8d10.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/ce0a2ed478552ca0bfc7092f337c8d10.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/ce0a2ed478552ca0bfc7092f337c8d10.jpg','196474','image/jpeg',9,1564471315,1,1),(339,'13efc762f7fdfec35ad2eeedc541db4b.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/13efc762f7fdfec35ad2eeedc541db4b.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/13efc762f7fdfec35ad2eeedc541db4b.jpg','196646','image/jpeg',9,1564471315,1,1),(340,'4d280506de9f99621d6c9257abb00002.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/4d280506de9f99621d6c9257abb00002.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/4d280506de9f99621d6c9257abb00002.jpg','166156','image/jpeg',9,1564471315,1,1),(341,'b07e8708977de9c820d7d97958776f8d.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/b07e8708977de9c820d7d97958776f8d.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/b07e8708977de9c820d7d97958776f8d.jpg','238765','image/jpeg',9,1564471316,1,1),(342,'60a1b15d3a76d624e8fe4f29d6405329.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/60a1b15d3a76d624e8fe4f29d6405329.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/60a1b15d3a76d624e8fe4f29d6405329.jpg','235698','image/jpeg',9,1564471316,1,1),(343,'4d756807800de48cf64515abde691858.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/4d756807800de48cf64515abde691858.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/4d756807800de48cf64515abde691858.jpg','208245','image/jpeg',9,1564471316,1,1),(344,'6eb36373e34467b616caf8ebd628b8a9.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/6eb36373e34467b616caf8ebd628b8a9.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/6eb36373e34467b616caf8ebd628b8a9.jpg','68136','image/jpeg',9,1564471316,1,1),(345,'9fd1c33715375d14a910dc6ac16a1f01.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/9fd1c33715375d14a910dc6ac16a1f01.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/9fd1c33715375d14a910dc6ac16a1f01.jpg','234315','image/jpeg',9,1564471316,1,1),(346,'cf82af05b3627661f7311b437fd4ef75.png','http://kaifa.crmeb.net/uploads/attach/2019/07/30/cf82af05b3627661f7311b437fd4ef75.png','http://kaifa.crmeb.net/uploads/attach/2019/07/30/cf82af05b3627661f7311b437fd4ef75.png','724918','image/png',9,1564471317,1,1),(347,'6a199d8d05c1ade1d9d9d430af0c2135.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/6a199d8d05c1ade1d9d9d430af0c2135.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/6a199d8d05c1ade1d9d9d430af0c2135.jpg','368263','image/jpeg',9,1564471317,1,1),(348,'ba7b6671f1ab84b7d1ff9f7ae483db97.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/ba7b6671f1ab84b7d1ff9f7ae483db97.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/ba7b6671f1ab84b7d1ff9f7ae483db97.jpg','388901','image/jpeg',9,1564471317,1,1),(349,'17c4918d59ef74b5f15b63ce905cc301.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/17c4918d59ef74b5f15b63ce905cc301.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/17c4918d59ef74b5f15b63ce905cc301.jpg','496157','image/jpeg',9,1564471317,1,1),(350,'29bcd8aeffa602b6bc37c9ea219f54a1.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/29bcd8aeffa602b6bc37c9ea219f54a1.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/29bcd8aeffa602b6bc37c9ea219f54a1.jpg','213140','image/jpeg',9,1564471317,1,1),(351,'5ccce7202973e32e7b2086010e29038b.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/5ccce7202973e32e7b2086010e29038b.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/5ccce7202973e32e7b2086010e29038b.jpg','244587','image/jpeg',9,1564471318,1,1),(352,'dc887ac553f4ea66365e69a626b4f030.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/dc887ac553f4ea66365e69a626b4f030.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/dc887ac553f4ea66365e69a626b4f030.jpg','281625','image/jpeg',9,1564471318,1,1),(353,'77aedb47edfd4f9f3fe4d0be51bb2994.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/77aedb47edfd4f9f3fe4d0be51bb2994.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/77aedb47edfd4f9f3fe4d0be51bb2994.jpg','415317','image/jpeg',9,1564471318,1,1),(354,'c57055e3fbd06b6947e49da47751ed7e.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/c57055e3fbd06b6947e49da47751ed7e.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/c57055e3fbd06b6947e49da47751ed7e.jpg','351565','image/jpeg',9,1564471318,1,1),(355,'efdf887ad14277311c8f373197bd95ad.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/efdf887ad14277311c8f373197bd95ad.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/efdf887ad14277311c8f373197bd95ad.jpg','301960','image/jpeg',9,1564471318,1,1),(356,'39154c06e825503436d4e488aecfc466.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/39154c06e825503436d4e488aecfc466.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/39154c06e825503436d4e488aecfc466.jpg','195113','image/jpeg',9,1564471319,1,1),(357,'3bbf70c1bbebee6dec6717700a1a0fb1.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/3bbf70c1bbebee6dec6717700a1a0fb1.jpg','http://kaifa.crmeb.net/uploads/attach/2019/07/30/3bbf70c1bbebee6dec6717700a1a0fb1.jpg','580964','image/jpeg',9,1564471319,1,1),(1168,'4e3396f4248e9e5ef2eab5505216ade0.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/4e3396f4248e9e5ef2eab5505216ade0.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/4e3396f4248e9e5ef2eab5505216ade0.jpg','19245','image/jpeg',9,1565687843,1,1),(1169,'4e3396f4248e9e5ef2eab5505216ade0.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/4e3396f4248e9e5ef2eab5505216ade0.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/4e3396f4248e9e5ef2eab5505216ade0.jpg','19245','image/jpeg',9,1565687843,1,1),(1170,'5653627e73313cf61c9620725c45a376.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/5653627e73313cf61c9620725c45a376.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/5653627e73313cf61c9620725c45a376.jpg','6641','image/jpeg',9,1565687843,1,1),(1171,'1d9d4158d2d7c7f0466e78207246e845.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/1d9d4158d2d7c7f0466e78207246e845.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/1d9d4158d2d7c7f0466e78207246e845.jpg','36653','image/jpeg',9,1565687843,1,1),(1172,'3f9bfd12b76f290d3ed82ea44ebb399a.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/3f9bfd12b76f290d3ed82ea44ebb399a.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/3f9bfd12b76f290d3ed82ea44ebb399a.jpg','14501','image/jpeg',9,1565687844,1,1),(1173,'e8c9d50e6b7cef371fe742ab08abd6a4.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/e8c9d50e6b7cef371fe742ab08abd6a4.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/e8c9d50e6b7cef371fe742ab08abd6a4.jpg','29431','image/jpeg',9,1565687844,1,1),(1174,'e882d4dffdca67b65a7a1e66fb209c4c.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/e882d4dffdca67b65a7a1e66fb209c4c.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/e882d4dffdca67b65a7a1e66fb209c4c.jpg','147861','image/jpeg',9,1565687844,1,1),(1175,'feb565a57f5d42c370c54df7bdacb050.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/feb565a57f5d42c370c54df7bdacb050.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/feb565a57f5d42c370c54df7bdacb050.jpg','68050','image/jpeg',9,1565687844,1,1),(1176,'12709ee798ac2dd5c21d7ab030aa4e13.png','http://kaifa.crmeb.net/uploads/attach/2019/08/13/12709ee798ac2dd5c21d7ab030aa4e13.png','http://kaifa.crmeb.net/uploads/attach/2019/08/13/12709ee798ac2dd5c21d7ab030aa4e13.png','428042','image/png',9,1565687844,1,1),(1177,'5cc24febd1722f8c7ec7d5cf74262743.png','http://kaifa.crmeb.net/uploads/attach/2019/08/13/5cc24febd1722f8c7ec7d5cf74262743.png','http://kaifa.crmeb.net/uploads/attach/2019/08/13/5cc24febd1722f8c7ec7d5cf74262743.png','808887','image/png',9,1565687844,1,1),(1178,'28ccd5e15404129a793045f57049f149.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/28ccd5e15404129a793045f57049f149.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/28ccd5e15404129a793045f57049f149.jpg','226404','image/jpeg',9,1565687845,1,1),(1179,'42cc797e7005e47baf26cc33655b4667.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/42cc797e7005e47baf26cc33655b4667.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/42cc797e7005e47baf26cc33655b4667.jpg','51540','image/jpeg',9,1565687845,1,1),(1180,'0a8d0d2e2cb85c94c0d5380058603c56.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/0a8d0d2e2cb85c94c0d5380058603c56.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/0a8d0d2e2cb85c94c0d5380058603c56.jpg','112097','image/jpeg',9,1565687845,1,1),(1181,'26b2896f313fb594884fb992e33c5fa8.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/26b2896f313fb594884fb992e33c5fa8.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/26b2896f313fb594884fb992e33c5fa8.jpg','75331','image/jpeg',9,1565687845,1,1),(1182,'7d1991d9b7bf33e84782c6cd942224f6.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/7d1991d9b7bf33e84782c6cd942224f6.jpg','http://kaifa.crmeb.net/uploads/attach/2019/08/13/7d1991d9b7bf33e84782c6cd942224f6.jpg','94600','image/jpeg',9,1565687845,1,1),(1183,'05fe4793155b02fd110e3b576e5c6030.png','/uploads/attach/2020/02/20200223/05fe4793155b02fd110e3b576e5c6030.png','/uploads/attach/2020/02/20200223/s_05fe4793155b02fd110e3b576e5c6030.png','7999','image/png',0,1582466442,1,1),(1184,'62e5591a3c61c5a0d7b121833e3d38a9.png','/uploads/attach/2020/02/20200223/62e5591a3c61c5a0d7b121833e3d38a9.png','/uploads/attach/2020/02/20200223/s_62e5591a3c61c5a0d7b121833e3d38a9.png','17647','image/png',0,1582468662,1,1),(1185,'85d26d488368318f131ae235271eb8ea.jpg','/uploads/attach/2020/02/20200223/85d26d488368318f131ae235271eb8ea.jpg','/uploads/attach/2020/02/20200223/s_85d26d488368318f131ae235271eb8ea.jpg','22848','image/jpeg',0,1582469241,1,1),(1186,'01d2bbdd1320b5ad38a3ce1d6d306cf1.jpg','/uploads/attach/2020/02/20200223/01d2bbdd1320b5ad38a3ce1d6d306cf1.jpg','/uploads/attach/2020/02/20200223/s_01d2bbdd1320b5ad38a3ce1d6d306cf1.jpg','79693','image/jpeg',0,1582469241,1,1),(1187,'2f9032d59c03de75eb46586212c1bee7.jpg','/uploads/attach/2020/02/20200223/2f9032d59c03de75eb46586212c1bee7.jpg','/uploads/attach/2020/02/20200223/s_2f9032d59c03de75eb46586212c1bee7.jpg','87210','image/jpeg',0,1582469242,1,1),(1188,'f7452b7014d8b3d1ad9d21f27d2eefe2.jpg','/uploads/attach/2020/02/20200223/f7452b7014d8b3d1ad9d21f27d2eefe2.jpg','/uploads/attach/2020/02/20200223/s_f7452b7014d8b3d1ad9d21f27d2eefe2.jpg','22841','image/jpeg',0,1582469242,1,1),(1189,'80efdcf272c0e26be8f5dcb1f7ebc394.jpg','/uploads/attach/2020/02/20200223/80efdcf272c0e26be8f5dcb1f7ebc394.jpg','/uploads/attach/2020/02/20200223/s_80efdcf272c0e26be8f5dcb1f7ebc394.jpg','140225','image/jpeg',0,1582469242,1,1),(1190,'0dac51631c9d5c2cf375155c8c2a42f4.jpg','/uploads/attach/2020/02/20200223/0dac51631c9d5c2cf375155c8c2a42f4.jpg','/uploads/attach/2020/02/20200223/s_0dac51631c9d5c2cf375155c8c2a42f4.jpg','131624','image/jpeg',0,1582469242,1,1),(1191,'d6912f52b40b4ecc830054bd9883733b.jpg','/uploads/attach/2020/02/20200223/d6912f52b40b4ecc830054bd9883733b.jpg','/uploads/attach/2020/02/20200223/s_d6912f52b40b4ecc830054bd9883733b.jpg','104649','image/jpeg',0,1582469243,1,1),(1192,'07c0118a38a91ad4f803686f845f77f9.jpg','/uploads/attach/2020/02/20200223/07c0118a38a91ad4f803686f845f77f9.jpg','/uploads/attach/2020/02/20200223/s_07c0118a38a91ad4f803686f845f77f9.jpg','123651','image/jpeg',0,1582469243,1,1),(1193,'2fe09eb913e16db4cc3f445a8b90dbd8.png','/uploads/attach/2020/02/20200223/2fe09eb913e16db4cc3f445a8b90dbd8.png','/uploads/attach/2020/02/20200223/s_2fe09eb913e16db4cc3f445a8b90dbd8.png','2015','image/png',0,1582469582,1,1),(1194,'f79e768dac310838ffacbb15e6c5a62e.png','/uploads/attach/2020/02/20200223/f79e768dac310838ffacbb15e6c5a62e.png','/uploads/attach/2020/02/20200223/s_f79e768dac310838ffacbb15e6c5a62e.png','4580','image/png',0,1582469582,1,1),(1195,'88dfb56039f892755e4e73370fd5eee1.png','/uploads/attach/2020/02/20200223/88dfb56039f892755e4e73370fd5eee1.png','/uploads/attach/2020/02/20200223/s_88dfb56039f892755e4e73370fd5eee1.png','4160','image/png',0,1582469582,1,1),(1196,'dfe28e4c6f1342d9675fa9bdf2433ce7.png','/uploads/attach/2020/02/20200223/dfe28e4c6f1342d9675fa9bdf2433ce7.png','/uploads/attach/2020/02/20200223/s_dfe28e4c6f1342d9675fa9bdf2433ce7.png','2500','image/png',0,1582469582,1,1),(1197,'63f863801115cb520c79fcacf207b9a7.png','/uploads/attach/2020/02/20200223/63f863801115cb520c79fcacf207b9a7.png','/uploads/attach/2020/02/20200223/s_63f863801115cb520c79fcacf207b9a7.png','2582','image/png',0,1582469582,1,1),(1198,'d46c59be71bd6b5540f5434b620552a0.png','/uploads/attach/2020/02/20200223/d46c59be71bd6b5540f5434b620552a0.png','/uploads/attach/2020/02/20200223/s_d46c59be71bd6b5540f5434b620552a0.png','5322','image/png',0,1582469582,1,1),(1199,'d1b9fbc441c9b3854b2436ee9cece97b.png','/uploads/attach/2020/02/20200223/d1b9fbc441c9b3854b2436ee9cece97b.png','/uploads/attach/2020/02/20200223/s_d1b9fbc441c9b3854b2436ee9cece97b.png','1881','image/png',0,1582469582,1,1),(1200,'20b51cf486de089d3532d4fba156e2f0.png','/uploads/attach/2020/02/20200223/20b51cf486de089d3532d4fba156e2f0.png','/uploads/attach/2020/02/20200223/s_20b51cf486de089d3532d4fba156e2f0.png','4230','image/png',0,1582469582,1,1),(1201,'7a4661fa8578df35c8cb9ccc4e7faef7.png','/uploads/attach/2020/02/20200223/7a4661fa8578df35c8cb9ccc4e7faef7.png','/uploads/attach/2020/02/20200223/s_7a4661fa8578df35c8cb9ccc4e7faef7.png','4769','image/png',0,1582469582,1,1),(1202,'cf87900acd5f3b23d2aa11abcf44cbb0.png','/uploads/attach/2020/02/20200223/cf87900acd5f3b23d2aa11abcf44cbb0.png','/uploads/attach/2020/02/20200223/s_cf87900acd5f3b23d2aa11abcf44cbb0.png','3447','image/png',0,1582469582,1,1),(1203,'bf11bde29d4ba11e70025d2dabcd3500.png','/uploads/attach/2020/02/20200223/bf11bde29d4ba11e70025d2dabcd3500.png','/uploads/attach/2020/02/20200223/s_bf11bde29d4ba11e70025d2dabcd3500.png','3447','image/png',0,1582469582,1,1),(1204,'0b866c3b5c029badefa57bcf7f869e1e.png','/uploads/attach/2020/02/20200223/0b866c3b5c029badefa57bcf7f869e1e.png','/uploads/attach/2020/02/20200223/s_0b866c3b5c029badefa57bcf7f869e1e.png','2695','image/png',0,1582469582,1,1),(1205,'c6a910af0458c06402403ad6f6fbf324.png','/uploads/attach/2020/02/20200223/c6a910af0458c06402403ad6f6fbf324.png','/uploads/attach/2020/02/20200223/s_c6a910af0458c06402403ad6f6fbf324.png','4679','image/png',0,1582469582,1,1),(1206,'fef28382449caf0ab3823088c80f3477.png','/uploads/attach/2020/02/20200223/fef28382449caf0ab3823088c80f3477.png','/uploads/attach/2020/02/20200223/s_fef28382449caf0ab3823088c80f3477.png','2066','image/png',0,1582469582,1,1),(1207,'cd061cde14746eb5d2671170cbc6dcf9.png','/uploads/attach/2020/02/20200223/cd061cde14746eb5d2671170cbc6dcf9.png','/uploads/attach/2020/02/20200223/s_cd061cde14746eb5d2671170cbc6dcf9.png','1850','image/png',0,1582469582,1,1),(1208,'58870f2621157dd17086b1de649b384e.png','/uploads/attach/2020/02/20200223/58870f2621157dd17086b1de649b384e.png','/uploads/attach/2020/02/20200223/s_58870f2621157dd17086b1de649b384e.png','4279','image/png',0,1582469582,1,1),(1209,'36801b4aac87364822c3e30b1351eefb.png','/uploads/attach/2020/02/20200223/36801b4aac87364822c3e30b1351eefb.png','/uploads/attach/2020/02/20200223/s_36801b4aac87364822c3e30b1351eefb.png','1775','image/png',0,1582469582,1,1),(1210,'18e21255e830a93e7d133cc4dbba2b4e.png','/uploads/attach/2020/02/20200223/18e21255e830a93e7d133cc4dbba2b4e.png','/uploads/attach/2020/02/20200223/s_18e21255e830a93e7d133cc4dbba2b4e.png','1742','image/png',0,1582469583,1,1),(1211,'96c06feb26826c033ee83c0d8d74e5b7.png','/uploads/attach/2020/02/20200223/96c06feb26826c033ee83c0d8d74e5b7.png','/uploads/attach/2020/02/20200223/s_96c06feb26826c033ee83c0d8d74e5b7.png','3400','image/png',0,1582469583,1,1),(1212,'56dc1c5ebfde0c2b50f25f64a96064a5.png','/uploads/attach/2020/02/20200223/56dc1c5ebfde0c2b50f25f64a96064a5.png','/uploads/attach/2020/02/20200223/s_56dc1c5ebfde0c2b50f25f64a96064a5.png','17647','image/png',0,1582470252,1,1),(1213,'ddbf7daf1c83d058103dd425713942a4.png','/uploads/attach/2020/02/20200223/ddbf7daf1c83d058103dd425713942a4.png','/uploads/attach/2020/02/20200223/s_ddbf7daf1c83d058103dd425713942a4.png','17743','image/png',0,1582470316,1,1),(1214,'9ab1800ffa2d792646773f486ac607a1.png','/uploads/attach/2020/02/20200223/9ab1800ffa2d792646773f486ac607a1.png','/uploads/attach/2020/02/20200223/s_9ab1800ffa2d792646773f486ac607a1.png','15492','image/png',0,1582470360,1,1),(1215,'67989f4fe1caa64d3af716f32726c7c6.jpg','/uploads/attach/2020/02/20200223/67989f4fe1caa64d3af716f32726c7c6.jpg','/uploads/attach/2020/02/20200223/s_67989f4fe1caa64d3af716f32726c7c6.jpg','5444','image/jpeg',0,1582471214,1,1),(1216,'11_product_detail_wap.jpg','/uploads/qrcode/11_product_detail_wap.jpg','/uploads/qrcode/11_product_detail_wap.jpg','0','image/jpeg',1,1582608703,1,2),(1217,'11_product_detail_1_is_promoter_0_wap.jpg','/uploads/qrcode/11_product_detail_1_is_promoter_0_wap.jpg','/uploads/qrcode/11_product_detail_1_is_promoter_0_wap.jpg','0','image/jpeg',1,1582608704,1,2);

#
# Structure for table "tb_system_attachment_category"
#

DROP TABLE IF EXISTS `tb_system_attachment_category`;
CREATE TABLE `tb_system_attachment_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '父级ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `enname` varchar(50) DEFAULT NULL COMMENT '分类目录',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件分类表';

#
# Data for table "tb_system_attachment_category"
#


#
# Structure for table "tb_system_config"
#

DROP TABLE IF EXISTS `tb_system_config`;
CREATE TABLE `tb_system_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `menu_name` varchar(255) NOT NULL COMMENT '字段名称',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '类型(文本框,单选按钮...)',
  `input_type` varchar(20) DEFAULT 'input' COMMENT '表单类型',
  `config_tab_id` int(10) unsigned NOT NULL COMMENT '配置分类id',
  `parameter` varchar(255) DEFAULT NULL COMMENT '规则 单选框和多选框',
  `upload_type` tinyint(1) unsigned DEFAULT NULL COMMENT '上传文件格式1单图2多图3文件',
  `required` varchar(255) DEFAULT NULL COMMENT '规则',
  `width` int(10) unsigned DEFAULT NULL COMMENT '多行文本框的宽度',
  `high` int(10) unsigned DEFAULT NULL COMMENT '多行文框的高度',
  `value` varchar(5000) DEFAULT NULL COMMENT '默认值',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '配置名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '配置简介',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='配置表';

#
# Data for table "tb_system_config"
#

INSERT INTO `tb_system_config` VALUES (1,'site_name','text','input',1,'',0,'required:true',100,0,'\"\\u4eff\\u6dd8\\u5b9d\"','网站名称','网站名称',0,1),(2,'site_url','text','input',1,'',0,'required:true,url:true',100,0,'\"http:\\/\\/localhost\"','网站地址','网站地址',0,1),(3,'site_logo','upload',NULL,1,NULL,1,NULL,0,0,'\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/05fe4793155b02fd110e3b576e5c6030.png\"','后台LOGO','左上角logo,建议尺寸[170*50]',0,1),(4,'site_phone','text','input',1,'',0,'',100,0,'\"\"','联系电话','联系电话',0,1),(5,'seo_title','text','input',1,'',0,'required:true',100,0,'\"\"','SEO标题','SEO标题',0,1),(6,'site_email','text','input',1,'',0,'email:true',100,0,'\"\"','联系邮箱','联系邮箱',0,1),(7,'site_qq','text','input',1,'',0,'qq:true',100,0,'\"\"','联系QQ','联系QQ',0,1),(8,'site_close','radio','input',1,'0=>开启\n1=>PC端关闭\n2=>WAP端关闭(含微信)\n3=>全部关闭',0,'',0,0,'\"0\"','网站关闭','网站后台、商家中心不受影响。关闭网站也可访问',0,2),(9,'close_system','radio','input',1,'0=>开启\n1=>关闭',0,'',0,0,'\"0\"','关闭后台','关闭后台',0,2),(13,'wechat_appid','text','input',2,'',0,'required:true',100,0,'\"\"','AppID','AppID',0,1),(14,'wechat_appsecret','text','input',2,'',0,'required:true',100,0,'\"\"','AppSecret','AppSecret',0,1),(15,'wechat_token','text','input',2,'',0,'required:true',100,0,'\"\"','微信验证TOKEN','微信验证TOKEN',0,1),(16,'wechat_encode','radio','input',2,'0=>明文模式\n1=>兼容模式\n2=>安全模式',0,'',0,0,'\"0\"','消息加解密方式','如需使用安全模式请在管理中心修改，仅限服务号和认证订阅号',0,1),(17,'wechat_encodingaeskey','text','input',2,'',0,'required:true',100,0,'\"\"','EncodingAESKey','公众号消息加解密Key,在使用安全模式情况下要填写该值，请先在管理中心修改，然后填写该值，仅限服务号和认证订阅号',0,1),(18,'wechat_share_img','upload',NULL,2,NULL,1,NULL,0,0,'\"\"','微信分享图片','若填写此图片地址，则分享网页出去时会分享此图片。可有效防止分享图片变形',0,1),(19,'wechat_qrcode','upload','input',2,'',1,'',0,0,'\"\"','公众号二维码','您的公众号二维码',0,1),(20,'wechat_type','radio','input',2,'0=>服务号\n1=>订阅号',0,'',0,0,'\"0\"','公众号类型','公众号的类型',0,1),(21,'wechat_share_title','text','input',2,NULL,NULL,'required:true',100,0,'\"insideria\"','微信分享标题','微信分享标题',0,1),(22,'wechat_share_synopsis','textarea',NULL,2,NULL,NULL,NULL,100,5,'\"insideria\"','微信分享简介','微信分享简介',0,1),(23,'pay_weixin_appid','text','input',4,'',0,'',100,0,'\"\"','Appid','微信公众号身份的唯一标识。审核通过后，在微信发送的邮件中查看。',0,1),(24,'pay_weixin_appsecret','text','input',4,'',0,'',100,0,'\"\"','Appsecret','JSAPI接口中获取openid，审核后在公众平台开启开发模式后可查看。',0,1),(25,'pay_weixin_mchid','text','input',4,'',0,'',100,0,'\"\"','Mchid','受理商ID，身份标识',0,1),(26,'pay_weixin_client_cert','upload','input',4,'',3,'',0,0,'\"\"','微信支付证书','微信支付证书，在微信商家平台中可以下载！文件名一般为apiclient_cert.pem',0,1),(27,'pay_weixin_client_key','upload','input',4,'',3,'',0,0,'\"\"','微信支付证书密钥','微信支付证书密钥，在微信商家平台中可以下载！文件名一般为apiclient_key.pem',0,1),(28,'pay_weixin_key','text','input',4,'',0,'',100,0,'\"\"','Key','商户支付密钥Key。审核通过后，在微信发送的邮件中查看。',0,1),(29,'pay_weixin_open','radio','input',4,'1=>开启\n0=>关闭',0,'',0,0,'\"1\"','开启','是否启用微信支付',0,1),(31,'store_postage','text','input',10,'',0,'number:true,min:0',100,0,'\"0\"','邮费基础价','商品邮费基础价格,最终金额为(基础价 + 商品1邮费 + 商品2邮费)',0,1),(32,'store_free_postage','text','input',5,'',0,'number:true,min:-1',100,0,'\"100\"','满额包邮','商城商品满多少金额即可包邮',0,1),(33,'offline_postage','radio','input',10,'0=>不包邮\n1=>包邮',0,'',0,0,'\"0\"','线下支付是否包邮','用户选择线下支付时是否包邮',0,1),(34,'integral_ratio','text','input',11,'',0,'number:true',100,0,'\"1\"','积分抵用比例','积分抵用比例(1积分抵多少金额)',0,1),(35,'site_service_phone','text','input',1,'',0,'',100,0,'\"\"','客服电话','客服联系电话',0,1),(44,'store_user_min_recharge','text','input',5,'',0,'required:true,number:true,min:0',100,0,'\"0.01\"','用户最低充值金额','用户单次最低充值金额',0,0),(45,'site_store_admin_uids','text','input',5,'',0,'',100,0,'\"4\"','管理员用户ID','管理员用户ID,用于接收商城订单提醒，到微信用户中查找编号，多个英文‘,’隔开',0,2),(46,'system_express_app_code','text','input',10,'',0,'',100,0,'\"\"','快递查询密钥','阿里云快递查询接口密钥购买地址：https://market.aliyun.com/products/56928004/cmapi021863.html',0,1),(47,'main_business','text','input',2,'',0,'required:true',100,0,'\" IT\\u79d1\\u6280 \\u4e92\\u8054\\u7f51|\\u7535\\u5b50\\u5546\\u52a1\"','微信模板消息_主营行业','微信公众号模板消息中选择开通的主营行业',0,0),(48,'vice_business','text','input',2,'',0,'required:true',100,0,'\"IT\\u79d1\\u6280 IT\\u8f6f\\u4ef6\\u4e0e\\u670d\\u52a1 \"','微信模板消息_副营行业','微信公众号模板消息中选择开通的副营行业',0,0),(49,'store_brokerage_ratio','text','input',9,'',0,'required:true,min:0,max:100,number:true',100,0,'\"80\"','一级返佣比例','订单交易成功后给上级返佣的比例0 - 100,例:5 = 反订单金额的5%',5,1),(50,'wechat_first_sub_give_coupon','text','input',12,'',0,'requred:true,digits:true,min:0',100,0,'\"\"','首次关注赠送优惠券ID','首次关注赠送优惠券ID,0为不赠送',0,1),(51,'store_give_con_min_price','text','input',12,'',0,'requred:true,digits:true,min:0',100,0,'\"0.01\"','消费满多少赠送优惠券','消费满多少赠送优惠券,0为不赠送',0,1),(52,'store_order_give_coupon','text','input',12,'',0,'requred:true,digits:true,min:0',100,0,'\"\"','消费赠送优惠劵ID','消费赠送优惠劵ID,0为不赠送',0,1),(53,'user_extract_min_price','text','input',9,'',0,'required:true,number:true,min:0',100,0,'\"100\"','提现最低金额','用户提现最低金额',0,1),(54,'sx_sign_min_int','text','input',11,'',0,'required:true,number:true,min:0',100,0,'\"1\"','签到奖励最低积分','签到奖励最低积分',0,2),(55,'sx_sign_max_int','text','input',11,'',0,'required:true,number:true,min:0',100,0,'\"5\"','签到奖励最高积分','签到奖励最高积分',0,2),(56,'store_home_pink','upload','input',5,'',1,'',0,0,'\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/62e5591a3c61c5a0d7b121833e3d38a9.png\"','首页拼团广告图','首页拼团广告图',0,1),(57,'about_us','upload',NULL,1,NULL,1,NULL,0,0,'\"\"','关于我们','系统的标识',0,2),(58,'replenishment_num','text','input',5,'',0,'required:true,number:true,min:0',100,0,'\"20\"','待补货数量','产品待补货数量低于多少时，提示补货',0,1),(59,'routine_appId','text','input',7,'',0,'',100,0,'\"wx34cb147d86d67968\"','appId','小程序appID',0,1),(60,'routine_appsecret','text','input',7,'',0,'',100,0,'\"8a0f12a1a3b6fb5c2d6458c96cfce025\"','AppSecret','小程序AppSecret',0,1),(61,'api','text','input',2,'',0,'',100,0,'\"\\/api\\/wechat\\/serve\"','接口地址','微信接口例如：http://www.abc.com/api/wechat/serve',0,1),(62,'paydir','textarea','input',4,'',0,'',100,5,'\"\"','配置目录','支付目录配置系统不调用提示作用',0,1),(73,'routine_logo','upload',NULL,7,NULL,1,NULL,0,0,'\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/67989f4fe1caa64d3af716f32726c7c6.jpg\"','小程序logo','小程序logo',0,1),(74,'routine_name','text','input',7,'',0,'',100,0,'\"insideria\"','小程序名称','小程序名称',0,1),(76,'routine_style','text','color',7,NULL,NULL,NULL,100,0,'\"#F02D5A\"','小程序风格','小程序颜色',0,2),(77,'store_stock','text','input',5,'',0,'',100,0,'\"2\"','警戒库存','警戒库存提醒值',0,1),(85,'stor_reason','textarea','input',5,'',0,'',100,8,'\"\\u6536\\u8d27\\u5730\\u5740\\u586b\\u9519\\u4e86\\r\\n\\u4e0e\\u63cf\\u8ff0\\u4e0d\\u7b26\\r\\n\\u4fe1\\u606f\\u586b\\u9519\\u4e86\\uff0c\\u91cd\\u65b0\\u62cd\\r\\n\\u6536\\u5230\\u5546\\u54c1\\u635f\\u574f\\u4e86\\r\\n\\u672a\\u6309\\u9884\\u5b9a\\u65f6\\u95f4\\u53d1\\u8d27\\r\\n\\u5176\\u5b83\\u539f\\u56e0\"','退货理由','配置退货理由，一行一个理由',0,1),(87,'store_brokerage_two','text','input',9,'',0,'required:true,min:0,max:100,number:true',100,0,'\"60\"','二级返佣比例','订单交易成功后给上级返佣的比例0 - 100,例:5 = 反订单金额的5%',4,1),(88,'store_brokerage_statu','radio','input',9,'1=>指定分销\n2=>人人分销',0,'',0,0,'\"2\"','分销模式','人人分销默认每个人都可以分销，制定人分销后台制定人开启分销',10,1),(89,'pay_routine_appid','text','input',14,'',0,'required:true',100,0,'\"\"','Appid','小程序Appid',0,1),(90,'pay_routine_appsecret','text','input',14,'',0,'required:true',100,0,'\"\"','Appsecret','小程序Appsecret',0,1),(91,'pay_routine_mchid','text','input',14,'',0,'required:true',100,0,'\"\"','Mchid','商户号',0,1),(92,'pay_routine_key','text','input',14,'',0,'required:true',100,0,'\"\"','Key','商户key',0,1),(93,'pay_routine_client_cert','upload','input',14,'',3,'',0,0,'\"\"','小程序支付证书','小程序支付证书',0,1),(94,'pay_routine_client_key','upload','input',14,'',3,'',0,0,'\"\"','小程序支付证书密钥','小程序支付证书密钥',0,1),(98,'wechat_avatar','upload','input',2,'',1,'',0,0,'\"\"','公众号logo','公众号logo',0,1),(99,'user_extract_bank','textarea','input',9,'',0,'',100,5,'\"\\u4e2d\\u56fd\\u519c\\u884c\\r\\n\\u4e2d\\u56fd\\u5efa\\u8bbe\\u94f6\\u884c\\r\\n\\u5de5\\u5546\\u94f6\\u884c\"','提现银行卡','提现银行卡，每个银行换行',0,1),(100,'fast_info','text','input',16,NULL,NULL,'',100,NULL,'\"\\u4e0a\\u767e\\u79cd\\u5546\\u54c1\\u5206\\u7c7b\\u4efb\\u60a8\\u9009\\u62e9\"','快速选择简介','首页配置快速选择简介',0,1),(101,'bast_info','text','input',16,NULL,NULL,'',100,NULL,'\"\\u8001\\u674e\\u8bda\\u610f\\u63a8\\u8350\\u54c1\\u8d28\\u5546\\u54c1\"','精品推荐简介','首页配置精品推荐简介',0,1),(102,'first_info','text','input',16,NULL,NULL,'',100,NULL,'\"\\u591a\\u4e2a\\u4f18\\u8d28\\u5546\\u54c1\\u6700\\u65b0\\u4e0a\\u67b6\"','首发新品简介','首页配置首发新品简介',0,1),(103,'sales_info','text','input',16,NULL,NULL,'',100,NULL,'\"\\u5e93\\u5b58\\u5546\\u54c1\\u4f18\\u60e0\\u4fc3\\u9500\\u6d3b\\u52a8\"','促销单品简介','首页配置促销单品简介',0,1),(104,'fast_number','text','input',16,NULL,NULL,'required:true,digits:true,min:1',100,NULL,'\"10\"','快速选择分类个数','首页配置快速选择分类个数',0,1),(105,'bast_number','text','input',16,NULL,NULL,'required:true,digits:true,min:1',100,NULL,'\"10\"','精品推荐个数','首页配置精品推荐个数',0,1),(106,'first_number','text','input',16,NULL,NULL,'required:true,digits:true,min:1',100,NULL,'\"10\"','首发新品个数','首页配置首发新品个数',0,1),(107,'routine_index_logo','upload',NULL,5,NULL,1,NULL,NULL,NULL,'\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/05fe4793155b02fd110e3b576e5c6030.png\"','主页logo图标','主页logo图标尺寸(127*45)',0,1),(108,'upload_type','radio','input',17,'1=>本地存储\n2=>七牛云存储\n3=>阿里云OSS\n4=>腾讯COS',NULL,NULL,NULL,NULL,'\"1\"','上传类型','文件上传的类型',0,1),(109,'uploadUrl','text','input',17,NULL,NULL,'url:true',100,NULL,'\"\"','空间域名 Domain','空间域名 Domain',0,1),(110,'accessKey','text','input',17,NULL,NULL,'',100,NULL,'\"\"','accessKey','accessKey',0,1),(111,'secretKey','text','input',17,NULL,NULL,'',100,NULL,'\"\"','secretKey','secretKey',0,1),(112,'storage_name','text','input',17,NULL,NULL,'',100,NULL,'\"\"','存储空间名称','存储空间名称',0,1),(113,'order_cancel_time','text','input',5,NULL,NULL,'',100,NULL,'\"0.1\"','普通商品未支付取消订单时间','普通商品未支付取消订单时间，单位（小时）',0,1),(114,'order_activity_time','text','input',5,NULL,NULL,'',100,NULL,'\"2\"','活动商品未支付取消订单时间','活动商品未支付取消订单时间，单位（小时）',0,1),(115,'order_bargain_time','text','input',5,NULL,NULL,NULL,100,NULL,'\"\"','砍价未支付取消订单时间','砍价未支付默认取消订单时间，单位（小时），如果为0将使用默认活动取消时间，优先使用单独活动配置',0,1),(116,'order_seckill_time','text','input',5,NULL,NULL,NULL,100,NULL,'\"\"','秒杀未支付订单取消时间','秒杀未支付订单取消时间，单位（小时），如果为0将使用默认活动取消时间，优先使用单独活动配置',0,1),(117,'order_pink_time','text','input',5,NULL,NULL,NULL,100,NULL,'\"\"','拼团未支付取消订单时间','拼团未支付取消订单时间,单位（小时），如果为0将使用默认活动取消时间，优先使用单独活动配置',0,1),(118,'storage_region','text','input',17,NULL,NULL,'',100,NULL,'\"\"','所属地域','所属地域(腾讯COS时填写)',0,1),(119,'vip_open','radio','input',5,'0=>关闭\n1=>开启',NULL,NULL,NULL,NULL,'\"1\"','会员功能是否开启','会员功能是否开启',0,1),(120,'new_order_audio_link','upload','input',5,NULL,3,NULL,NULL,NULL,'\"\\/public\\/uploads\\/config\\/file\\/5cedd83eedba2.mp3\"','新订单语音提示','新订单语音提示',0,1),(121,'seckill_header_banner','upload','input',5,NULL,1,NULL,NULL,NULL,'\"\"','秒杀头部banner','秒杀头部banner',0,1),(122,'system_delivery_time','text','input',5,NULL,NULL,'required:true,digits:true,min:0',100,NULL,'\"1\"','自动收货时间','系统自动收货时间(0为不设置自动收货)',0,1),(123,'sms_account','text','input',18,NULL,NULL,'',100,NULL,'\"\"','账号','短信后台的登录账号',0,1),(137,'sms_token','text','input',18,NULL,NULL,'',100,NULL,'\"\"','token/密码','token(注册时候的密码)',0,1),(138,'h5_avatar','upload',NULL,1,NULL,1,NULL,0,0,'\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/67989f4fe1caa64d3af716f32726c7c6.jpg\"','用户H5默认头像','用户H5默认头像尺寸(80*80)',0,1),(139,'offline_pay_status','radio',NULL,5,'1=>开启\n2=>关闭',NULL,NULL,NULL,NULL,'\"2\"','线下支付状态','线下支付状态',0,1),(140,'news_slides_limit','text','number',1,NULL,NULL,'required:true,digits:true,min:1',100,NULL,'\"5\"','新闻幻灯片限制数量','新闻幻灯片限制数量',0,1),(141,'recharge_switch','radio','input',5,'1=>开启\n0=>关闭',NULL,NULL,NULL,NULL,'\"1\"','充值开关','充值开关',0,1),(142,'tengxun_map_key','text','input',10,NULL,NULL,'',100,NULL,'','腾讯地图KEY','腾讯地图KEY',0,1),(143,'store_self_mention','radio',NULL,10,'0=>关闭\n1=>开启',NULL,NULL,NULL,NULL,'\"1\"','是否开启门店自提','是否开启门店自提',0,1),(144,'cache_config','text','input',19,NULL,NULL,'',100,NULL,'\"86400\"','网站缓存时间','配置全局缓存时间（秒），默认留空为永久缓存',0,1),(145,'pay_success_printing_switch','radio',NULL,21,'0=>关\n1=>开',NULL,NULL,NULL,NULL,'\"1\"','支付成功订单打印开关','支付成功订单打印开关',0,1),(146,'develop_id','text','input',21,NULL,NULL,'',100,NULL,'\"\"','开发者ID','易联云开发者ID',0,1),(147,'printing_api_key','text','input',21,NULL,NULL,'',100,NULL,'\"\"','应用密钥','易联应用密钥',0,1),(148,'printing_client_id','text','input',21,NULL,NULL,'',100,NULL,'\"\"','应用ID','易联应用ID',0,1),(149,'terminal_number','text','input',21,NULL,NULL,'',100,NULL,'\"\"','终端号','易联云打印机终端号',0,1),(150,'lower_order_switch','radio',NULL,20,'0=>关闭\n1=>开启',NULL,NULL,NULL,NULL,'\"0\"','支付成功提醒开关','支付成功提醒开关',0,1),(151,'deliver_goods_switch','radio',NULL,20,'0=>关闭\n1=>开启',NULL,NULL,NULL,NULL,'\"0\"','发货提醒开关','发货提醒开关',0,1),(152,'confirm_take_over_switch','radio',NULL,20,'0=>关闭\n1=>开启',NULL,NULL,NULL,NULL,'\"0\"','确认收货提醒开关','确认收货提醒开关',0,1),(153,'admin_lower_order_switch','radio',NULL,20,'0=>关闭\n1=>开启',NULL,NULL,NULL,NULL,'\"0\"','用户下单管理员提醒开关','用户下单管理员提醒开关',0,1),(154,'admin_pay_success_switch','radio',NULL,20,'0=>关闭\n1=>开启',NULL,NULL,NULL,NULL,'\"0\"','用户支付成功管理员提醒开关','用户支付成功管理员提醒开关',0,1),(155,'admin_refund_switch','radio',NULL,20,'0=>关闭\n1=>开启',NULL,NULL,NULL,NULL,'\"0\"','用户退款管理员提醒开关','用户退款管理员提醒开关',0,1),(156,'admin_confirm_take_over_switch','radio',NULL,20,'0=>关闭\n1=>开启',NULL,NULL,NULL,NULL,'\"0\"','用户确认收货管理员短信提醒','用户确认收货管理员短信提醒',0,1);

#
# Structure for table "tb_system_config_tab"
#

DROP TABLE IF EXISTS `tb_system_config_tab`;
CREATE TABLE `tb_system_config_tab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置分类id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '配置分类名称',
  `eng_title` varchar(255) NOT NULL DEFAULT '' COMMENT '配置分类英文名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '配置分类状态',
  `info` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '配置分类是否显示',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标',
  `type` int(2) DEFAULT '0' COMMENT '配置类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='配置分类表';

#
# Data for table "tb_system_config_tab"
#

INSERT INTO `tb_system_config_tab` VALUES (1,'基础配置','basics',1,0,'cog',0),(2,'公众号配置','wechat',1,0,'weixin',1),(4,'公众号支付配置','pay',1,0,'jpy',2),(5,'商城配置','store',1,0,'shopping-cart',0),(7,'小程序配置','routine',1,0,'weixin',1),(9,'分销配置','fenxiao',1,0,'sitemap',3),(10,'物流配置','express',1,0,'motorcycle',0),(11,'积分配置','point',1,0,'powerpoint-o',3),(12,'优惠券配置','coupon',1,0,'heartbeat',3),(14,'小程序支付配置','routine_pay',1,0,'jpy',2),(16,'首页配置','routine_index_page',1,1,'home',0),(17,'文件上传配置','upload_set',1,0,'cloud-upload',0),(18,'短信配置','system_sms',1,0,'send',3),(19,'缓存配置','cache_config',1,0,'cube',0),(20,'短信提醒开关','short_letter_switch',1,0,'rss',0),(21,'小票打印配置','printing_deploy',1,0,'plug',0);

#
# Structure for table "tb_system_file"
#

DROP TABLE IF EXISTS `tb_system_file`;
CREATE TABLE `tb_system_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件对比ID',
  `cthash` char(32) NOT NULL DEFAULT '' COMMENT '文件内容',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '文价名称',
  `atime` char(12) NOT NULL DEFAULT '' COMMENT '上次访问时间',
  `mtime` char(12) NOT NULL DEFAULT '' COMMENT '上次修改时间',
  `ctime` char(12) NOT NULL DEFAULT '' COMMENT '上次改变时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8 COMMENT='文件对比表';

#
# Data for table "tb_system_file"
#

INSERT INTO `tb_system_file` VALUES (1,'5cc8a02be988615b049f5abecba2f3a0','app/.htaccess','1582166118','1567990147','1582166118'),(2,'5a732e4625ab088113085b9be469116c','app/admin/common.php','1582166118','1567990147','1582166118'),(3,'5dbfc4f5ade36ebcc196b8fdf3dfad4d','app/admin/config/route.php','1582166118','1567990147','1582166118'),(4,'d7e2115317ca0d4b460d89827dc2c6b4','app/admin/config/view.php','1582166118','1572941579','1582166118'),(5,'b1eba388a3de1e2a3138131f07fc6874','app/admin/controller/AdminException.php','1582166118','1570704434','1582166118'),(6,'e40d95ab25b72f84f83182b09661c39a','app/admin/controller/agent/AgentManage.php','1582166118','1574150709','1582166118'),(7,'fa45a4a41001ab7ba000d8b480c5b2ea','app/admin/controller/article/Article.php','1582166118','1574150715','1582166118'),(8,'6bce0a4ff9779fbf04b31b2695fdaeb0','app/admin/controller/article/ArticleCategory.php','1582166118','1574150726','1582166118'),(9,'defdee85649cf1ffc3fcfd39a743c56e','app/admin/controller/article/WechatNews.php','1582166118','1574150733','1582166118'),(10,'be1be85bd33f124dc5f348909ba02e14','app/admin/controller/AuthController.php','1582166118','1572946869','1582166118'),(11,'ed43c687828b72cca206edc3682ee344','app/admin/controller/finance/Finance.php','1582166118','1567990147','1582166118'),(12,'eba5a9fd88e26e723877f18e4a4c8a2f','app/admin/controller/finance/UserExtract.php','1582166118','1567990147','1582166118'),(13,'b37c5ad76f808c8052577c3289daa340','app/admin/controller/finance/UserRecharge.php','1582166118','1577081987','1582166118'),(14,'4d00b2273221b780d1712d12835fa55f','app/admin/controller/Index.php','1582166118','1576909433','1582166118'),(15,'4787f44952b4450128608887fa3885d3','app/admin/controller/Login.php','1582166118','1573037353','1582166118'),(16,'a308f0eda148e16de2f3f67af241b637','app/admin/controller/order/combinationOrder.php','1582166118','1572000000','1582166118'),(17,'cd750a8ebcd09183cc2d02e5f224f0d6','app/admin/controller/order/StoreOrder.php','1582166118','1574146482','1582166118'),(18,'b14af6837a9e15a8bba31d9396fadc23','app/admin/controller/record/Record.php','1582166118','1567990147','1582166118'),(19,'9677053b13706c1de77579e68feaf4d0','app/admin/controller/record/StoreStatistics.php','1582166118','1567990147','1582166118'),(20,'de203e302bd3ced130bd46d005dd1959','app/admin/controller/routine/RoutineTemplate.php','1582166118','1575628199','1582166118'),(21,'177ae735ca997b3c360a5ac04a077e88','app/admin/controller/setting/SystemAdmin.php','1582166118','1573006679','1582166118'),(22,'539a284c918d963fd343875469da2872','app/admin/controller/setting/SystemConfig.php','1582166118','1574150740','1582166118'),(23,'57bafcd7a4c299eefcbb6b139bb399a9','app/admin/controller/setting/SystemConfigTab.php','1582166118','1573023662','1582166118'),(24,'bab4af4ad6cdd105c46c47ab88b7e2d4','app/admin/controller/setting/SystemGroup.php','1582166118','1567990147','1582166118'),(25,'fb4b885ba02eaf66bff78154e1476f3d','app/admin/controller/setting/SystemGroupData.php','1582166118','1574150747','1582166118'),(26,'75ffdb0ec3dad21f055509ab2a3a91c6','app/admin/controller/setting/SystemMenus.php','1582166118','1567990147','1582166118'),(27,'f81878259d2800b38d94aab697ae0c90','app/admin/controller/setting/SystemNotice.php','1582166118','1567990147','1582166118'),(28,'b8282ed4fa6c2b4e8debdb2adf589d36','app/admin/controller/setting/SystemRole.php','1582166118','1567990147','1582166118'),(29,'c0475c71149b0f0b3a4b433f2fc1c6b3','app/admin/controller/sms/SmsAdmin.php','1582166118','1573198166','1582166118'),(30,'e47a6e1381dd1a354e713effa6399a23','app/admin/controller/sms/SmsConfig.php','1582166118','1567990147','1582166118'),(31,'9c4ee2f6f5e033cf10d45abef77b7923','app/admin/controller/sms/SmsPay.php','1582166118','1567990147','1582166118'),(32,'9fb01c6f5af7894b281ff7a6d847970a','app/admin/controller/sms/SmsPublicTemp.php','1582166118','1567990147','1582166118'),(33,'7780812669b4058e53f211073b6afaf7','app/admin/controller/sms/SmsTemplateApply.php','1582166118','1573607980','1582166118'),(34,'948b3b924b20157ab7f629feff437009','app/admin/controller/store/CopyTaobao.php','1582166118','1574478998','1582166118'),(35,'9ff627aba26683948fd31ffc8c8fffa6','app/admin/controller/store/StoreCategory.php','1582166118','1574150784','1582166118'),(36,'e65071da1565ed17d26e86ed671ed7af','app/admin/controller/store/StoreInfoMana.php','1582166118','1574150791','1582166118'),(37,'0f145ee730f04e111b71b324719d580b','app/admin/controller/store/StoreProduct.php','1582166118','1574150799','1582166118'),(38,'bd62c15abfc7bbdba2fa3a5012de56f9','app/admin/controller/store/StoreProductReply.php','1582166118','1567990147','1582166118'),(39,'1e7d3dfa2cfda13b390233ba1edd084c','app/admin/controller/system/Clear.php','1582166118','1575620849','1582166118'),(40,'16cde66681ada66914c638209f2b2284','app/admin/controller/system/Express.php','1582166118','1567990147','1582166118'),(41,'f3587dcc2f22858d6140af96798982e4','app/admin/controller/system/SystemAttachment.php','1582166118','1574150806','1582166118'),(42,'8ff0eb8583fe1efad3c88ec33ade0a09','app/admin/controller/system/SystemCleardata.php','1582166118','1575952106','1582166118'),(43,'d620df1d0ec53e416fb840ca9275bfea','app/admin/controller/system/SystemDatabackup.php','1582166118','1571381552','1582166118'),(44,'0c6979d3e79b4a91224aae8facc7ca28','app/admin/controller/system/SystemFile.php','1582166118','1573023463','1582166118'),(45,'6c6793607ad4bbba6f0ebf6ace5c677b','app/admin/controller/system/SystemLog.php','1582166118','1567990147','1582166118'),(46,'def08fcdaee4aa6bffc2893e3d1e05f3','app/admin/controller/system/SystemStore.php','1582166118','1572939721','1582166118'),(47,'6e7b22f04b03cc3394a1241071f48381','app/admin/controller/system/SystemUpgradeclient.php','1582166118','1567990147','1582166118'),(48,'6953ed19adc50b884be322a868155d38','app/admin/controller/SystemBasic.php','1582166118','1567990147','1582166118'),(49,'ab4a0a72e569067d108229fda3b220a4','app/admin/controller/ump/StoreBargain.php','1582166118','1570612863','1582166118'),(50,'1dfb7c27b0298740af377dfef465a878','app/admin/controller/ump/StoreCombination.php','1582166118','1570612882','1582166118'),(51,'4fd5b066f2b82488ce44f118da4ca917','app/admin/controller/ump/StoreCoupon.php','1582166118','1567990147','1582166118'),(52,'68ff5f6be8730bfd049c560ce41bbed4','app/admin/controller/ump/StoreCouponIssue.php','1582166118','1567990147','1582166118'),(53,'c8d7381cbd9bb3529b6e776cb75aaf7a','app/admin/controller/ump/StoreCouponUser.php','1582166118','1567990147','1582166118'),(54,'e08f0d82d8ae5d337288f481af57dba8','app/admin/controller/ump/StoreSeckill.php','1582166118','1574150826','1582166118'),(55,'41199f85a356694f218ed58d66372e8b','app/admin/controller/ump/UserPoint.php','1582166118','1567990147','1582166118'),(56,'c8a29ef7bf424ecc944d242a3c100647','app/admin/controller/user/User.php','1582166118','1575512244','1582166118'),(57,'40131e9c115ca08a63c6372bc34d66a1','app/admin/controller/user/UserLevel.php','1582166118','1572343407','1582166118'),(58,'84e2e66892447713c7131203c451a0ed','app/admin/controller/user/UserNotice.php','1582166118','1567990147','1582166118'),(59,'7b5b41a6403cbeb006b1f8a4f37d7107','app/admin/controller/wechat/index.php','1582166118','1567990147','1582166118'),(60,'f63889ff1bcf352b5a9d04fa0d490155','app/admin/controller/wechat/Menus.php','1582166118','1567990147','1582166118'),(61,'80779b1df50e8ad8425fb10f0cbd4666','app/admin/controller/wechat/Reply.php','1582166118','1574150840','1582166118'),(62,'dae886fdd1b1e536ede9459dcdc022fe','app/admin/controller/wechat/StoreService.php','1582166118','1574323751','1582166118'),(63,'741bf31599a9f2ecf50e682e3de41a28','app/admin/controller/wechat/WechatMessage.php','1582166118','1567990147','1582166118'),(64,'baf4e442e2ecc90531109d1f24ae16d0','app/admin/controller/wechat/WechatNewsCategory.php','1582166118','1567990147','1582166118'),(65,'c83ebe67269a86dbbd058d709fb39675','app/admin/controller/wechat/WechatTemplate.php','1582166118','1567990147','1582166118'),(66,'222ef8380a8edf77f4724e70f2e300c2','app/admin/controller/wechat/WechatUser.php','1582166118','1573433103','1582166118'),(67,'577f8c73f750baa54ac55ae2859650ff','app/admin/controller/widget/Images.php','1582166118','1574147557','1582166118'),(68,'ae33bf478e0d702f13e28c93ff3d1c20','app/admin/controller/widget/Widgets.php','1582166118','1567990147','1582166118'),(69,'0e018b7498ca825ace76162736fc6686','app/admin/event.php','1582166118','1567990147','1582166118'),(70,'42abf0d51c4d69527b9e64b4128ef9a8','app/admin/model/article/Article.php','1582166118','1572334553','1582166118'),(71,'05c88a368fe54715e84f8ab35ea63ffd','app/admin/model/article/ArticleCategory.php','1582166118','1567990147','1582166118'),(72,'1952b31d9ba49457e7f29edb1286e445','app/admin/model/finance/FinanceModel.php','1582166118','1572944607','1582166118'),(73,'7c4a1d6873751546cb1979220e9919e6','app/admin/model/order/StoreOrder.php','1582166118','1576839953','1582166118'),(74,'d1f83fbe975d61d20b5ef43fa1173937','app/admin/model/order/StoreOrderCartInfo.php','1582166118','1567990147','1582166118'),(75,'f307c063417a5d2a9cdab6ba71ab00b1','app/admin/model/order/StoreOrderStatus.php','1582166118','1568802288','1582166118'),(76,'fad6fa2b62664a443afb59556dcc9510','app/admin/model/record/StoreStatistics.php','1582166118','1574212609','1582166118'),(77,'e179dbb76a0c2ea49aad41f43a60f5d9','app/admin/model/record/StoreVisit.php','1582166118','1567990147','1582166118'),(78,'1eab8a260de4876f31170a7e6ed70e54','app/admin/model/routine/RoutineFormId.php','1582166118','1567990147','1582166118'),(79,'1939a07cf8a2265f7414d131e477ec19','app/admin/model/routine/RoutineTemplate.php','1582166118','1567990147','1582166118'),(80,'7ce0ab0cce8aba1ed70dbadb784ec3e7','app/admin/model/store/StoreCategory.php','1582166118','1567990147','1582166118'),(81,'2c9dcc6b46ce8d3a534861ff97740299','app/admin/model/store/StoreCouponUser.php','1582166118','1567990147','1582166118'),(82,'196085c6536610f6f6cf3ac7b376edab','app/admin/model/store/StoreProduct.php','1582166118','1574212421','1582166118'),(83,'a67beb962e9c62977c74327d19225f4b','app/admin/model/store/StoreProductAttr.php','1582166118','1571296563','1582166118'),(84,'c0006553092a9c1b2d87d86a3bacd23c','app/admin/model/store/StoreProductAttrResult.php','1582166118','1567990147','1582166118'),(85,'c5063c3bc47a3e6860c567ab9f9f7e2b','app/admin/model/store/StoreProductAttrValue.php','1582166118','1572485406','1582166118'),(86,'1899ca785ffe371f1e8b4ec1a6eb45c3','app/admin/model/store/StoreProductRelation.php','1582166118','1572941738','1582166118'),(87,'a1457ebfc93f13ee8cdc78ae29a038e1','app/admin/model/store/StoreProductReply.php','1582166118','1572944706','1582166118'),(88,'35e7c77f90143892bfb9882e7a84fb2f','app/admin/model/store/StoreVisit.php','1582166118','1567990147','1582166118'),(89,'689a63f0f02d58242bde368440684181','app/admin/model/system/Express.php','1582166118','1567990147','1582166118'),(90,'d7755bfb7e0f2532ccc8abe5eedf38c9','app/admin/model/system/SystemAdmin.php','1582166118','1568107785','1582166118'),(91,'88ba8f4fd5aaf31cd2f4c50cc5328b70','app/admin/model/system/SystemAttachment.php','1582166118','1573698973','1582166118'),(92,'f3f70994c3909eee23f0488848e0c0e5','app/admin/model/system/SystemAttachmentCategory.php','1582166118','1567990147','1582166118'),(93,'fe42f5afab4820c9e8a38757cbbccb36','app/admin/model/system/SystemAttachmentType.php','1582166118','1567990147','1582166118'),(94,'f439a60e499565455bf0355cc6ca2e88','app/admin/model/system/SystemConfig.php','1582166118','1573023776','1582166118'),(95,'3d9a4f3bc15c199dc340f44b34eff62d','app/admin/model/system/SystemConfigTab.php','1582166118','1567990147','1582166118'),(96,'ec1d1e4b581c241a43ea184f805b26fd','app/admin/model/system/SystemFile.php','1582166118','1567990147','1582166118'),(97,'d7db2c6a697927ffa0e10aba018fcb62','app/admin/model/system/SystemGroup.php','1582166118','1567990147','1582166118'),(98,'3bdc7688a6cc97b8521289c01d66f143','app/admin/model/system/SystemGroupData.php','1582166118','1567990147','1582166118'),(99,'a3ec8267fb4cf26ce114bce129e0c009','app/admin/model/system/SystemLog.php','1582166118','1572938692','1582166118'),(100,'c5ce9954b44c8bceec02cbbfc4635c54','app/admin/model/system/SystemMenus.php','1582166118','1567990147','1582166118'),(101,'43069055d25d8794e7355b82d72a5474','app/admin/model/system/SystemNotice.php','1582166118','1572942010','1582166118'),(102,'ba24684f0b3d43df213e60ed16d23220','app/admin/model/system/SystemRole.php','1582166118','1567990147','1582166118'),(103,'0517460c382406de090192ea8a4d8d37','app/admin/model/system/SystemStore.php','1582166118','1568874007','1582166118'),(104,'75e71893b1ca583e4ae02a61e95d6fae','app/admin/model/system/SystemUserLevel.php','1582166118','1567990147','1582166118'),(105,'f5e6c9283b2654a1fe005cfb44fd4da0','app/admin/model/system/SystemUserTask.php','1582166118','1567990147','1582166118'),(106,'8ac02bcc456c3f2fac741b8d3b2abf74','app/admin/model/ump/StoreBargain.php','1582166118','1572941691','1582166118'),(107,'900c3f0c8b61682113abd7ab7dc45ca5','app/admin/model/ump/StoreBargainUser.php','1582166118','1567990147','1582166118'),(108,'0eb09fd3a54bd6b6fbeae373b1041a48','app/admin/model/ump/StoreBargainUserHelp.php','1582166118','1567990147','1582166118'),(109,'5d83d831473b893b03d99792eedf9e55','app/admin/model/ump/StoreCombination.php','1582166118','1572942010','1582166118'),(110,'2b0ed7014628f309902386bc6c572714','app/admin/model/ump/StoreCombinationAttr.php','1582166118','1567990147','1582166118'),(111,'372b66e19250f6fbe7966f7eab6a25e5','app/admin/model/ump/StoreCombinationAttrResult.php','1582166118','1567990147','1582166118'),(112,'0f71a4f56377af1c2a70317114375204','app/admin/model/ump/StoreCombinationAttrValue.php','1582166118','1567990147','1582166118'),(113,'573d5cdeb0c295694616af43a9e0594c','app/admin/model/ump/StoreCoupon.php','1582166118','1567990147','1582166118'),(114,'23801e3a6932085745e77d1594ab393d','app/admin/model/ump/StoreCouponIssue.php','1582166118','1572941450','1582166118'),(115,'0332f32bcf371bd29aacec8e7013e05d','app/admin/model/ump/StoreCouponIssueUser.php','1582166118','1572941450','1582166118'),(116,'af00fb023ed9cd6185bd7df2af644b38','app/admin/model/ump/StoreCouponUser.php','1582166118','1567990147','1582166118'),(117,'34a0a9c311a8444ebc72ce789adda536','app/admin/model/ump/StorePink.php','1582166118','1572941738','1582166118'),(118,'fc924ee53c183957b074f25f2a90ab77','app/admin/model/ump/StoreSeckill.php','1582166118','1572941834','1582166118'),(119,'e19da8ae664bad63cde5689d532a2aab','app/admin/model/ump/StoreSeckillAttr.php','1582166118','1567990147','1582166118'),(120,'571b48b444c5b0f0f121bc44c4fbc495','app/admin/model/ump/StoreSeckillAttrResult.php','1582166118','1567990147','1582166118'),(121,'7cf5fb2de7d5cb9b4a0d94d135315906','app/admin/model/ump/StoreSeckillAttrValue.php','1582166118','1567990147','1582166118'),(122,'e7d01da1ffee0ba97b73c0a02ebb679a','app/admin/model/user/User.php','1582166118','1575512244','1582166118'),(123,'41ea6d35e57769360fbae1c71f3b6c64','app/admin/model/user/UserAddress.php','1582166118','1567990147','1582166118'),(124,'043daa837521a46d0e0c161c3d93e7ad','app/admin/model/user/UserBill.php','1582166118','1572941450','1582166118'),(125,'0414fd04dc1f99a2c4f30fc9965c5798','app/admin/model/user/UserExtract.php','1582166118','1575514919','1582166118'),(126,'3b2cce45ff4b20cbe980852530580464','app/admin/model/user/UserLevel.php','1582166118','1572944595','1582166118'),(127,'7dde8735f15c85fe33a07e09ff9279d1','app/admin/model/user/UserNotice.php','1582166118','1567990147','1582166118'),(128,'02c2e8d298dcd5ab63a49d304f76eb5c','app/admin/model/user/UserNoticeSee.php','1582166118','1567990147','1582166118'),(129,'ea9e8d215514cc64f23921d4e2acb48d','app/admin/model/user/UserPoint.php','1582166118','1572944595','1582166118'),(130,'980583916d8c8180eda0753e247e91d9','app/admin/model/user/UserRecharge.php','1582166118','1572941834','1582166118'),(131,'44a13ba7fcf007fac538248e4a8f2d84','app/admin/model/user/UserTaskFinish.php','1582166118','1567990147','1582166118'),(132,'608f8da780c1cf77b759ef06a662f453','app/admin/model/wechat/StoreService.php','1582166118','1567990147','1582166118'),(133,'a280fa15add47629620bb337cef43610','app/admin/model/wechat/StoreServiceLog.php','1582166118','1567990147','1582166118'),(134,'9d2687451a1e65fce9c6af431ce84971','app/admin/model/wechat/WechatMessage.php','1582166118','1567990147','1582166118'),(135,'f211639457c3555a7963d0e9c890ad50','app/admin/model/wechat/WechatNews.php','1582166118','1567990147','1582166118'),(136,'ffa44e6c47375888eae67d92bbbf3c7c','app/admin/model/wechat/WechatNewsCategory.php','1582166118','1567990147','1582166118'),(137,'5e61cf4710517c262adcafe21299ab52','app/admin/model/wechat/WechatQrcode.php','1582166118','1574066036','1582166118'),(138,'a3dde2348fda49e1a9b7e462e274c751','app/admin/model/wechat/WechatReply.php','1582166118','1574146493','1582166118'),(139,'0d4f111cc25ce2ab4b5c545981a08335','app/admin/model/wechat/WechatTemplate.php','1582166118','1567990147','1582166118'),(140,'bd2eb6914d2da62c1d0cb5f140e938b8','app/admin/model/wechat/WechatUser.php','1582166118','1572945517','1582166118'),(141,'33b8be279297992d13ff286a154f33e1','app/admin/provider.php','1582166118','1567990147','1582166118'),(142,'692fb2a9e9427edd90d8099023b7f6b5','app/admin/readme.txt','1582166118','1567990147','1582166118'),(143,'4815f0b88b438da6340ace03e9f8ec6a','app/admin/view/agent/agent_manage/index.php','1582166118','1571997880','1582166118'),(144,'5b872ec22d8aaa8bc8f3623ec4ccc365','app/admin/view/agent/agent_manage/now_money.php','1582166118','1567990147','1582166118'),(145,'188560168f8e150c54fa9b42b58757c8','app/admin/view/agent/agent_manage/stair.php','1582166118','1567990147','1582166118'),(146,'7fb2d7a5175d362f3fc16b83e6d0a38c','app/admin/view/agent/agent_manage/stair_order.php','1582166118','1567990147','1582166118'),(147,'d14587633e48748ce7a42e71ad6b1049','app/admin/view/article/article/create.php','1582166118','1571998554','1582166118'),(148,'76ae992f172db2620c39872d18d80aa8','app/admin/view/article/article/index.php','1582166118','1571998554','1582166118'),(149,'b1e3738dcd57a64832c4fff6cd0f7232','app/admin/view/article/article/relation.php','1582166118','1569493090','1582166118'),(150,'3b441ca860f5f7995e632d61f9b667dd','app/admin/view/article/article_category/index.php','1582166118','1567990147','1582166118'),(151,'4c6ba908d5248552170b28249975856a','app/admin/view/finance/finance/bill.php','1582166118','1567990147','1582166118'),(152,'6227dd846a5df176d3b22b66883a9ab7','app/admin/view/finance/finance/bill1.php','1582166118','1567990147','1582166118'),(153,'8c8fa86dc81996ec66beff550dbfcdb0','app/admin/view/finance/finance/commission_list.php','1582166118','1567990147','1582166118'),(154,'041eacabdbaf4fdd819d1fe57876a778','app/admin/view/finance/finance/content_info.php','1582166118','1567990147','1582166118'),(155,'6bd6d9616c509f565b220f9d6695a04a','app/admin/view/finance/user_extract/index.php','1582166118','1567990147','1582166118'),(156,'7da775a565d30ad1aedb07b645a3ca6d','app/admin/view/finance/user_recharge/index.php','1582166118','1567990147','1582166118'),(157,'5034349b79834e7e84fc6911767659c3','app/admin/view/index/index.php','1582166118','1576227490','1582166118'),(158,'4bdcf0788c84bf464322eceb26d4e355','app/admin/view/index/main.php','1582166118','1567990147','1582166118'),(159,'882a8e5fa3a28a53daefc1316115bd22','app/admin/view/login/index.php','1582166118','1573036669','1582166118'),(160,'c9999446f813b89bab4e9a4cb92bf8c0','app/admin/view/order/store_order/express.php','1582166118','1567990147','1582166118'),(161,'d4ea410186e48edfe9ac82b3d0b78ec6','app/admin/view/order/store_order/index.php','1582166118','1572342485','1582166118'),(162,'a924a67b0a4bacb44f3da79141ccb45f','app/admin/view/order/store_order/orderchart.php','1582166118','1567990147','1582166118'),(163,'e9117d048f812010a9a3c22bd678131b','app/admin/view/order/store_order/order_goods.php','1582166118','1567990147','1582166118'),(164,'b4996721f9c162d1c8fb0b0434caa051','app/admin/view/order/store_order/order_info.php','1582166118','1568960121','1582166118'),(165,'ac0fc4e40658eac1d75f96a936057b90','app/admin/view/order/store_order/order_spread_user.php','1582166118','1568702727','1582166118'),(166,'63e583c55e4f9460790684ea1fb068aa','app/admin/view/order/store_order/order_status.php','1582166118','1567990147','1582166118'),(167,'ff6ec2ddbb38ed70e32426250bf85dd6','app/admin/view/order/store_order/write_order.php','1582166118','1569287520','1582166118'),(168,'63e583c55e4f9460790684ea1fb068aa','app/admin/view/order/store_order_pink/order_status.php','1582166118','1567990147','1582166118'),(169,'725c14417b0e2e7a89d01898ea29425d','app/admin/view/public/404.php','1582166118','1567990147','1582166118'),(170,'62626d4d9a084ed8f58ed877db75eb21','app/admin/view/public/500.php','1582166118','1567990147','1582166118'),(171,'aa4a74e3398816ded8aef6a67f136253','app/admin/view/public/common_form.php','1582166118','1567990147','1582166118'),(172,'1ba8f93b27f4533f3e1e6b06b8b1f732','app/admin/view/public/container.php','1582166118','1567990147','1582166118'),(173,'043a60d7bf52cd16d8ec153133b6d9cc','app/admin/view/public/edit_content.php','1582166118','1567990147','1582166118'),(174,'bbe4f1757e59f33c82e3e95779586338','app/admin/view/public/error.php','1582166118','1567990147','1582166118'),(175,'f09814088d35c07d6cd84243fe8ac910','app/admin/view/public/exception.php','1582166118','1567990147','1582166118'),(176,'713834ac30def924e5af604bceaf6e15','app/admin/view/public/form-builder.php','1582166118','1572342971','1582166118'),(177,'d41d8cd98f00b204e9800998ecf8427e','app/admin/view/public/frame_footer.php','1582166118','1567990147','1582166118'),(178,'d29cf51e50c2c5aef529aebcc98ce622','app/admin/view/public/frame_head.php','1582166118','1572938473','1582166118'),(179,'211aca99b628b0b938fac8e80c0749b5','app/admin/view/public/head.php','1582166118','1567990148','1582166118'),(180,'aa1d2f22e2c7e2a6621dc790b54ec906','app/admin/view/public/inner_footer.php','1582166118','1567990148','1582166118'),(181,'057b7b661476548c6166095a908c27d6','app/admin/view/public/inner_page.php','1582166118','1567990148','1582166118'),(182,'13bdd047fc71f8a3fcd8b55ddd49affa','app/admin/view/public/layui.php','1582166118','1567990148','1582166118'),(183,'96a34a62bfbcef1c7d504a330d819292','app/admin/view/public/notice.php','1582166118','1567990148','1582166118'),(184,'38c1382e5e040dcdf45ddb76c619ee98','app/admin/view/public/style.php','1582166118','1568613772','1582166118'),(185,'9604e44222332b867f460c5feb015dfd','app/admin/view/public/success.php','1582166118','1567990148','1582166118'),(186,'170e944c489aefdac6c12d6e906c07eb','app/admin/view/record/record/chart_bargain.php','1582166118','1567990148','1582166118'),(187,'136af164e62f4a1cabe4dd2e54ddcf7d','app/admin/view/record/record/chart_cash.php','1582166118','1567990148','1582166118'),(188,'7c1ef47531f1f1874c30853f7b1c0293','app/admin/view/record/record/chart_combination.php','1582166118','1571623197','1582166118'),(189,'ac523a6ce15adda6c7727d2d22c0c80b','app/admin/view/record/record/chart_coupon.php','1582166118','1567990148','1582166118'),(190,'eb575f1356f50e5040f76017c79816e8','app/admin/view/record/record/chart_order.php','1582166118','1567990148','1582166118'),(191,'0dd8ae01d862e5d778a9824d7d98f7b7','app/admin/view/record/record/chart_product.php','1582166118','1567990148','1582166118'),(192,'ef6f403d5b223c7ea7e53dac1c550bbb','app/admin/view/record/record/chart_rebate.php','1582166118','1567990148','1582166118'),(193,'d04d3c51a6b84b1069b3de8b67091c92','app/admin/view/record/record/chart_recharge.php','1582166118','1567990148','1582166118'),(194,'e5bcffae162531b5319d9fd259dcc017','app/admin/view/record/record/chart_score.php','1582166118','1567990148','1582166118'),(195,'ecc35f7a28a3cbc048cce8cca85265b8','app/admin/view/record/record/chart_seckill.php','1582166118','1567990148','1582166118'),(196,'05818cde77cc0208773af01dc21adb8c','app/admin/view/record/record/product_info.php','1582166118','1567990148','1582166118'),(197,'6134d502f6a9a68c05e7a664ae7fdc39','app/admin/view/record/record/ranking_commission.php','1582166118','1567990148','1582166118'),(198,'721a6e4fe46925efd16377d0c84e52f6','app/admin/view/record/record/ranking_point.php','1582166118','1567990148','1582166118'),(199,'29f6c42e83006eb8de700a510e8df92e','app/admin/view/record/record/ranking_saleslists.php','1582166118','1567990148','1582166118'),(200,'e40932b11c6c5ea67cf641958e9c69e2','app/admin/view/record/record/user_attr.php','1582166118','1567990148','1582166118'),(201,'c23e78de07e2ff651a1f310c0fb32419','app/admin/view/record/record/user_business_chart.php','1582166118','1567990148','1582166118'),(202,'4228f3d6e9f67ef1a07e8a172bbb3017','app/admin/view/record/record/user_chart.php','1582166118','1567990148','1582166118'),(203,'2a0cb8bc60bafc02bd1b429f23a87d0a','app/admin/view/record/record/user_distribution_chart.php','1582166118','1567990148','1582166118'),(204,'4a54ea52a49824c50a20a3b9b73898e9','app/admin/view/record/store_statistics/index.php','1582166118','1567990148','1582166118'),(205,'88a8ed895bb9d263b2312d8f1c8c9b46','app/admin/view/routine/routine_template/index.php','1582166118','1567990148','1582166118'),(206,'7147d824eaf7e9a93215efa08df78616','app/admin/view/setting/system_admin/admininfo.php','1582166118','1567990148','1582166118'),(207,'7147d824eaf7e9a93215efa08df78616','app/admin/view/setting/system_admin/admin_info.php','1582166118','1567990148','1582166118'),(208,'7f9c95aa6efd27489ddfa99de3d90a99','app/admin/view/setting/system_admin/create.php','1582166118','1567990148','1582166118'),(209,'e52874dce1e85bb23a48005659a01361','app/admin/view/setting/system_admin/edit.php','1582166118','1567990148','1582166118'),(210,'67593212661fe75813faf40fb57ed84c','app/admin/view/setting/system_admin/index.php','1582166118','1567990148','1582166118'),(211,'b0a704c917f85604ad13a4b0459b9925','app/admin/view/setting/system_config/create.php','1582166118','1567990148','1582166118'),(212,'bc047fb5deb158482861a0b4f6687fa1','app/admin/view/setting/system_config/index.php','1582166118','1573111885','1582166118'),(213,'d38a67664d233b2f99657a8e04388d7b','app/admin/view/setting/system_config/index_alone.php','1582166118','1571998554','1582166118'),(214,'ab4703ad0d5b40ebb6723a79ca785c30','app/admin/view/setting/system_config_tab/create.php','1582166118','1567990148','1582166118'),(215,'193bf1b0da38ec9aedc77d95586d49bc','app/admin/view/setting/system_config_tab/create_base.php','1582166118','1567990148','1582166118'),(216,'7e8d6d951ff70c85e1be37f14be1474a','app/admin/view/setting/system_config_tab/edit.php','1582166118','1567990148','1582166118'),(217,'e3556a96860247cd4cd86ec59508ea47','app/admin/view/setting/system_config_tab/edit_cinfig.php','1582166118','1567990148','1582166118'),(218,'ffde4d6f07950cb3347433be7123f26d','app/admin/view/setting/system_config_tab/index.php','1582166118','1567990148','1582166118'),(219,'6c4d1e9c6f0702d460a32c824074cf82','app/admin/view/setting/system_config_tab/sonconfigtab.php','1582166118','1569577640','1582166118'),(220,'a16355fbd9fa58091112b86630a8e84a','app/admin/view/setting/system_group/create.php','1582166118','1567990148','1582166118'),(221,'9e5e21e40e4024fa52ab60931c6d90a7','app/admin/view/setting/system_group/edit.php','1582166118','1567990148','1582166118'),(222,'8b7795ccf66501dda49595ef738cf413','app/admin/view/setting/system_group/index.php','1582166118','1567990148','1582166118'),(223,'b18709b14ed7cf75982f33fe4563547c','app/admin/view/setting/system_group_data/create.php','1582166118','1567990148','1582166118'),(224,'b18709b14ed7cf75982f33fe4563547c','app/admin/view/setting/system_group_data/edit.php','1582166118','1567990148','1582166118'),(225,'2d665aa4b7079ada3192d80cd19c560d','app/admin/view/setting/system_group_data/index.php','1582166118','1567990148','1582166118'),(226,'3a177bd6f427827b94a7ce2b0cd24ae7','app/admin/view/setting/system_menus/edit_content.php','1582166118','1567990148','1582166118'),(227,'4241429825e3d45bb40f14041fd09685','app/admin/view/setting/system_menus/index.php','1582166118','1567990148','1582166118'),(228,'e3489aa993ce1b370d50cb03893d3682','app/admin/view/setting/system_notice/index.php','1582166118','1567990148','1582166118'),(229,'64c9c1a8f42cc9fd4d594f79347cfbcd','app/admin/view/setting/system_notice/message.php','1582166118','1567990148','1582166118'),(230,'10f54846beb5cbe7899ec760a42bed59','app/admin/view/setting/system_role/create.php','1582166118','1567990148','1582166118'),(231,'33ed82cac6a90a28fa5b0dead2e70228','app/admin/view/setting/system_role/edit.php','1582166118','1567990148','1582166118'),(232,'df07f3527b466b1758ab1e7f6eca5a04','app/admin/view/setting/system_role/index.php','1582166118','1567990148','1582166118'),(233,'f9a6668177ceee5da34f60ec6ec9b039','app/admin/view/sms/sms_admin/index.php','1582166118','1573194634','1582166118'),(234,'d89d5a9c4bf2b173db80930571819e78','app/admin/view/sms/sms_config/index.php','1582166118','1571045108','1582166118'),(235,'deb173b23cfad2b4ec5e99fa524ce16b','app/admin/view/sms/sms_pay/index.php','1582166118','1567990148','1582166118'),(236,'511924c98df7d50efcbd751f6069b1b9','app/admin/view/sms/sms_public_temp/index.php','1582166118','1567990148','1582166118'),(237,'b913ac951143c3edaa3e0d23fe52ec63','app/admin/view/sms/sms_template_apply/index.php','1582166118','1567990148','1582166118'),(238,'288f58028009b4fad4ed57258f03c941','app/admin/view/store/copy_taobao/index.php','1582166118','1571370360','1582166118'),(239,'4a9ea0a59df2a9f1e4d7830082370b2f','app/admin/view/store/store_category/index.php','1582166118','1568854140','1582166118'),(240,'78523bcbcfe4e6442470ebec39898128','app/admin/view/store/store_product/attr.php','1582166118','1570588060','1582166118'),(241,'2a4acda0ef2672da3d126a1e80281af4','app/admin/view/store/store_product/collect.php','1582166118','1567990148','1582166118'),(242,'ff2aba323182c06392195632197fb3b3','app/admin/view/store/store_product/index.php','1582166118','1576550977','1582166118'),(243,'95715ed557248d34ad05bdb5c0f90013','app/admin/view/store/store_product/like.php','1582166118','1567990148','1582166118'),(244,'2d7c639171a2d99ebad0c8fdbaafdac6','app/admin/view/store/store_product/statistics.php','1582166118','1567990148','1582166118'),(245,'c376958f2ea3d5f199b2b5a10120f24d','app/admin/view/store/store_product_reply/index.php','1582166118','1572571255','1582166118'),(246,'961647a0843078cf05c70a61d0466588','app/admin/view/system/clear/index.php','1582166118','1567990148','1582166118'),(247,'1e628869e0fb5605819470a651b460d3','app/admin/view/system/express/index.php','1582166118','1567990148','1582166118'),(248,'6c4f5258a047ad1f1d45523dc2814e9b','app/admin/view/system/system_cleardata/index.php','1582166118','1573027733','1582166118'),(249,'23d689b0537ae8180671a1e2b2a047b2','app/admin/view/system/system_databackup/index.php','1582166118','1567990148','1582166118'),(250,'95b08d776201e98ec9a6923050aa6082','app/admin/view/system/system_file/index.php','1582166118','1567990148','1582166118'),(251,'c84aabda0a14a3aa7b80453663a71646','app/admin/view/system/system_file/opendir.php','1582166118','1567990148','1582166118'),(252,'32b0c3d4e294e1a132c7815fa13e5c1a','app/admin/view/system/system_file/openfile.php','1582166118','1567990148','1582166118'),(253,'c5c5ca8c1fd9576df0a68c6864bf2144','app/admin/view/system/system_log/index.php','1582166118','1567990148','1582166118'),(254,'e3489aa993ce1b370d50cb03893d3682','app/admin/view/system/system_notice/index.php','1582166118','1567990148','1582166118'),(255,'64c9c1a8f42cc9fd4d594f79347cfbcd','app/admin/view/system/system_notice/message.php','1582166118','1567990148','1582166118'),(256,'98221d4d8cc53018f496801b3ee321e1','app/admin/view/system/system_store/index.php','1582166118','1573694625','1582166118'),(257,'4d17ccb9ead4d6a7afef6a56287b8bb1','app/admin/view/system/system_store/select_address.php','1582166118','1572418338','1582166118'),(258,'c08bcf6feea692eed5edcf8d0f8ff28e','app/admin/view/system/system_upgradeclient/index.php','1582166118','1572400793','1582166118'),(259,'4f15436aaacd327354d611bbb25035fe','app/admin/view/ump/store_bargain/index.php','1582166118','1567990148','1582166118'),(260,'078e8649a22225738b665dfb07de50f1','app/admin/view/ump/store_combination/attr.php','1582166118','1567990148','1582166118'),(261,'fcf8e669a7aed1b34997ef1caaad1fa9','app/admin/view/ump/store_combination/combina_list.php','1582166118','1567990148','1582166118'),(262,'ab2def7459257784158191c9ff5f2bb2','app/admin/view/ump/store_combination/index.php','1582166118','1567990148','1582166118'),(263,'b18add153208c013a1f74740f7bed39e','app/admin/view/ump/store_combination/order_pink.php','1582166118','1567990148','1582166118'),(264,'6ff3f05206873fc5c0b2132e0a3f349b','app/admin/view/ump/store_coupon/grant.php','1582166118','1567990148','1582166118'),(265,'769196c91fa9bcb55efab2f98f5172d0','app/admin/view/ump/store_coupon/grant_all.php','1582166118','1567990148','1582166118'),(266,'40b8e95dfb9fd771c69caf84631254b0','app/admin/view/ump/store_coupon/grant_group.php','1582166118','1567990148','1582166118'),(267,'6ba3e17e75a9fcbc891bbbfe10d7f423','app/admin/view/ump/store_coupon/grant_subscribe.php','1582166118','1567990148','1582166118'),(268,'8742502a4272af83133d28bc8c451ed4','app/admin/view/ump/store_coupon/grant_tag.php','1582166118','1567990148','1582166118'),(269,'eb4029f5bb1c124d5c4963ca4319437a','app/admin/view/ump/store_coupon/index.php','1582166118','1567990148','1582166118'),(270,'db93025f73697fc700ad5204fdf05054','app/admin/view/ump/store_coupon_issue/index.php','1582166118','1567990148','1582166118'),(271,'34069dfe3ba5823e435a69d5324d6502','app/admin/view/ump/store_coupon_issue/issue_log.php','1582166118','1567990148','1582166118'),(272,'4c4c60bf43c75b4e491fbcf23483936a','app/admin/view/ump/store_coupon_user/index.php','1582166118','1567990148','1582166118'),(273,'f464fd23665a88dd6bc33e1c2c693aca','app/admin/view/ump/store_seckill/attr.php','1582166118','1567990148','1582166118'),(274,'c50555856ad7db8a5aaad7ff5aa59825','app/admin/view/ump/store_seckill/index.php','1582166118','1567990148','1582166118'),(275,'888892c455c70e9fba4a4b030d708180','app/admin/view/ump/user_point/index.php','1582166118','1567990148','1582166118'),(276,'a5481c539d793d55e4bb69a5579caa8f','app/admin/view/user/user/group.php','1582166118','1567990148','1582166118'),(277,'46d310c1ca7b6b44acc1a40330a3399e','app/admin/view/user/user/index.php','1582166118','1567990148','1582166118'),(278,'a5481c539d793d55e4bb69a5579caa8f','app/admin/view/user/user/rank.php','1582166118','1567990148','1582166118'),(279,'1421aa5489472eeabc8f5fddae0b7af6','app/admin/view/user/user/see.php','1582166118','1567990148','1582166118'),(280,'e39e55565c86d1cf598113efbf608dd2','app/admin/view/user/user/user_analysis.php','1582166118','1567990148','1582166118'),(281,'7bc3fdd9160f4ff81f5b03448f5171e5','app/admin/view/user/user_level/index.php','1582166118','1573607637','1582166118'),(282,'d1684cc068793a4553ee77316026162d','app/admin/view/user/user_level/tash.php','1582166118','1573607673','1582166118'),(283,'3c517b5a0b15a23e1f9a32f62093969e','app/admin/view/user/user_notice/index.php','1582166118','1567990148','1582166118'),(284,'d32f90130c8004b30645d72cb944ccd0','app/admin/view/user/user_notice/notice.php','1582166118','1567990148','1582166118'),(285,'e2a6cc9655d542037fbc300a5d83021f','app/admin/view/user/user_notice/user.php','1582166118','1567990148','1582166118'),(286,'5c96568c1c0ab17a5bccff3d29e6f065','app/admin/view/user/user_notice/user_create.php','1582166118','1567990148','1582166118'),(287,'c5d06d8e27a7b1251c49d6f5699287e6','app/admin/view/wechat/menus/index.php','1582166118','1567990148','1582166118'),(288,'a01849541de9f5466235c2683fb61d57','app/admin/view/wechat/reply/add_keyword.php','1582166118','1567990148','1582166118'),(289,'990e5cf2b0a91fe9dd103a469f7bec2d','app/admin/view/wechat/reply/index.php','1582166118','1567990148','1582166118'),(290,'94f455422ced788b40d321e893cfc8e7','app/admin/view/wechat/reply/keyword.php','1582166118','1567990148','1582166118'),(291,'ea2ffc108b60a9e28393d289ab3a6b1d','app/admin/view/wechat/store_service/chat_list.php','1582166118','1567990148','1582166118'),(292,'0ccf96c55b6ed5a1e266b21ac7888eae','app/admin/view/wechat/store_service/chat_user.php','1582166118','1567990148','1582166118'),(293,'6dde83dd7da88046d0be87a7140668a3','app/admin/view/wechat/store_service/create.php','1582166118','1567990148','1582166118'),(294,'b18709b14ed7cf75982f33fe4563547c','app/admin/view/wechat/store_service/edit.php','1582166118','1567990148','1582166118'),(295,'59a0d3e1e911be307ec8d7b373c64716','app/admin/view/wechat/store_service/index.html','1582166118','1567990148','1582166118'),(296,'74133a868f62f5bcb0620c38e7bd4431','app/admin/view/wechat/store_service/index.php','1582166118','1567990148','1582166118'),(297,'94dfb4658fbaf165887c83df1a993720','app/admin/view/wechat/wechat_message/index.php','1582166118','1567990148','1582166118'),(298,'a90a5ae485205a9409c7c05d70f42169','app/admin/view/wechat/wechat_news_category/append.php','1582166118','1573463738','1582166118'),(299,'57a345e5c9a627a7f197da6fdd9fd375','app/admin/view/wechat/wechat_news_category/create.php','1582166118','1567990148','1582166118'),(300,'9b4586d130ce3e42f010940f685dc50e','app/admin/view/wechat/wechat_news_category/edit.php','1582166118','1567990148','1582166118'),(301,'4ef396f5fead72e4f65dcda11056d679','app/admin/view/wechat/wechat_news_category/index.php','1582166118','1567990148','1582166118'),(302,'4f0875f252b011029008a62099112f77','app/admin/view/wechat/wechat_news_category/select.php','1582166118','1567990148','1582166118'),(303,'bf119de1fe2b4ce35a40de7f16ae9652','app/admin/view/wechat/wechat_news_category/send_news.php','1582166118','1571296629','1582166118'),(304,'ccbd111167aa58ac5ef4250b3005d15b','app/admin/view/wechat/wechat_template/index.php','1582166118','1567990148','1582166118'),(305,'e67f5418e19f8628f0118aae49065524','app/admin/view/wechat/wechat_user/group.php','1582166118','1567990148','1582166118'),(306,'37d393cbff752b6c30afd9f538bc250c','app/admin/view/wechat/wechat_user/index.php','1582166118','1571368452','1582166118'),(307,'5b872ec22d8aaa8bc8f3623ec4ccc365','app/admin/view/wechat/wechat_user/now_money.php','1582166118','1567990148','1582166118'),(308,'4495fb92e48e0cf4410e4588f34972c0','app/admin/view/wechat/wechat_user/stair.php','1582166118','1567990148','1582166118'),(309,'752e3e5fc7b48fe91990e3848dbbdda3','app/admin/view/wechat/wechat_user/tag.php','1582166118','1567990148','1582166118'),(310,'8a59f1bc21f2fedc7737e55d129b50d6','app/admin/view/widget/icon.php','1582166118','1567990148','1582166118'),(311,'8880d24fc64345164c0bfa714a2f62f5','app/admin/view/widget/images.php','1582166118','1571379603','1582166118'),(312,'4a2abc3eef6d3a346f2020191c77c6d4','app/api/ApiExceptionHandle.php','1582166118','1570581827','1582166118'),(313,'93aa0c196be063f1f0cb425bc04916f5','app/api/common.php','1582166118','1567990148','1582166118'),(314,'3ad8f6b0aad6f7877b65c34076e92fbd','app/api/config/route.php','1582166118','1573098363','1582166118'),(315,'2a22b82effd4c9f75af8bc7065ba0a56','app/api/controller/activity/StoreBargainController.php','1582166118','1574150860','1582166118'),(316,'93bc3f90f208f09f56fc7013fce58974','app/api/controller/activity/StoreCombinationController.php','1582166118','1574237750','1582166118'),(317,'e200d3639a513cf0be2a1df58d724642','app/api/controller/activity/StoreSeckillController.php','1582166118','1574237756','1582166118'),(318,'9f61ac4b04516a1a7d41ad10ca9b797d','app/api/controller/admin/StoreOrderController.php','1582166118','1576464387','1582166118'),(319,'158e6eb2ca06b04fce348cf4ba2ed358','app/api/controller/AuthController.php','1582166118','1576048433','1582166118'),(320,'467ea6f54ae76a957f4273a0373eb1e9','app/api/controller/BaiduController.php','1582166118','1570754950','1582166118'),(321,'feafe3f046de065240a02bc7afff54e0','app/api/controller/order/StoreOrderController.php','1582166118','1574146312','1582166118'),(322,'fc90a527f8a39990d39495b9204011b7','app/api/controller/PublicController.php','1582166118','1577086016','1582166118'),(323,'d9ba22de8eba0eab3ffc84c7190380b5','app/api/controller/publics/ArticleCategoryController.php','1582166118','1567990148','1582166118'),(324,'24596c43a23476e0446a9dce1876a0ab','app/api/controller/publics/ArticleController.php','1582166118','1568109414','1582166118'),(325,'f5d156d6cfa7344b0a78bdecdc350323','app/api/controller/store/CategoryController.php','1582166118','1567998533','1582166118'),(326,'bf6f38f5ba053cdeebc3bdae6586775f','app/api/controller/store/StoreCartController.php','1582166118','1567990148','1582166118'),(327,'76f5e28bbfef6fe85fe4e6fe7f48a80b','app/api/controller/store/StoreCouponsController.php','1582166118','1567990148','1582166118'),(328,'3cbf98383464d36f226ae09b7334726f','app/api/controller/store/StoreProductController.php','1582166118','1574237791','1582166118'),(329,'56763851b00ff2f2d29adf19d4a67303','app/api/controller/user/StoreService.php','1582166118','1567990148','1582166118'),(330,'7283686f6b48f9d32927f8dbf9083ad4','app/api/controller/user/UserBillController.php','1582166118','1574332976','1582166118'),(331,'ba552bc4acdcb34ba7eab835ceab71a8','app/api/controller/user/UserController.php','1582166118','1573180651','1582166118'),(332,'d84717d7320f0281f83f090e1413a4b5','app/api/controller/user/UserExtractController.php','1582166118','1567990148','1582166118'),(333,'ae6a2a432033450099cc8b8910147587','app/api/controller/user/UserLevelController.php','1582166118','1567990148','1582166118'),(334,'b3cf31c15e254a1b65e0300207ee441c','app/api/controller/user/UserRechargeController.php','1582166118','1567990148','1582166118'),(335,'5090120ba23fc8fc1a47110ed3621651','app/api/controller/wechat/AuthController.php','1582166118','1575369342','1582166118'),(336,'628381dfd4f855bcef205b1344d264db','app/api/controller/wechat/WechatController.php','1582166118','1576810382','1582166118'),(337,'a4574d1e640b88bc22496ae5260c1cde','app/api/event.php','1582166118','1567990148','1582166118'),(338,'d6f2facdc9d6a9238681763c39ee4497','app/api/provider.php','1582166118','1567990148','1582166118'),(339,'781a54fa012cf56a791bf55ada74ab40','app/AppService.php','1582166118','1572939677','1582166118'),(340,'489d5f16c0f2168c9df72468682984ba','app/common.php','1582166118','1577084009','1582166118'),(341,'c4bdb5d9726a60963c999d5ec69a7fed','app/event.php','1582166118','1573285533','1582166118'),(342,'eac51988982b247dc7a611188c113b37','app/ExceptionHandle.php','1582166118','1570777287','1582166118'),(343,'f079bb22031c0205a4b0ac633310d275','app/http/middleware/AllowOriginMiddleware.php','1582166118','1573109547','1582166118'),(344,'33537b6950584d692a05dc11c3ef9e60','app/http/middleware/AuthTokenMiddleware.php','1582166118','1573094527','1582166118'),(345,'5c781a15441ab36acfd21f2fa8d1b928','app/http/middleware/CustomerMiddleware.php','1582166118','1567990148','1582166118'),(346,'daf1f5776a25e6fe6101dae9b2fe96a2','app/http/validates/user/AddressValidate.php','1582166118','1567990148','1582166118'),(347,'1c35318b961bb80d9dc238f827391863','app/http/validates/user/RegisterValidates.php','1582166118','1567990148','1582166118'),(348,'d2e59242cf802eac5b07bda62e1b4438','app/middleware.php','1582166118','1573095331','1582166118'),(349,'d37eb28675fdc3c5ba21f1bac2b5940f','app/models/article/Article.php','1582166118','1574157336','1582166118'),(350,'055860d624d6f54d356b31e4f98b10e4','app/models/article/ArticleCategory.php','1582166118','1574157336','1582166118'),(351,'bb8889cbfdbf1c54893bcf65fe86358b','app/models/routine/RoutineCode.php','1582166118','1574157322','1582166118'),(352,'6f61ddd31eeccdb56feb59506a395158','app/models/routine/RoutineFormId.php','1582166118','1574157322','1582166118'),(353,'ec47228eeaaebd4a09ef2d02e28738af','app/models/routine/RoutineQrcode.php','1582166118','1574157322','1582166118'),(354,'c8cc6ac678aae1f201419539732519fa','app/models/routine/RoutineTemplate.php','1582166118','1575700925','1582166118'),(355,'2bbdf53c154451b233876839d9596648','app/models/store/StoreBargain.php','1582166118','1573632006','1582166118'),(356,'d34456e3882b32f48e516e0749b14102','app/models/store/StoreBargainUser.php','1582166118','1567990148','1582166118'),(357,'4db55560e3d80edb3211ec69e21f590e','app/models/store/StoreBargainUserHelp.php','1582166118','1567990148','1582166118'),(358,'b46c8c30fe68b1637aa40bca23050923','app/models/store/StoreCart.php','1582166118','1569406830','1582166118'),(359,'45f80e15e6ab406765a09c4f18191129','app/models/store/StoreCategory.php','1582166118','1575511444','1582166118'),(360,'deebde06f844075e5e883fa49daff0e9','app/models/store/StoreCombination.php','1582166118','1573539963','1582166118'),(361,'e6a1398a01d69f68bb4f640c3da3df8c','app/models/store/StoreCoupon.php','1582166118','1567990148','1582166118'),(362,'ff14455ed5640842048572c4834fa9ab','app/models/store/StoreCouponIssue.php','1582166118','1573119924','1582166118'),(363,'1acba38b88081139b2d70d19b80f9e94','app/models/store/StoreCouponIssueUser.php','1582166118','1567990148','1582166118'),(364,'f7994e5a19da736b2e23df8fe0db6117','app/models/store/StoreCouponUser.php','1582166118','1567990148','1582166118'),(365,'372742acd396f9c50a04aee4e2a5dedb','app/models/store/StoreOrder.php','1582166118','1577065832','1582166118'),(366,'c3f0ccd8f3ecd5a8dddc0f7d151f160c','app/models/store/StoreOrderCartInfo.php','1582166118','1567990148','1582166118'),(367,'707ec4fce30bea416c151c8823eb51dc','app/models/store/StoreOrderStatus.php','1582166118','1567990148','1582166118'),(368,'ef8f63db81ef8c95c2434c4b291abc9e','app/models/store/StorePink.php','1582166118','1575700947','1582166118'),(369,'67b1ea60dae42c678135ae9e289f4e8e','app/models/store/StoreProduct.php','1582166118','1575511596','1582166118'),(370,'336491697f44449ec50fa1986f33998a','app/models/store/StoreProductAttr.php','1582166118','1569379982','1582166118'),(371,'044aa67623a1d29ba4656304c878bf81','app/models/store/StoreProductRelation.php','1582166118','1572944706','1582166118'),(372,'50b56ecfb1d6945b354f601e1dccc335','app/models/store/StoreProductReply.php','1582166118','1572944706','1582166118'),(373,'6b04d22252e5c81dcf5fcbc315a8f275','app/models/store/StoreSeckill.php','1582166118','1573539936','1582166118'),(374,'6e4efd29069b92e468af6d3d1d6e5bb3','app/models/store/StoreService.php','1582166118','1567990148','1582166118'),(375,'d7804890f40e000f6e97a5c136fb237f','app/models/store/StoreServiceLog.php','1582166118','1567990148','1582166118'),(376,'9000c4180817c289707ecc7e7961c85b','app/models/system/Cache.php','1582166118','1576486992','1582166118'),(377,'55ecb0462e6ce82ce782d7d42676c837','app/models/system/Express.php','1582166118','1567990148','1582166118'),(378,'7c86bc9b19f01a5be1a53f1f902151dd','app/models/system/SystemStore.php','1582166118','1575256142','1582166118'),(379,'67b2d47ca92ea6eaf068f934c04e7a05','app/models/system/SystemUserLevel.php','1582166118','1573183440','1582166118'),(380,'f321e88d495b406194dc3bc5b10c666c','app/models/system/SystemUserTask.php','1582166118','1572514212','1582166118'),(381,'cf57b9f2eb6c2b2e93a8eca117443f5e','app/models/user/User.php','1582166118','1576892097','1582166118'),(382,'c1c658b9a3f3fac5aada7d5e7c1d2d12','app/models/user/UserAddress.php','1582166118','1570782813','1582166118'),(383,'ebe8882b4a68e25374d3238365fa9ec4','app/models/user/UserBill.php','1582166118','1572593313','1582166118'),(384,'4bbcec914fb34328fe4fc1acc5bb00f9','app/models/user/UserExtract.php','1582166118','1572947541','1582166118'),(385,'186a05a591550ce32fcc1cbba70d472a','app/models/user/UserLevel.php','1582166118','1572941323','1582166118'),(386,'bd8e3dce281524d885826cd775b03c08','app/models/user/UserNotice.php','1582166118','1567990148','1582166118'),(387,'456105b80b760df9fb5d7cb330466631','app/models/user/UserRecharge.php','1582166118','1570783227','1582166118'),(388,'f866c4ba417536151b5453be778f31d9','app/models/user/UserSign.php','1582166118','1572941323','1582166118'),(389,'d1fb115575ba6ae7dfc06f2e96a4f3a1','app/models/user/UserTaskFinish.php','1582166118','1570783227','1582166118'),(390,'545b2f36af3a30ef326ba874dedc75ee','app/models/user/UserToken.php','1582166118','1570783245','1582166118'),(391,'5c78717e5db462b5805c2e324f326c2b','app/models/user/WechatUser.php','1582166118','1578274853','1582166118'),(392,'22f6e33dc4aec4364f8ab7dff1504570','app/provider.php','1582166118','1567990148','1582166118'),(393,'00ba1beaac03c18597926743a270a550','app/Request.php','1582166118','1572938897','1582166118'),(394,'1248c13039cbea3b9ecb8a19dabcd1e9','app/service.php','1582166118','1567990148','1582166118'),(395,'ff52e986b98e9119818fbe49c33b967f','app/wap/.gitignore','1582166118','1567990148','1582166118'),(396,'2f6e2f325e68b7766261d06ac7ffe7c0','crmeb/basic/BaseController.php','1582166118','1572937782','1582166118'),(397,'9901d50739bec85f062db550910b9d3b','crmeb/basic/BaseModel.php','1582166118','1567990148','1582166118'),(398,'05d2f88e27c09f7eb20e4990324981ae','crmeb/command/Timer.php','1582166118','1573694056','1582166118'),(399,'5e16b1d0d2c74354d78666afa957f019','crmeb/command/Workerman.php','1582166118','1573123845','1582166118'),(400,'1e1369a325a716ea1b7f99de4d1b8425','crmeb/exceptions/AuthException.php','1582166118','1570583546','1582166118'),(401,'6706002ad078884237aad59661db0570','crmeb/interfaces/JobInterface.php','1582166118','1567990148','1582166118'),(402,'faacc5c5d60ba8be003bc73d4503bc68','crmeb/interfaces/ListenerInterface.php','1582166118','1567990148','1582166118'),(403,'720f1c233eeaf46e73475a40dfc33cff','crmeb/interfaces/MiddlewareInterface.php','1582166118','1567990148','1582166118'),(404,'675f3218ef5e54a3ecd97cb8c1a54c6b','crmeb/interfaces/ProviderInterface.php','1582166118','1570527418','1582166118'),(405,'500808df25cea9ed53055299d7ec829e','crmeb/jobs/TestJob.php','1582166118','1567990148','1582166118'),(406,'1881bbc205362af143d04cd32d232b67','crmeb/listeners/Listener.php','1582166118','1567990148','1582166118'),(407,'011b9d165a4a88864ee12ff35579f2f2','crmeb/listeners/user/UserLogin.php','1582166118','1567990148','1582166118'),(408,'d934ca857d920a65811855de3357b65f','crmeb/repositories/CustomerRepository.php','1582166118','1574043780','1582166118'),(409,'91e12c98413a7645363eec6694c39013','crmeb/repositories/GoodsRepository.php','1582166118','1567990148','1582166118'),(410,'69c0f9915563f427103beeed0aa26919','crmeb/repositories/MessageRepositories.php','1582166118','1567990148','1582166118'),(411,'ff7503d2175820452c9533ba0e8cb4a5','crmeb/repositories/NoticeRepositories.php','1582166118','1575959394','1582166118'),(412,'b95ce5b3b1da7dd86dbe4d44f1e02a91','crmeb/repositories/OrderRepository.php','1582166118','1577083171','1582166118'),(413,'9bc472654939ef78b17d073068094988','crmeb/repositories/PaymentRepositories.php','1582166118','1567990148','1582166118'),(414,'2d627bf5c67a0d4d5c0a53c088e9872a','crmeb/repositories/ProductRepositories.php','1582166118','1567990148','1582166118'),(415,'12b8af6559828a0ed0106aece0d1235c','crmeb/repositories/UserRepository.php','1582166118','1573642071','1582166118'),(416,'bd9fe7258b2bf1e7550060330908c2a6','crmeb/services/ApiErrorCode.php','1582166118','1570585026','1582166118'),(417,'89f0e51e277cf762f57c24585b577bf2','crmeb/services/CacheService.php','1582166118','1575965964','1582166118'),(418,'1f33414459ed67d92b0c1e19fb81e88b','crmeb/services/CustomerService.php','1582166118','1574144965','1582166118'),(419,'9e1ca7d8de2fe065747a384cab425995','crmeb/services/ExportService.php','1582166118','1567990148','1582166118'),(420,'2fd777b4b7098fdf7eaea9fa9e8b52e5','crmeb/services/ExpressService.php','1582166118','1574419453','1582166118'),(421,'bb67f2c1eef2e379f73fdb68957d57fe','crmeb/services/FileService.php','1582166118','1574143566','1582166118'),(422,'a6f8a1d2b07bab7ec3e9d4b90a91b923','crmeb/services/FormBuilder.php','1582166118','1574144965','1582166118'),(423,'dc0643b9008779f8e495c0c284e70c3a','crmeb/services/GroupDataService.php','1582166118','1577065769','1582166118'),(424,'11caef8a3957d54d92c8df87ef9ee398','crmeb/services/HookService.php','1582166118','1567990148','1582166118'),(425,'00220c319d4b09e2f20b3db2993e7253','crmeb/services/HttpService.php','1582166118','1574305392','1582166118'),(426,'21db6c76dc69a71c354eb9d221bfb028','crmeb/services/JsonService.php','1582166118','1574474300','1582166118'),(427,'fa4d6f9806ad699239a6e7d18fd1284e','crmeb/services/MiniProgramService.php','1582166118','1576056759','1582166118'),(428,'bb563714732ccf15181d0b825ec01805','crmeb/services/MysqlBackupService.php','1582166118','1567990148','1582166118'),(429,'a03b5bf426cd0b5fe0fd5011b6854616','crmeb/services/PHPExcelService.php','1582166118','1574144965','1582166118'),(430,'0f9283fdf215bdc81e432f80fb02df2b','crmeb/services/PHPTreeService.php','1582166118','1574144965','1582166118'),(431,'4cd4a342417a02f546a1ed3eb5f4edaf','crmeb/services/ProgramTemplateService.php','1582166118','1573522081','1582166118'),(432,'2a3aee67e673a72f260e335b521e70f7','crmeb/services/QrcodeService.php','1582166118','1574236675','1582166118'),(433,'24962b981a620456b71d91d9a5e3036e','crmeb/services/SMSService.php','1582166118','1574144965','1582166118'),(434,'ced650c613272ca60cffa3d31f117024','crmeb/services/storage/COS.php','1582166118','1574144965','1582166118'),(435,'dc7903acbad9e15b8e9492e9fd2cff12','crmeb/services/storage/OSS.php','1582166118','1574144965','1582166118'),(436,'c991499db938a986d9307ceb374656d8','crmeb/services/storage/Qiniu.php','1582166118','1574156642','1582166118'),(437,'4a889a26603a116ef6c2cc039bd68630','crmeb/services/SubscribeTemplateService.php','1582166118','1577085515','1582166118'),(438,'4b4b9c8a8884d6ac084cf37874c00e72','crmeb/services/SystemConfigService.php','1582166118','1576909477','1582166118'),(439,'e04ebf7689da624fc8b995a8ba9d1c37','crmeb/services/Template.php','1582166118','1572594186','1582166118'),(440,'8455d106be5afc5ddf1d6c53cb603ae7','crmeb/services/UpgradeService.php','1582166118','1574144965','1582166118'),(441,'89eb33e5d7506ab8e0157a95babb79e8','crmeb/services/UploadService.php','1582166118','1576639992','1582166118'),(442,'40549ebb47d62f052aa6ff71150fa5d2','crmeb/services/UtilService.php','1582166118','1574330046','1582166118'),(443,'699414f90bb06dab9c9f727c8baf3f95','crmeb/services/WechatService.php','1582166118','1574244317','1582166118'),(444,'e1d41d3ec3cc64e945527e8197e809cb','crmeb/services/WechatTemplateService.php','1582166118','1574839966','1582166118'),(445,'fba7fe3f8d1198b37592e891ffa7aa02','crmeb/services/workerman/ChannelService.php','1582166118','1567990148','1582166118'),(446,'90f1b62dc6bfbaa123596c12ef298768','crmeb/services/workerman/chat/ChatHandle.php','1582166118','1574419097','1582166118'),(447,'95e3df38549b98ab04106313dd231170','crmeb/services/workerman/chat/ChatService.php','1582166118','1567990148','1582166118'),(448,'44c705d01315d988c0cf4b8d1f10cdf1','crmeb/services/workerman/Response.php','1582166118','1567990148','1582166118'),(449,'eb0e1bf7fc242f257fec20538484f12f','crmeb/services/workerman/WorkermanHandle.php','1582166118','1574144965','1582166118'),(450,'739def4239e62463b89c4ca7b8974c24','crmeb/services/workerman/WorkermanService.php','1582166118','1571035439','1582166118'),(451,'8c8fb932069bc892123ed76a551a81be','crmeb/services/YLYService.php','1582166118','1575962375','1582166118'),(452,'2c28764b8bce550c498d63f9e97f80a9','crmeb/subscribes/MaterialSubscribe.php','1582166118','1574144965','1582166118'),(453,'cf4ba4237a58097fca54ee387fe2616b','crmeb/subscribes/MessageSubscribe.php','1582166118','1574144965','1582166118'),(454,'c12b34000d8f0cc366ea36965264bdd9','crmeb/subscribes/OrderSubscribe.php','1582166118','1574144965','1582166118'),(455,'c01f4162bcf1ed1169efa21a9fc2d7e8','crmeb/subscribes/ProductSubscribe.php','1582166118','1574144965','1582166118'),(456,'891a7d1d01aada52e3cef02a1703a7eb','crmeb/subscribes/SystemSubscribe.php','1582166118','1574144965','1582166118'),(457,'f83e1283b3bff147ce9ea2eefd280805','crmeb/subscribes/TaskSubscribe.php','1582166118','1574144965','1582166118'),(458,'fa76a44734663df0885d690f021dd5cd','crmeb/subscribes/UserSubscribe.php','1582166118','1574144965','1582166118'),(459,'841a5093e4781ad44df8052d2d2b023d','crmeb/traits/BcModelTrait.php','1582166118','1567990148','1582166118'),(460,'d0e6386e1d032229b1d443423cac9b45','crmeb/traits/CurdControllerTrait.php','1582166118','1567990148','1582166118'),(461,'defe4daebad1b2692256176539b69e7d','crmeb/traits/JwtAuthModelTrait.php','1582166118','1570701815','1582166118'),(462,'c4e403c874858af22b93b2180ec4f70c','crmeb/traits/LogicTrait.php','1582166118','1574835141','1582166118'),(463,'147d457157c83281a2b90ad9acdb8133','crmeb/traits/ModelTrait.php','1582166118','1575442216','1582166118'),(464,'b25088d0b6f022b5aa35fe6fe4b7c8ff','crmeb/utils/Canvas.php','1582166118','1574489531','1582166118'),(465,'bb13f24db22f468642762fee70b339d9','crmeb/utils/Json.php','1582166118','1567990148','1582166118'),(466,'933c3a346786598e2cfea721e710f9c8','crmeb/utils/ProgramProvider.php','1582166118','1574489646','1582166118'),(467,'a7618a0dced44c64d60d0bd251c6e2b1','crmeb/utils/ProgramSubscribe.php','1582166118','1575433545','1582166118'),(468,'8155c460c119fc74b0d37b7247b6a84b','crmeb/utils/Template.php','1582166118','1575439711','1582166118');

#
# Structure for table "tb_system_group"
#

DROP TABLE IF EXISTS `tb_system_group`;
CREATE TABLE `tb_system_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '数据组名称',
  `info` varchar(256) NOT NULL DEFAULT '' COMMENT '数据提示',
  `config_name` varchar(50) NOT NULL DEFAULT '' COMMENT '数据字段',
  `fields` text COMMENT '数据组字段以及类型（json数据）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `config_name` (`config_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='组合数据表';

#
# Data for table "tb_system_group"
#

INSERT INTO `tb_system_group` VALUES (37,'拼团、秒杀、砍价顶部banner图','拼团、秒杀、砍价顶部banner图','routine_lovely','[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"}]'),(38,'砍价列表页左上小图标','砍价列表页左上小图标','bargain_banner','[{\"name\":\"banner\",\"title\":\"banner\",\"type\":\"upload\",\"param\":\"\"}]'),(47,'首页分类图标','首页分类图标','routine_home_menus','[{\"name\":\"\\u5206\\u7c7b\\u540d\\u79f0\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5206\\u7c7b\\u56fe\\u6807(90*90)\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"url\",\"type\":\"select\",\"param\":\"\\/pages\\/index\\/index=>\\u5546\\u57ce\\u9996\\u9875\\n\\/pages\\/user_spread_user\\/index=>\\u4e2a\\u4eba\\u63a8\\u5e7f\\n\\/pages\\/user_sgin\\/index=>\\u6211\\u8981\\u7b7e\\u5230\\n\\/pages\\/user_get_coupon\\/index=>\\u4f18\\u60e0\\u5238\\n\\/pages\\/user\\/user=>\\u4e2a\\u4eba\\u4e2d\\u5fc3\\n\\/pages\\/activity\\/goods_seckill\\/index=>\\u79d2\\u6740\\u5217\\u8868\\n\\/pages\\/activity\\/goods_combination\\/index=>\\u62fc\\u56e2\\u5217\\u8868\\u9875\\n\\/pages\\/activity\\/goods_bargain\\/index=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/pages\\/goods_cate\\/goods_cate=>\\u5206\\u7c7b\\u9875\\u9762\\n\\/pages\\/user_address_list\\/index=>\\u5730\\u5740\\u5217\\u8868\\n\\/pages\\/user_cash\\/index=>\\u63d0\\u73b0\\u9875\\u9762\\n\\/pages\\/promoter-list\\/index=>\\u63a8\\u5e7f\\u7edf\\u8ba1\\n\\/pages\\/user_money\\/index=>\\u8d26\\u6237\\u91d1\\u989d\\n\\/pages\\/user_goods_collection\\/index=>\\u6211\\u7684\\u6536\\u85cf\\n\\/pages\\/promotion-card\\/promotion-card=>\\u63a8\\u5e7f\\u4e8c\\u7ef4\\u7801\\u9875\\u9762\\n\\/pages\\/order_addcart\\/order_addcart=>\\u8d2d\\u7269\\u8f66\\u9875\\u9762\\n\\/pages\\/order_list\\/index=>\\u8ba2\\u5355\\u5217\\u8868\\u9875\\u9762\\n\\/pages\\/news_list\\/index=>\\u6587\\u7ae0\\u5217\\u8868\\u9875\"},{\"name\":\"\\u5e95\\u90e8\\u83dc\\u5355\",\"title\":\"show\",\"type\":\"radio\",\"param\":\"1=>\\u662f\\n2=>\\u5426\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"wap_url\",\"type\":\"select\",\"param\":\"\\/=>\\u5546\\u57ce\\u9996\\u9875\\n\\/user\\/user_promotion=>\\u4e2a\\u4eba\\u63a8\\u5e7f\\n\\/user\\/sign=>\\u6211\\u8981\\u7b7e\\u5230\\n\\/user\\/get_coupon=>\\u4f18\\u60e0\\u5238\\n\\/user=>\\u4e2a\\u4eba\\u4e2d\\u5fc3\\n\\/activity\\/goods_seckill=>\\u79d2\\u6740\\u5217\\u8868\\n\\/activity\\/group=>\\u62fc\\u56e2\\u5217\\u8868\\u9875\\n\\/activity\\/bargain=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/category=>\\u5206\\u7c7b\\u9875\\u9762\\n\\/user\\/add_manage=>\\u5730\\u5740\\u5217\\u8868\\n\\/user\\/user_cash=>\\u63d0\\u73b0\\u9875\\u9762\\n\\/user\\/promoter_list=>\\u63a8\\u5e7f\\u7edf\\u8ba1\\n\\/user\\/account=>\\u8d26\\u6237\\u91d1\\u989d\\n\\/collection=>\\u6211\\u7684\\u6536\\u85cf\\n\\/user\\/poster=>\\u63a8\\u5e7f\\u4e8c\\u7ef4\\u7801\\u9875\\u9762\\n\\/cart=>\\u8d2d\\u7269\\u8f66\\u9875\\u9762\\n\\/order\\/list\\/=>\\u8ba2\\u5355\\u5217\\u8868\\u9875\\u9762\\n\\/news_list=>\\u6587\\u7ae0\\u5217\\u8868\\u9875\"}]'),(48,'首页banner滚动图','首页banner滚动图','routine_home_banner','[{\"name\":\"\\u6807\\u9898\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u7247(750*375)\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u94fe\\u63a5\",\"title\":\"wap_url\",\"type\":\"input\",\"param\":\"\"}]'),(49,'秒杀时间段','秒杀时间段','routine_seckill_time','[{\"name\":\"\\u5f00\\u542f\\u65f6\\u95f4(\\u6574\\u6570\\u5c0f\\u65f6)\",\"title\":\"time\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u6301\\u7eed\\u65f6\\u95f4(\\u6574\\u6570\\u5c0f\\u65f6)\",\"title\":\"continued\",\"type\":\"input\",\"param\":\"\"}]'),(50,'首页滚动新闻','首页滚动新闻','routine_home_roll_news','[{\"name\":\"\\u6eda\\u52a8\\u6587\\u5b57\",\"title\":\"info\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"url\",\"type\":\"select\",\"param\":\"\\/pages\\/index\\/index=>\\u5546\\u57ce\\u9996\\u9875\\n\\/pages\\/user_spread_user\\/index=>\\u4e2a\\u4eba\\u63a8\\u5e7f\\n\\/pages\\/user_sgin\\/index=>\\u6211\\u8981\\u7b7e\\u5230\\n\\/pages\\/user_get_coupon\\/index=>\\u4f18\\u60e0\\u5238\\n\\/pages\\/user\\/user=>\\u4e2a\\u4eba\\u4e2d\\u5fc3\\n\\/pages\\/activity\\/goods_seckill\\/index=>\\u79d2\\u6740\\u5217\\u8868\\n\\/pages\\/activity\\/goods_combination\\/index=>\\u62fc\\u56e2\\u5217\\u8868\\u9875\\n\\/pages\\/activity\\/goods_bargain\\/index=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/pages\\/goods_cate\\/goods_cate=>\\u5206\\u7c7b\\u9875\\u9762\\n\\/pages\\/user_address_list\\/index=>\\u5730\\u5740\\u5217\\u8868\\n\\/pages\\/user_cash\\/index=>\\u63d0\\u73b0\\u9875\\u9762\\n\\/pages\\/promoter-list\\/index=>\\u63a8\\u5e7f\\u7edf\\u8ba1\\n\\/pages\\/user_money\\/index=>\\u8d26\\u6237\\u91d1\\u989d\\n\\/pages\\/user_goods_collection\\/index=>\\u6211\\u7684\\u6536\\u85cf\\n\\/pages\\/promotion-card\\/promotion-card=>\\u63a8\\u5e7f\\u4e8c\\u7ef4\\u7801\\u9875\\u9762\\n\\/pages\\/order_addcart\\/order_addcart=>\\u8d2d\\u7269\\u8f66\\u9875\\u9762\\n\\/pages\\/order_list\\/index=>\\u8ba2\\u5355\\u5217\\u8868\\u9875\\u9762\\n\\/pages\\/news_list\\/index=>\\u6587\\u7ae0\\u5217\\u8868\\u9875\"},{\"name\":\"\\u5e95\\u90e8\\u83dc\\u5355\",\"title\":\"show\",\"type\":\"radio\",\"param\":\"1=>\\u662f\\n2=>\\u5426\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"wap_url\",\"type\":\"select\",\"param\":\"\\/=>\\u5546\\u57ce\\u9996\\u9875\\n\\/user\\/user_promotion=>\\u4e2a\\u4eba\\u63a8\\u5e7f\\n\\/user\\/sign=>\\u6211\\u8981\\u7b7e\\u5230\\n\\/user\\/get_coupon=>\\u4f18\\u60e0\\u5238\\n\\/user=>\\u4e2a\\u4eba\\u4e2d\\u5fc3\\n\\/activity\\/goods_seckill=>\\u79d2\\u6740\\u5217\\u8868\\n\\/activity\\/group=>\\u62fc\\u56e2\\u5217\\u8868\\u9875\\n\\/activity\\/bargain=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/category=>\\u5206\\u7c7b\\u9875\\u9762\\n\\/user\\/add_manage=>\\u5730\\u5740\\u5217\\u8868\\n\\/user\\/user_cash=>\\u63d0\\u73b0\\u9875\\u9762\\n\\/user\\/promoter_list=>\\u63a8\\u5e7f\\u7edf\\u8ba1\\n\\/user\\/account=>\\u8d26\\u6237\\u91d1\\u989d\\n\\/collection=>\\u6211\\u7684\\u6536\\u85cf\\n\\/user\\/poster=>\\u63a8\\u5e7f\\u4e8c\\u7ef4\\u7801\\u9875\\u9762\\n\\/cart=>\\u8d2d\\u7269\\u8f66\\u9875\\u9762\\n\\/order\\/list\\/=>\\u8ba2\\u5355\\u5217\\u8868\\u9875\\u9762\\n\\/news_list=>\\u6587\\u7ae0\\u5217\\u8868\\u9875\"}]'),(51,'首页活动区域图片','首页活动区域图片','routine_home_activity','[{\"name\":\"\\u56fe\\u7247(260*260\\/416*214)\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u6807\\u9898\",\"title\":\"title\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u7b80\\u4ecb\",\"title\":\"info\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u94fe\\u63a5\",\"title\":\"link\",\"type\":\"select\",\"param\":\"\\/pages\\/activity\\/goods_seckill\\/index=>\\u79d2\\u6740\\u5217\\u8868\\n\\/pages\\/activity\\/goods_bargain\\/index=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/pages\\/activity\\/goods_combination\\/index=>\\u62fc\\u56e2\\u5217\\u8868\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u94fe\\u63a5\",\"title\":\"wap_link\",\"type\":\"select\",\"param\":\"\\/activity\\/goods_seckill=>\\u79d2\\u6740\\u5217\\u8868\\n\\/activity\\/bargain=>\\u780d\\u4ef7\\u5217\\u8868\\n\\/activity\\/group=>\\u62fc\\u56e2\\u5217\\u8868\"}]'),(52,'首页精品推荐benner图','首页精品推荐benner图','routine_home_bast_banner','[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"link\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"wap_link\",\"type\":\"input\",\"param\":\"\"}]'),(53,'订单详情状态图','订单详情状态图','order_details_images','[{\"name\":\"\\u8ba2\\u5355\\u72b6\\u6001\",\"title\":\"order_status\",\"type\":\"select\",\"param\":\"0=>\\u672a\\u652f\\u4ed8\\n1=>\\u5f85\\u53d1\\u8d27\\n2=>\\u5f85\\u6536\\u8d27\\n3=>\\u5f85\\u8bc4\\u4ef7\\n4=>\\u5df2\\u5b8c\\u6210\\n9=>\\u7ebf\\u4e0b\\u4ed8\\u6b3e\"},{\"name\":\"\\u56fe\\u6807\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"}]'),(54,'个人中心菜单','个人中心菜单','routine_my_menus','[{\"name\":\"\\u83dc\\u5355\\u540d\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u6807(52*52)\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"url\",\"type\":\"select\",\"param\":\"\\/pages\\/user_address_list\\/index=>\\u5730\\u5740\\u7ba1\\u7406\\n\\/pages\\/user_vip\\/index=>\\u4f1a\\u5458\\u4e2d\\u5fc3\\n\\/pages\\/activity\\/user_goods_bargain_list\\/index=>\\u780d\\u4ef7\\u8bb0\\u5f55\\n\\/pages\\/user_spread_user\\/index=>\\u63a8\\u5e7f\\u4e2d\\u5fc3\\n\\/pages\\/user_money\\/index=>\\u6211\\u7684\\u4f59\\u989d\\n\\/pages\\/user_goods_collection\\/index=>\\u6211\\u7684\\u6536\\u85cf\\n\\/pages\\/user_coupon\\/index=>\\u4f18\\u60e0\\u5238\\n\\/pages\\/admin\\/index=>\\u540e\\u53f0\\u8ba2\\u5355\\u7ba1\\u7406\\n\\/pages\\/service\\/index=>\\u8054\\u7cfb\\u5ba2\\u670d\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"wap_url\",\"type\":\"select\",\"param\":\"\\/user\\/add_manage=>\\u5730\\u5740\\u7ba1\\u7406\\n\\/user\\/vip=>\\u4f1a\\u5458\\u4e2d\\u5fc3\\n\\/activity\\/bargain\\/record=>\\u780d\\u4ef7\\u8bb0\\u5f55\\n\\/user\\/user_promotion=>\\u63a8\\u5e7f\\u4e2d\\u5fc3\\n\\/user\\/account=>\\u6211\\u7684\\u4f59\\u989d\\n\\/collection=>\\u6211\\u7684\\u6536\\u85cf\\n\\/user\\/user_coupon=>\\u4f18\\u60e0\\u5238\\n\\/customer\\/list=>\\u5ba2\\u670d\\u5217\\u8868\\n\\/customer\\/index=>\\u540e\\u53f0\\u8ba2\\u5355\\u7ba1\\u7406\\n\\/order\\/order_cancellation=>\\u8ba2\\u5355\\u6838\\u9500\"}]'),(55,'签到天数配置','签到天数配置','sign_day_num','[{\"name\":\"\\u7b2c\\u51e0\\u5929\",\"title\":\"day\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u83b7\\u53d6\\u79ef\\u5206\",\"title\":\"sign_num\",\"type\":\"input\",\"param\":\"\"}]'),(56,'热门搜索','热门搜索','routine_hot_search','[{\"name\":\"\\u6807\\u7b7e\",\"title\":\"title\",\"type\":\"input\",\"param\":\"\"}]'),(57,'热门榜单推荐图片','热门榜单推荐图片','routine_home_hot_banner','[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"}]'),(58,'首发新品推荐图片','首发新品推荐图片','routine_home_new_banner','[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"link\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"wap_link\",\"type\":\"input\",\"param\":\"\"}]'),(59,'促销单品推荐图片','促销单品推荐图片','routine_home_benefit_banner','[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u63cf\\u8ff0\",\"title\":\"comment\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"link\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u516c\\u4f17\\u53f7\\u8df3\\u8f6c\\u94fe\\u63a5\",\"title\":\"wap_link\",\"type\":\"input\",\"param\":\"\"}]'),(60,'分享海报','分享海报','routine_spread_banner','[{\"name\":\"\\u540d\\u79f0\",\"title\":\"title\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u80cc\\u666f\\u56fe\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"}]'),(61,'首页文字配置','首页文字配置','routine_index_page','[{\"name\":\"\\u5feb\\u901f\\u9009\\u62e9\\u7b80\\u4ecb\",\"title\":\"fast_info\",\"type\":\"input\",\"param\":\"\\u4e0a\\u767e\\u79cd\\u5546\\u54c1\\u5206\\u7c7b\\u4efb\\u60a8\\u9009\\u62e9\"},{\"name\":\"\\u7cbe\\u54c1\\u63a8\\u8350\\u7b80\\u4ecb\",\"title\":\"bast_info\",\"type\":\"input\",\"param\":\"\\u8bda\\u610f\\u63a8\\u8350\\u54c1\\u8d28\\u5546\\u54c1\"},{\"name\":\"\\u9996\\u53d1\\u65b0\\u54c1\\u7b80\\u4ecb\",\"title\":\"first_info\",\"type\":\"input\",\"param\":\"\\u591a\\u4e2a\\u4f18\\u8d28\\u5546\\u54c1\\u6700\\u65b0\\u4e0a\\u67b6\"},{\"name\":\"\\u4fc3\\u9500\\u5355\\u54c1\\u7b80\\u4ecb\",\"title\":\"sales_info\",\"type\":\"input\",\"param\":\"\\u5e93\\u5b58\\u5546\\u54c1\\u4f18\\u60e0\\u4fc3\\u9500\\u6d3b\\u52a8\"},{\"name\":\"\\u5feb\\u901f\\u9009\\u62e9\\u5206\\u7c7b\\u4e2a\\u6570\",\"title\":\"fast_number\",\"type\":\"input\",\"param\":\"10\"},{\"name\":\"\\u7cbe\\u54c1\\u63a8\\u8350\\u4e2a\\u6570\",\"title\":\"bast_number\",\"type\":\"input\",\"param\":\"10\"},{\"name\":\"\\u9996\\u53d1\\u65b0\\u54c1\\u4e2a\\u6570\",\"title\":\"first_number\",\"type\":\"input\",\"param\":\"10\"}]');

#
# Structure for table "tb_system_group_data"
#

DROP TABLE IF EXISTS `tb_system_group_data`;
CREATE TABLE `tb_system_group_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据详情ID',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '对应的数据组id',
  `value` text NOT NULL COMMENT '数据组对应的数据值（json数据）',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '添加数据时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '数据排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1：开启；2：关闭；）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COMMENT='组合数据详情表';

#
# Data for table "tb_system_group_data"
#

INSERT INTO `tb_system_group_data` VALUES (89,38,'{\"banner\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/01\\/15\\/5c3dc730dead2.png\"}}',1527153599,1,1),(91,37,'{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/www.crmeb3.net\\/uploads\\/config\\/image\\/20190712\\/9a79a97de87d099f4e3a07ddff11a229.png\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\\u5217\\u8868\\u9876\\u90e8baaner\"}}',1528688012,1,1),(113,49,'{\"time\":{\"type\":\"input\",\"value\":\"5\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}',1552443280,1,1),(114,49,'{\"time\":{\"type\":\"input\",\"value\":\"7\"},\"continued\":{\"type\":\"input\",\"value\":\"3\"}}',1552443293,1,1),(115,49,'{\"time\":{\"type\":\"input\",\"value\":\"10\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}',1552443304,1,1),(116,49,'{\"time\":{\"type\":\"input\",\"value\":\"12\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}',1552481140,1,1),(117,49,'{\"time\":{\"type\":\"input\",\"value\":\"14\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}',1552481146,1,1),(118,49,'{\"time\":{\"type\":\"input\",\"value\":\"16\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}',1552481151,1,1),(119,49,'{\"time\":{\"type\":\"input\",\"value\":\"18\"},\"continued\":{\"type\":\"input\",\"value\":\"2\"}}',1552481157,1,1),(120,49,'{\"time\":{\"type\":\"input\",\"value\":\"20\"},\"continued\":{\"type\":\"input\",\"value\":\"9\"}}',1552481163,1,1),(135,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u4f1a\\u5458\\u4e2d\\u5fc3\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc9934a7c.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_vip\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/vip\"}}',1553779918,1,1),(136,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u8bb0\\u5f55\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc9918091.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/user_goods_bargain_list\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/bargain\\/record\"}}',1553779935,1,1),(137,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u63a8\\u5e7f\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc9943575.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_spread_user\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/user_promotion\"}}',1553779950,1,1),(138,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u4f59\\u989d\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc992db31.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_money\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/account\"}}',1553779973,1,1),(139,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u5730\\u5740\\u4fe1\\u606f\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc99101a8.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_address_list\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/add_manage\"}}',1553779988,1,1),(140,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u6536\\u85cf\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc99269d1.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_goods_collection\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/collection\"}}',1553780003,1,1),(141,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u4f18\\u60e0\\u5238\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc991f394.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_coupon\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/user_coupon\"}}',1553780017,1,1),(142,53,'{\"order_status\":{\"type\":\"select\",\"value\":\"0\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca151e99.gif\"}}',1553780202,1,1),(143,53,'{\"order_status\":{\"type\":\"select\",\"value\":\"1\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca12638a.gif\"}}',1553780210,1,1),(144,53,'{\"order_status\":{\"type\":\"select\",\"value\":\"2\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca1c78cd.gif\"}}',1553780221,1,1),(145,53,'{\"order_status\":{\"type\":\"select\",\"value\":\"3\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca178a67.gif\"}}',1553780230,1,1),(146,53,'{\"order_status\":{\"type\":\"select\",\"value\":\"4\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccca1a01b6.gif\"}}',1553780237,1,1),(147,55,'{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u4e00\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"10\"}}',1553780276,100,1),(148,55,'{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u4e8c\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"20\"}}',1553780292,99,1),(149,55,'{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u4e09\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"30\"}}',1553780303,90,1),(150,55,'{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u56db\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"40\"}}',1553780334,60,1),(151,55,'{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u4e94\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"50\"}}',1553780351,50,1),(152,55,'{\"day\":{\"type\":\"input\",\"value\":\"\\u7b2c\\u516d\\u5929\"},\"sign_num\":{\"type\":\"input\",\"value\":\"60\"}}',1553780364,40,1),(153,55,'{\"day\":{\"type\":\"input\",\"value\":\"\\u5956\\u52b1\"},\"sign_num\":{\"type\":\"input\",\"value\":\"110\"}}',1553780389,10,1),(154,57,'{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/f7452b7014d8b3d1ad9d21f27d2eefe2.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"1\"}}',1553780856,1,1),(155,58,'{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/f7452b7014d8b3d1ad9d21f27d2eefe2.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"1\"},\"link\":{\"type\":\"input\",\"value\":\"#\"},\"wap_link\":{\"type\":\"input\",\"value\":\"#\"}}',1553780869,1,1),(156,59,'{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/85d26d488368318f131ae235271eb8ea.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"1\"},\"link\":{\"type\":\"input\",\"value\":\"#\"},\"wap_link\":{\"type\":\"input\",\"value\":\"#\"}}',1553780883,1,1),(157,56,'{\"title\":{\"type\":\"input\",\"value\":\"\\u5438\\u5c18\\u5668\"}}',1553782153,1,1),(161,60,'{\"title\":{\"type\":\"input\",\"value\":\"\\u5206\\u4eab\\u6d77\\u62a5\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190810\\/887960975abc9a89e410db82e0089680.jpg\"}}',1553866489,1,1),(162,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u8bb0\\u5f55\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/datong.crmeb.net\\/public\\/uploads\\/attach\\/2019\\/03\\/28\\/5c9ccc9918091.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/user_goods_bargain_list\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/bargain\\/record\"}}',1553866805,1,2),(163,56,'{\"title\":{\"type\":\"input\",\"value\":\"\\u52a0\\u6e7f\\u5668\"}}',1553869694,1,1),(164,56,'{\"title\":{\"type\":\"input\",\"value\":\"\\u9a6c\\u6876\"}}',1553869701,1,1),(165,56,'{\"title\":{\"type\":\"input\",\"value\":\"\\u70ed\\u6c34\\u5668\"}}',1553869710,1,1),(167,60,'{\"title\":{\"type\":\"input\",\"value\":\"1\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190810\\/623a4c225738606e4c65f93217050c86.jpg\"}}',1555063900,1,1),(168,60,'{\"title\":{\"type\":\"input\",\"value\":\"2\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190810\\/93669bff568cf8eb967670d9cd3ca78c.jpg\"}}',1555067377,1,1),(169,57,'{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/activity.crmeb.net\\/public\\/uploads\\/editor\\/20190605\\/5cf737bf264e4.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"asd\"}}',1560149769,1,1),(170,37,'{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/www.crmeb3.net\\/uploads\\/config\\/image\\/20190712\\/9a79a97de87d099f4e3a07ddff11a229.png\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\\u5217\\u8868\\u9876\\u90e8baaner\"}}',1562900433,1,1),(171,37,'{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/www.crmeb3.net\\/uploads\\/config\\/image\\/20190712\\/9a79a97de87d099f4e3a07ddff11a229.png\"},\"comment\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u5217\\u8868\\u9876\\u90e8baaner\"}}',1562900852,1,1),(172,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u8054\\u7cfb\\u5ba2\\u670d\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/07\\/20190730\\/0ded3d3f72d654fb33c8c9f30a268c97.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/service\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/customer\\/list\"}}',1564482010,1,1),(173,61,'{\"fast_info\":{\"type\":\"input\",\"value\":\"\\u4e0a\\u767e\\u79cd\\u5546\\u54c1\\u5206\\u7c7b\\u4efb\\u60a8\\u9009\\u62e9\"},\"bast_info\":{\"type\":\"input\",\"value\":\"\\u8bda\\u610f\\u63a8\\u8350\\u54c1\\u8d28\\u5546\\u54c1\"},\"first_info\":{\"type\":\"input\",\"value\":\"\\u591a\\u4e2a\\u4f18\\u8d28\\u5546\\u54c1\\u6700\\u65b0\\u4e0a\\u67b6\"},\"sales_info\":{\"type\":\"input\",\"value\":\"\\u5e93\\u5b58\\u5546\\u54c1\\u4f18\\u60e0\\u4fc3\\u9500\\u6d3b\\u52a8\"},\"fast_number\":{\"type\":\"input\",\"value\":\"10\"},\"bast_number\":{\"type\":\"input\",\"value\":\"10\"},\"first_number\":{\"type\":\"input\",\"value\":\"10\"}}',1565146071,1,1),(174,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u7edf\\u8ba1\\u7ba1\\u7406\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190808\\/87a240841283cb614f3ba308fd299866.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/customer\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/customer\\/index\"}}',1565259184,1,1),(175,53,'{\"order_status\":{\"type\":\"select\",\"value\":\"9\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/08\\/20190809\\/7ba5e7e9bcd1ed480fdd432b49a3161a.gif\"}}',1565317740,1,1),(176,54,'{\"name\":{\"type\":\"input\",\"value\":\"\\u8ba2\\u5355\\u6838\\u9500\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/kaifa.crmeb.net\\/uploads\\/attach\\/2019\\/10\\/20191011\\/e5eab1a735b58f171cfd507cb849e96b.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/service\\/index\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/order\\/order_cancellation\"}}',1569382895,1,1),(177,48,'{\"name\":{\"type\":\"input\",\"value\":\"1\"},\"url\":{\"type\":\"input\",\"value\":\"123\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/07c0118a38a91ad4f803686f845f77f9.jpg\"},\"wap_url\":{\"type\":\"input\",\"value\":\"123\"}}',1582469287,1,1),(178,48,'{\"name\":{\"type\":\"input\",\"value\":\"2\"},\"url\":{\"type\":\"input\",\"value\":\"2\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/d6912f52b40b4ecc830054bd9883733b.jpg\"},\"wap_url\":{\"type\":\"input\",\"value\":\"2\"}}',1582469298,1,1),(179,48,'{\"name\":{\"type\":\"input\",\"value\":\"3\"},\"url\":{\"type\":\"input\",\"value\":\"3\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/0dac51631c9d5c2cf375155c8c2a42f4.jpg\"},\"wap_url\":{\"type\":\"input\",\"value\":\"3\"}}',1582469310,1,1),(180,48,'{\"name\":{\"type\":\"input\",\"value\":\"4\"},\"url\":{\"type\":\"input\",\"value\":\"4\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/80efdcf272c0e26be8f5dcb1f7ebc394.jpg\"},\"wap_url\":{\"type\":\"input\",\"value\":\"4\"}}',1582469386,1,1),(181,48,'{\"name\":{\"type\":\"input\",\"value\":\"5\"},\"url\":{\"type\":\"input\",\"value\":\"5\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/f7452b7014d8b3d1ad9d21f27d2eefe2.jpg\"},\"wap_url\":{\"type\":\"input\",\"value\":\"5\"}}',1582469403,1,1),(182,48,'{\"name\":{\"type\":\"input\",\"value\":\"6\"},\"url\":{\"type\":\"input\",\"value\":\"6\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/2f9032d59c03de75eb46586212c1bee7.jpg\"},\"wap_url\":{\"type\":\"input\",\"value\":\"6\"}}',1582469418,1,1),(183,48,'{\"name\":{\"type\":\"input\",\"value\":\"7\"},\"url\":{\"type\":\"input\",\"value\":\"7\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/01d2bbdd1320b5ad38a3ce1d6d306cf1.jpg\"},\"wap_url\":{\"type\":\"input\",\"value\":\"7\"}}',1582469438,1,1),(184,48,'{\"name\":{\"type\":\"input\",\"value\":\"8\"},\"url\":{\"type\":\"input\",\"value\":\"8\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/85d26d488368318f131ae235271eb8ea.jpg\"},\"wap_url\":{\"type\":\"input\",\"value\":\"8\"}}',1582469461,1,1),(185,47,'{\"name\":{\"type\":\"input\",\"value\":\"\\u5546\\u54c1\\u5206\\u7c7b\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/2fe09eb913e16db4cc3f445a8b90dbd8.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/goods_cate\\/goods_cate\"},\"show\":{\"type\":\"radio\",\"value\":\"1\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/category\"}}',1582469661,1,1),(186,47,'{\"name\":{\"type\":\"input\",\"value\":\"\\u9886\\u4f18\\u60e0\\u5238\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/88dfb56039f892755e4e73370fd5eee1.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_get_coupon\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/get_coupon\"}}',1582469685,1,1),(187,47,'{\"name\":{\"type\":\"input\",\"value\":\"\\u884c\\u4e1a\\u8d44\\u8baf\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/18e21255e830a93e7d133cc4dbba2b4e.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/news_list\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/news_list\"}}',1582469729,1,1),(188,47,'{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u8981\\u7b7e\\u5230\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/dfe28e4c6f1342d9675fa9bdf2433ce7.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_sgin\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/sign\"}}',1582469755,1,1),(189,47,'{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u6536\\u85cf\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/96c06feb26826c033ee83c0d8d74e5b7.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/user_goods_collection\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/collection\"}}',1582469835,1,1),(190,47,'{\"name\":{\"type\":\"input\",\"value\":\"\\u62fc\\u56e2\\u6d3b\\u52a8\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/f79e768dac310838ffacbb15e6c5a62e.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_combination\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/group\"}}',1582469930,1,1),(191,47,'{\"name\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\\u6d3b\\u52a8\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/63f863801115cb520c79fcacf207b9a7.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_seckill\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/goods_seckill\"}}',1582469961,1,1),(192,47,'{\"name\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u6d3b\\u52a8\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/d46c59be71bd6b5540f5434b620552a0.png\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_bargain\\/index\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/activity\\/bargain\"}}',1582470020,1,1),(195,51,'{\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/56dc1c5ebfde0c2b50f25f64a96064a5.png\"},\"title\":{\"type\":\"input\",\"value\":\"\\u62fc\\u56e2\"},\"info\":{\"type\":\"input\",\"value\":\"\\u62fc\\u56e2\"},\"link\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_combination\\/index\"},\"wap_link\":{\"type\":\"select\",\"value\":\"\\/activity\\/group\"}}',1582470270,1,1),(196,51,'{\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/ddbf7daf1c83d058103dd425713942a4.png\"},\"title\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\"},\"info\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\"},\"link\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_seckill\\/index\"},\"wap_link\":{\"type\":\"select\",\"value\":\"\\/activity\\/goods_seckill\"}}',1582470327,1,1),(197,51,'{\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/9ab1800ffa2d792646773f486ac607a1.png\"},\"title\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\"},\"info\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\"},\"link\":{\"type\":\"select\",\"value\":\"\\/pages\\/activity\\/goods_bargain\\/index\"},\"wap_link\":{\"type\":\"select\",\"value\":\"\\/activity\\/bargain\"}}',1582470370,1,1),(198,50,'{\"info\":{\"type\":\"input\",\"value\":\"\\u5173\\u6ce8\\u9510\\u4e9a\\u5fae\\u4fe1\\u516c\\u4f17\\u53f7\\u9886\\u53d6\\u8d85\\u503c\\u4f18\\u60e0\\u5238\"},\"url\":{\"type\":\"select\",\"value\":\"\\/pages\\/promotion-card\\/promotion-card\"},\"show\":{\"type\":\"radio\",\"value\":\"2\"},\"wap_url\":{\"type\":\"select\",\"value\":\"\\/user\\/poster\"}}',1582470495,1,1),(199,52,'{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/85d26d488368318f131ae235271eb8ea.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"1\"},\"link\":{\"type\":\"input\",\"value\":\"\\/hot_new_goods\\/1\"},\"wap_link\":{\"type\":\"input\",\"value\":\"\\/hot_new_goods\\/1\"}}',1582470624,1,1),(200,52,'{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/localhost\\/uploads\\/attach\\/2020\\/02\\/20200223\\/80efdcf272c0e26be8f5dcb1f7ebc394.jpg\"},\"comment\":{\"type\":\"input\",\"value\":\"2\"},\"link\":{\"type\":\"input\",\"value\":\"2\"},\"wap_link\":{\"type\":\"input\",\"value\":\"2\"}}',1582470638,1,1);

#
# Structure for table "tb_system_log"
#

DROP TABLE IF EXISTS `tb_system_log`;
CREATE TABLE `tb_system_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员操作记录ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `admin_name` varchar(64) NOT NULL DEFAULT '' COMMENT '管理员姓名',
  `path` varchar(128) NOT NULL DEFAULT '' COMMENT '链接',
  `page` varchar(64) NOT NULL DEFAULT '' COMMENT '行为',
  `method` varchar(12) NOT NULL DEFAULT '' COMMENT '访问类型',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT '登录IP',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `merchant_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=695 DEFAULT CHARSET=utf8 COMMENT='管理员操作记录表';

#
# Data for table "tb_system_log"
#

INSERT INTO `tb_system_log` VALUES (29,2,'test','admin/setting.systemadmin/admin_info/','未知','admin','::1','system',1582209082,0),(30,1,'admin','admin/setting.systemadmin/index/','未知','admin','::1','system',1582209234,0),(31,1,'admin','admin/setting.systemadmin/edit/','未知','admin','::1','system',1582209237,0),(32,1,'admin','admin/setting.systemadmin/update/','未知','admin','::1','system',1582209323,0),(33,1,'admin','admin/setting.systemadmin/index/','未知','admin','::1','system',1582209323,0),(34,1,'admin','admin/setting.systemadmin/edit/','未知','admin','::1','system',1582209329,0),(35,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582209335,0),(36,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582209335,0),(37,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582209338,0),(38,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582209338,0),(39,1,'admin','admin/order.storeorder/index/','未知','admin','::1','system',1582209340,0),(40,1,'admin','admin/order.storeorder/order_list/','未知','admin','::1','system',1582209340,0),(41,1,'admin','admin/order.storeorder/getbadge/','未知','admin','::1','system',1582209340,0),(42,1,'admin','admin/store.storeproductreply/index/','未知','admin','::1','system',1582209342,0),(43,1,'admin','admin/store.storeproductreply/get_product_imaes_list/','未知','admin','::1','system',1582209342,0),(44,1,'admin','admin/store.storeproductreply/get_product_reply_list/','未知','admin','::1','system',1582209342,0),(45,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582466104,0),(46,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582466105,0),(47,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582466109,0),(48,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582466109,0),(49,1,'admin','admin/store.storecategory/delete/','未知','admin','::1','system',1582466123,0),(50,1,'admin','admin/store.storecategory/set_show/is_show/0/id/23','未知','admin','::1','system',1582466161,0),(51,1,'admin','admin/store.storecategory/edit/','未知','admin','::1','system',1582466163,0),(52,1,'admin','admin/store.storecategory/update/','未知','admin','::1','system',1582466170,0),(53,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582466171,0),(54,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582466171,0),(55,1,'admin','admin/store.storecategory/delete/','未知','admin','::1','system',1582466178,0),(56,1,'admin','admin/store.storecategory/edit/','未知','admin','::1','system',1582466182,0),(57,1,'admin','admin/order.storeorder/index/','未知','admin','::1','system',1582466197,0),(58,1,'admin','admin/order.storeorder/order_list/','未知','admin','::1','system',1582466197,0),(59,1,'admin','admin/order.storeorder/getbadge/','未知','admin','::1','system',1582466197,0),(60,1,'admin','admin/store.storeproductreply/index/','未知','admin','::1','system',1582466200,0),(61,1,'admin','admin/store.storeproductreply/get_product_imaes_list/','未知','admin','::1','system',1582466200,0),(62,1,'admin','admin/store.storeproductreply/get_product_reply_list/','未知','admin','::1','system',1582466200,0),(63,1,'admin','admin/user.user/index/','未知','admin','::1','system',1582466220,0),(64,1,'admin','admin/user.user/get_user_list/','未知','admin','::1','system',1582466220,0),(65,1,'admin','admin/user.userlevel/index/','未知','admin','::1','system',1582466222,0),(66,1,'admin','admin/user.userlevel/get_system_vip_list/','未知','admin','::1','system',1582466223,0),(67,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582466224,0),(68,1,'admin','admin/agent.agentmanage/index/','未知','admin','::1','system',1582466227,0),(69,1,'admin','admin/agent.agentmanage/get_spread_list/','未知','admin','::1','system',1582466227,0),(70,1,'admin','admin/agent.agentmanage/get_badge/','未知','admin','::1','system',1582466227,0),(71,1,'admin','admin/routine.routinetemplate/index/','未知','admin','::1','system',1582466385,0),(72,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582466394,0),(73,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582466396,0),(74,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582466396,0),(75,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582466396,0),(76,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582466442,0),(77,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582466443,0),(78,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582466502,0),(79,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582466503,0),(80,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582466505,0),(81,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582466517,0),(82,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582466518,0),(83,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582466519,0),(84,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582466615,0),(85,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582466615,0),(86,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582466616,0),(87,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582466623,0),(88,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582466623,0),(89,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468325,0),(90,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468331,0),(91,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468333,0),(92,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468335,0),(93,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468336,0),(94,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468455,0),(95,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582468651,0),(96,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582468652,0),(97,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582468653,0),(98,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582468662,0),(99,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582468663,0),(100,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582468678,0),(101,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468678,0),(102,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468681,0),(103,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468683,0),(104,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468684,0),(105,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468685,0),(106,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468686,0),(107,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468688,0),(108,1,'admin','admin/article.article/index/','未知','admin','::1','system',1582468703,0),(109,1,'admin','admin/article.articlecategory/index/','未知','admin','::1','system',1582468705,0),(110,1,'admin','admin/system.clear/index/','未知','admin','::1','system',1582468708,0),(111,1,'admin','admin/system.systemupgradeclient/index/','未知','admin','::1','system',1582468708,0),(112,1,'admin','admin/system.systemupgradeclient/get_list/','未知','admin','::1','system',1582468709,0),(113,1,'admin','admin/system.systemupgradeclient/get_new_version_conte/','未知','admin','::1','system',1582468710,0),(114,1,'admin','admin/setting.systemconfigtab/index/','未知','admin','::1','system',1582468714,0),(115,1,'admin','admin/setting.systemgroup/index/','未知','admin','::1','system',1582468716,0),(116,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582468722,0),(117,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582468722,0),(118,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582468724,0),(119,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582468724,0),(120,1,'admin','admin/order.storeorder/index/','未知','admin','::1','system',1582468728,0),(121,1,'admin','admin/order.storeorder/order_list/','未知','admin','::1','system',1582468728,0),(122,1,'admin','admin/order.storeorder/getbadge/','未知','admin','::1','system',1582468730,0),(123,1,'admin','admin/store.storeproductreply/index/','未知','admin','::1','system',1582468731,0),(124,1,'admin','admin/store.storeproductreply/get_product_imaes_list/','未知','admin','::1','system',1582468731,0),(125,1,'admin','admin/store.storeproductreply/get_product_reply_list/','未知','admin','::1','system',1582468732,0),(126,1,'admin','admin/user.userlevel/index/','未知','admin','::1','system',1582468733,0),(127,1,'admin','admin/user.userlevel/get_system_vip_list/','未知','admin','::1','system',1582468733,0),(128,1,'admin','admin/user.user/index/','未知','admin','::1','system',1582468734,0),(129,1,'admin','admin/user.user/get_user_list/','未知','admin','::1','system',1582468734,0),(130,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468813,0),(131,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468817,0),(132,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468824,0),(133,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468825,0),(134,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468828,0),(135,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468831,0),(136,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468834,0),(137,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468837,0),(138,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582468840,0),(139,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582468840,0),(140,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582468841,0),(141,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582468846,0),(142,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468846,0),(143,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582468854,0),(144,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468854,0),(145,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582468858,0),(146,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582468904,0),(147,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582468904,0),(148,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582468906,0),(149,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582468906,0),(150,1,'admin','admin/store.storeproduct/delete/','未知','admin','::1','system',1582468913,0),(151,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582468913,0),(152,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582468914,0),(153,1,'admin','admin/store.storeproduct/delete/','未知','admin','::1','system',1582468919,0),(154,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582468919,0),(155,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582468920,0),(156,1,'admin','admin/store.storeproduct/delete/','未知','admin','::1','system',1582468925,0),(157,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582468925,0),(158,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582468925,0),(159,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582468927,0),(160,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582468928,0),(161,1,'admin','admin/store.storeproduct/delete/','未知','admin','::1','system',1582468935,0),(162,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582468935,0),(163,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582468935,0),(164,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582468979,0),(165,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582468980,0),(166,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582469008,0),(167,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582469009,0),(168,1,'admin','admin/store.storeproduct/edit/','未知','admin','::1','system',1582469018,0),(169,1,'admin','admin/user.user/index/','未知','admin','::1','system',1582469054,0),(170,1,'admin','admin/user.user/get_user_list/','未知','admin','::1','system',1582469055,0),(171,1,'admin','admin/user.userlevel/index/','未知','admin','::1','system',1582469057,0),(172,1,'admin','admin/user.userlevel/get_system_vip_list/','未知','admin','::1','system',1582469057,0),(173,1,'admin','admin/ump.storebargain/index/','未知','admin','::1','system',1582469065,0),(174,1,'admin','admin/ump.storebargain/get_bargain_list/','未知','admin','::1','system',1582469065,0),(175,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582469137,0),(176,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582469142,0),(177,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582469149,0),(178,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469223,0),(179,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582469226,0),(180,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469228,0),(181,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469230,0),(182,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469230,0),(183,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469231,0),(184,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469241,0),(185,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469241,0),(186,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469242,0),(187,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469242,0),(188,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469242,0),(189,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469242,0),(190,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469242,0),(191,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469242,0),(192,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469243,0),(193,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469243,0),(194,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469243,0),(195,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469243,0),(196,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469275,0),(197,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469281,0),(198,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469285,0),(199,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469287,0),(200,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469287,0),(201,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469291,0),(202,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469295,0),(203,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469295,0),(204,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469295,0),(205,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469298,0),(206,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469298,0),(207,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469302,0),(208,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469305,0),(209,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469305,0),(210,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469305,0),(211,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469310,0),(212,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469310,0),(213,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469349,0),(214,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469380,0),(215,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469381,0),(216,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469381,0),(217,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469386,0),(218,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469386,0),(219,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469389,0),(220,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469392,0),(221,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469392,0),(222,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469392,0),(223,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469403,0),(224,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469403,0),(225,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469407,0),(226,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469409,0),(227,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469410,0),(228,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469410,0),(229,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469418,0),(230,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469418,0),(231,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469421,0),(232,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469427,0),(233,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469427,0),(234,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469427,0),(235,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469438,0),(236,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469438,0),(237,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469452,0),(238,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469457,0),(239,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469457,0),(240,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469457,0),(241,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469461,0),(242,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469461,0),(243,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469470,0),(244,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582469473,0),(245,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582469476,0),(246,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582469480,0),(247,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582469482,0),(248,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582469485,0),(249,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582469487,0),(250,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582469491,0),(251,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582469493,0),(252,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469495,0),(253,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469558,0),(254,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469558,0),(255,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469558,0),(256,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469565,0),(257,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(258,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(259,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(260,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(261,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(262,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(263,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(264,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(265,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(266,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(267,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(268,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(269,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(270,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(271,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(272,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(273,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469582,0),(274,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469582,0),(275,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469583,0),(276,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582469583,0),(277,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469583,0),(278,1,'admin','admin/widget.images/moveimg/','未知','admin','::1','system',1582469590,0),(279,1,'admin','admin/widget.images/moveimg/','未知','admin','::1','system',1582469602,0),(280,1,'admin','admin/widget.images/moveimgcecate/','未知','admin','::1','system',1582469605,0),(281,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582469608,0),(282,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469661,0),(283,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469661,0),(284,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469669,0),(285,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469676,0),(286,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469676,0),(287,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469676,0),(288,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469685,0),(289,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469685,0),(290,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469690,0),(291,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469695,0),(292,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469695,0),(293,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469695,0),(294,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469729,0),(295,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469729,0),(296,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469737,0),(297,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469742,0),(298,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469742,0),(299,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469742,0),(300,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469755,0),(301,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469756,0),(302,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469759,0),(303,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469766,0),(304,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469766,0),(305,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469766,0),(306,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469835,0),(307,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469835,0),(308,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469850,0),(309,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469857,0),(310,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469857,0),(311,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469857,0),(312,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582469913,0),(313,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469914,0),(314,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469930,0),(315,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469931,0),(316,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582469942,0),(317,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582469948,0),(318,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582469948,0),(319,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582469948,0),(320,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582469961,0),(321,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582469962,0),(322,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470005,0),(323,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470009,0),(324,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470010,0),(325,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470010,0),(326,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582470020,0),(327,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470020,0),(328,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470025,0),(329,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470028,0),(330,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470028,0),(331,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470032,0),(332,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470035,0),(333,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470035,0),(334,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470069,0),(335,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470071,0),(336,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470071,0),(337,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470076,0),(338,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470078,0),(339,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470078,0),(340,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470081,0),(341,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470084,0),(342,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470084,0),(343,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470087,0),(344,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470089,0),(345,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470089,0),(346,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470094,0),(347,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470097,0),(348,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470097,0),(349,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470126,0),(350,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470131,0),(351,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470131,0),(352,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470131,0),(353,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470161,0),(354,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470192,0),(355,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470192,0),(356,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470192,0),(357,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582470198,0),(358,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470198,0),(359,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470203,0),(360,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470207,0),(361,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470207,0),(362,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470207,0),(363,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582470219,0),(364,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470219,0),(365,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470234,0),(366,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582470243,0),(367,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470245,0),(368,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470246,0),(369,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470246,0),(370,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470246,0),(371,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582470252,0),(372,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470252,0),(373,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582470270,0),(374,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470270,0),(375,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582470283,0),(376,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582470286,0),(377,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470288,0),(378,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470312,0),(379,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470312,0),(380,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470312,0),(381,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582470316,0),(382,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470317,0),(383,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582470327,0),(384,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470327,0),(385,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470335,0),(386,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470355,0),(387,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470355,0),(388,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470355,0),(389,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582470360,0),(390,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470360,0),(391,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582470370,0),(392,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470370,0),(393,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470375,0),(394,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470380,0),(395,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470463,0),(396,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582470466,0),(397,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582470469,0),(398,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582470473,0),(399,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470476,0),(400,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582470495,0),(401,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470495,0),(402,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470563,0),(403,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470572,0),(404,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470576,0),(405,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470577,0),(406,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582470593,0),(407,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582470597,0),(408,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470599,0),(409,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470600,0),(410,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470600,0),(411,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470600,0),(412,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582470613,0),(413,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582470624,0),(414,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470624,0),(415,1,'admin','admin/setting.systemgroupdata/create/','未知','admin','::1','system',1582470628,0),(416,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470629,0),(417,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470629,0),(418,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470629,0),(419,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582470631,0),(420,1,'admin','admin/setting.systemgroupdata/save/','未知','admin','::1','system',1582470638,0),(421,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470638,0),(422,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470674,0),(423,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470736,0),(424,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470740,0),(425,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470767,0),(426,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470769,0),(427,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470772,0),(428,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470777,0),(429,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470778,0),(430,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470785,0),(431,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470805,0),(432,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470829,0),(433,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470835,0),(434,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470835,0),(435,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470861,0),(436,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470864,0),(437,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470865,0),(438,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470865,0),(439,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582470867,0),(440,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470871,0),(441,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470871,0),(442,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582470875,0),(443,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582470877,0),(444,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582470877,0),(445,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582470877,0),(446,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582470879,0),(447,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582470882,0),(448,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582470882,0),(449,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471055,0),(450,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471064,0),(451,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471087,0),(452,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471088,0),(453,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471088,0),(454,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582471091,0),(455,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471094,0),(456,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471094,0),(457,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471097,0),(458,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471101,0),(459,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471103,0),(460,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471106,0),(461,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471110,0),(462,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471112,0),(463,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471113,0),(464,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471198,0),(465,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471203,0),(466,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471203,0),(467,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471203,0),(468,1,'admin','admin/widget.images/upload/','未知','admin','::1','system',1582471214,0),(469,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471214,0),(470,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471221,0),(471,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471221,0),(472,1,'admin','admin/system.express/index/','未知','admin','::1','system',1582471261,0),(473,1,'admin','admin/system.express/edit/','未知','admin','::1','system',1582471268,0),(474,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471386,0),(475,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471390,0),(476,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471395,0),(477,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471399,0),(478,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471400,0),(479,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471401,0),(480,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471404,0),(481,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471406,0),(482,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471412,0),(483,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471417,0),(484,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471419,0),(485,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471420,0),(486,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471422,0),(487,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471425,0),(488,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471427,0),(489,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471433,0),(490,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471435,0),(491,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471437,0),(492,1,'admin','admin/setting.systemgroupdata/edit/','未知','admin','::1','system',1582471441,0),(493,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471444,0),(494,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471444,0),(495,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471445,0),(496,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582471446,0),(497,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582471457,0),(498,1,'admin','admin/setting.systemgroupdata/update/','未知','admin','::1','system',1582471469,0),(499,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471469,0),(500,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471476,0),(501,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471491,0),(502,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471493,0),(503,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471495,0),(504,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471504,0),(505,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471508,0),(506,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471513,0),(507,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471523,0),(508,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471525,0),(509,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471526,0),(510,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471527,0),(511,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471527,0),(512,1,'admin','admin/routine.routinetemplate/index/','未知','admin','::1','system',1582471568,0),(513,1,'admin','admin/system.clear/index/','未知','admin','::1','system',1582471579,0),(514,1,'admin','admin/system.systemupgradeclient/index/','未知','admin','::1','system',1582471581,0),(515,1,'admin','admin/system.systemupgradeclient/get_list/','未知','admin','::1','system',1582471581,0),(516,1,'admin','admin/system.systemupgradeclient/get_new_version_conte/','未知','admin','::1','system',1582471581,0),(517,1,'admin','admin/setting.systemconfigtab/index/','未知','admin','::1','system',1582471584,0),(518,1,'admin','admin/setting.systemgroup/index/','未知','admin','::1','system',1582471585,0),(519,1,'admin','admin/system.systemlog/index/','未知','admin','::1','system',1582471588,0),(520,1,'admin','admin/system.systemfile/index/','未知','admin','::1','system',1582471590,0),(521,1,'admin','admin/system.systemcleardata/index/','未知','admin','::1','system',1582471590,0),(522,1,'admin','admin/system.systemdatabackup/index/','未知','admin','::1','system',1582471591,0),(523,1,'admin','admin/system.systemdatabackup/filelist/','未知','admin','::1','system',1582471591,0),(524,1,'admin','admin/system.systemdatabackup/tablelist/','未知','admin','::1','system',1582471591,0),(525,1,'admin','admin/system.systemfile/opendir/','未知','admin','::1','system',1582471592,0),(526,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471611,0),(527,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471626,0),(528,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471630,0),(529,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471637,0),(530,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471638,0),(531,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471640,0),(532,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471648,0),(533,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471657,0),(534,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471669,0),(535,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471669,0),(536,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471689,0),(537,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471689,0),(538,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471689,0),(539,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582471692,0),(540,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471697,0),(541,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471698,0),(542,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471701,0),(543,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471703,0),(544,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471704,0),(545,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471705,0),(546,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471706,0),(547,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471707,0),(548,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471710,0),(549,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471710,0),(550,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471718,0),(551,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471718,0),(552,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471718,0),(553,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471722,0),(554,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471722,0),(555,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471729,0),(556,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471730,0),(557,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471735,0),(558,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471735,0),(559,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471735,0),(560,1,'admin','admin/widget.images/get_image_list/pid/0/page/2/limit/18','未知','admin','::1','system',1582471738,0),(561,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471742,0),(562,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471742,0),(563,1,'admin','admin/wechat.storeservice/index/','未知','admin','::1','system',1582471769,0),(564,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471778,0),(565,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471779,0),(566,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471780,0),(567,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471782,0),(568,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471787,0),(569,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471788,0),(570,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471789,0),(571,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471790,0),(572,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582471793,0),(573,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471804,0),(574,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471809,0),(575,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471813,0),(576,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471821,0),(577,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471821,0),(578,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471839,0),(579,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471850,0),(580,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471851,0),(581,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471852,0),(582,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471854,0),(583,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471854,0),(584,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471862,0),(585,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582471865,0),(586,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582471865,0),(587,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582471894,0),(588,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582471894,0),(589,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582471899,0),(590,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582471899,0),(591,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582471903,0),(592,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582471903,0),(593,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582471930,0),(594,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582471931,0),(595,1,'admin','admin/store.storeproduct/edit/','未知','admin','::1','system',1582471934,0),(596,1,'admin','admin/store.storeproduct/update/','未知','admin','::1','system',1582471939,0),(597,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471944,0),(598,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471944,0),(599,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471944,0),(600,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471949,0),(601,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471949,0),(602,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471949,0),(603,1,'admin','admin/store.storeproduct/update/','未知','admin','::1','system',1582471954,0),(604,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582471954,0),(605,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582471955,0),(606,1,'admin','admin/store.storeproduct/edit/','未知','admin','::1','system',1582471963,0),(607,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471967,0),(608,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471967,0),(609,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471967,0),(610,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582471975,0),(611,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582471975,0),(612,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582471975,0),(613,1,'admin','admin/store.storeproduct/update/','未知','admin','::1','system',1582471980,0),(614,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582471981,0),(615,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582471981,0),(616,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582471989,0),(617,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582471989,0),(618,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582471991,0),(619,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582471991,0),(620,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582471996,0),(621,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582471996,0),(622,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582471998,0),(623,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582471999,0),(624,1,'admin','admin/store.storeproduct/index/','未知','admin','::1','system',1582472001,0),(625,1,'admin','admin/store.storeproduct/product_ist/','未知','admin','::1','system',1582472002,0),(626,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582472006,0),(627,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582472007,0),(628,1,'admin','admin/store.storecategory/edit/','未知','admin','::1','system',1582472026,0),(629,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582472028,0),(630,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582472028,0),(631,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582472028,0),(632,1,'admin','admin/store.storecategory/update/','未知','admin','::1','system',1582472031,0),(633,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582472031,0),(634,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582472031,0),(635,1,'admin','admin/store.storecategory/delete/','未知','admin','::1','system',1582472039,0),(636,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582472041,0),(637,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582472041,0),(638,1,'admin','admin/store.storecategory/delete/','未知','admin','::1','system',1582472045,0),(639,1,'admin','admin/store.storecategory/delete/','未知','admin','::1','system',1582472049,0),(640,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582472051,0),(641,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582472052,0),(642,1,'admin','admin/store.storecategory/delete/','未知','admin','::1','system',1582472054,0),(643,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582472057,0),(644,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582472058,0),(645,1,'admin','admin/store.storecategory/edit/','未知','admin','::1','system',1582472060,0),(646,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582472064,0),(647,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582472064,0),(648,1,'admin','admin/store.storecategory/delete/','未知','admin','::1','system',1582472067,0),(649,1,'admin','admin/store.storecategory/index/','未知','admin','::1','system',1582472069,0),(650,1,'admin','admin/store.storecategory/category_list/','未知','admin','::1','system',1582472069,0),(651,1,'admin','admin/store.storecategory/delete/','未知','admin','::1','system',1582472072,0),(652,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582537891,0),(653,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582537896,0),(654,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582537902,0),(655,1,'admin','admin/setting.systemgroupdata/delete/','未知','admin','::1','system',1582537907,0),(656,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582537965,0),(657,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582537968,0),(658,1,'admin','admin/wechat.storeservice/index/','未知','admin','::1','system',1582537972,0),(659,1,'admin','admin/setting.systemgroupdata/index/','未知','admin','::1','system',1582537974,0),(660,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582537980,0),(661,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582537982,0),(662,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582537984,0),(663,1,'admin','admin/widget.images/index/','未知','admin','::1','system',1582537986,0),(664,1,'admin','admin/widget.images/get_image_cate/','未知','admin','::1','system',1582537986,0),(665,1,'admin','admin/widget.images/get_image_list/pid/0/page/1/limit/18','未知','admin','::1','system',1582537987,0),(666,1,'admin','admin/setting.systemconfig/save_basics/','未知','admin','::1','system',1582538017,0),(667,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582538017,0),(668,1,'admin','admin/system.clear/index/','未知','admin','::1','system',1582542481,0),(669,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1582542483,0),(670,1,'admin','admin/system.clear/delete_log/','未知','admin','::1','system',1582542486,0),(671,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1582542489,0),(672,1,'admin','admin/system.clear/delete_log/','未知','admin','::1','system',1582542493,0),(673,1,'admin','admin/system.clear/index/','未知','admin','::1','system',1582542877,0),(674,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1582542880,0),(675,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1582542883,0),(676,1,'admin','admin/system.clear/delete_log/','未知','admin','::1','system',1582542885,0),(677,1,'admin','admin/system.clear/delete_log/','未知','admin','::1','system',1582542887,0),(678,1,'admin','admin/system.clear/index/','未知','admin','::1','system',1582543037,0),(679,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1582543039,0),(680,1,'admin','admin/system.clear/delete_log/','未知','admin','::1','system',1582543041,0),(681,1,'admin','admin/system.clear/index/','未知','admin','::1','system',1582543174,0),(682,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1582543177,0),(683,1,'admin','admin/system.clear/delete_log/','未知','admin','::1','system',1582543180,0),(684,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1582543183,0),(685,1,'admin','admin/system.clear/delete_log/','未知','admin','::1','system',1582543186,0),(686,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1582543188,0),(687,1,'admin','admin/system.clear/index/','未知','admin','::1','system',1582544739,0),(688,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1582544742,0),(689,1,'admin','admin/system.clear/delete_log/','未知','admin','::1','system',1582544744,0),(690,1,'admin','admin/setting.systemconfig/index/','未知','admin','::1','system',1582858221,0),(691,1,'admin','admin/system.clear/index/','未知','admin','::1','system',1583047225,0),(692,1,'admin','admin/system.clear/delete_log/','未知','admin','::1','system',1583047228,0),(693,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1583047231,0),(694,1,'admin','admin/system.clear/refresh_cache/','未知','admin','::1','system',1583047233,0);

#
# Structure for table "tb_system_menus"
#

DROP TABLE IF EXISTS `tb_system_menus`;
CREATE TABLE `tb_system_menus` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `icon` varchar(16) NOT NULL DEFAULT '' COMMENT '图标',
  `menu_name` varchar(32) NOT NULL DEFAULT '' COMMENT '按钮名',
  `module` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '模块名',
  `controller` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制器',
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '方法名',
  `params` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]' COMMENT '参数',
  `sort` tinyint(3) NOT NULL DEFAULT '1' COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '子管理员是否可用',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `access` (`access`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8 COMMENT='菜单表';

#
# Data for table "tb_system_menus"
#

INSERT INTO `tb_system_menus` VALUES (1,289,'','系统设置','admin','setting.systemConfig','index','[]',127,1,1),(2,153,'','权限规则','admin','setting.systemMenus','index','[]',7,1,1),(4,153,'','管理员列表','admin','setting.systemAdmin','index','[]',9,1,1),(7,467,'','配置分类','admin','setting.systemConfigTab','index','[]',1,1,1),(8,153,'','身份管理','admin','setting.systemRole','index','[]',10,1,1),(9,467,'','组合数据','admin','setting.systemGroup','index','[]',1,1,1),(11,0,'wechat','公众号','admin','wechat','index','[]',91,1,1),(12,354,'','微信关注回复','admin','wechat.reply','index','{\"key\":\"subscribe\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u914d\\u7f6e\\u9ed8\\u8ba4\\u56de\\u590d\"}',86,1,1),(17,360,'','微信菜单','admin','wechat.menus','index','[]',95,1,1),(19,11,'','图文管理','admin','wechat.wechatNewsCategory','index','[]',60,1,1),(21,0,'magic','维护','admin','system','index','[]',0,1,1),(23,0,'laptop','商品','admin','store','index','[]',110,1,1),(24,23,'','商品管理','admin','store.storeProduct','index','{\"type\":\"1\"}',100,1,1),(25,23,'','商品分类','admin','store.storeCategory','index','[]',1,1,1),(26,285,'','订单管理','admin','order.storeOrder','index','[]',1,1,1),(30,354,'','关键字回复','admin','wechat.reply','keyword','[]',85,1,1),(31,354,'','无效关键词回复','admin','wechat.reply','index','{\"key\":\"default\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u6548\\u5173\\u952e\\u5b57\\u9ed8\\u8ba4\\u56de\\u590d\"}',84,1,1),(33,284,'','附加权限','admin','article.articleCategory','','[]',0,0,1),(34,33,'','添加文章分类','admin','article.articleCategory','create','[]',0,0,1),(35,33,'','编辑文章分类','admin','article.articleCategory','edit','[]',0,0,1),(36,33,'','删除文章分类','admin','article.articleCategory','delete','[]',0,0,1),(37,31,'','附加权限','admin','wechat.reply','','[]',0,0,1),(38,283,'','附加权限','admin','article.article','','[]',0,0,1),(39,38,'','添加文章','admin','article. article','create','[]',0,0,1),(40,38,'','编辑文章','admin','article. article','add_new','[]',0,0,1),(41,38,'','删除文章','admin','article. article','delete','[]',0,0,1),(42,19,'','附加权限','admin','wechat.wechatNewsCategory','','[]',0,0,1),(43,42,'','添加图文消息','admin','wechat.wechatNewsCategory','create','[]',0,0,1),(44,42,'','编辑图文消息','admin','wechat.wechatNewsCategory','edit','[]',0,0,1),(45,42,'','删除图文消息','admin','wechat.wechatNewsCategory','delete','[]',0,0,1),(46,7,'','配置分类附加权限','admin','setting.systemConfigTab','','[]',0,0,1),(47,46,'','添加配置分类','admin','setting.systemConfigTab','create','[]',0,0,1),(48,117,'','添加配置','admin','setting.systemConfig','create','[]',0,0,1),(49,46,'','编辑配置分类','admin','setting.systemConfigTab','edit','[]',0,0,1),(50,46,'','删除配置分类','admin','setting.systemConfigTab','delete','[]',0,0,1),(51,46,'','查看子字段','admin','system.systemConfigTab','sonConfigTab','[]',0,0,1),(52,9,'','组合数据附加权限','admin','setting.systemGroup','','[]',0,0,1),(53,468,'','添加数据','admin','setting.systemGroupData','create','[]',0,0,1),(54,468,'','编辑数据','admin','setting.systemGroupData','edit','[]',0,0,1),(55,468,'','删除数据','admin','setting.systemGroupData','delete','[]',0,0,1),(56,468,'','数据列表','admin','setting.systemGroupData','index','[]',0,0,1),(57,52,'','添加数据组','admin','setting.systemGroup','create','[]',0,0,1),(58,52,'','删除数据组','admin','setting.systemGroup','delete','[]',0,0,1),(59,4,'','管理员列表附加权限','admin','setting.systemAdmin','','[]',0,0,1),(60,59,'','添加管理员','admin','setting.systemAdmin','create','[]',0,0,1),(61,59,'','编辑管理员','admin','setting.systemAdmin','edit','[]',0,0,1),(62,59,'','删除管理员','admin','setting.systemAdmin','delete','[]',0,0,1),(63,8,'','身份管理附加权限','admin','setting.systemRole','','[]',0,0,1),(64,63,'','添加身份','admin','setting.systemRole','create','[]',0,0,1),(65,63,'','修改身份','admin','setting.systemRole','edit','[]',0,0,1),(66,63,'','删除身份','admin','setting.systemRole','delete','[]',0,0,1),(67,8,'','身份管理展示页','admin','setting.systemRole','index','[]',0,0,1),(68,4,'','管理员列表展示页','admin','setting.systemAdmin','index','[]',0,0,1),(69,7,'','配置分类展示页','admin','setting.systemConfigTab','index','[]',0,0,1),(70,9,'','组合数据展示页','admin','setting.systemGroup','index','[]',0,0,1),(71,284,'','文章分类管理展示页','admin','article.articleCategory','index','[]',0,0,1),(72,283,'','文章管理展示页','admin','article.article','index','[]',0,0,1),(73,19,'','图文消息展示页','admin','wechat.wechatNewsCategory','index','[]',0,0,1),(74,2,'','菜单管理附加权限','admin','setting.systemMenus','','[]',0,0,1),(75,74,'','添加菜单','admin','setting.systemMenus','create','[]',0,0,1),(76,74,'','编辑菜单','admin','setting.systemMenus','edit','[]',0,0,1),(77,74,'','删除菜单','admin','setting.systemMenus','delete','[]',0,0,1),(78,2,'','菜单管理展示页','admin','setting.systemMenus','index','[]',0,0,1),(80,0,'leanpub','内容','admin','article','index','[]',90,1,1),(82,11,'','微信用户管理','admin','user','list','[]',5,1,1),(84,82,'','用户标签','admin','wechat.wechatUser','tag','[]',0,1,1),(89,30,'','关键字回复附加权限','admin','wechat.reply','','[]',0,0,1),(90,89,'','添加关键字','admin','wechat.reply','add_keyword','[]',0,0,1),(91,89,'','修改关键字','admin','wechat.reply','info_keyword','[]',0,0,1),(92,89,'','删除关键字','admin','wechat.reply','delete','[]',0,0,1),(93,30,'','关键字回复展示页','admin','wechat.reply','keyword','[]',0,0,1),(94,31,'','无效关键词回复展示页','admin','wechat.reply','index','[]',0,0,1),(95,31,'','无效关键词回复附加权限','admin','wechat.reply','','[]',0,0,1),(96,95,'','无效关键词回复提交按钮','admin','wechat.reply','save','{\"key\":\"default\",\"title\":\"编辑无效关键字默认回复\"}',0,0,1),(97,12,'','微信关注回复展示页','admin','wechat.reply','index','[]',0,0,1),(98,12,'','微信关注回复附加权限','admin','wechat.reply','','[]',0,0,1),(99,98,'','微信关注回复提交按钮','admin','wechat.reply','save','{\"key\":\"subscribe\",\"title\":\"编辑无配置默认回复\"}',0,0,1),(100,74,'','添加提交菜单','admin','setting.systemMenus','save','[]',0,0,1),(101,74,'','编辑提交菜单','admin','setting.systemMenus','update','[]',0,0,1),(102,59,'','提交添加管理员','admin','setting.systemAdmin','save','[]',0,0,1),(103,59,'','提交修改管理员','admin','setting.systemAdmin','update','[]',0,0,1),(104,63,'','提交添加身份','admin','setting.systemRole','save','[]',0,0,1),(105,63,'','提交修改身份','admin','setting.systemRole','update','[]',0,0,1),(106,46,'','提交添加配置分类','admin','setting.systemConfigTab','save','[]',0,0,1),(107,46,'','提交修改配置分类','admin','setting.systemConfigTab','update','[]',0,0,1),(108,117,'','提交添加配置列表','admin','setting.systemConfig','save','[]',0,0,1),(109,52,'','提交添加数据组','admin','setting.systemGroup','save','[]',0,0,1),(110,52,'','提交修改数据组','admin','setting.systemGroup','update','[]',0,0,1),(111,468,'','提交添加数据','admin','setting.systemGroupData','save','[]',0,0,1),(112,468,'','提交修改数据','admin','setting.systemGroupData','update','[]',0,0,1),(113,33,'','提交添加文章分类','admin','article.articleCategory','save','[]',0,0,1),(114,33,'','提交添加文章分类','admin','article.articleCategory','update','[]',0,0,1),(115,42,'','提交添加图文消息','admin','wechat.wechatNewsCategory','save','[]',0,0,1),(116,42,'','提交编辑图文消息','admin','wechat.wechatNewsCategory','update','[]',0,0,1),(117,1,'','配置列表附加权限','admin','setting.systemConfig','','[]',0,0,1),(118,1,'','配置列表展示页','admin','setting.systemConfig','index','[]',0,0,1),(119,117,'','提交保存配置列表','admin','setting.systemConfig','save_basics','[]',0,0,1),(123,89,'','提交添加关键字','admin','wechat.reply','save_keyword','{\"dis\":\"1\"}',0,0,1),(124,89,'','提交修改关键字','admin','wechat.reply','save_keyword','{\"dis\":\"2\"}',0,0,1),(126,17,'','微信菜单展示页','admin','wechat.menus','index','[]',0,0,1),(127,17,'','微信菜单附加权限','admin','wechat.menus','','[]',0,0,1),(128,127,'','提交微信菜单按钮','admin','wechat.menus','save','{\"dis\":\"1\"}',0,0,1),(129,82,'','用户行为纪录','admin','wechat.wechatMessage','index','[]',0,1,1),(130,469,'','系统日志','admin','system.systemLog','index','[]',5,1,1),(131,130,'','管理员操作记录展示页','admin','system.systemLog','index','[]',0,0,1),(132,129,'','微信用户行为纪录展示页','admin','wechat.wechatMessage','index','[]',0,0,1),(133,82,'','微信用户','admin','wechat.wechatUser','index','[]',1,1,1),(134,133,'','微信用户展示页','admin','wechat.wechatUser','index','[]',0,0,1),(137,135,'','添加通知模板','admin','system.systemNotice','create','[]',0,0,1),(138,135,'','编辑通知模板','admin','system.systemNotice','edit','[]',0,0,1),(139,135,'','删除辑通知模板','admin','system.systemNotice','delete','[]',0,0,1),(140,135,'','提交编辑辑通知模板','admin','system.systemNotice','update','[]',0,0,1),(141,135,'','提交添加辑通知模板','admin','system.systemNotice','save','[]',0,0,1),(142,25,'','产品分类展示页','admin','store.storeCategory','index','[]',0,0,1),(143,25,'','产品分类附加权限','admin','store.storeCategory','','[]',0,0,1),(144,117,'','获取配置列表上传文件的名称','admin','setting.systemConfig','getimagename','[]',0,0,1),(145,117,'','配置列表上传文件','admin','setting.systemConfig','view_upload','[]',0,0,1),(146,24,'','产品管理展示页','admin','store.storeProduct','index','[]',0,0,1),(147,24,'','产品管理附加权限','admin','store.storeProduct','','[]',0,0,1),(148,286,'','优惠券','','','','[]',10,1,1),(149,148,'','优惠券制作','admin','ump.storeCoupon','index','[]',5,1,1),(150,148,'','会员领取记录','admin','ump.storeCouponUser','index','[]',1,1,1),(151,0,'user','会员','admin','user','index','[]',107,1,1),(153,289,'','管理权限','admin','setting.systemAdmin','','[]',50,1,1),(155,154,'','商户产品展示页','admin','store.storeMerchant','index','[]',0,0,1),(156,154,'','商户产品附加权限','admin','store.storeMerchant','','[]',0,0,1),(158,157,'','商户文章管理展示页','admin','wechat.wechatNews','merchantIndex','[]',0,0,1),(159,157,'','商户文章管理附加权限','admin','wechat.wechatNews','','[]',0,0,1),(170,290,'','评论管理','admin','store.store_product_reply','index','[]',0,1,1),(173,469,'','文件校验','admin','system.systemFile','index','[]',1,1,1),(174,360,'','微信模板消息','admin','wechat.wechatTemplate','index','[]',1,1,1),(175,289,'','客服管理','admin','wechat.storeService','index','[]',70,1,1),(177,151,'','会员管理','admin','user.user','index','[]',10,1,1),(179,307,'','充值记录','admin','finance.userRecharge','index','[]',1,1,1),(190,26,'','订单管理展示页','admin','order.storeOrder','index','[]',0,0,1),(191,26,'','订单管理附加权限','admin','order.storeOrder','','[]',0,0,1),(192,191,'','订单管理去发货','admin','order.storeOrder','deliver_goods','[]',0,0,1),(193,191,'','订单管理备注','admin','order.storeOrder','remark','[]',0,0,1),(194,191,'','订单管理去送货','admin','order.storeOrder','delivery','[]',0,0,1),(195,191,'','订单管理已收货','admin','order.storeOrder','take_delivery','[]',0,0,1),(196,191,'','订单管理退款','admin','order.storeOrder','refund_y','[]',0,0,1),(197,191,'','订单管理修改订单','admin','order.storeOrder','edit','[]',0,0,1),(198,191,'','订单管理修改订单提交','admin','order.storeOrder','update','[]',0,0,1),(199,191,'','订单管理退积分','admin','order.storeOrder','integral_back','[]',0,0,1),(200,191,'','订单管理退积分提交','admin','order.storeOrder','updateIntegralBack','[]',0,0,1),(201,191,'','订单管理立即支付','admin','order.storeOrder','offline','[]',0,0,1),(202,191,'','订单管理退款原因','admin','order.storeOrder','refund_n','[]',0,0,1),(203,191,'','订单管理退款原因提交','admin','order.storeOrder','updateRefundN','[]',0,0,1),(204,191,'','订单管理修改配送信息','admin','order.storeOrder','distribution','[]',0,0,1),(205,191,'','订单管理修改配送信息提交','admin','order.storeOrder','updateDistribution','[]',0,0,1),(206,191,'','订单管理退款提交','admin','order.storeOrder','updateRefundY','[]',0,0,1),(207,191,'','订单管理去发货提交','admin','order.storeOrder','updateDeliveryGoods','[]',0,0,1),(208,191,'','订单管理去送货提交','admin','order.storeOrder','updateDelivery','[]',0,0,1),(209,175,'','客服管理展示页','admin','store.storeService','index','[]',0,0,1),(210,175,'','客服管理附加权限','admin','store.storeService','','[]',0,0,1),(211,210,'','客服管理添加','admin','store.storeService','create','[]',0,0,1),(212,210,'','客服管理添加提交','admin','store.storeService','save','[]',0,0,1),(213,210,'','客服管理编辑','admin','store.storeService','edit','[]',0,0,1),(214,210,'','客服管理编辑提交','admin','store.storeService','update','[]',0,0,1),(215,210,'','客服管理删除','admin','store.storeService','delete','[]',0,0,1),(216,179,'','用户充值记录展示页','admin','user.userRecharge','index','[]',0,0,1),(217,179,'','用户充值记录附加权限','admin','user.userRecharge','','[]',0,0,1),(218,217,'','用户充值记录退款','admin','user.userRecharge','edit','[]',0,0,1),(219,217,'','用户充值记录退款提交','admin','user.userRecharge','updaterefundy','[]',0,0,1),(220,180,'','预售卡管理批量修改预售卡金额','admin','presell.presellCard','batch_price','[]',0,0,1),(221,180,'','预售卡管理批量修改预售卡金额提交','admin','presell.presellCard','savebatch','[]',0,0,1),(222,210,'','客服管理聊天记录查询','admin','store.storeService','chat_user','[]',0,0,1),(223,210,'','客服管理聊天记录查询详情','admin','store.storeService','chat_list','[]',0,0,1),(224,170,'','评论管理展示页','admin','store.storeProductReply','index','[]',0,0,1),(225,170,'','评论管理附加权限','admin','store.storeProductReply','','[]',0,0,1),(226,225,'','评论管理回复评论','admin','store.storeProductReply','set_reply','[]',0,0,1),(227,225,'','评论管理修改回复评论','admin','store.storeProductReply','edit_reply','[]',0,0,1),(228,225,'','评论管理删除评论','admin','store.storeProductReply','delete','[]',0,0,1),(229,149,'','优惠券管理展示页','admin','store.storeCoupon','index','[]',0,0,1),(230,149,'','优惠券管理附加权限','admin','store.storeCoupon','','[]',0,0,1),(231,230,'','优惠券管理添加','admin','store.storeCoupon','create','[]',0,0,1),(232,230,'','优惠券管理添加提交','admin','store.storeCoupon','save','[]',0,0,1),(233,230,'','优惠券管理删除','admin','store.storeCoupon','delete','[]',0,0,1),(234,230,'','优惠券管理立即失效','admin','store.storeCoupon','status','[]',0,0,1),(235,148,'','已发布管理','admin','ump.storeCouponIssue','index','[]',3,1,1),(236,82,'','用户分组','admin','wechat.wechatUser','group','[]',0,1,1),(237,21,'','刷新缓存','admin','system.clear','index','[]',0,1,1),(238,272,'','拼团产品','admin','ump.storeCombination','index','[]',0,1,1),(239,306,'','提现申请','admin','finance.user_extract','index','[]',0,1,1),(241,273,'','秒杀产品','admin','ump.storeSeckill','index','[]',0,1,1),(244,294,'','财务报表','admin','record.storeStatistics','index','[]',0,1,1),(246,295,'','用户统计','admin','user.user','user_analysis','[]',0,1,1),(247,153,'','个人资料','admin','setting.systemAdmin','admininfo','[]',0,0,1),(248,247,'','个人资料附加权限','admin','setting.systemAdmin','','[]',0,0,1),(249,248,'','个人资料提交保存','admin','system.systemAdmin','setAdminInfo','[]',0,0,1),(250,247,'','个人资料展示页','admin','setting.systemAdmin','admininfo','[]',0,0,1),(252,21,'','在线更新','admin','system.systemUpgradeclient','index','[]',0,1,1),(254,271,'','砍价产品','admin','ump.storeBargain','index','[]',0,1,1),(255,289,'','后台通知','admin','setting.systemNotice','index','[]',0,0,1),(261,147,'','编辑产品','admin','store.storeproduct','edit','[]',0,0,1),(262,147,'','添加产品','admin','store.storeproduct','create','[]',0,0,1),(263,147,'','编辑产品详情','admin','store.storeproduct','edit_content','[]',0,0,1),(264,147,'','开启秒杀','admin','store.storeproduct','seckill','[]',0,0,1),(265,147,'','开启秒杀','admin','store.store_product','bargain','[]',0,0,1),(266,147,'','产品编辑属性','admin','store.storeproduct','attr','[]',0,0,1),(269,0,'cubes','小程序','admin','routine','index','[]',92,1,1),(270,289,'','支付配置','admin','setting.systemConfig','index','{\"type\":\"2\",\"tab_id\":\"4\"}',120,1,1),(271,286,'','砍价管理','admin','','','[]',0,1,1),(272,286,'','拼团管理','admin','','','[]',0,1,1),(273,286,'','秒杀管理','admin','','','[]',0,1,1),(276,469,'','附件管理','admin','widget.images','index','[]',0,0,1),(278,469,'','清除数据','admin','system.systemCleardata','index','[]',0,1,1),(283,80,'','文章管理','admin','article.article','index','[]',0,1,1),(284,80,'','文章分类','admin','article.article_category','index','[]',0,1,1),(285,0,'building-o','订单','admin','order','index','[]',109,1,1),(286,0,'paper-plane','营销','admin','ump','index','[]',105,1,1),(287,0,'money','财务','admin','finance','index','[]',103,1,1),(288,0,'line-chart','数据','admin','record','index','[]',100,1,1),(289,0,'gear','设置','admin','setting','index','[]',90,1,1),(290,285,'','售后服务','admin','','','[]',0,1,1),(293,288,'','交易数据','admin','','','[]',100,1,1),(294,288,'','财务数据','admin','','','[]',80,1,1),(295,288,'','会员数据','admin','','','[]',70,1,1),(296,288,'','营销数据','admin','','','[]',90,1,1),(297,288,'','排行榜','admin','','','[]',0,1,1),(300,294,'','提现统计','admin','record.record','chart_cash','[]',0,1,1),(301,294,'','充值统计','admin','record.record','chart_recharge','[]',0,1,1),(302,294,'','返佣统计','admin','record.record','chart_rebate','[]',0,1,1),(303,295,'','会员增长','admin','record.record','user_chart','[]',0,1,1),(304,295,'','会员业务','admin','record.record','user_business_chart','[]',0,1,1),(305,295,'','会员属性','admin','record.record','user_attr','[]',0,1,1),(306,287,'','财务操作','admin','','','[]',100,1,1),(307,287,'','财务记录','admin','','','[]',50,1,1),(308,287,'','佣金记录','admin','','','[]',0,1,1),(312,307,'','资金监控','admin','finance.finance','bill','[]',0,1,1),(313,308,'','佣金记录','admin','finance.finance','commission_list','[]',0,1,1),(314,296,'','积分统计','admin','record.record','chart_score','[]',0,1,1),(315,296,'','优惠券统计','admin','record.record','chart_coupon','[]',0,1,1),(316,296,'','拼团统计','admin','record.record','chart_combination','[]',0,1,1),(317,296,'','秒杀统计','admin','record.record','chart_seckill','[]',0,1,1),(318,296,'','砍价统计','admin','record.record','chart_bargain','[]',0,1,1),(319,297,'','产品销售排行','admin','record.record','ranking_saleslists','[]',0,1,1),(320,297,'','返佣排行','admin','record.record','ranking_commission','[]',0,1,1),(321,297,'','积分排行','admin','record.record','ranking_point','[]',0,1,1),(329,285,'','营销订单','admin','user','user','[]',0,0,1),(333,272,'','拼团列表','admin','ump.storeCombination','combina_list','[]',0,1,1),(334,329,'','秒杀订单','admin','user','','[]',0,0,1),(335,329,'','积分兑换','admin','user','','[]',0,0,1),(337,0,'users','分销','admin','agent','index','[]',106,1,1),(340,293,'','订单统计','admin','record.record','chart_order','[]',0,1,1),(341,293,'','产品统计','admin','record.record','chart_product','[]',0,1,1),(349,286,'','积分','admin','userPoint','index','[]',0,1,1),(350,349,'','积分配置','admin','setting.systemConfig','index','{\"type\":\"3\",\"tab_id\":\"11\"}',0,1,1),(351,349,'','积分日志','admin','ump.userPoint','index','[]',0,1,1),(352,148,'','优惠券配置','admin','setting.systemConfig','index','{\"type\":\"3\",\"tab_id\":\"12\"}',0,1,1),(353,337,'','分销配置','admin','setting.systemConfig','index','{\"type\":\"3\",\"tab_id\":\"9\"}',0,1,1),(354,11,'','自动回复','','','','[]',80,1,1),(360,11,'','公众号配置','','','','[]',100,1,1),(361,289,'','应用配置','admin','setting.systemConfig','index','{\"type\":\"1\",\"tab_id\":\"2\"}',127,1,1),(362,276,'','附加权限','admin','widget.images','','[]',0,1,1),(363,362,'','上传图片','admin','widget.images','upload','[]',0,0,1),(364,362,'','删除图片','admin','widget.images','delete','[]',0,0,1),(365,362,'','附件管理','admin','widget.images','index','[]',0,0,1),(366,254,'','其它权限管理','','','','[]',0,0,1),(367,366,'','编辑砍价','admin','ump.storeBargain','edit','[]',0,0,1),(368,366,'','砍价产品更新','admin','ump.storeBargain','update','[]',0,1,1),(369,143,'','添加产品分类','admin','store.storeCategory','create','[]',0,0,1),(370,143,'','编辑产品分类','admin','store.storeCategory','edit','[]',0,0,1),(371,337,'','分销员管理','admin','agent.agentManage','index','[]',0,1,1),(372,462,'','首页幻灯片','admin','setting.system_group_data','index','{\"gid\":\"48\"}',0,1,1),(373,462,'','首页导航按钮','admin','setting.system_group_data','index','{\"gid\":\"47\"}',0,1,1),(374,295,'','分销会员业务','admin','record.record','user_distribution_chart','[]',0,1,1),(376,269,'','小程序模板消息','admin','routine.routineTemplate','index','[]',0,1,1),(377,469,'','数据备份','admin','system.systemDatabackup','index','[]',0,1,1),(378,289,'','物流公司','admin','system.express','index','[]',0,1,1),(379,469,'','文件管理','admin','system.systemFile','opendir','[]',0,1,1),(380,379,'','权限规则','admin','system.systemFile','','[]',0,0,1),(381,380,'','打开文件','admin','system.systemFile','openfile','[]',0,0,1),(382,380,'','编辑文件','admin','system.systemFile','savefile','[]',0,0,1),(386,362,'','移动图片分类展示','admin','widget.images','moveimg','[]',0,0,1),(387,362,'','编辑分类','admin','widget.images','updatecate','[]',0,0,1),(388,362,'','添加分类','admin','widget.images','savecate','[]',0,0,1),(389,362,'','移动图片分类','admin','widget.images','moveimgcecate','[]',0,0,1),(390,362,'','编辑分类展示','admin','widget.images','editcate','[]',0,0,1),(392,362,'','删除分类','admin','widget.images','deletecate','[]',0,0,1),(393,362,'','添加分类展示','admin','widget.images','addcate','[]',0,0,1),(394,191,'','订单获取列表','admin','order.storeOrder','order_list','[]',0,0,1),(395,82,'','微信用户附加权限','admin','wechat.wechatUser','','[]',0,0,1),(396,395,'','推送消息','admin','wechat.wechat_news_category','push','[]',0,0,1),(397,395,'','推送优惠券','admin','ump.storeCouponUser','grant','[]',0,0,1),(398,177,'','会员列表页','admin','user.user','index','[]',0,0,1),(399,177,'','会员附加权限','','user.user','','[]',0,0,1),(400,399,'','修改用户状态','','user.user','set_status','[]',0,0,1),(401,399,'','编辑用户','admin','user.user','edit','[]',0,0,1),(402,399,'','更新用户','admin','user.user','update','[]',0,0,1),(403,399,'','查看用户','admin','user.user','see','[]',0,0,1),(405,399,'','发优惠券','admin','ump.storeCouponUser','grant','[]',0,0,1),(406,399,'','推送图文','admin','wechat.wechatNewsCategory','push','[]',0,0,1),(407,399,'','发站内信','admin','user.userNotice','notice','[]',0,0,1),(415,371,'','分销管理附加权限','admin','agent.agentManage','','[]',0,0,1),(416,174,'','微信模版消息附加权限','admin','wechat.wechatTemplate','','[]',0,0,1),(417,416,'','添加模版消息','admin','wechat.wechatTemplate','save','[]',0,0,1),(418,416,'','添加模版消息展示','admin','wechat.wechatTemplate','create','[]',0,0,1),(419,416,'','编辑模版消息展示','admin','wechat.wechatTemplate','edit','[]',0,0,1),(420,416,'','更新模版消息展示','admin','wechat.wechatTemplate','update','[]',0,0,1),(421,416,'','删除模版消息展示','admin','wechat.wechatTemplate','delete','[]',0,0,1),(422,376,'','小程序模版消息附加权限','admin','routine.routineTemplate','','[]',0,0,1),(423,422,'','添加模版消息展示','admin','routine.routineTemplate','create','[]',0,0,1),(424,422,'','添加模版消息','admin','routine.routineTemplate','save','[]',0,0,1),(425,422,'','编辑模版消息展示','admin','routine.routineTemplate','edit','[]',0,0,1),(426,422,'','编辑模版消息','admin','routine.routineTemplate','update','[]',0,0,1),(427,422,'','删除模版消息','admin','routine.routineTemplate','delete','[]',0,0,1),(439,377,'','数据库备份附加权限','admin','system.systemDatabackup','','[]',0,0,1),(440,439,'','查看表结构','admin','system.systemDatabackup','seetable','[]',0,0,1),(441,439,'','优化表','admin','system.systemDatabackup','optimize','[]',0,0,1),(442,439,'','修复表','admin','system.systemDatabackup','repair','[]',0,0,1),(443,439,'','备份表','admin','system.systemDatabackup','backup','[]',0,0,1),(444,439,'','删除备份','admin','system.systemDatabackup','delFile','[]',0,0,1),(445,439,'','恢复备份','admin','system.systemDatabackup','import','[]',0,0,1),(446,439,'','下载备份','admin','system.systemDatabackup','downloadFile','[]',0,0,1),(447,377,'','数据备份展示页','admin','system.systemDatabackup','index','[]',0,0,1),(448,379,'','文件管理展示页','admin','system.systemFile','index','[]',0,0,1),(450,371,'','分销管理列表页','admin','agent.agentManage','index','[]',0,0,1),(451,376,'','小程序模版消息列表页','admin','routine.routineTemplate','index','[]',0,0,1),(452,174,'','微信模版消息列表页','admin','wechat.wechatTemplate','index','[]',0,0,1),(453,276,'','附件管理展示页','admin','widget.images','index','[]',0,0,1),(456,151,'','会员等级','admin','user.user_level','index','[]',0,1,1),(458,462,'','签到天数配置','admin','setting.system_group_data','index','{\"gid\":\"55\"}',0,1,1),(459,462,'','订单详情动态图','admin','setting.system_group_data','index','{\"gid\":\"53\"}',0,1,1),(460,462,'','个人中心菜单','admin','setting.system_group_data','index','{\"gid\":\"54\"}',0,1,1),(461,462,'','小程序首页滚动新闻','admin','setting.system_group_data','index','{\"gid\":\"50\"}',0,1,1),(462,289,'','数据配置','admin','','','[]',100,1,1),(463,462,'','热门榜单推荐banner','admin','setting.system_group_data','index','{\"gid\":\"57\"}',0,1,1),(464,462,'','首发新品推荐banner','admin','setting.system_group_data','index','{\"gid\":\"58\"}',0,1,1),(465,462,'','促销单品推荐banner','admin','setting.system_group_data','index','{\"gid\":\"59\"}',0,1,1),(466,462,'','个人中心分销海报','admin','setting.system_group_data','index','{\"gid\":\"60\"}',0,1,1),(467,21,'','开发配置','admin','system','','[]',0,1,1),(468,1,'','配置组合数据附加权限','admin','setting.systemGroupData','index','[]',0,0,1),(469,21,'','安全维护','admin','system','','[]',0,1,1),(470,1,'','配置组合数据展示页','admin','setting.systemGroup','index','[]',0,0,1),(471,462,'','小程序精品推荐','admin','setting.system_group_data','index','{\"gid\":\"52\"}',0,1,1),(472,462,'','首页活动区域图片','admin','setting.system_group_data','index','{\"gid\":\"51\"}',0,1,1),(473,273,'','秒杀配置','admin','setting.system_group_data','index','{\"gid\":\"49\"}',0,1,1),(474,289,'','短信设置','admin','sms','index','[]',1,1,1),(475,474,'','短信模板','admin','sms.smsTemplateApply','index','[]',0,1,1),(477,474,'','短信购买','admin','sms.smsPay','index','[]',0,1,1),(478,474,'','短信配置','admin','sms.smsConfig','index','{\"type\":\"4\",\"tab_id\":\"18\"}',1,1,1),(479,474,'','公共短信模板','admin','sms.smsPublicTemp','index','[]',0,1,1),(480,289,'','门店设置','admin','system.system_store','index','[]',0,1,1),(481,462,'','首页配置','admin','setting.system_group_data','index','{\"gid\":\"61\"}',0,1,1);

#
# Structure for table "tb_system_notice"
#

DROP TABLE IF EXISTS `tb_system_notice`;
CREATE TABLE `tb_system_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知模板id',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '通知标题',
  `type` varchar(64) NOT NULL DEFAULT '' COMMENT '通知类型',
  `icon` varchar(16) NOT NULL DEFAULT '' COMMENT '图标',
  `url` varchar(64) NOT NULL DEFAULT '' COMMENT '链接',
  `table_title` varchar(256) NOT NULL DEFAULT '' COMMENT '通知数据',
  `template` varchar(64) NOT NULL DEFAULT '' COMMENT '通知模板',
  `push_admin` varchar(128) NOT NULL DEFAULT '' COMMENT '通知管理员id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知模板表';

#
# Data for table "tb_system_notice"
#


#
# Structure for table "tb_system_notice_admin"
#

DROP TABLE IF EXISTS `tb_system_notice_admin`;
CREATE TABLE `tb_system_notice_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知记录ID',
  `notice_type` varchar(64) NOT NULL COMMENT '通知类型',
  `admin_id` smallint(5) unsigned NOT NULL COMMENT '通知的管理员',
  `link_id` int(10) unsigned NOT NULL COMMENT '关联ID',
  `table_data` text NOT NULL COMMENT '通知的数据',
  `is_click` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `is_visit` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `visit_time` int(11) NOT NULL COMMENT '访问时间',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通知时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`,`notice_type`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `is_visit` (`is_visit`) USING BTREE,
  KEY `is_click` (`is_click`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知记录表';

#
# Data for table "tb_system_notice_admin"
#


#
# Structure for table "tb_system_role"
#

DROP TABLE IF EXISTS `tb_system_role`;
CREATE TABLE `tb_system_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '身份管理id',
  `role_name` varchar(32) NOT NULL COMMENT '身份管理名称',
  `rules` text NOT NULL COMMENT '身份管理权限(menus_id)',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='身份管理表';

#
# Data for table "tb_system_role"
#

INSERT INTO `tb_system_role` VALUES (1,'超级管理员','23,24,146,147,264,265,266,263,261,262,25,142,143,369,370,285,26,190,191,394,208,207,206,198,199,200,201,202,203,204,205,197,196,192,193,194,195,329,334,335,290,170,224,225,226,227,228,151,177,398,399,407,406,400,401,402,403,405,176,449,408,409,410,411,412,413,456,337,353,371,450,415,286,148,149,229,230,231,232,233,234,235,150,352,271,254,366,368,367,272,333,238,273,473,241,349,351,350,287,306,239,307,179,217,219,218,216,312,308,313,288,293,341,340,296,318,317,316,315,314,294,300,301,302,244,295,305,304,303,374,246,297,319,321,320,269,376,451,422,423,424,425,426,427,11,360,17,127,128,126,174,452,416,421,420,417,418,419,355,356,357,358,359,354,12,97,98,99,30,93,89,124,92,91,90,123,31,94,95,96,37,19,73,42,115,116,43,44,45,82,133,134,395,396,397,84,236,129,132,289,1,470,468,112,111,53,54,55,56,117,119,108,48,144,145,118,361,270,462,471,472,466,458,459,460,461,463,464,465,372,373,153,8,63,104,105,64,65,66,67,4,68,59,102,103,62,61,60,2,74,100,75,76,77,101,78,247,248,249,250,474,478,475,476,477,479,378,255,80,283,72,38,41,39,40,284,71,33,113,114,34,35,36,175,209,210,222,223,211,212,213,214,215,21,469,130,131,173,276,362,365,364,363,386,387,388,389,390,392,393,453,278,377,447,439,444,445,446,443,442,441,440,379,448,380,382,381,467,9,52,109,110,57,58,70,7,46,106,107,47,49,50,51,69,252,237,0',0,1);

#
# Structure for table "tb_system_store"
#

DROP TABLE IF EXISTS `tb_system_store`;
CREATE TABLE `tb_system_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '门店名称',
  `introduction` varchar(1000) NOT NULL DEFAULT '' COMMENT '简介',
  `phone` char(25) NOT NULL DEFAULT '' COMMENT '手机号码',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '省市区',
  `detailed_address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '门店logo',
  `latitude` char(25) NOT NULL DEFAULT '' COMMENT '纬度',
  `longitude` char(25) NOT NULL DEFAULT '' COMMENT '经度',
  `valid_time` varchar(100) NOT NULL DEFAULT '' COMMENT '核销有效日期',
  `day_time` varchar(100) NOT NULL DEFAULT '' COMMENT '每日营业开关时间',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='门店自提';

#
# Data for table "tb_system_store"
#


#
# Structure for table "tb_system_user_level"
#

DROP TABLE IF EXISTS `tb_system_user_level`;
CREATE TABLE `tb_system_user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '会员名称',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '购买金额',
  `valid_date` int(11) NOT NULL DEFAULT '0' COMMENT '有效时间',
  `is_forever` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为永久会员',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否购买,1=购买,0=不购买',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 1=显示,0=隐藏',
  `grade` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '享受折扣',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '会员卡背景',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '会员图标',
  `explain` text NOT NULL COMMENT '说明',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除.1=删除,0=未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='设置用户等级表';

#
# Data for table "tb_system_user_level"
#

INSERT INTO `tb_system_user_level` VALUES (1,0,'普通会员1',20.00,0,1,0,1,1,99.00,'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8cd632.jpg','http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8bc1e0.png','普通会员',1553824559,0),(2,0,'青铜会员',0.00,0,1,0,1,2,98.00,'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca904016.jpg','http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8f0a30.png','青铜会员',1553824639,0),(3,0,'黄铜会员',0.00,0,1,0,1,3,95.00,'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8c3bff.jpg','http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8e9365.png','黄铜会员',1553824742,0),(4,0,'白银会员',0.00,0,1,0,1,4,94.00,'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8d6ae1.jpg','http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8a27f0.png','白银会员',1553824797,0),(5,0,'黄金会员',0.00,0,1,0,1,5,90.00,'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8b27f1.jpg','http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8aa5b9.png','黄金会员',1553824837,0),(6,0,'钻石会员',0.00,0,1,0,1,6,88.00,'http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca8dfe16.jpg','http://datong.crmeb.net/public/uploads/attach/2019/03/28/5c9ccca90d2d3.png','钻石会员',1553824871,1);

#
# Structure for table "tb_system_user_task"
#

DROP TABLE IF EXISTS `tb_system_user_task`;
CREATE TABLE `tb_system_user_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '任务名称',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '配置原名',
  `task_type` varchar(50) NOT NULL DEFAULT '' COMMENT '任务类型',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '限定数',
  `level_id` int(11) NOT NULL DEFAULT '0' COMMENT '等级id',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_must` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否务必达成任务,1务必达成,0=满足其一',
  `illustrate` varchar(255) NOT NULL DEFAULT '' COMMENT '任务说明',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='等级任务设置';

#
# Data for table "tb_system_user_task"
#

INSERT INTO `tb_system_user_task` VALUES (1,'满足积分100分','积分数','SatisfactionIntegral',100,1,0,1,1,'',1553827616),(2,'消费满100元','消费金额','ConsumptionAmount',100,1,0,1,1,'',1553827625),(3,'满足积分200分','积分数','SatisfactionIntegral',200,2,0,1,1,'',1553827638),(4,'累计签到20天','累计签到','CumulativeAttendance',20,2,0,1,1,'',1553827681),(5,'满足积分500分','积分数','SatisfactionIntegral',500,3,0,1,1,'',1553827695),(6,'累计签到30天','累计签到','CumulativeAttendance',30,3,0,1,1,'',1553827703),(7,'满足积分1000分','积分数','SatisfactionIntegral',1000,4,0,1,1,'',1553827731),(8,'分享给朋友10次','分享给朋友','SharingTimes',10,4,0,1,1,'',1553827740),(9,'满足积分1200分','积分数','SatisfactionIntegral',1200,5,0,1,1,'',1553827759),(10,'累计签到60天','累计签到','CumulativeAttendance',60,5,0,1,1,'',1553827768),(11,'消费5次','消费次数','ConsumptionFrequency',5,5,0,1,1,'',1553827776),(12,'满足积分2000分','积分数','SatisfactionIntegral',2000,6,0,1,1,'',1553827791),(13,'消费满10000元','消费次数','ConsumptionAmount',10000,6,0,1,1,'',1553827803),(14,'累计签到100天','累计签到','CumulativeAttendance',100,6,0,1,1,'',1553827814);

#
# Structure for table "tb_user"
#

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `account` varchar(32) NOT NULL COMMENT '用户账号',
  `pwd` varchar(32) NOT NULL COMMENT '用户密码',
  `real_name` varchar(25) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `card_id` varchar(20) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '用户备注',
  `partner_id` int(11) NOT NULL DEFAULT '0' COMMENT '合伙人id',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户分组id',
  `nickname` varchar(16) NOT NULL COMMENT '用户昵称',
  `avatar` varchar(256) NOT NULL COMMENT '用户头像',
  `phone` char(15) DEFAULT NULL COMMENT '手机号码',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '添加ip',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '最后一次登录ip',
  `now_money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `brokerage_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金金额',
  `integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户剩余积分',
  `sign_num` int(11) NOT NULL DEFAULT '0' COMMENT '连续签到天数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为正常，0为禁止',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `spread_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推广元id',
  `spread_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '推广员关联时间',
  `user_type` varchar(32) NOT NULL COMMENT '用户类型',
  `is_promoter` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为推广员',
  `pay_count` int(11) unsigned DEFAULT '0' COMMENT '用户购买次数',
  `spread_count` int(11) DEFAULT '0' COMMENT '下级人数',
  `clean_time` int(11) DEFAULT '0' COMMENT '清理会员时间',
  `addres` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `adminid` int(11) unsigned DEFAULT '0' COMMENT '管理员编号 ',
  `login_type` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登陆类型，h5,wechat,routine',
  PRIMARY KEY (`uid`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `spreaduid` (`spread_uid`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_promoter` (`is_promoter`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "tb_user"
#

INSERT INTO `tb_user` VALUES (1,'13123456789','fcea920f7412b5da7be0cf42b8c93759','',0,'','',0,0,'涸辙之鲋','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIUCv6EHfwWCByEBAhAyWmjfuvrNLUBMa6js244sMw0TyDHWO8ibSOyjoY6Dj54OZeFTn5A0sUm8DA/132',NULL,0,'',1582538040,'127.0.0.1',0.00,0.00,0.00,0,1,0,0,0,'',0,0,0,0,'',0,'');

#
# Structure for table "tb_user_address"
#

DROP TABLE IF EXISTS `tb_user_address`;
CREATE TABLE `tb_user_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户地址id',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) NOT NULL DEFAULT '' COMMENT '收货人电话',
  `province` varchar(64) NOT NULL DEFAULT '' COMMENT '收货人所在省',
  `city` varchar(64) NOT NULL DEFAULT '' COMMENT '收货人所在市',
  `district` varchar(64) NOT NULL DEFAULT '' COMMENT '收货人所在区',
  `detail` varchar(256) NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `post_code` int(10) unsigned NOT NULL COMMENT '邮编',
  `longitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '经度',
  `latitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '纬度',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `is_default` (`is_default`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户地址表';

#
# Data for table "tb_user_address"
#


#
# Structure for table "tb_user_bill"
#

DROP TABLE IF EXISTS `tb_user_bill`;
CREATE TABLE `tb_user_bill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户账单id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `link_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '关联id',
  `pm` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = 支出 1 = 获得',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '账单标题',
  `category` varchar(64) NOT NULL DEFAULT '' COMMENT '明细种类',
  `type` varchar(64) NOT NULL DEFAULT '' COMMENT '明细类型',
  `number` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '明细数字',
  `balance` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '剩余',
  `mark` varchar(512) NOT NULL DEFAULT '' COMMENT '备注',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = 带确定 1 = 有效 -1 = 无效',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `openid` (`uid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pm` (`pm`) USING BTREE,
  KEY `type` (`category`,`type`,`link_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户账单表';

#
# Data for table "tb_user_bill"
#


#
# Structure for table "tb_user_enter"
#

DROP TABLE IF EXISTS `tb_user_enter`;
CREATE TABLE `tb_user_enter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商户申请ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `province` varchar(32) NOT NULL DEFAULT '' COMMENT '商户所在省',
  `city` varchar(32) NOT NULL DEFAULT '' COMMENT '商户所在市',
  `district` varchar(32) NOT NULL DEFAULT '' COMMENT '商户所在区',
  `address` varchar(256) NOT NULL DEFAULT '' COMMENT '商户详细地址',
  `merchant_name` varchar(256) NOT NULL DEFAULT '' COMMENT '商户名称',
  `link_user` varchar(32) NOT NULL DEFAULT '',
  `link_tel` varchar(16) NOT NULL DEFAULT '' COMMENT '商户电话',
  `charter` varchar(512) NOT NULL DEFAULT '' COMMENT '商户证书',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `apply_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '审核时间',
  `success_time` int(11) NOT NULL COMMENT '通过时间',
  `fail_message` varchar(256) NOT NULL DEFAULT '' COMMENT '未通过原因',
  `fail_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '未通过时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 审核未通过 0未审核 1审核通过',
  `is_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = 开启 1= 关闭',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`) USING BTREE,
  KEY `province` (`province`,`city`,`district`) USING BTREE,
  KEY `is_lock` (`is_lock`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户申请表';

#
# Data for table "tb_user_enter"
#


#
# Structure for table "tb_user_extract"
#

DROP TABLE IF EXISTS `tb_user_extract`;
CREATE TABLE `tb_user_extract` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL COMMENT '名称',
  `extract_type` varchar(32) DEFAULT 'bank' COMMENT 'bank = 银行卡 alipay = 支付宝wx=微信',
  `bank_code` varchar(32) DEFAULT '0' COMMENT '银行卡',
  `bank_address` varchar(256) DEFAULT '' COMMENT '开户地址',
  `alipay_code` varchar(64) DEFAULT '' COMMENT '支付宝账号',
  `extract_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '提现金额',
  `mark` varchar(512) DEFAULT NULL,
  `balance` decimal(8,2) unsigned DEFAULT '0.00',
  `fail_msg` varchar(128) DEFAULT NULL COMMENT '无效原因',
  `fail_time` int(10) unsigned DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '-1 未通过 0 审核中 1 已提现',
  `wechat` varchar(15) DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `extract_type` (`extract_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `openid` (`uid`) USING BTREE,
  KEY `fail_time` (`fail_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户提现表';

#
# Data for table "tb_user_extract"
#


#
# Structure for table "tb_user_group"
#

DROP TABLE IF EXISTS `tb_user_group`;
CREATE TABLE `tb_user_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) DEFAULT NULL COMMENT '用户分组名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户分组表';

#
# Data for table "tb_user_group"
#


#
# Structure for table "tb_user_level"
#

DROP TABLE IF EXISTS `tb_user_level`;
CREATE TABLE `tb_user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户uid',
  `level_id` int(11) NOT NULL DEFAULT '0' COMMENT '等级vip',
  `grade` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `valid_time` int(11) NOT NULL DEFAULT '0' COMMENT '过期时间',
  `is_forever` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否永久',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:禁止,1:正常',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `remind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已通知',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除,0=未删除,1=删除',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `discount` int(11) NOT NULL DEFAULT '0' COMMENT '享受折扣',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户等级记录表';

#
# Data for table "tb_user_level"
#


#
# Structure for table "tb_user_notice"
#

DROP TABLE IF EXISTS `tb_user_notice`;
CREATE TABLE `tb_user_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL COMMENT '接收消息的用户id（类型：json数据）',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '消息通知类型（1：系统消息；2：用户通知）',
  `user` varchar(20) NOT NULL DEFAULT '' COMMENT '发送人',
  `title` varchar(20) NOT NULL COMMENT '通知消息的标题信息',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '通知消息的内容',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '通知消息发送的时间',
  `is_send` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发送（0：未发送；1：已发送）',
  `send_time` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通知表';

#
# Data for table "tb_user_notice"
#


#
# Structure for table "tb_user_notice_see"
#

DROP TABLE IF EXISTS `tb_user_notice_see`;
CREATE TABLE `tb_user_notice_see` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nid` int(11) NOT NULL DEFAULT '0' COMMENT '查看的通知id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '查看通知的用户id',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '查看通知的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通知发送记录表';

#
# Data for table "tb_user_notice_see"
#


#
# Structure for table "tb_user_recharge"
#

DROP TABLE IF EXISTS `tb_user_recharge`;
CREATE TABLE `tb_user_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL COMMENT '充值用户UID',
  `order_id` varchar(32) DEFAULT NULL COMMENT '订单号',
  `price` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `recharge_type` varchar(32) DEFAULT NULL COMMENT '充值类型',
  `paid` tinyint(1) DEFAULT NULL COMMENT '是否充值',
  `pay_time` int(10) DEFAULT NULL COMMENT '充值支付时间',
  `add_time` int(12) DEFAULT NULL COMMENT '充值时间',
  `refund_price` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id` (`order_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `recharge_type` (`recharge_type`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户充值表';

#
# Data for table "tb_user_recharge"
#


#
# Structure for table "tb_user_sign"
#

DROP TABLE IF EXISTS `tb_user_sign`;
CREATE TABLE `tb_user_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户uid',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '签到说明',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '获得积分',
  `balance` int(11) NOT NULL DEFAULT '0' COMMENT '剩余积分',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='签到记录表';

#
# Data for table "tb_user_sign"
#


#
# Structure for table "tb_user_task_finish"
#

DROP TABLE IF EXISTS `tb_user_task_finish`;
CREATE TABLE `tb_user_task_finish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL DEFAULT '0' COMMENT '任务id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有效',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户任务完成记录表';

#
# Data for table "tb_user_task_finish"
#


#
# Structure for table "tb_user_token"
#

DROP TABLE IF EXISTS `tb_user_token`;
CREATE TABLE `tb_user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户 id',
  `token` varchar(300) NOT NULL COMMENT 'token',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `expires_time` datetime NOT NULL COMMENT '到期事件',
  `login_ip` varchar(32) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "tb_user_token"
#

/*!40000 ALTER TABLE `tb_user_token` DISABLE KEYS */;
INSERT INTO `tb_user_token` VALUES (2,1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3d3cudGVzdC5jb20iLCJhdWQiOiJ3d3cudGVzdC5jb20iLCJpYXQiOjE1ODI1MzgwNDAsIm5iZiI6MTU4MjUzODA0MCwiZXhwIjoxNTgyNTQ4ODQwLCJqdGkiOnsiaWQiOjEsInR5cGUiOiJyb3V0aW5lIn19.XOOUPo0Sd3VSvyIC2ts20qGI2zwIobKIgtCDP60dj_g','2020-02-24 17:54:01','2020-02-24 20:54:00','127.0.0.1');
/*!40000 ALTER TABLE `tb_user_token` ENABLE KEYS */;

#
# Structure for table "tb_wechat_media"
#

DROP TABLE IF EXISTS `tb_wechat_media`;
CREATE TABLE `tb_wechat_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信视频音频id',
  `type` varchar(16) NOT NULL DEFAULT '' COMMENT '回复类型',
  `path` varchar(128) NOT NULL DEFAULT '' COMMENT '文件路径',
  `media_id` varchar(64) NOT NULL DEFAULT '' COMMENT '微信服务器返回的id',
  `url` varchar(256) NOT NULL DEFAULT '' COMMENT '地址',
  `temporary` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否永久或者临时 0永久1临时',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `type` (`type`,`media_id`) USING BTREE,
  KEY `type_2` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信回复表';

#
# Data for table "tb_wechat_media"
#


#
# Structure for table "tb_wechat_message"
#

DROP TABLE IF EXISTS `tb_wechat_message`;
CREATE TABLE `tb_wechat_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户行为记录id',
  `openid` varchar(32) NOT NULL DEFAULT '' COMMENT '用户openid',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '操作类型',
  `result` varchar(512) NOT NULL DEFAULT '' COMMENT '操作详细记录',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户行为记录表';

#
# Data for table "tb_wechat_message"
#


#
# Structure for table "tb_wechat_news_category"
#

DROP TABLE IF EXISTS `tb_wechat_news_category`;
CREATE TABLE `tb_wechat_news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图文消息管理ID',
  `cate_name` varchar(255) NOT NULL COMMENT '图文名称',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `new_id` varchar(255) NOT NULL DEFAULT '' COMMENT '文章id',
  `add_time` varchar(255) NOT NULL DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='图文消息管理表';

#
# Data for table "tb_wechat_news_category"
#

INSERT INTO `tb_wechat_news_category` VALUES (21,'小程序商城前景分析',0,1,'51,52,58,59,60','1565520433');

#
# Structure for table "tb_wechat_qrcode"
#

DROP TABLE IF EXISTS `tb_wechat_qrcode`;
CREATE TABLE `tb_wechat_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信二维码ID',
  `third_type` varchar(32) NOT NULL DEFAULT '' COMMENT '二维码类型',
  `third_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ticket` varchar(255) NOT NULL DEFAULT '' COMMENT '二维码参数',
  `expire_seconds` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二维码有效时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `add_time` varchar(255) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '微信访问url',
  `qrcode_url` varchar(255) NOT NULL DEFAULT '' COMMENT '微信二维码url',
  `scan` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被扫的次数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `third_type` (`third_type`,`third_id`) USING BTREE,
  KEY `ticket` (`ticket`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信二维码管理表';

#
# Data for table "tb_wechat_qrcode"
#


#
# Structure for table "tb_wechat_reply"
#

DROP TABLE IF EXISTS `tb_wechat_reply`;
CREATE TABLE `tb_wechat_reply` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信关键字回复id',
  `key` varchar(64) NOT NULL DEFAULT '' COMMENT '关键字',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '回复类型',
  `data` text NOT NULL COMMENT '回复数据',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0=不可用  1 =可用',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key` (`key`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `hide` (`hide`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信关键字回复表';

#
# Data for table "tb_wechat_reply"
#


#
# Structure for table "tb_wechat_template"
#

DROP TABLE IF EXISTS `tb_wechat_template`;
CREATE TABLE `tb_wechat_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `tempkey` char(50) NOT NULL DEFAULT '' COMMENT '模板编号',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '模板名',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '回复内容',
  `tempid` char(100) DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tempkey` (`tempkey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='微信模板';

#
# Data for table "tb_wechat_template"
#

INSERT INTO `tb_wechat_template` VALUES (3,'OPENTM200565259','订单发货提醒','{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n物流公司：{{keyword2.DATA}}\n物流单号：{{keyword3.DATA}}\n{{remark.DATA}}','KusKZOFc_4CrRU_gzuXMdMMTfFeR-OLVVuDiMyR5PiM','1515052638',1),(4,'OPENTM413386489','订单收货通知','{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单状态：{{keyword2.DATA}}\n收货时间：{{keyword3.DATA}}\n商品详情：{{keyword4.DATA}}\n{{remark.DATA}}','UNyz81kgsn1WZHSqmwPiF9fUkcdZghfTZvN6qtDuu54','1515052765',1),(5,'OPENTM410119152','退款进度通知','{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单金额：{{keyword2.DATA}}\n下单时间：{{keyword3.DATA}}\n{{remark.DATA}}','xrXtApBFv0L3-YXKkl9WYB89hJxFGfQo3jSsk2WpAwI','1515053049',1),(6,'OPENTM405847076','帐户资金变动提醒','{{first.DATA}}\n变动类型：{{keyword1.DATA}}\n变动时间：{{keyword2.DATA}}\n变动金额：{{keyword3.DATA}}\n{{remark.DATA}}','Bk3XLd1Nwk9aNF1NIPBlyTDhrgNbzJW4H23OwVQdE-s','1515053127',1),(7,'OPENTM207707249','订单发货提醒','\n{{first.DATA}}\n商品明细：{{keyword1.DATA}}\n下单时间：{{keyword2.DATA}}\n配送地址：{{keyword3.DATA}}\n配送人：{{keyword4.DATA}}\n联系电话：{{keyword5.DATA}}\n{{remark.DATA}}','KusKZOFc_4CrRU_gzuXMdMMTfFeR-OLVVuDiMyR5PiM','1515053313',1),(8,'OPENTM408237350','服务进度提醒','{{first.DATA}}\n服务类型：{{keyword1.DATA}}\n服务状态：{{keyword2.DATA}}\n服务时间：{{keyword3.DATA}}\n{{remark.DATA}}','ul2g_y0oxqEhtWoSJBbLzmnPrUwtLnIAe30MTBRL7rw','1515483915',1),(9,'OPENTM204431262','客服通知提醒','{{first.DATA}}\n客户名称：{{keyword1.DATA}}\n客服类型：{{keyword2.DATA}}\n提醒内容：{{keyword3.DATA}}\n通知时间：{{keyword4.DATA}}\n{{remark.DATA}}','j51mawxEmTuCCtMrXwSTnRfXH93qutoOebs5RG4MyHY','1515484354',1),(10,'OPENTM407456411','拼团成功通知','{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n团购商品：{{keyword2.DATA}}\n{{remark.DATA}}','CNvCAz9GIoQri-ogSCODVRANCBUQjZIxWzWvizbHVoQ','1520063823',1),(11,'OPENTM401113750','拼团失败通知','{{first.DATA}}\n拼团商品：{{keyword1.DATA}}\n商品金额：{{keyword2.DATA}}\n退款金额：{{keyword3.DATA}}\n{{remark.DATA}}','mSg4ZexW1qaQH3FCrFLe746EYMlTFsZhfTB6VI_ElYg','1520064059',1),(12,'OPENTM205213550','订单生成通知','{{first.DATA}}\n时间：{{keyword1.DATA}}\n商品名称：{{keyword2.DATA}}\n订单号：{{keyword3.DATA}}\n{{remark.DATA}}','HYD99ERso6_PcA3hAT6pzH1RmO88H6IIe8crAVaXPRE','1528966701',1),(13,'OPENTM207791277','订单支付成功通知','{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n支付金额：{{keyword2.DATA}}\n{{remark.DATA}}','hJV1d1OwWB_lbPrSaRHi9RGr5CFAF4PJcZdYeg73Mtg','1528966759',1),(14,'OPENTM410292733','砍价成功提醒','{{first.DATA}}\n商品名称：{{keyword1.DATA}}\n底价：{{keyword2.DATA}}\n{{remark.DATA}}','SxBvid65JxK6PWOhlC2sgCG_mlopY1uKekEnEvAALp4','1564566678',1),(15,'OPENTM414349441','开团成功通知','{{first.DATA}}\n拼团名称：{{keyword1.DATA}}\n团购价格：{{keyword2.DATA}}\n拼团人数：{{keyword3.DATA}}\n{{remark.DATA}}','VDTU6X1UiK438tu-qcHKc_I76CtsEWVx-_Pbf1voiws','1564567037',1);

#
# Structure for table "tb_wechat_user"
#

DROP TABLE IF EXISTS `tb_wechat_user`;
CREATE TABLE `tb_wechat_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信用户id',
  `unionid` varchar(30) DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `openid` varchar(30) DEFAULT NULL COMMENT '用户的标识，对当前公众号唯一',
  `routine_openid` varchar(32) DEFAULT NULL COMMENT '小程序唯一身份ID',
  `nickname` varchar(64) NOT NULL COMMENT '用户的昵称',
  `headimgurl` varchar(256) NOT NULL COMMENT '用户头像',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(64) NOT NULL COMMENT '用户所在城市',
  `language` varchar(64) NOT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `province` varchar(64) NOT NULL COMMENT '用户所在省份',
  `country` varchar(64) NOT NULL COMMENT '用户所在国家',
  `remark` varchar(256) DEFAULT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` smallint(5) unsigned DEFAULT '0' COMMENT '用户所在的分组ID（兼容旧的用户分组接口）',
  `tagid_list` varchar(256) DEFAULT NULL COMMENT '用户被打上的标签ID列表',
  `subscribe` tinyint(3) unsigned DEFAULT '1' COMMENT '用户是否订阅该公众号标识',
  `subscribe_time` int(10) unsigned DEFAULT NULL COMMENT '关注公众号时间',
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `stair` int(11) unsigned DEFAULT NULL COMMENT '一级推荐人',
  `second` int(11) unsigned DEFAULT NULL COMMENT '二级推荐人',
  `order_stair` int(11) DEFAULT NULL COMMENT '一级推荐人订单',
  `order_second` int(11) unsigned DEFAULT NULL COMMENT '二级推荐人订单',
  `now_money` decimal(8,2) unsigned DEFAULT NULL COMMENT '佣金',
  `session_key` varchar(32) DEFAULT NULL COMMENT '小程序用户会话密匙',
  `user_type` varchar(32) DEFAULT 'wechat' COMMENT '用户类型',
  PRIMARY KEY (`uid`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE,
  KEY `subscribe_time` (`subscribe_time`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `subscribe` (`subscribe`) USING BTREE,
  KEY `unionid` (`unionid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='微信用户表';

#
# Data for table "tb_wechat_user"
#

INSERT INTO `tb_wechat_user` VALUES (1,'',NULL,'oIsXj5MQ2n91BtqW65sq12FnMj84','涸辙之鲋','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIUCv6EHfwWCByEBAhAyWmjfuvrNLUBMa6js244sMw0TyDHWO8ibSOyjoY6Dj54OZeFTn5A0sUm8DA/132',1,'保定','zh_CN','河北','中国',NULL,0,NULL,1,NULL,1582538040,NULL,NULL,NULL,NULL,NULL,'3y6fPvS7wB7GG3lyJXLWFg==','routine');
