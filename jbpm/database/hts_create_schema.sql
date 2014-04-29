USE hts;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accessType` int(11) DEFAULT NULL,
  `attachedAt` datetime DEFAULT NULL,
  `attachmentContentId` bigint(20) NOT NULL,
  `contentType` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `attachment_size` int(11) DEFAULT NULL,
  `attachedBy_id` varchar(255) DEFAULT NULL,
  `TaskData_Attachments_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1C935438EF5F064` (`attachedBy_id`),
  KEY `FK1C93543F21826D9` (`TaskData_Attachments_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BooleanExpression`
--

DROP TABLE IF EXISTS `BooleanExpression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BooleanExpression` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `expression` longtext,
  `type` varchar(255) DEFAULT NULL,
  `Escalation_Constraints_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE3D208C0AFB75F7D` (`Escalation_Constraints_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Content`
--

DROP TABLE IF EXISTS `Content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Deadline`
--

DROP TABLE IF EXISTS `Deadline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Deadline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deadline_date` datetime DEFAULT NULL,
  `escalated` smallint(6) DEFAULT NULL,
  `Deadlines_StartDeadLine_Id` bigint(20) DEFAULT NULL,
  `Deadlines_EndDeadLine_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK21DF3E78684BACA3` (`Deadlines_StartDeadLine_Id`),
  KEY `FK21DF3E7827ABEB8A` (`Deadlines_EndDeadLine_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Delegation_delegates`
--

DROP TABLE IF EXISTS `Delegation_delegates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Delegation_delegates` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK47485D572C122ED2` (`entity_id`),
  KEY `FK47485D5736B2F154` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Escalation`
--

DROP TABLE IF EXISTS `Escalation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Escalation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Deadline_Escalation_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK67B2C6B5C7A04C70` (`Deadline_Escalation_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `I18NText`
--

