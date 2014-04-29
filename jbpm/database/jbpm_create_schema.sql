use jbpm;

/*!40101 SET NAMES utf8 */;
/*!40103 SET TIME_ZONE='+00:00' */;

DROP TABLE IF EXISTS `SessionId`;
CREATE TABLE `SessionId` (
  `sessionId` int(11) NOT NULL,
  `instance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Mail`;
CREATE TABLE `Mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bccRecipients` varchar(255) DEFAULT NULL,
  `ccRecipients` varchar(255) DEFAULT NULL,
  `mailDate` datetime DEFAULT NULL,
  `mailSuppressionIterations` int(11) DEFAULT NULL,
  `mailSuppressionPermanent` tinyint(1) DEFAULT NULL,
  `mailSuppressionTime` int(11) DEFAULT NULL,
  `messageText` text DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `sent` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
--
-- Table structure for table `EventTypes`
--

DROP TABLE IF EXISTS `EventTypes`;
CREATE TABLE `EventTypes` (
  `InstanceId` bigint(20) NOT NULL,
  `eventTypes` varchar(255) DEFAULT NULL,
        `element` varchar(255),
	KEY `FKB0E5621F7665489A` (`InstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `NODE_INST_LOG_ID_SEQ`
--

DROP TABLE IF EXISTS `NODE_INST_LOG_ID_SEQ`;
CREATE TABLE `NODE_INST_LOG_ID_SEQ` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `NodeInstanceLog`
--

DROP TABLE IF EXISTS `NodeInstanceLog`;
CREATE TABLE `NodeInstanceLog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_date` datetime DEFAULT NULL,
  `nodeId` varchar(255) DEFAULT NULL,
  `nodeInstanceId` varchar(255) DEFAULT NULL,
  `nodeName` varchar(255) DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX (`nodeId`, `processInstanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=34636 DEFAULT CHARSET=utf8;

--
-- Table structure for table `PROC_INST_LOG_ID_SEQ`
--

DROP TABLE IF EXISTS `PROC_INST_LOG_ID_SEQ`;
CREATE TABLE `PROC_INST_LOG_ID_SEQ` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `ProcessInstanceInfo`
--

DROP TABLE IF EXISTS `ProcessInstanceInfo`;
CREATE TABLE `ProcessInstanceInfo` (
  `InstanceId` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` bigint(20) DEFAULT NULL,
  `lastModificationDate` datetime DEFAULT NULL,
  `lastReadDate` datetime DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceByteArray` longblob,
  `startDate` datetime DEFAULT NULL,
  `state` int(11) NOT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  PRIMARY KEY (`InstanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=1096 DEFAULT CHARSET=utf8;

--
-- Table structure for table `ProcessInstanceLog`
--

DROP TABLE IF EXISTS `ProcessInstanceLog`;
CREATE TABLE `ProcessInstanceLog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_date` datetime DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `outcome` varchar(255) DEFAULT NULL,
  `parentProcessInstanceId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX (`processId`, `processInstanceId`, `parentProcessInstanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=1095 DEFAULT CHARSET=utf8;

--
-- Table structure for table `SESSIONINFO_ID_SEQ`
--

DROP TABLE IF EXISTS `SESSIONINFO_ID_SEQ`;
CREATE TABLE `SESSIONINFO_ID_SEQ` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `SessionInfo`
--

DROP TABLE IF EXISTS `SessionInfo`;
CREATE TABLE `SessionInfo` (
  `lastModificationDate` datetime DEFAULT NULL,
  `rulesByteArray` longblob,
  `startDate` datetime DEFAULT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Table structure for table `VAR_INST_LOG_ID_SEQ`
--

DROP TABLE IF EXISTS `VAR_INST_LOG_ID_SEQ`;
CREATE TABLE `VAR_INST_LOG_ID_SEQ` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `VariableInstanceLog`
--

DROP TABLE IF EXISTS `VariableInstanceLog`;
CREATE TABLE `VariableInstanceLog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_date` datetime DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `variableId` varchar(255) DEFAULT NULL,
  `variableInstanceId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX (`processInstanceId`, `variableId`, `value`)
) ENGINE=InnoDB AUTO_INCREMENT=8290 DEFAULT CHARSET=utf8;

--
-- Table structure for table `WORKITEMINFO_ID_SEQ`
--

DROP TABLE IF EXISTS `WORKITEMINFO_ID_SEQ`;
CREATE TABLE `WORKITEMINFO_ID_SEQ` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `WorkItemInfo`
--

DROP TABLE IF EXISTS `WorkItemInfo`;
CREATE TABLE `WorkItemInfo` (
  `workItemId` bigint(20) NOT NULL AUTO_INCREMENT,
  `creationDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `state` bigint(20) NOT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  `workItemByteArray` longblob,
  PRIMARY KEY (`workItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=5885 DEFAULT CHARSET=utf8;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `portal_pages`;
CREATE TABLE `portal_pages` (
  `title` varchar(255) DEFAULT NULL,
  `portal_page_id` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


GRANT ALL PRIVILEGES ON jbpm.* TO jbpm@localhost;
