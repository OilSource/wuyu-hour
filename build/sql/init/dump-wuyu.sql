-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.85.40    Database: wuyu
-- ------------------------------------------------------
-- Server version	8.0.23

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

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('OakerScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','GMT+08:00'),('OakerScheduler','TASK_CLASS_NAME100','DEFAULT','0 0 1 * * ?','GMT+08:00'),('OakerScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','GMT+08:00'),('OakerScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','GMT+08:00'),('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint NOT NULL,
  `sched_time` bigint NOT NULL,
  `priority` int NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('OakerScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.oaker.scheduled.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0!com.oaker.scheduled.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.oaker.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0{kJ�xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\01t\01x\0'),('OakerScheduler','TASK_CLASS_NAME100','DEFAULT',NULL,'com.oaker.scheduled.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0!com.oaker.scheduled.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.oaker.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0{� ��xpt\0\0pppt\01t\00 0 1 * * ?t\0userHourMiss.userHourMissTaskt\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0dt\0缺报工时定时任务t\01t\00x\0'),('OakerScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.oaker.scheduled.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0!com.oaker.scheduled.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.oaker.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0{kJ�xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('OakerScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.oaker.scheduled.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0!com.oaker.scheduled.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.oaker.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0{kJ�xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0{kJ�xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0{kJ�xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0{kJ�xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `QRTZ_LOCKS` VALUES ('OakerScheduler','STATE_ACCESS'),('OakerScheduler','TRIGGER_ACCESS'),('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint NOT NULL,
  `checkin_interval` bigint NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('OakerScheduler','LAPTOP-7GS3NI7J1679739524590',1679841178840,15000),('RuoyiScheduler','DESKTOP-DURH9O91631240178673',1631240258246,15000);
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint NOT NULL,
  `repeat_interval` bigint NOT NULL,
  `times_triggered` bigint NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `int_prop_1` int DEFAULT NULL,
  `int_prop_2` int DEFAULT NULL,
  `long_prop_1` bigint DEFAULT NULL,
  `long_prop_2` bigint DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `next_fire_time` bigint DEFAULT NULL,
  `prev_fire_time` bigint DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint NOT NULL,
  `end_time` bigint DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `misfire_instr` smallint DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_TRIGGERS` VALUES ('OakerScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1679739530000,-1,5,'PAUSED','CRON',1679739525000,0,NULL,-1,''),('OakerScheduler','TASK_CLASS_NAME100','DEFAULT','TASK_CLASS_NAME100','DEFAULT',NULL,1679850000000,1679763600000,5,'WAITING','CRON',1679739526000,0,NULL,-1,''),('OakerScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1679739540000,-1,5,'PAUSED','CRON',1679739526000,0,NULL,2,''),('OakerScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1679739540000,-1,5,'PAUSED','CRON',1679739526000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1631240180000,-1,5,'PAUSED','CRON',1631240178000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1631240190000,-1,5,'PAUSED','CRON',1631240179000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1631240180000,-1,5,'PAUSED','CRON',1631240179000,0,NULL,2,'');
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'stu','',NULL,NULL,'Stu','crud','com.ruoyi.system','system','stu',NULL,'ruoyi','0','/',NULL,'admin','2021-08-22 09:07:52','',NULL,NULL),(2,'sys_project','项目表',NULL,NULL,'SysProject','crud','com.oaker.system','system','project','项目','\" é¡»å°½æ¬¢ _____','0','/',NULL,'admin','2021-09-03 10:10:06','',NULL,NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,'1','id',NULL,'int','Long','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-08-22 09:07:52','',NULL),(2,'1','stu_name',NULL,'varchar(32)','String','stuName','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2021-08-22 09:07:52','',NULL),(3,'1','class_num',NULL,'int','Long','classNum','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2021-08-22 09:07:52','',NULL),(4,'2','project_id','项目id','bigint','Long','projectId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2021-09-03 10:10:07','',NULL),(5,'2','project_name','项目名称','varchar(255)','String','projectName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2021-09-03 10:10:07','',NULL),(6,'2','duration','预计投入工时','double(20,2)','BigDecimal','duration','0','0','1','1','1','1','1','EQ','input','',3,'admin','2021-09-03 10:10:07','',NULL),(7,'2','project_manager','项目经理id','bigint','Long','projectManager','0','0','1','1','1','1','1','EQ','input','',4,'admin','2021-09-03 10:10:07','',NULL),(8,'2','project_status','项目状态：a 进行中，b运维，c 归档','char(10)','String','projectStatus','0','0','1','1','1','1','1','EQ','radio','',5,'admin','2021-09-03 10:10:07','',NULL),(9,'2','remark','项目简介','varchar(500)','String','remark','0','0',NULL,'1','1','1',NULL,'EQ','textarea','',6,'admin','2021-09-03 10:10:07','',NULL),(10,'2','create_by','创建人','varchar(64)','String','createBy','0','0','1','1',NULL,NULL,NULL,'EQ','input','',7,'admin','2021-09-03 10:10:07','',NULL),(11,'2','create_time','创建时间','datetime','Date','createTime','0','0','1','1',NULL,NULL,NULL,'EQ','datetime','',8,'admin','2021-09-03 10:10:07','',NULL),(12,'2','update_by','更新人','varchar(54)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',9,'admin','2021-09-03 10:10:07','',NULL),(13,'2','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',10,'admin','2021-09-03 10:10:07','',NULL);
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_cost`
--

DROP TABLE IF EXISTS `mh_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_cost` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `project_id` bigint NOT NULL COMMENT '项目id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `use_hour` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '所用工时',
  `post_cost` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '岗位成本',
  `user_cost` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '人员成本',
  `cost_date` date DEFAULT NULL COMMENT '日期',
  `project_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'a' COMMENT '项目状态：a 进行中，b运维，c 结束',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `project_id_index` (`project_id`) USING BTREE COMMENT '项目id索引',
  KEY `user_id_index` (`user_id`) USING BTREE COMMENT '用户id索引'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='成本记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_cost`
--

LOCK TABLES `mh_cost` WRITE;
/*!40000 ALTER TABLE `mh_cost` DISABLE KEYS */;
INSERT INTO `mh_cost` VALUES (1,37,127,2.00,0.00,0.00,'2023-03-24','a','2023-03-24 22:49:35'),(2,37,128,3.00,0.00,0.00,'2023-03-24','a','2023-03-25 12:19:31');
/*!40000 ALTER TABLE `mh_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_hour_detail`
--

DROP TABLE IF EXISTS `mh_hour_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_hour_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `hour_id` bigint NOT NULL COMMENT '工时填报表id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `project_id` bigint NOT NULL COMMENT '项目id',
  `use_hour` double(20,2) NOT NULL DEFAULT '0.00' COMMENT '工时',
  `fill_date` date NOT NULL COMMENT '填报日期',
  `project_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'a' COMMENT '项目状态：a 进行中，b运维，c 结束',
  `everyday` tinyint NOT NULL DEFAULT '1' COMMENT '是否为每日上报工时记录 0 否  1 是',
  `daily` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日报内容',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `approve_status` tinyint DEFAULT '0' COMMENT '审批状态，0:待审批,1:批准,-1:拒绝',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_hour_id` (`hour_id`) USING BTREE COMMENT '工时填报表id索引',
  KEY `fill_data_index` (`fill_date`) USING BTREE COMMENT '填报日期索引'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='工时填报详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_hour_detail`
--

LOCK TABLES `mh_hour_detail` WRITE;
/*!40000 ALTER TABLE `mh_hour_detail` DISABLE KEYS */;
INSERT INTO `mh_hour_detail` VALUES (17,14,127,37,2.00,'2023-03-24','a',1,'111',NULL,'2023-03-24 22:32:53',0),(18,15,128,37,2.00,'2023-03-24','a',1,'12123',NULL,'2023-03-25 12:19:23',0),(19,15,128,37,3.00,'2023-03-24','a',1,'123123',NULL,'2023-03-25 12:19:23',0),(20,16,127,37,1.50,'2023-03-25','a',1,'123',NULL,'2023-03-25 12:23:15',1),(21,16,127,38,2.00,'2023-03-25','a',1,'123',NULL,'2023-03-25 12:23:15',0),(22,16,127,37,2.00,'2023-03-25','a',1,'22',NULL,'2023-03-25 12:23:15',0);
/*!40000 ALTER TABLE `mh_hour_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_hour_detail_sub`
--

DROP TABLE IF EXISTS `mh_hour_detail_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_hour_detail_sub` (
  `id` bigint NOT NULL COMMENT '主键',
  `detail_id` bigint DEFAULT NULL COMMENT '详情Id',
  `work_type_id` bigint DEFAULT NULL COMMENT '工作类型Id',
  `use_hour` double(20,2) DEFAULT '0.00' COMMENT '工时',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='工时填报详情表字表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_hour_detail_sub`
--

LOCK TABLES `mh_hour_detail_sub` WRITE;
/*!40000 ALTER TABLE `mh_hour_detail_sub` DISABLE KEYS */;
/*!40000 ALTER TABLE `mh_hour_detail_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_post_cost`
--

DROP TABLE IF EXISTS `mh_post_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_post_cost` (
  `post_id` bigint NOT NULL COMMENT '岗位id',
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '岗位成本',
  `create_user` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` bigint DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  UNIQUE KEY `post_id_index` (`post_id`) COMMENT '岗位id索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='岗位成本表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_post_cost`
--

LOCK TABLES `mh_post_cost` WRITE;
/*!40000 ALTER TABLE `mh_post_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `mh_post_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_project_hour`
--

DROP TABLE IF EXISTS `mh_project_hour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_project_hour` (
  `project_id` bigint NOT NULL COMMENT '项目id',
  `man_hour` double(20,2) NOT NULL COMMENT '预估投入工期',
  `use_hour` double(20,2) DEFAULT '0.00' COMMENT '已用工时',
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目工时表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_project_hour`
--

LOCK TABLES `mh_project_hour` WRITE;
/*!40000 ALTER TABLE `mh_project_hour` DISABLE KEYS */;
INSERT INTO `mh_project_hour` VALUES (37,640.00,10.50),(38,640.00,2.00);
/*!40000 ALTER TABLE `mh_project_hour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_project_statistics`
--

DROP TABLE IF EXISTS `mh_project_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_project_statistics` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `project_id` bigint NOT NULL COMMENT '项目id',
  `man_total` int NOT NULL COMMENT '参与人数',
  `fill_total` int NOT NULL COMMENT '工时填报人数',
  `fill_hour` double(20,2) NOT NULL DEFAULT '0.00' COMMENT '上报工时',
  `hour_total` double(20,2) NOT NULL COMMENT '累计投入工时',
  `create_date` date NOT NULL COMMENT '统计日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_project_id` (`project_id`) USING BTREE COMMENT '项目id索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目进度统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_project_statistics`
--

LOCK TABLES `mh_project_statistics` WRITE;
/*!40000 ALTER TABLE `mh_project_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mh_project_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_user_cost`
--

DROP TABLE IF EXISTS `mh_user_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_user_cost` (
  `user_id` bigint NOT NULL COMMENT '人员id',
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '人员成本',
  `create_user` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` bigint DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='人员成本表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_user_cost`
--

LOCK TABLES `mh_user_cost` WRITE;
/*!40000 ALTER TABLE `mh_user_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `mh_user_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_user_hour`
--

DROP TABLE IF EXISTS `mh_user_hour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_user_hour` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `fill_date` date NOT NULL COMMENT '填报日期',
  `total_hour` double(20,2) DEFAULT NULL COMMENT '总工时',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_user_id` (`user_id`) USING BTREE COMMENT '用户id索引'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='工时填报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_user_hour`
--

LOCK TABLES `mh_user_hour` WRITE;
/*!40000 ALTER TABLE `mh_user_hour` DISABLE KEYS */;
INSERT INTO `mh_user_hour` VALUES (14,127,'2023-03-24',2.00,'2023-03-24 22:32:53'),(15,128,'2023-03-24',5.00,'2023-03-25 12:19:23'),(16,127,'2023-03-25',5.50,'2023-03-25 12:23:15');
/*!40000 ALTER TABLE `mh_user_hour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_user_hour_miss`
--

DROP TABLE IF EXISTS `mh_user_hour_miss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_user_hour_miss` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `miss_date` date NOT NULL COMMENT '缺报日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_user_id` (`user_id`) USING BTREE COMMENT '用户id索引'
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户缺报记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_user_hour_miss`
--

LOCK TABLES `mh_user_hour_miss` WRITE;
/*!40000 ALTER TABLE `mh_user_hour_miss` DISABLE KEYS */;
/*!40000 ALTER TABLE `mh_user_hour_miss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_user_hour_miss_detail`
--

DROP TABLE IF EXISTS `mh_user_hour_miss_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_user_hour_miss_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `miss_id` bigint NOT NULL COMMENT '缺报记录表id',
  `project_id` bigint NOT NULL COMMENT '项目id',
  `project_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'a' COMMENT '项目状态：a 进行中，b运维，c 结束',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `miss_date` date NOT NULL COMMENT '缺报日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `project_id_index` (`project_id`) USING BTREE COMMENT '项目id索引',
  KEY `user_id_index` (`user_id`) USING BTREE COMMENT '用户id索引'
) ENGINE=InnoDB AUTO_INCREMENT=826 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户缺报详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_user_hour_miss_detail`
--

LOCK TABLES `mh_user_hour_miss_detail` WRITE;
/*!40000 ALTER TABLE `mh_user_hour_miss_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mh_user_hour_miss_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_user_leave`
--

DROP TABLE IF EXISTS `mh_user_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_user_leave` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `leave_date` date NOT NULL COMMENT '请假日期',
  `leave_type` int NOT NULL DEFAULT '1' COMMENT '类型：1请假  2倒休',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `leave_date_index` (`leave_date`) USING BTREE COMMENT '请假日期索引',
  KEY `user_id_index` (`user_id`) USING BTREE COMMENT '用户id索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户请假记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_user_leave`
--

LOCK TABLES `mh_user_leave` WRITE;
/*!40000 ALTER TABLE `mh_user_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `mh_user_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_user_leave_detail`
--

DROP TABLE IF EXISTS `mh_user_leave_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_user_leave_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `leave_id` bigint NOT NULL COMMENT '缺报记录表id',
  `project_id` bigint NOT NULL COMMENT '项目id',
  `project_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'a' COMMENT '项目状态：a 进行中，b运维，c 结束',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `leave_date` date NOT NULL COMMENT '缺报日期',
  `leave_type` int NOT NULL DEFAULT '1' COMMENT '类型：1请假  2倒休',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `project_id_index` (`project_id`) USING BTREE COMMENT '项目id索引',
  KEY `user_id_index` (`user_id`) USING BTREE COMMENT '用户id索引',
  KEY `leave_id_index` (`leave_id`) USING BTREE COMMENT '请假记录id索引'
) ENGINE=InnoDB AUTO_INCREMENT=2128 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户请假详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_user_leave_detail`
--

LOCK TABLES `mh_user_leave_detail` WRITE;
/*!40000 ALTER TABLE `mh_user_leave_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mh_user_leave_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mh_work_type`
--

DROP TABLE IF EXISTS `mh_work_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mh_work_type` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务类型',
  `deleted` tinyint DEFAULT NULL COMMENT '删除标识0:未删除,1:已删除',
  `create_user` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='工作类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mh_work_type`
--

LOCK TABLES `mh_work_type` WRITE;
/*!40000 ALTER TABLE `mh_work_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mh_work_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_doc`
--

DROP TABLE IF EXISTS `pr_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_doc` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `doc_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文档名称',
  `prototype_id` bigint NOT NULL COMMENT '原型记录id',
  `doc_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文档地址',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件存放路径',
  `create_user` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `prototype_id_index` (`prototype_id`) USING BTREE COMMENT '原型id索引'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='原型文档';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_doc`
--

LOCK TABLES `pr_doc` WRITE;
/*!40000 ALTER TABLE `pr_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_prototype`
--

DROP TABLE IF EXISTS `pr_prototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_prototype` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `project_id` bigint DEFAULT NULL COMMENT '项目id',
  `record_id` bigint DEFAULT NULL COMMENT '原型地址记录id',
  `sketch_id` bigint DEFAULT NULL COMMENT '效果图id',
  `pub_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '原型公开id',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注说明',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除：0未删除， 1已删除',
  `create_user` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` bigint DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `pub_id_index` (`pub_id`) USING BTREE COMMENT '原型公开id',
  KEY `project_id_index` (`project_id`) USING BTREE COMMENT '项目id索引'
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='原型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_prototype`
--

LOCK TABLES `pr_prototype` WRITE;
/*!40000 ALTER TABLE `pr_prototype` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_prototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_prototype_record`
--

DROP TABLE IF EXISTS `pr_prototype_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_prototype_record` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `file_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名称',
  `prototype_id` bigint NOT NULL COMMENT '原型id',
  `prototype_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '原型地址',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件存放路径',
  `create_user` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `prototype_id_index` (`prototype_id`) USING BTREE COMMENT '原型id索引'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='原型记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_prototype_record`
--

LOCK TABLES `pr_prototype_record` WRITE;
/*!40000 ALTER TABLE `pr_prototype_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_prototype_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_sketch`
--

DROP TABLE IF EXISTS `pr_sketch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_sketch` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名称',
  `prototype_id` bigint NOT NULL COMMENT '原型id',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件存放路径',
  `create_user` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `prototype_id_index` (`prototype_id`) USING BTREE COMMENT '原型id索引'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='效果图记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_sketch`
--

LOCK TABLES `pr_sketch` WRITE;
/*!40000 ALTER TABLE `pr_sketch` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_sketch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_sketch_file`
--

DROP TABLE IF EXISTS `pr_sketch_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_sketch_file` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sketch_id` bigint NOT NULL COMMENT '效果图记录id',
  `file_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文档名称',
  `prototype_id` bigint NOT NULL COMMENT '原型记录id',
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文档地址',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件存放路径',
  `create_user` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sketch_id_index` (`sketch_id`) USING BTREE COMMENT '效果图记录id索引',
  KEY `prototype_id_index` (`prototype_id`) USING BTREE COMMENT '原型id索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='效果图文件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_sketch_file`
--

LOCK TABLES `pr_sketch_file` WRITE;
/*!40000 ALTER TABLE `pr_sketch_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_sketch_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2021-08-22 08:37:02','admin','2021-09-01 02:00:54','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2021-08-22 08:37:02','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2021-08-22 08:37:02','admin','2021-09-01 02:04:21','深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaOnOff','true','Y','admin','2021-08-22 08:37:02','',NULL,'是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2021-08-22 08:37:02','',NULL,'是否开启注册用户功能（true开启，false关闭）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','无鱼软件',0,'小鱼','15888888888','dmk@qq.com','0','0','admin','2021-08-22 08:37:02','admin','2022-11-09 08:28:16'),(101,100,'0,100','北京总公司',1,'陈','15888888888','chen@qq.com','0','2','admin','2021-08-22 08:37:02','admin','2021-08-31 06:55:43'),(202,100,'0,100','开发部',1,NULL,NULL,NULL,'0','0','admin','2022-11-09 08:28:28','',NULL),(203,100,'0,100','项目部',2,NULL,NULL,NULL,'0','0','admin','2022-11-09 08:28:35','',NULL),(204,100,'0,100','运维部',3,NULL,NULL,NULL,'0','0','admin','2022-11-09 08:28:43','',NULL),(205,100,'0,100','客服部',4,NULL,NULL,NULL,'0','0','admin','2022-11-09 08:28:57','',NULL),(206,100,'0,100','市场部',4,NULL,NULL,NULL,'0','0','admin','2022-11-09 08:29:25','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2021-08-22 08:37:02','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2021-08-22 08:37:02','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2021-08-22 08:37:02','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2021-08-22 08:37:02','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2021-08-22 08:37:02','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2021-08-22 08:37:02','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2021-08-22 08:37:02','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2021-08-22 08:37:02','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2021-08-22 08:37:02','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2021-08-22 08:37:02','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2021-08-22 08:37:02','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2021-08-22 08:37:02','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2021-08-22 08:37:02','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2021-08-22 08:37:02','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2021-08-22 08:37:02','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2021-08-22 08:37:02','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2021-08-22 08:37:02','',NULL,'关闭状态'),(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2021-08-22 08:37:02','',NULL,'新增操作'),(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2021-08-22 08:37:02','',NULL,'修改操作'),(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2021-08-22 08:37:02','',NULL,'删除操作'),(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2021-08-22 08:37:02','',NULL,'授权操作'),(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2021-08-22 08:37:02','',NULL,'导出操作'),(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2021-08-22 08:37:02','',NULL,'导入操作'),(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2021-08-22 08:37:02','',NULL,'强退操作'),(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2021-08-22 08:37:02','',NULL,'生成操作'),(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2021-08-22 08:37:02','',NULL,'清空操作'),(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2021-08-22 08:37:02','',NULL,'正常状态'),(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2021-08-22 08:37:02','',NULL,'停用状态'),(100,0,'进行中','a','mh_project_status',NULL,'default','N','0','admin','2021-09-08 03:39:30','',NULL,NULL),(101,1,'运维','b','mh_project_status',NULL,'default','N','0','admin','2021-09-08 03:39:46','admin','2021-09-08 03:40:16',NULL),(102,2,'归档','c','mh_project_status',NULL,'default','N','0','admin','2021-09-08 03:40:02','admin','2021-09-08 03:40:26',NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2021-08-22 08:37:02','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2021-08-22 08:37:02','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2021-08-22 08:37:02','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2021-08-22 08:37:02','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2021-08-22 08:37:02','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2021-08-22 08:37:02','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2021-08-22 08:37:02','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2021-08-22 08:37:02','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2021-08-22 08:37:02','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2021-08-22 08:37:02','',NULL,'登录状态列表'),(100,'项目状态','mh_project_status','0','admin','2021-09-08 03:38:10','',NULL,NULL),(103,'','','0','admin','2021-09-10 02:43:20','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_holiday`
--

DROP TABLE IF EXISTS `sys_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_holiday` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `year` int DEFAULT NULL COMMENT '年份',
  `month` int DEFAULT NULL COMMENT '月份',
  `day` int DEFAULT NULL COMMENT '日',
  `date` date DEFAULT NULL COMMENT '日期',
  `holiday` tinyint DEFAULT NULL COMMENT '是否法定节日期标识,1:是,0:否',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sys_holiday_index_date` (`date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='节假日信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_holiday`
--

LOCK TABLES `sys_holiday` WRITE;
/*!40000 ALTER TABLE `sys_holiday` DISABLE KEYS */;
INSERT INTO `sys_holiday` VALUES (4,2019,4,5,'2019-04-05',1,'2022-11-15 17:55:11'),(5,2019,5,1,'2019-05-01',1,'2022-11-15 17:55:11'),(6,2019,5,2,'2019-05-02',1,'2022-11-15 17:55:11'),(7,2019,5,3,'2019-05-03',1,'2022-11-15 17:55:11'),(8,2019,5,4,'2019-05-04',1,'2022-11-15 17:55:11'),(9,2019,6,7,'2019-06-07',1,'2022-11-15 17:55:11'),(10,2019,9,13,'2019-09-13',1,'2022-11-15 17:55:11'),(11,2019,10,1,'2019-10-01',1,'2022-11-15 17:55:11'),(12,2019,10,2,'2019-10-02',1,'2022-11-15 17:55:11'),(13,2019,10,3,'2019-10-03',1,'2022-11-15 17:55:11'),(14,2019,10,4,'2019-10-04',1,'2022-11-15 17:55:11'),(15,2019,10,5,'2019-10-05',1,'2022-11-15 17:55:11'),(16,2019,10,6,'2019-10-06',1,'2022-11-15 17:55:11'),(17,2019,10,7,'2019-10-07',1,'2022-11-15 17:55:11'),(18,2020,1,1,'2020-01-01',1,'2022-11-15 17:55:11'),(19,2020,1,24,'2020-01-24',1,'2022-11-15 17:55:11'),(20,2020,1,25,'2020-01-25',1,'2022-11-15 17:55:11'),(21,2020,1,26,'2020-01-26',1,'2022-11-15 17:55:11'),(22,2020,1,27,'2020-01-27',1,'2022-11-15 17:55:11'),(23,2020,1,28,'2020-01-28',1,'2022-11-15 17:55:11'),(24,2020,1,29,'2020-01-29',1,'2022-11-15 17:55:11'),(25,2020,1,30,'2020-01-30',1,'2022-11-15 17:55:11'),(26,2020,4,4,'2020-04-04',1,'2022-11-15 17:55:11'),(27,2020,4,5,'2020-04-05',1,'2022-11-15 17:55:11'),(28,2020,4,6,'2020-04-06',1,'2022-11-15 17:55:11'),(29,2020,5,1,'2020-05-01',1,'2022-11-15 17:55:11'),(30,2020,5,2,'2020-05-02',1,'2022-11-15 17:55:11'),(31,2020,5,3,'2020-05-03',1,'2022-11-15 17:55:11'),(32,2020,5,4,'2020-05-04',1,'2022-11-15 17:55:11'),(33,2020,5,5,'2020-05-05',1,'2022-11-15 17:55:11'),(34,2020,6,25,'2020-06-25',1,'2022-11-15 17:55:11'),(35,2020,6,26,'2020-06-26',1,'2022-11-15 17:55:11'),(36,2020,6,27,'2020-06-27',1,'2022-11-15 17:55:11'),(37,2020,10,1,'2020-10-01',1,'2022-11-15 17:55:11'),(38,2020,10,2,'2020-10-02',1,'2022-11-15 17:55:11'),(39,2020,10,3,'2020-10-03',1,'2022-11-15 17:55:11'),(40,2020,10,4,'2020-10-04',1,'2022-11-15 17:55:11'),(41,2020,10,5,'2020-10-05',1,'2022-11-15 17:55:11'),(42,2020,10,6,'2020-10-06',1,'2022-11-15 17:55:11'),(43,2020,10,7,'2020-10-07',1,'2022-11-15 17:55:11'),(44,2020,10,8,'2020-10-08',1,'2022-11-15 17:55:11'),(45,2021,1,1,'2021-01-01',1,'2022-11-15 17:55:11'),(46,2021,1,2,'2021-01-02',1,'2022-11-15 17:55:11'),(47,2021,1,3,'2021-01-03',1,'2022-11-15 17:55:11'),(48,2021,2,11,'2021-02-11',1,'2022-11-15 17:55:11'),(49,2021,2,12,'2021-02-12',1,'2022-11-15 17:55:11'),(50,2021,2,13,'2021-02-13',1,'2022-11-15 17:55:11'),(51,2021,2,14,'2021-02-14',1,'2022-11-15 17:55:11'),(52,2021,2,15,'2021-02-15',1,'2022-11-15 17:55:11'),(53,2021,2,16,'2021-02-16',1,'2022-11-15 17:55:11'),(54,2021,2,17,'2021-02-17',1,'2022-11-15 17:55:11'),(55,2021,4,3,'2021-04-03',1,'2022-11-15 17:55:11'),(56,2021,4,4,'2021-04-04',1,'2022-11-15 17:55:11'),(57,2021,4,5,'2021-04-05',1,'2022-11-15 17:55:11'),(58,2021,5,1,'2021-05-01',1,'2022-11-15 17:55:11'),(59,2021,5,2,'2021-05-02',1,'2022-11-15 17:55:11'),(60,2021,5,3,'2021-05-03',1,'2022-11-15 17:55:11'),(61,2021,5,4,'2021-05-04',1,'2022-11-15 17:55:11'),(62,2021,5,5,'2021-05-05',1,'2022-11-15 17:55:11'),(63,2021,6,12,'2021-06-12',1,'2022-11-15 17:55:11'),(64,2021,6,13,'2021-06-13',1,'2022-11-15 17:55:11'),(65,2021,6,14,'2021-06-14',1,'2022-11-15 17:55:11'),(66,2021,9,19,'2021-09-19',1,'2022-11-15 17:55:11'),(67,2021,9,20,'2021-09-20',1,'2022-11-15 17:55:11'),(68,2021,9,21,'2021-09-21',1,'2022-11-15 17:55:11'),(69,2021,10,1,'2021-10-01',1,'2022-11-15 17:55:11'),(70,2021,10,2,'2021-10-02',1,'2022-11-15 17:55:11'),(71,2021,10,3,'2021-10-03',1,'2022-11-15 17:55:11'),(72,2021,10,4,'2021-10-04',1,'2022-11-15 17:55:11'),(73,2021,10,5,'2021-10-05',1,'2022-11-15 17:55:11'),(74,2021,10,6,'2021-10-06',1,'2022-11-15 17:55:11'),(75,2021,10,7,'2021-10-07',1,'2022-11-15 17:55:11'),(76,2022,1,1,'2022-01-01',1,'2022-11-15 17:55:11'),(77,2022,1,2,'2022-01-02',1,'2022-11-15 17:55:11'),(78,2022,1,3,'2022-01-03',1,'2022-11-15 17:55:11'),(79,2022,1,31,'2022-01-31',1,'2022-11-15 17:55:11'),(80,2022,2,1,'2022-02-01',1,'2022-11-15 17:55:11'),(81,2022,2,2,'2022-02-02',1,'2022-11-15 17:55:11'),(82,2022,2,3,'2022-02-03',1,'2022-11-15 17:55:11'),(83,2022,2,4,'2022-02-04',1,'2022-11-15 17:55:11'),(84,2022,2,5,'2022-02-05',1,'2022-11-15 17:55:11'),(85,2022,2,6,'2022-02-06',1,'2022-11-15 17:55:11'),(86,2022,4,3,'2022-04-03',1,'2022-11-15 17:55:11'),(87,2022,4,4,'2022-04-04',1,'2022-11-15 17:55:11'),(88,2022,4,5,'2022-04-05',1,'2022-11-15 17:55:11'),(89,2022,4,30,'2022-04-30',1,'2022-11-15 17:55:11'),(90,2022,5,1,'2022-05-01',1,'2022-11-15 17:55:11'),(91,2022,5,2,'2022-05-02',1,'2022-11-15 17:55:11'),(92,2022,5,3,'2022-05-03',1,'2022-11-15 17:55:11'),(93,2022,5,4,'2022-05-04',1,'2022-11-15 17:55:11'),(94,2022,6,3,'2022-06-03',1,'2022-11-15 17:55:11'),(95,2022,6,4,'2022-06-04',1,'2022-11-15 17:55:11'),(96,2022,6,5,'2022-06-05',1,'2022-11-15 17:55:11'),(97,2022,9,10,'2022-09-10',1,'2022-11-15 17:55:11'),(98,2022,9,11,'2022-09-11',1,'2022-11-15 17:55:11'),(99,2022,9,12,'2022-09-12',1,'2022-11-15 17:55:11'),(100,2022,10,1,'2022-10-01',1,'2022-11-15 17:55:11'),(101,2022,10,2,'2022-10-02',1,'2022-11-15 17:55:11'),(102,2022,10,3,'2022-10-03',1,'2022-11-15 17:55:11'),(103,2022,10,4,'2022-10-04',1,'2022-11-15 17:55:11'),(104,2022,10,5,'2022-10-05',1,'2022-11-15 17:55:11'),(105,2022,10,6,'2022-10-06',1,'2022-11-15 17:55:11'),(106,2022,10,7,'2022-10-07',1,'2022-11-15 17:55:11'),(107,2019,4,28,'2019-04-28',0,'2022-11-15 17:55:11'),(108,2019,5,5,'2019-05-05',0,'2022-11-15 17:55:11'),(109,2019,9,26,'2019-09-26',0,'2022-11-15 17:55:11'),(110,2019,10,12,'2019-10-12',0,'2022-11-15 17:55:11'),(111,2020,1,19,'2020-01-19',0,'2022-11-15 17:55:11'),(112,2020,2,1,'2020-02-01',0,'2022-11-15 17:55:11'),(113,2020,4,26,'2020-04-26',0,'2022-11-15 17:55:11'),(114,2020,5,9,'2020-05-09',0,'2022-11-15 17:55:11'),(115,2020,6,28,'2020-06-28',0,'2022-11-15 17:55:11'),(116,2020,9,27,'2020-09-27',0,'2022-11-15 17:55:11'),(117,2020,10,10,'2020-10-10',0,'2022-11-15 17:55:11'),(118,2021,10,9,'2021-10-09',0,'2022-11-15 17:55:11'),(119,2021,9,18,'2021-09-18',0,'2022-11-15 17:55:11'),(120,2021,9,26,'2021-09-26',0,'2022-11-15 17:55:11'),(121,2021,5,8,'2021-05-08',0,'2022-11-15 17:55:11'),(122,2021,2,7,'2021-02-07',0,'2022-11-15 17:55:11'),(123,2021,2,20,'2021-02-20',0,'2022-11-15 17:55:11'),(124,2022,1,29,'2022-01-29',0,'2022-11-15 17:55:11'),(125,2022,1,30,'2022-01-30',0,'2022-11-15 17:55:11'),(126,2022,4,2,'2022-04-02',0,'2022-11-15 17:55:11'),(127,2022,4,24,'2022-04-24',0,'2022-11-15 17:55:11'),(128,2022,5,7,'2022-05-07',0,'2022-11-15 17:55:11'),(129,2022,10,8,'2022-10-08',0,'2022-11-15 17:55:11'),(130,2022,10,9,'2022-10-09',0,'2022-11-15 17:55:11');
/*!40000 ALTER TABLE `sys_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','1','1','1','admin','2021-08-22 08:37:02','admin','2021-09-15 10:06:42',''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2021-08-22 08:37:02','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2021-08-22 08:37:02','',NULL,''),(100,'缺报工时定时任务','DEFAULT','userHourMiss.userHourMissTask','0 0 1 * * ?','1','1','0','admin','2021-09-15 09:44:48','admin','2021-09-15 10:30:41','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=638 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
INSERT INTO `sys_job_log` VALUES (636,'缺报工时定时任务','DEFAULT','userHourMiss.userHourMissTask','缺报工时定时任务 总共耗时：112毫秒','0','','2021-10-11 17:00:00'),(637,'缺报工时定时任务','DEFAULT','userHourMiss.userHourMissTask','缺报工时定时任务 总共耗时：10毫秒','0','','2023-03-25 12:40:20');
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=686 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (609,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 09:47:11'),(610,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 09:48:49'),(611,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:02:32'),(612,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:02:43'),(613,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:03:05'),(614,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:03:15'),(615,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:05:45'),(616,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:05:58'),(617,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:13:23'),(618,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:13:31'),(619,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:42:55'),(620,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:43:05'),(621,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:46:14'),(622,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:46:23'),(623,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:50:24'),(624,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:50:33'),(625,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:51:23'),(626,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:51:40'),(627,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:52:18'),(628,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:52:25'),(629,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:58:47'),(630,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:58:56'),(631,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 10:59:31'),(632,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 10:59:39'),(633,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 11:00:00'),(634,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 11:00:12'),(635,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-24 11:00:32'),(636,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 11:00:52'),(637,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-24 23:03:59'),(638,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 00:22:46'),(639,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 00:22:53'),(640,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 00:26:28'),(641,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 00:26:36'),(642,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 01:26:23'),(643,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 01:26:33'),(644,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 02:05:07'),(645,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 02:05:30'),(646,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 02:20:52'),(647,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 02:21:07'),(648,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 02:23:59'),(649,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 02:24:08'),(650,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 02:26:22'),(651,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 02:26:37'),(652,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 02:26:52'),(653,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 02:27:00'),(654,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 02:38:58'),(655,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 02:39:06'),(656,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 02:41:09'),(657,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 02:41:16'),(658,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 02:43:41'),(659,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 02:43:48'),(660,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 02:47:22'),(661,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 02:47:29'),(662,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 04:26:46'),(663,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 04:26:55'),(664,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 04:29:52'),(665,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 04:30:05'),(666,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 04:50:01'),(667,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 04:50:13'),(668,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 04:50:31'),(669,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 04:50:42'),(670,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 04:58:01'),(671,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 04:58:09'),(672,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 05:13:59'),(673,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 05:14:20'),(674,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 05:18:24'),(675,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 05:18:31'),(676,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 05:18:48'),(677,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 05:19:31'),(678,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 05:19:52'),(679,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 05:20:06'),(680,'andy2','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 05:27:01'),(681,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 05:27:11'),(682,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 05:29:29'),(683,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 05:29:38'),(684,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-25 05:31:51'),(685,'andy','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-25 05:32:00');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组件路径',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2073 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,9,'system',NULL,1,0,'M','0','0','','system','admin','2021-08-22 08:37:02','admin','2021-10-22 15:15:41','系统管理目录'),(2,'系统监控',0,5,'monitor',NULL,1,0,'M','0','0','','monitor','admin','2021-08-22 08:37:02','admin','2021-10-22 15:15:26','系统监控目录'),(100,'用户管理',2000,4,'user','system/user/index',1,0,'C','0','0','system:user:list','user','admin','2021-08-22 08:37:02','admin','2021-09-01 05:49:19','用户管理菜单'),(101,'角色管理',2000,2,'role','system/role/index',1,0,'C','0','0','system:role:list','peoples','admin','2021-08-22 08:37:02','admin','2021-08-31 05:55:48','角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index',1,0,'C','0','0','system:menu:list','tree-table','admin','2021-08-22 08:37:02','',NULL,'菜单管理菜单'),(103,'部门管理',2000,4,'dept','system/dept/index',1,0,'C','0','0','system:dept:list','tree','admin','2021-08-22 08:37:02','admin','2022-11-09 08:43:59','部门管理菜单'),(104,'职位管理',2000,3,'post','system/post/index',1,0,'C','0','0','system:post:list','post','admin','2021-08-22 08:37:02','admin','2021-09-01 05:49:07','岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index',1,0,'C','0','0','system:dict:list','dict','admin','2021-08-22 08:37:02','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index',1,0,'C','0','0','system:config:list','edit','admin','2021-08-22 08:37:02','',NULL,'参数设置菜单'),(108,'日志管理',1,9,'log','',1,0,'M','0','0','','log','admin','2021-08-22 08:37:02','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index',1,0,'C','0','0','monitor:online:list','online','admin','2021-08-22 08:37:02','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index',1,0,'C','0','0','monitor:job:list','job','admin','2021-08-22 08:37:02','',NULL,'定时任务菜单'),(112,'服务监控',2,4,'server','monitor/server/index',1,0,'C','0','0','monitor:server:list','server','admin','2021-08-22 08:37:02','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index',1,0,'C','0','0','monitor:cache:list','redis','admin','2021-08-22 08:37:02','',NULL,'缓存监控菜单'),(116,'系统接口',2,3,'swagger','tool/swagger/index',1,0,'C','0','0','tool:swagger:list','swagger','admin','2021-08-22 08:37:02','admin','2022-11-09 08:41:41','系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index',1,0,'C','0','0','monitor:operlog:list','form','admin','2021-08-22 08:37:02','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2021-08-22 08:37:02','',NULL,'登录日志菜单'),(1001,'用户查询',100,1,'','',1,0,'F','0','0','system:user:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1002,'用户新增',100,2,'','',1,0,'F','0','0','system:user:add','#','admin','2021-08-22 08:37:02','',NULL,''),(1003,'用户修改',100,3,'','',1,0,'F','0','0','system:user:edit','#','admin','2021-08-22 08:37:02','',NULL,''),(1004,'用户删除',100,4,'','',1,0,'F','0','0','system:user:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1005,'用户导出',100,5,'','',1,0,'F','0','0','system:user:export','#','admin','2021-08-22 08:37:02','',NULL,''),(1006,'用户导入',100,6,'','',1,0,'F','0','0','system:user:import','#','admin','2021-08-22 08:37:02','',NULL,''),(1007,'重置密码',100,7,'','',1,0,'F','0','0','system:user:resetPwd','#','admin','2021-08-22 08:37:02','',NULL,''),(1008,'角色查询',101,1,'','',1,0,'F','0','0','system:role:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1009,'角色新增',101,2,'','',1,0,'F','0','0','system:role:add','#','admin','2021-08-22 08:37:02','',NULL,''),(1010,'角色修改',101,3,'','',1,0,'F','0','0','system:role:edit','#','admin','2021-08-22 08:37:02','',NULL,''),(1011,'角色删除',101,4,'','',1,0,'F','0','0','system:role:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1012,'角色导出',101,5,'','',1,0,'F','0','0','system:role:export','#','admin','2021-08-22 08:37:02','',NULL,''),(1013,'菜单查询',102,1,'','',1,0,'F','0','0','system:menu:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1014,'菜单新增',102,2,'','',1,0,'F','0','0','system:menu:add','#','admin','2021-08-22 08:37:02','',NULL,''),(1015,'菜单修改',102,3,'','',1,0,'F','0','0','system:menu:edit','#','admin','2021-08-22 08:37:02','',NULL,''),(1016,'菜单删除',102,4,'','',1,0,'F','0','0','system:menu:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1017,'部门查询',103,1,'','',1,0,'F','0','0','system:dept:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1018,'部门新增',103,2,'','',1,0,'F','0','0','system:dept:add','#','admin','2021-08-22 08:37:02','',NULL,''),(1019,'部门修改',103,3,'','',1,0,'F','0','0','system:dept:edit','#','admin','2021-08-22 08:37:02','',NULL,''),(1020,'部门删除',103,4,'','',1,0,'F','0','0','system:dept:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1021,'岗位查询',104,1,'','',1,0,'F','0','0','system:post:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1022,'岗位新增',104,2,'','',1,0,'F','0','0','system:post:add','#','admin','2021-08-22 08:37:02','',NULL,''),(1023,'岗位修改',104,3,'','',1,0,'F','0','0','system:post:edit','#','admin','2021-08-22 08:37:02','',NULL,''),(1024,'岗位删除',104,4,'','',1,0,'F','0','0','system:post:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1025,'岗位导出',104,5,'','',1,0,'F','0','0','system:post:export','#','admin','2021-08-22 08:37:02','',NULL,''),(1026,'字典查询',105,1,'#','',1,0,'F','0','0','system:dict:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1027,'字典新增',105,2,'#','',1,0,'F','0','0','system:dict:add','#','admin','2021-08-22 08:37:02','',NULL,''),(1028,'字典修改',105,3,'#','',1,0,'F','0','0','system:dict:edit','#','admin','2021-08-22 08:37:02','',NULL,''),(1029,'字典删除',105,4,'#','',1,0,'F','0','0','system:dict:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1030,'字典导出',105,5,'#','',1,0,'F','0','0','system:dict:export','#','admin','2021-08-22 08:37:02','',NULL,''),(1031,'参数查询',106,1,'#','',1,0,'F','0','0','system:config:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1032,'参数新增',106,2,'#','',1,0,'F','0','0','system:config:add','#','admin','2021-08-22 08:37:02','',NULL,''),(1033,'参数修改',106,3,'#','',1,0,'F','0','0','system:config:edit','#','admin','2021-08-22 08:37:02','',NULL,''),(1034,'参数删除',106,4,'#','',1,0,'F','0','0','system:config:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1035,'参数导出',106,5,'#','',1,0,'F','0','0','system:config:export','#','admin','2021-08-22 08:37:02','',NULL,''),(1040,'操作查询',500,1,'#','',1,0,'F','0','0','monitor:operlog:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1041,'操作删除',500,2,'#','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1042,'日志导出',500,4,'#','',1,0,'F','0','0','monitor:operlog:export','#','admin','2021-08-22 08:37:02','',NULL,''),(1043,'登录查询',501,1,'#','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1044,'登录删除',501,2,'#','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1045,'日志导出',501,3,'#','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2021-08-22 08:37:02','',NULL,''),(1046,'在线查询',109,1,'#','',1,0,'F','0','0','monitor:online:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1047,'批量强退',109,2,'#','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2021-08-22 08:37:02','',NULL,''),(1048,'单条强退',109,3,'#','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2021-08-22 08:37:02','',NULL,''),(1049,'任务查询',110,1,'#','',1,0,'F','0','0','monitor:job:query','#','admin','2021-08-22 08:37:02','',NULL,''),(1050,'任务新增',110,2,'#','',1,0,'F','0','0','monitor:job:add','#','admin','2021-08-22 08:37:02','',NULL,''),(1051,'任务修改',110,3,'#','',1,0,'F','0','0','monitor:job:edit','#','admin','2021-08-22 08:37:02','',NULL,''),(1052,'任务删除',110,4,'#','',1,0,'F','0','0','monitor:job:remove','#','admin','2021-08-22 08:37:02','',NULL,''),(1053,'状态修改',110,5,'#','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2021-08-22 08:37:02','',NULL,''),(1054,'任务导出',110,7,'#','',1,0,'F','0','0','monitor:job:export','#','admin','2021-08-22 08:37:02','',NULL,''),(2000,'业务管理',0,2,'manage',NULL,1,0,'M','0','0','','logininfor','admin','2021-08-30 06:38:25','admin','2022-11-09 08:43:47',''),(2001,'项目管理',2000,1,'project','system/project',1,0,'C','0','0','system:project:list','example','admin','2021-08-30 06:40:28','admin','2021-10-27 16:54:38',''),(2002,'工时管理',0,1,'workingHours',NULL,1,0,'M','0','0','','time','admin','2021-09-01 02:12:05','admin','2022-11-09 08:44:27',''),(2003,'我的工时',2002,1,'myWorkingHours','workingHours/myWorkingHours/index',1,0,'C','0','0','mh:hour:list','time-range','admin','2021-09-01 02:18:07','admin','2021-10-27 17:27:36',''),(2004,'我的统计',2002,2,'myStatistics','workingHours/myStatistics/index',1,0,'C','0','1','mh:hour:stat','server','admin','2021-09-01 02:22:00','admin','2021-10-27 16:44:31',''),(2005,'项目统计',2002,3,'projectManagement','workingHours/projectManagement/index',1,0,'C','0','0','system:project:stat:query','cascader','admin','2021-09-01 02:24:49','admin','2021-10-27 16:46:07',''),(2010,'项目设置',2000,5,'projectSettings','system/projectSettings/index',1,0,'C','1','0','','system','admin','2021-09-10 09:16:33','admin','2021-09-27 11:08:00',''),(2020,'我参加的项目',2003,1,'',NULL,1,0,'F','0','0','mh:project:user:all','#','admin','2021-10-27 16:43:07','',NULL,''),(2021,'提交工时',2003,1,'',NULL,1,0,'F','0','0','mh:hour:add','#','admin','2021-10-27 16:43:39','',NULL,''),(2022,'查看详情',2003,2,'',NULL,1,0,'F','0','0','mh:hour:detail','#','admin','2021-10-27 16:44:08','',NULL,''),(2024,'详细模式',2004,2,'',NULL,1,0,'F','0','0','mh:hour:stat:detail','#','admin','2021-10-27 16:45:36','',NULL,''),(2025,'上报记录',2005,1,'',NULL,1,0,'F','0','0','system:project:stat:fill:detail','#','admin','2021-10-27 16:46:35','',NULL,''),(2026,'工时明细',2005,2,'',NULL,1,0,'F','0','0','system:project:stat:query','#','admin','2021-10-27 16:47:03','',NULL,''),(2027,'项目详情',2005,3,'',NULL,1,0,'F','0','0','system:project:query','#','admin','2021-10-27 16:48:33','admin','2021-10-27 16:49:02',''),(2028,'项目概要',2027,1,'',NULL,1,0,'F','0','0','system:project:query','#','admin','2021-10-27 16:49:34','',NULL,''),(2029,'人员管理',2027,2,'',NULL,1,0,'F','0','0','mh:project:user:list','#','admin','2021-10-27 16:50:17','',NULL,''),(2030,'工时设置',2027,3,'',NULL,1,0,'F','0','0','system:project:hour:edit','#','admin','2021-10-27 16:50:47','admin','2021-10-28 11:59:49',''),(2031,'项目管理',2027,4,'',NULL,1,0,'F','0','0','system:project:status:edit','#','admin','2021-10-27 16:51:18','',NULL,''),(2032,'编辑',2028,1,'',NULL,1,0,'F','0','0','system:project:edit','#','admin','2021-10-27 16:52:20','',NULL,''),(2033,'添加项目成员',2029,1,'',NULL,1,0,'F','0','0','mh:project:user:add','#','admin','2021-10-27 16:52:51','',NULL,''),(2034,'移除项目人员',2029,2,'',NULL,1,0,'F','0','0','mh:project:user:remove','#','admin','2021-10-27 16:53:24','',NULL,''),(2036,'创建项目',2001,0,'',NULL,1,0,'F','0','0','system:project:add','#','admin','2021-10-27 16:55:14','',NULL,''),(2037,'项目设置',2001,1,'',NULL,1,0,'F','0','0','system:project:query','#','admin','2021-10-27 17:02:40','',NULL,''),(2038,'归档',2001,2,'',NULL,1,0,'F','0','0','system:project:status:edit','#','admin','2021-10-27 17:03:13','',NULL,''),(2039,'删除',2001,3,'',NULL,1,0,'F','0','0','system:project:remove','#','admin','2021-10-27 17:03:38','',NULL,''),(2040,'项目概要',2037,1,'',NULL,1,0,'F','0','0','system:project:query','#','admin','2021-10-27 17:04:18','',NULL,''),(2041,'人员管理',2037,2,'',NULL,1,0,'F','0','0','mh:project:user:list','#','admin','2021-10-27 17:04:51','',NULL,''),(2042,'工时设置',2037,3,'',NULL,1,0,'F','0','0','system:project:hour:edit','#','admin','2021-10-27 17:05:15','admin','2021-10-28 12:00:21',''),(2043,'项目管理',2037,4,'',NULL,1,0,'F','0','0','system:project:status:edit','#','admin','2021-10-27 17:05:45','',NULL,''),(2044,'编辑',2040,1,'',NULL,1,0,'F','0','0','system:project:edit','#','admin','2021-10-27 17:06:13','',NULL,''),(2045,'添加项目成员',2041,1,'',NULL,1,0,'F','0','0','mh:project:user:add','#','admin','2021-10-27 17:06:52','',NULL,''),(2046,'移除项目成员',2041,2,'',NULL,1,0,'F','0','0','mh:project:user:remove','#','admin','2021-10-27 17:07:20','',NULL,''),(2057,'首页',0,0,'index',NULL,1,0,'M','0','0','','dashboard','admin','2021-11-04 14:43:55','admin','2021-11-04 15:06:45',''),(2058,'首页',2057,0,'/','index',1,0,'C','0','0','','dashboard','admin','2021-11-04 14:44:54','admin','2021-11-04 15:07:02',''),(2059,'总体统计',2002,4,'overallStatistics','workingHours/overallStatistics',1,0,'C','0','0','system:project:overall:detail','server','admin','2021-11-10 11:44:27','admin','2021-11-11 13:43:59',''),(2060,'应用设置',2000,6,'appsSett','manage/appsSett',1,0,'C','0','0','system:app:config:edit','online','admin','2021-11-03 11:54:49','admin','2021-11-03 14:11:47',''),(2061,'系统设置',2000,7,'setEditor','manage/setEditor',1,0,'C','0','0','system:info:config:edit','system','admin','2021-11-03 11:55:46','admin','2021-11-03 14:24:33',''),(2062,'成本设置',2000,8,'costOf','manage/costOf',1,0,'C','0','0','mh:cost:set','form','admin','2021-11-04 13:43:30','admin','2021-11-11 11:24:28',''),(2063,'成本统计',2005,3,'',NULL,1,0,'F','0','0','mh:cost:query','#','admin','2021-11-11 11:49:21','',NULL,''),(2064,'填报记录',2003,3,'',NULL,1,0,'F','0','0','mh:hour:stat','#','admin','2022-11-09 08:00:38','',NULL,''),(2069,'项目日报',2002,2,'projectDai','workingHours/projectDai',1,0,'C','0','0','system:project:daily','date','LSM-admin','2021-12-14 14:38:36','admin','2021-12-15 16:50:09',''),(2072,'工时审批',2003,4,'',NULL,1,0,'F','0','0','mh:hour:approve','#','admin','2023-03-25 05:15:54','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=638 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (610,'用户管理',1,'com.oaker.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$XXsSN7TlNvXPnMvlowoJjeRiQEmGA4jOE9xza0auFRbS8MhfC6n82\",\"postIds\":[13],\"nickName\":\"andy\",\"deptId\":202,\"params\":{},\"userName\":\"andy\",\"userId\":127,\"createBy\":\"admin\",\"roleIds\":[110],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-24 10:02:28'),(611,'项目',1,'com.oaker.web.controller.hour.ProjectController.create()','POST',1,'admin',NULL,'/system/project/create','127.0.0.1','内网IP','{\"duration\":640,\"projectManager\":127,\"projectCode\":\"0001\",\"remark\":\"\",\"projectName\":\"test\",\"startDate\":\"2023-03-24\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-24 10:03:47'),(612,'项目人员管理',1,'com.oaker.web.controller.hour.ProjectUserController.save()','POST',1,'admin',NULL,'/system/project/user/create','127.0.0.1','内网IP','{\"projectId\":37,\"users\":[127]}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-24 10:05:35'),(613,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"projectId\":37}]}','null',1,'','2023-03-24 10:15:19'),(614,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"daily\":\"12133\",\"projectId\":37}]}','null',1,'','2023-03-24 10:15:34'),(615,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"daily\":\"11\",\"projectId\":37}]}','null',1,'','2023-03-24 10:16:41'),(616,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"daily\":\"12\",\"projectId\":37}]}','null',1,'','2023-03-24 10:17:02'),(617,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"daily\":\"1111\",\"projectId\":37}]}','null',1,'','2023-03-24 10:23:20'),(618,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"daily\":\"123\",\"projectId\":37}]}','null',1,'','2023-03-24 10:23:26'),(619,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"daily\":\"1\",\"projectId\":37}]}','null',1,'','2023-03-24 10:23:58'),(620,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"daily\":\"1\",\"projectId\":37}]}','null',1,'','2023-03-24 10:29:36'),(621,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"daily\":\"123\",\"projectId\":37}]}','null',1,'','2023-03-24 10:30:35'),(622,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"hour\":1.5,\"daily\":\"111\",\"projectId\":37}]}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-24 10:32:52'),(623,'用户管理',1,'com.oaker.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$2cmQvrNVeGQbNK9CFWaopuW3DP5zR7cvPG.7/f41jQq9gM9SuoSn6\",\"postIds\":[13],\"nickName\":\"andy2\",\"deptId\":202,\"params\":{},\"userName\":\"andy2\",\"userId\":128,\"createBy\":\"admin\",\"roleIds\":[110],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-24 10:51:00'),(624,'项目人员管理',1,'com.oaker.web.controller.hour.ProjectUserController.save()','POST',1,'admin',NULL,'/system/project/user/create','127.0.0.1','内网IP','{\"projectId\":37,\"users\":[128]}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-24 10:51:18'),(625,'项目',1,'com.oaker.web.controller.hour.ProjectController.create()','POST',1,'admin',NULL,'/system/project/create','127.0.0.1','内网IP','{\"duration\":640,\"projectManager\":127,\"projectCode\":\"0002\",\"remark\":\"\",\"projectName\":\"test2\",\"startDate\":\"2023-03-24\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-24 10:59:13'),(626,'项目人员管理',1,'com.oaker.web.controller.hour.ProjectUserController.save()','POST',1,'admin',NULL,'/system/project/user/create','127.0.0.1','内网IP','{\"projectId\":38,\"users\":[127]}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-24 10:59:26'),(627,'项目人员管理',1,'com.oaker.web.controller.hour.ProjectUserController.save()','POST',1,'admin',NULL,'/system/project/user/create','127.0.0.1','内网IP','{\"projectId\":38,\"users\":[128]}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-24 11:00:26'),(628,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy2',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-24\",\"projectHours\":[{\"hour\":2,\"daily\":\"12123\",\"projectId\":37},{\"hour\":3,\"daily\":\"123123\",\"projectId\":37}]}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 00:19:22'),(629,'用户工时',1,'com.oaker.web.controller.hour.MhUserHourController.create()','POST',1,'andy',NULL,'/mh/hour/create','127.0.0.1','内网IP','{\"date\":\"2023-03-25\",\"projectHours\":[{\"hour\":1.5,\"daily\":\"123\",\"projectId\":37},{\"hour\":2,\"daily\":\"123\",\"projectId\":38},{\"hour\":2,\"daily\":\"22\",\"projectId\":37}]}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 00:23:14'),(630,'角色管理',2,'com.oaker.web.controller.system.SysRoleController.dataScope()','PUT',1,'admin',NULL,'/system/role/dataScope','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":108,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":1667953818000,\"menuCheckStrictly\":true,\"roleKey\":\"pm\",\"roleName\":\"项目经理\",\"deptIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 02:07:09'),(631,'菜单管理',1,'com.oaker.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"5\",\"menuName\":\"工时审批\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"/workingHours/workingCheck\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 02:19:53'),(632,'菜单管理',2,'com.oaker.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"5\",\"menuName\":\"工时审批\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"/workingHours/workingCheck\",\"component\":\"/workingHours/workingCheck\",\"children\":[],\"createTime\":1679681993000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2071,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 02:20:04'),(633,'菜单管理',2,'com.oaker.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"5\",\"menuName\":\"工时审批\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"workingCheck\",\"component\":\"/workingHours/workingCheck\",\"children\":[],\"createTime\":1679681993000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2071,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 02:20:19'),(634,'菜单管理',2,'com.oaker.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"5\",\"menuName\":\"工时审批\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"workingCheck\",\"component\":\"/workingHours/workingCheck\",\"children\":[],\"createTime\":1679681993000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2071,\"menuType\":\"C\",\"perms\":\"mh:hour:approve\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 02:20:44'),(635,'菜单管理',3,'com.oaker.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/2071','127.0.0.1','内网IP','{menuId=2071}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 02:41:27'),(636,'菜单管理',1,'com.oaker.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"orderNum\":\"4\",\"menuName\":\"工时审批\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"mh:hour:approve\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 05:15:54'),(637,'角色管理',2,'com.oaker.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"flag\":false,\"roleId\":110,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":true,\"createTime\":1667953868000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"de\",\"roleName\":\"开发工程师\",\"menuIds\":[2002,2057,2058,2003,2020,2021,2022,2064,2072,2004,2024,2069],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-03-25 05:19:48');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'system','系统管理员',1,'0','admin','2021-08-22 08:37:02','',NULL,''),(13,'p1','初级工程师',0,'0','admin','2022-11-09 08:31:28','admin','2022-11-09 08:33:02',NULL),(14,'p2','中级工程师',0,'0','admin','2022-11-09 08:32:32','admin','2022-11-09 08:33:14',NULL),(15,'p3','高级工程师',0,'0','admin','2022-11-09 08:32:38','admin','2022-11-09 08:33:21',NULL),(16,'m1','中级管理',0,'0','admin','2022-11-09 08:33:39','',NULL,NULL),(17,'m2','高级管理',0,'0','admin','2022-11-09 08:33:47','',NULL,NULL),(18,'m3','公司高层',0,'0','admin','2022-11-09 08:33:56','',NULL,NULL);
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_project`
--

DROP TABLE IF EXISTS `sys_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_project` (
  `project_id` bigint NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `project_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称',
  `project_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目编码',
  `project_manager` bigint NOT NULL COMMENT '项目经理id',
  `enable` tinyint NOT NULL DEFAULT '1' COMMENT '1 启用  0 暂停',
  `project_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'a' COMMENT '项目状态：a 进行中，b运维，c 归档',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除：0未删除  1 已删除',
  `start_date` date NOT NULL COMMENT '开始日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目简介',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(54) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_project`
--

LOCK TABLES `sys_project` WRITE;
/*!40000 ALTER TABLE `sys_project` DISABLE KEYS */;
INSERT INTO `sys_project` VALUES (37,'test','0001',127,1,'a',0,'2023-03-24',NULL,'','admin','2023-03-24 22:03:48',NULL,NULL),(38,'test2','0002',127,1,'a',0,'2023-03-24',NULL,'','admin','2023-03-24 22:59:14',NULL,NULL);
/*!40000 ALTER TABLE `sys_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_project_user`
--

DROP TABLE IF EXISTS `sys_project_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_project_user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `project_id` bigint NOT NULL COMMENT '项目id',
  `user_id` bigint NOT NULL COMMENT '人员id',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '状态：1 正常  0 移除',
  `remove_time` datetime DEFAULT NULL COMMENT '移除日期',
  `everyday` tinyint NOT NULL DEFAULT '1' COMMENT '是否需要每日上报工时 0 不需要  1 需要',
  `create_user` bigint NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` bigint DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `join_with_project` tinyint DEFAULT NULL COMMENT '加入时间同项目开始时间，1:是,0:否',
  `join_time` datetime DEFAULT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `pri_pro_user` (`project_id`,`user_id`) USING BTREE COMMENT '项目id和用户id索引'
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目用户关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_project_user`
--

LOCK TABLES `sys_project_user` WRITE;
/*!40000 ALTER TABLE `sys_project_user` DISABLE KEYS */;
INSERT INTO `sys_project_user` VALUES (50,37,127,1,NULL,1,1,'2023-03-24 22:05:36',NULL,NULL,0,'2023-03-24 22:05:36'),(51,37,128,1,NULL,1,1,'2023-03-24 22:51:19',NULL,NULL,0,'2023-03-24 22:51:19'),(52,38,127,1,NULL,1,1,'2023-03-24 22:59:27',NULL,NULL,0,'2023-03-24 22:59:27'),(53,38,128,1,NULL,1,1,'2023-03-24 23:00:27',NULL,NULL,0,'2023-03-24 23:00:27');
/*!40000 ALTER TABLE `sys_project_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2021-08-22 08:37:02','',NULL,'超级管理员'),(108,'项目经理','pm',0,'1',1,1,'0','0','admin','2022-11-09 08:30:18','','2023-03-25 02:07:09',NULL),(109,'产品经理','pmd',0,'1',1,1,'0','0','admin','2022-11-09 08:30:37','',NULL,NULL),(110,'开发工程师','de',0,'1',1,1,'0','0','admin','2022-11-09 08:31:08','admin','2023-03-25 05:19:48',NULL),(111,'项目总监','pd',0,'1',1,1,'0','0','admin','2022-11-09 08:32:16','',NULL,NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (108,2002),(108,2003),(108,2004),(108,2005),(108,2020),(108,2021),(108,2022),(108,2024),(108,2025),(108,2026),(108,2027),(108,2028),(108,2029),(108,2030),(108,2031),(108,2032),(108,2033),(108,2034),(108,2057),(108,2058),(108,2063),(108,2064),(108,2069),(109,2002),(109,2003),(109,2004),(109,2020),(109,2021),(109,2022),(109,2024),(109,2057),(109,2058),(109,2064),(109,2069),(110,2002),(110,2003),(110,2004),(110,2020),(110,2021),(110,2022),(110,2024),(110,2057),(110,2058),(110,2064),(110,2069),(110,2072),(111,1),(111,100),(111,101),(111,103),(111,104),(111,1001),(111,1002),(111,1003),(111,1004),(111,1005),(111,1006),(111,1007),(111,1008),(111,1009),(111,1010),(111,1011),(111,1012),(111,1017),(111,1018),(111,1019),(111,1020),(111,1021),(111,1022),(111,1023),(111,1024),(111,1025),(111,2000),(111,2001),(111,2002),(111,2003),(111,2004),(111,2005),(111,2010),(111,2020),(111,2021),(111,2022),(111,2024),(111,2025),(111,2026),(111,2027),(111,2028),(111,2029),(111,2030),(111,2031),(111,2032),(111,2033),(111,2034),(111,2036),(111,2037),(111,2038),(111,2039),(111,2040),(111,2041),(111,2042),(111,2043),(111,2044),(111,2045),(111,2046),(111,2057),(111,2058),(111,2059),(111,2060),(111,2061),(111,2062),(111,2063),(111,2064),(111,2069);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称/姓名',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','系统管理员','01','123456@123.com','18888888888','1','/profile/avatar/2022/11/09/7ce0be0f-4d94-437a-bfe8-8c187789cea7.jpeg','$2a$10$G7MIGBZKPDSD.zGpDPRiJeV3HuOXxk4qEVdQAaZ8pmHHaVRoiDIom','0','0','127.0.0.1','2023-03-25 18:22:26','admin','2021-08-22 08:37:02','','2023-03-25 05:29:38','管理员'),(127,202,'andy','andy','00','','','0','','$2a$10$XXsSN7TlNvXPnMvlowoJjeRiQEmGA4jOE9xza0auFRbS8MhfC6n82','0','0','127.0.0.1','2023-03-25 18:24:37','admin','2023-03-24 10:02:28','','2023-03-25 05:32:00',NULL),(128,202,'andy2','andy2','00','','','0','','$2a$10$2cmQvrNVeGQbNK9CFWaopuW3DP5zR7cvPG.7/f41jQq9gM9SuoSn6','0','0','127.0.0.1','2023-03-25 18:13:38','admin','2023-03-24 10:51:00','','2023-03-25 05:20:06',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(127,13),(128,13);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(127,110),(128,110);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wuyu'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-27  8:32:01