DROP TABLE IF EXISTS `I18NText`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `I18NText` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `shortText` varchar(256) DEFAULT NULL,
  `text` longtext,
  `Task_Subjects_Id` bigint(20) DEFAULT NULL,
  `Task_Names_Id` bigint(20) DEFAULT NULL,
  `Task_Descriptions_Id` bigint(20) DEFAULT NULL,
  `Reassignment_Documentation_Id` bigint(20) DEFAULT NULL,
  `Notification_Subjects_Id` bigint(20) DEFAULT NULL,
  `Notification_Names_Id` bigint(20) DEFAULT NULL,
  `Notification_Documentation_Id` bigint(20) DEFAULT NULL,
  `Notification_Descriptions_Id` bigint(20) DEFAULT NULL,
  `Deadline_Documentation_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2349686B2162DFB4` (`Notification_Descriptions_Id`),
  KEY `FK2349686BD488CEEB` (`Notification_Names_Id`),
  KEY `FK2349686B5EEBB6D9` (`Reassignment_Documentation_Id`),
  KEY `FK2349686B3330F6D9` (`Deadline_Documentation_Id`),
  KEY `FK2349686B8046A239` (`Notification_Documentation_Id`),
  KEY `FK2349686B69B21EE8` (`Task_Descriptions_Id`),
  KEY `FK2349686BB2FA6B18` (`Task_Subjects_Id`),
  KEY `FK2349686B98B62B` (`Task_Names_Id`),
  KEY `FK2349686BF952CEE4` (`Notification_Subjects_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Notification`
--

DROP TABLE IF EXISTS `Notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notification` (
  `DTYPE` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NOT NULL,
  `Escalation_Notifications_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2D45DD0B3E0890B` (`Escalation_Notifications_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Notification_BAs`
--

DROP TABLE IF EXISTS `Notification_BAs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notification_BAs` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK2DD68EE02C122ED2` (`entity_id`),
  KEY `FK2DD68EE09C76EABA` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Notification_Recipients`
--

DROP TABLE IF EXISTS `Notification_Recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notification_Recipients` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK98FD214E2C122ED2` (`entity_id`),
  KEY `FK98FD214E9C76EABA` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Notification_email_header`
--

DROP TABLE IF EXISTS `Notification_email_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notification_email_header` (
  `Notification_id` bigint(20) NOT NULL,
  `emailHeaders_id` bigint(20) NOT NULL,
  `mapkey` varchar(255) NOT NULL,
  PRIMARY KEY (`Notification_id`,`mapkey`),
  UNIQUE KEY `emailHeaders_id` (`emailHeaders_id`),
  KEY `FKF30FE3441F7B912A` (`emailHeaders_id`),
  KEY `FKF30FE34430BE501C` (`Notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OrganizationalEntity`
--

DROP TABLE IF EXISTS `OrganizationalEntity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrganizationalEntity` (
  `DTYPE` varchar(31) NOT NULL,
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PeopleAssignments_BAs`
--

DROP TABLE IF EXISTS `PeopleAssignments_BAs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PeopleAssignments_BAs` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK9D8CF4EC2C122ED2` (`entity_id`),
  KEY `FK9D8CF4EC36B2F154` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PeopleAssignments_ExclOwners`
--

DROP TABLE IF EXISTS `PeopleAssignments_ExclOwners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PeopleAssignments_ExclOwners` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FKC77B97E42C122ED2` (`entity_id`),
  KEY `FKC77B97E436B2F154` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PeopleAssignments_PotOwners`
--

DROP TABLE IF EXISTS `PeopleAssignments_PotOwners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PeopleAssignments_PotOwners` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK1EE418D2C122ED2` (`entity_id`),
  KEY `FK1EE418D36B2F154` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PeopleAssignments_Recipients`
--

DROP TABLE IF EXISTS `PeopleAssignments_Recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PeopleAssignments_Recipients` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FKC6F615C22C122ED2` (`entity_id`),
  KEY `FKC6F615C236B2F154` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PeopleAssignments_Stakeholders`
--

DROP TABLE IF EXISTS `PeopleAssignments_Stakeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PeopleAssignments_Stakeholders` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK482F79D52C122ED2` (`entity_id`),
  KEY `FK482F79D536B2F154` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Reassignment`
--

DROP TABLE IF EXISTS `Reassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reassignment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Escalation_Reassignments_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK724D0560A5C17EE0` (`Escalation_Reassignments_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Reassignment_potentialOwners`
--

DROP TABLE IF EXISTS `Reassignment_potentialOwners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reassignment_potentialOwners` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK90B59CFF2C122ED2` (`entity_id`),
  KEY `FK90B59CFFE17E130F` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SubTasksStrategy`
--

DROP TABLE IF EXISTS `SubTasksStrategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubTasksStrategy` (
  `DTYPE` varchar(100) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Task_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKDE5DF2E136B2F154` (`Task_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Task`
--

DROP TABLE IF EXISTS `Task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `archived` smallint(6) DEFAULT NULL,
  `allowedToDelegate` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `activationTime` datetime DEFAULT NULL,
  `completedOn` datetime DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `documentAccessType` int(11) DEFAULT NULL,
  `documentContentId` bigint(20) NOT NULL,
  `documentType` varchar(255) DEFAULT NULL,
  `expirationTime` datetime DEFAULT NULL,
  `faultAccessType` int(11) DEFAULT NULL,
  `faultContentId` bigint(20) NOT NULL,
  `faultName` varchar(255) DEFAULT NULL,
  `faultType` varchar(255) DEFAULT NULL,
  `outputAccessType` int(11) DEFAULT NULL,
  `outputContentId` bigint(20) NOT NULL,
  `outputType` varchar(255) DEFAULT NULL,
  `parentId` bigint(20) NOT NULL,
  `previousStatus` int(11) DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `processSessionId` int(11) NOT NULL,
  `skipable` bit(1) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `workItemId` bigint(20) NOT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  `taskInitiator_id` varchar(255) DEFAULT NULL,
  `actualOwner_id` varchar(255) DEFAULT NULL,
  `createdBy_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK27A9A59E619A0` (`createdBy_id`),
  KEY `FK27A9A56CE1EF3A` (`actualOwner_id`),
  KEY `FK27A9A5F213F8B5` (`taskInitiator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

CREATE INDEX `indxTaskStatus` ON `Task` (`status`);

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_header`
--

DROP TABLE IF EXISTS `email_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_header` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext,
  `fromAddress` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `replyToAddress` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `task_comment`
--

DROP TABLE IF EXISTS `task_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addedAt` datetime DEFAULT NULL,
  `text` longtext,
  `addedBy_id` varchar(255) DEFAULT NULL,
  `TaskData_Comments_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK61F475A5B35E68F5` (`TaskData_Comments_Id`),
  KEY `FK61F475A52FF04688` (`addedBy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

DROP TABLE IF EXISTS `WorkflowReport`;
DROP TABLE IF EXISTS `TaskInfo`;
CREATE TABLE `TaskInfo` (
  `id` bigint(20) PRIMARY KEY,
	`taskGuid` varchar(255),
	`taskName` varchar(255),
    `viewName` varchar(255),
	`operation` varchar(255),
	`dateTime` varchar(255),
	`entityId` varchar(255),
	`entityTitle` varchar(255),
	`entityType` varchar(255),
	`startTime` varchar(255),
	`dueTime` varchar(255),
	`lastChangeTimeMillis` bigint(20),
	`viewId` varchar(255),
	`percentComplete` varchar(255),
	`context` varchar(255),
	`userId` varchar(255),
	`processId` varchar(255),
	`processInstanceId` bigint(20),
	`addedTimeInMilliseconds` bigint(20),
	`message`varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE INDEX `indxTInfoEntityId` ON `TaskInfo` (`entityId`);

