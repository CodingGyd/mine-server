/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = adviceinfo   */
/******************************************/
CREATE TABLE `adviceinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text,
  `userid` int NOT NULL,
  `time` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = articleinfo   */
/******************************************/
CREATE TABLE `articleinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `title` text NOT NULL,
  `location` text,
  `type` int NOT NULL COMMENT '技术1 生活2',
  `content` text,
  `time` text,
  `url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = h_user_info   */
/******************************************/
CREATE TABLE `h_user_info` (
  `UID` varchar(30) NOT NULL COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(255) NOT NULL COMMENT '密码',
  `EMAIL` varchar(255) NOT NULL COMMENT 'email',
  `SEX` char(1) NOT NULL DEFAULT '0' COMMENT '性别，0-男 1-女',
  `PHOTO` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `ACTIVE` char(1) NOT NULL DEFAULT '0' COMMENT '激活状态 0-未激活 1-激活',
  `REG_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `MOD_TIME` timestamp NOT NULL DEFAULT '1999-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`UID`),
  UNIQUE KEY `uc_name` (`USERNAME`),
  UNIQUE KEY `uc_email` (`EMAIL`),
  KEY `ix_name_pwd` (`USERNAME`,`PASSWORD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户基本信息表'
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = imageinfo   */
/******************************************/
CREATE TABLE `imageinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` int NOT NULL COMMENT '家人1 朋友2自拍3搞笑4旅游5工作6',
  `time` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `url` text NOT NULL,
  `userId` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mine_article_keyword_relation   */
/******************************************/
CREATE TABLE `mine_article_keyword_relation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `articleId` int NOT NULL,
  `keyId` int NOT NULL,
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mine_articles   */
/******************************************/
CREATE TABLE `mine_articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `descs` text NOT NULL COMMENT '文章概述',
  `url` text,
  `content` text NOT NULL,
  `htmlContent` text NOT NULL,
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `readingcount` int NOT NULL DEFAULT '0',
  `type` int NOT NULL COMMENT '分类代码,关联系统常量表获取名称',
  `praisecount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb3 COMMENT='mine工程-文章信息表'
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mine_dailyessays   */
/******************************************/
CREATE TABLE `mine_dailyessays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tmp` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='随笔'
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mine_keywords   */
/******************************************/
CREATE TABLE `mine_keywords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COMMENT='关键词表'
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mine_loginfo   */
/******************************************/
CREATE TABLE `mine_loginfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip',
  `url` varchar(20) DEFAULT NULL COMMENT '地址',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `method` varchar(20) DEFAULT NULL COMMENT '方法',
  `paramData` varchar(50) DEFAULT NULL COMMENT '参数',
  `sessionId` varchar(50) DEFAULT NULL COMMENT 'session',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `returnTime` varchar(50) DEFAULT NULL COMMENT '返回时间',
  `returnData` varchar(50) DEFAULT NULL COMMENT '返回数据',
  `httpStatusCode` varchar(50) DEFAULT NULL COMMENT '响应码',
  `timeConsuming` int DEFAULT NULL COMMENT '耗时',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43618 DEFAULT CHARSET=utf8mb3 COMMENT='日志记录表'
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mine_siteinformation   */
/******************************************/
CREATE TABLE `mine_siteinformation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='建站信息'
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mine_sysconst   */
/******************************************/
CREATE TABLE `mine_sysconst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lb` varchar(20) DEFAULT NULL COMMENT '常量类别代码',
  `lbmc` varchar(50) DEFAULT NULL COMMENT '常量类别名称',
  `dm` varchar(20) DEFAULT NULL COMMENT '常量代码',
  `ms` varchar(50) DEFAULT NULL COMMENT '常量名称',
  `remarks` varchar(50) DEFAULT NULL COMMENT '注释',
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='系统常量表'
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mine_utilfunction   */
/******************************************/
CREATE TABLE `mine_utilfunction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `readingcount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='mine工程-功能函数模块-功能函数信息表'
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mr_records   */
/******************************************/
CREATE TABLE `mr_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` text,
  `spendtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = mr_userinfo   */
/******************************************/
CREATE TABLE `mr_userinfo` (
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='日常开销登记系统用户表'
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = sourceinfo   */
/******************************************/
CREATE TABLE `sourceinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` int NOT NULL COMMENT '文档1 网址2',
  `location` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `userId` int NOT NULL,
  `remark` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = t_attach   */
/******************************************/
CREATE TABLE `t_attach` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `ftype` varchar(50) DEFAULT '',
  `fkey` varchar(100) NOT NULL DEFAULT '',
  `author_id` int DEFAULT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = t_comments   */
/******************************************/
CREATE TABLE `t_comments` (
  `coid` int unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned DEFAULT '0',
  `created` int unsigned DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `author_id` int unsigned DEFAULT '0',
  `owner_id` int unsigned DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `content` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int unsigned DEFAULT '0',
  PRIMARY KEY (`coid`),
  KEY `cid` (`cid`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = t_contents   */
/******************************************/
CREATE TABLE `t_contents` (
  `cid` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int unsigned DEFAULT '0',
  `modified` int unsigned DEFAULT '0',
  `content` text COMMENT '内容文字',
  `author_id` int unsigned DEFAULT '0',
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `tags` varchar(200) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `hits` int unsigned DEFAULT '0',
  `comments_num` int unsigned DEFAULT '0',
  `allow_comment` tinyint(1) DEFAULT '1',
  `allow_ping` tinyint(1) DEFAULT '1',
  `allow_feed` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `slug` (`slug`),
  KEY `created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = t_logs   */
/******************************************/
CREATE TABLE `t_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(100) DEFAULT NULL,
  `data` varchar(2000) DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `created` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = t_metas   */
/******************************************/
CREATE TABLE `t_metas` (
  `mid` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  `sort` int unsigned DEFAULT '0',
  `parent` int unsigned DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = t_options   */
/******************************************/
CREATE TABLE `t_options` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = t_relationships   */
/******************************************/
CREATE TABLE `t_relationships` (
  `cid` int unsigned NOT NULL,
  `mid` int unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = t_users   */
/******************************************/
CREATE TABLE `t_users` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `home_url` varchar(200) DEFAULT NULL,
  `screen_name` varchar(32) DEFAULT NULL,
  `created` int unsigned DEFAULT '0',
  `activated` int unsigned DEFAULT '0',
  `logged` int unsigned DEFAULT '0',
  `group_name` varchar(16) DEFAULT 'visitor',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`username`),
  UNIQUE KEY `mail` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = userinfo   */
/******************************************/
CREATE TABLE `userinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `registerTime` varchar(255) NOT NULL,
  `recentLoginTime` varchar(255) NOT NULL,
  `loginCount` int NOT NULL DEFAULT '0',
  `sex` char(4) NOT NULL,
  `icon` text,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = rookiepalmspacedb   */
/*   TableName = versioninfo   */
/******************************************/
CREATE TABLE `versioninfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `versionCode` int NOT NULL,
  `versionName` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `downloadUrl` text NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3
;
