-- --------------------------------------------------------
-- Servidor:                     sql542.main-hosting.eu
-- Versão do servidor:           10.5.16-MariaDB-cll-lve - MariaDB Server
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para u195888553_mibew
CREATE DATABASE IF NOT EXISTS `u195888553_mibew` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `u195888553_mibew`;

-- Copiando estrutura para tabela u195888553_mibew.availableupdate
CREATE TABLE IF NOT EXISTS `availableupdate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `url` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `target` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.ban
CREATE TABLE IF NOT EXISTS `ban` (
  `banid` int(11) NOT NULL AUTO_INCREMENT,
  `dtmcreated` int(11) NOT NULL DEFAULT 0,
  `dtmtill` int(11) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`banid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.cannedmessage
CREATE TABLE IF NOT EXISTS `cannedmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `vctitle` varchar(100) NOT NULL DEFAULT '',
  `vcvalue` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  CONSTRAINT `cannedmessage_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `opgroup` (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.config
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vckey` varchar(255) DEFAULT NULL,
  `vcvalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.locale
CREATE TABLE IF NOT EXISTS `locale` (
  `localeid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `time_locale` varchar(128) NOT NULL DEFAULT 'en_US',
  `date_format` text DEFAULT NULL,
  PRIMARY KEY (`localeid`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.mailtemplate
CREATE TABLE IF NOT EXISTS `mailtemplate` (
  `templateid` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(5) NOT NULL,
  `name` varchar(256) NOT NULL,
  `subject` varchar(1024) NOT NULL,
  `body` text DEFAULT NULL,
  PRIMARY KEY (`templateid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.message
CREATE TABLE IF NOT EXISTS `message` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `threadid` int(11) NOT NULL,
  `ikind` int(11) NOT NULL,
  `agentid` int(11) NOT NULL DEFAULT 0,
  `tmessage` text NOT NULL,
  `plugin` varchar(256) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `dtmcreated` int(11) NOT NULL DEFAULT 0,
  `tname` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  KEY `threadid` (`threadid`),
  KEY `idx_agentid` (`agentid`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`threadid`) REFERENCES `thread` (`threadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.operator
CREATE TABLE IF NOT EXISTS `operator` (
  `operatorid` int(11) NOT NULL AUTO_INCREMENT,
  `vclogin` varchar(64) NOT NULL,
  `vcpassword` varchar(64) NOT NULL,
  `vclocalename` varchar(64) NOT NULL,
  `vccommonname` varchar(64) NOT NULL,
  `vcemail` varchar(64) DEFAULT NULL,
  `dtmlastvisited` int(11) NOT NULL DEFAULT 0,
  `istatus` int(11) DEFAULT 0,
  `idisabled` int(11) DEFAULT 0,
  `vcavatar` varchar(255) DEFAULT NULL,
  `iperm` int(11) DEFAULT 0,
  `dtmrestore` int(11) NOT NULL DEFAULT 0,
  `vcrestoretoken` varchar(64) DEFAULT NULL,
  `code` varchar(64) DEFAULT '',
  PRIMARY KEY (`operatorid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.operatorstatistics
CREATE TABLE IF NOT EXISTS `operatorstatistics` (
  `statid` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL DEFAULT 0,
  `operatorid` int(11) NOT NULL,
  `threads` int(11) NOT NULL DEFAULT 0,
  `messages` int(11) NOT NULL DEFAULT 0,
  `averagelength` float(10,1) NOT NULL DEFAULT 0.0,
  `sentinvitations` int(11) NOT NULL DEFAULT 0,
  `acceptedinvitations` int(11) NOT NULL DEFAULT 0,
  `rejectedinvitations` int(11) NOT NULL DEFAULT 0,
  `ignoredinvitations` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`statid`),
  KEY `operatorid` (`operatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.operatortoopgroup
CREATE TABLE IF NOT EXISTS `operatortoopgroup` (
  `groupid` int(11) NOT NULL,
  `operatorid` int(11) NOT NULL,
  KEY `groupid` (`groupid`),
  KEY `operatorid` (`operatorid`),
  CONSTRAINT `operatortoopgroup_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `opgroup` (`groupid`),
  CONSTRAINT `operatortoopgroup_ibfk_2` FOREIGN KEY (`operatorid`) REFERENCES `operator` (`operatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.opgroup
CREATE TABLE IF NOT EXISTS `opgroup` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `vcemail` varchar(64) DEFAULT NULL,
  `vclocalname` varchar(64) NOT NULL,
  `vccommonname` varchar(64) NOT NULL,
  `vclocaldescription` varchar(1024) NOT NULL,
  `vccommondescription` varchar(1024) NOT NULL,
  `iweight` int(11) NOT NULL DEFAULT 0,
  `vctitle` varchar(255) DEFAULT '',
  `vcchattitle` varchar(255) DEFAULT '',
  `vclogo` varchar(255) DEFAULT '',
  `vchosturl` varchar(255) DEFAULT '',
  PRIMARY KEY (`groupid`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.plugin
CREATE TABLE IF NOT EXISTS `plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `installed` tinyint(4) NOT NULL DEFAULT 0,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `initialized` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.requestbuffer
CREATE TABLE IF NOT EXISTS `requestbuffer` (
  `requestid` int(11) NOT NULL AUTO_INCREMENT,
  `requestkey` char(32) NOT NULL,
  `request` text NOT NULL,
  PRIMARY KEY (`requestid`),
  KEY `requestkey` (`requestkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.requestcallback
CREATE TABLE IF NOT EXISTS `requestcallback` (
  `callbackid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL DEFAULT '',
  `func` varchar(64) NOT NULL,
  `arguments` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`callbackid`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.revision
CREATE TABLE IF NOT EXISTS `revision` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.sitevisitor
CREATE TABLE IF NOT EXISTS `sitevisitor` (
  `visitorid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `firsttime` int(11) NOT NULL DEFAULT 0,
  `lasttime` int(11) NOT NULL DEFAULT 0,
  `entry` text NOT NULL,
  `details` text NOT NULL,
  `invitations` int(11) NOT NULL DEFAULT 0,
  `chats` int(11) NOT NULL DEFAULT 0,
  `threadid` int(11) DEFAULT NULL,
  PRIMARY KEY (`visitorid`),
  KEY `threadid` (`threadid`),
  CONSTRAINT `sitevisitor_ibfk_1` FOREIGN KEY (`threadid`) REFERENCES `thread` (`threadid`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.thread
CREATE TABLE IF NOT EXISTS `thread` (
  `threadid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `agentname` varchar(64) DEFAULT NULL,
  `agentid` int(11) NOT NULL DEFAULT 0,
  `dtmcreated` int(11) NOT NULL DEFAULT 0,
  `dtmchatstarted` int(11) NOT NULL DEFAULT 0,
  `dtmmodified` int(11) NOT NULL DEFAULT 0,
  `dtmclosed` int(11) NOT NULL DEFAULT 0,
  `lrevision` int(11) NOT NULL DEFAULT 0,
  `istate` int(11) NOT NULL DEFAULT 0,
  `invitationstate` int(11) NOT NULL DEFAULT 0,
  `ltoken` int(11) NOT NULL,
  `remote` varchar(255) DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `nextagent` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(8) DEFAULT NULL,
  `lastpinguser` int(11) NOT NULL DEFAULT 0,
  `lastpingagent` int(11) NOT NULL DEFAULT 0,
  `usertyping` int(11) DEFAULT 0,
  `agenttyping` int(11) DEFAULT 0,
  `shownmessageid` int(11) NOT NULL DEFAULT 0,
  `useragent` varchar(255) DEFAULT NULL,
  `messagecount` varchar(16) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  PRIMARY KEY (`threadid`),
  KEY `groupid` (`groupid`),
  CONSTRAINT `thread_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `opgroup` (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.threadstatistics
CREATE TABLE IF NOT EXISTS `threadstatistics` (
  `statid` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL DEFAULT 0,
  `threads` int(11) NOT NULL DEFAULT 0,
  `missedthreads` int(11) NOT NULL DEFAULT 0,
  `sentinvitations` int(11) NOT NULL DEFAULT 0,
  `acceptedinvitations` int(11) NOT NULL DEFAULT 0,
  `rejectedinvitations` int(11) NOT NULL DEFAULT 0,
  `ignoredinvitations` int(11) NOT NULL DEFAULT 0,
  `operatormessages` int(11) NOT NULL DEFAULT 0,
  `usermessages` int(11) NOT NULL DEFAULT 0,
  `averagewaitingtime` float(10,1) NOT NULL DEFAULT 0.0,
  `averagechattime` float(10,1) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`statid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.translation
CREATE TABLE IF NOT EXISTS `translation` (
  `translationid` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(5) NOT NULL,
  `context` varchar(256) NOT NULL DEFAULT '',
  `source` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `translation` text DEFAULT NULL,
  `hash` char(40) NOT NULL,
  PRIMARY KEY (`translationid`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=1340 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.visitedpage
CREATE TABLE IF NOT EXISTS `visitedpage` (
  `pageid` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(1024) DEFAULT NULL,
  `visittime` int(11) NOT NULL DEFAULT 0,
  `visitorid` int(11) DEFAULT NULL,
  `calculated` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pageid`),
  KEY `visitorid` (`visitorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela u195888553_mibew.visitedpagestatistics
CREATE TABLE IF NOT EXISTS `visitedpagestatistics` (
  `pageid` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL DEFAULT 0,
  `address` varchar(1024) DEFAULT NULL,
  `visits` int(11) NOT NULL DEFAULT 0,
  `chats` int(11) NOT NULL DEFAULT 0,
  `sentinvitations` int(11) NOT NULL DEFAULT 0,
  `acceptedinvitations` int(11) NOT NULL DEFAULT 0,
  `rejectedinvitations` int(11) NOT NULL DEFAULT 0,
  `ignoredinvitations` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
