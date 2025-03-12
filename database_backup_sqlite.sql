-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)

--

-- Host: localhost    Database: mindcare

-- ------------------------------------------------------

-- Server version	8.0.39

























--

-- Table structure for table "auth_group"

--



DROP TABLE IF EXISTS auth_group;





CREATE TABLE "auth_group" (

  "id" int NOT NULL AUTOINCREMENT,

  "name" varchar(150) NOT NULL,

  PRIMARY KEY ("id"),

  UNIQUE KEY "name" ("name")

) ;





--

-- Dumping data for table "auth_group"

--



LOCK TABLES "auth_group" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "auth_group_permissions"

--



DROP TABLE IF EXISTS auth_group_permissions;





CREATE TABLE "auth_group_permissions" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "group_id" int NOT NULL,

  "permission_id" int NOT NULL,

  PRIMARY KEY ("id"),

  UNIQUE KEY "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ("group_id","permission_id"),

  KEY "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" ("permission_id"),

  CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id"),

  CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id")

) ;





--

-- Dumping data for table "auth_group_permissions"

--



LOCK TABLES "auth_group_permissions" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "auth_permission"

--



DROP TABLE IF EXISTS auth_permission;





CREATE TABLE "auth_permission" (

  "id" int NOT NULL AUTOINCREMENT,

  "name" varchar(255) NOT NULL,

  "content_type_id" int NOT NULL,

  "codename" varchar(100) NOT NULL,

  PRIMARY KEY ("id"),

  UNIQUE KEY "auth_permission_content_type_id_codename_01ab375a_uniq" ("content_type_id","codename"),

  CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id")

) ;





--

-- Dumping data for table "auth_permission"

--



LOCK TABLES "auth_permission" WRITE;



INSERT INTO "auth_permission" VALUES (1,'Can add profile',1,'add_profile'),(2,'Can change profile',1,'change_profile'),(3,'Can delete profile',1,'delete_profile'),(4,'Can view profile',1,'view_profile'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add conversation',8,'add_conversation'),(30,'Can change conversation',8,'change_conversation'),(31,'Can delete conversation',8,'delete_conversation'),(32,'Can view conversation',8,'view_conversation'),(33,'Can add chat',9,'add_chat'),(34,'Can change chat',9,'change_chat'),(35,'Can delete chat',9,'delete_chat'),(36,'Can view chat',9,'view_chat'),(37,'Can add question',10,'add_question'),(38,'Can change question',10,'change_question'),(39,'Can delete question',10,'delete_question'),(40,'Can view question',10,'view_question'),(41,'Can add diagnosis',11,'add_diagnosis'),(42,'Can change diagnosis',11,'change_diagnosis'),(43,'Can delete diagnosis',11,'delete_diagnosis'),(44,'Can view diagnosis',11,'view_diagnosis'),(45,'Can add option',12,'add_option'),(46,'Can change option',12,'change_option'),(47,'Can delete option',12,'delete_option'),(48,'Can view option',12,'view_option'),(49,'Can add user response',13,'add_userresponse'),(50,'Can change user response',13,'change_userresponse'),(51,'Can delete user response',13,'delete_userresponse'),(52,'Can view user response',13,'view_userresponse'),(53,'Can add book',14,'add_book'),(54,'Can change book',14,'change_book'),(55,'Can delete book',14,'delete_book'),(56,'Can view book',14,'view_book'),(57,'Can add breathing exercise',15,'add_breathingexercise'),(58,'Can change breathing exercise',15,'change_breathingexercise'),(59,'Can delete breathing exercise',15,'delete_breathingexercise'),(60,'Can view breathing exercise',15,'view_breathingexercise'),(61,'Can add movie',16,'add_movie'),(62,'Can change movie',16,'change_movie'),(63,'Can delete movie',16,'delete_movie'),(64,'Can view movie',16,'view_movie'),(65,'Can add music',17,'add_music'),(66,'Can change music',17,'change_music'),(67,'Can delete music',17,'delete_music'),(68,'Can view music',17,'view_music'),(69,'Can add podcast',18,'add_podcast'),(70,'Can change podcast',18,'change_podcast'),(71,'Can delete podcast',18,'delete_podcast'),(72,'Can view podcast',18,'view_podcast'),(73,'Can add workout',19,'add_workout'),(74,'Can change workout',19,'change_workout'),(75,'Can delete workout',19,'delete_workout'),(76,'Can view workout',19,'view_workout'),(77,'Can add yoga',20,'add_yoga'),(78,'Can change yoga',20,'change_yoga'),(79,'Can delete yoga',20,'delete_yoga'),(80,'Can view yoga',20,'view_yoga');



UNLOCK TABLES;



--

-- Table structure for table "auth_user"

--



DROP TABLE IF EXISTS auth_user;





CREATE TABLE "auth_user" (

  "id" int NOT NULL AUTOINCREMENT,

  "password" varchar(128) NOT NULL,

  "last_login" datetime(6) DEFAULT NULL,

  "is_superuser" tinyint(1) NOT NULL,

  "username" varchar(150) NOT NULL,

  "first_name" varchar(150) NOT NULL,

  "last_name" varchar(150) NOT NULL,

  "email" varchar(254) NOT NULL,

  "is_staff" tinyint(1) NOT NULL,

  "is_active" tinyint(1) NOT NULL,

  "date_joined" datetime(6) NOT NULL,

  PRIMARY KEY ("id"),

  UNIQUE KEY "username" ("username")

) ;





--

-- Dumping data for table "auth_user"

--



LOCK TABLES "auth_user" WRITE;



INSERT INTO "auth_user" VALUES (1,'pbkdf2_sha256$870000$G296JhoOldGhDnOC9xnAVV$8DHCxCvObZeVapifkpZ/vOE0HgyTn7iHtbQZvtu2v3U=','2024-11-17 02:14:30.719821',0,'chandu','Sai Chandu','Yarrapothu','yarrapothusaichandu@gmail.com',1,1,'2024-09-23 09:49:28.474119'),(2,'pbkdf2_sha256$870000$1aqsviwdJWLREripmUAZoO$dqjvzWreGmUSea6IEsd/NmXAljYGR68ve5CCwMuwHm0=','2024-11-02 08:19:02.394668',0,'lakshmi','Lakshmi','Kolli','kollilakshmi@gmail.com',0,1,'2024-09-23 09:52:52.379871'),(3,'pbkdf2_sha256$870000$4KLwrHi7UUcdY8zmMVUw9Z$JdLc4uEmuYO1+BVN5GZhMgCX0p+knZqetrhZwsCUkDY=','2024-11-02 08:33:09.549528',0,'Vamshi_Adduri','Vamshi Vardhan','Adduri','vardhanadduri16@gmail.com',0,1,'2024-11-02 08:05:58.008379'),(4,'pbkdf2_sha256$870000$ybiqIBR0mImyt2tIteiIaJ$DSoDET7RHyX/ktcweaMK6fYiUTbtnwcLbTAMRLqXD2I=','2024-11-17 02:30:40.891634',1,'admin','','','admin@gmail.com',1,1,'2024-11-02 15:38:17.150381'),(5,'pbkdf2_sha256$870000$hmqKMqPhpChM1uow71gQ7w$JmgHYNtIJ6C9XdXraTvoj/PiRWg68hxwXRakgqQC9pc=','2024-11-12 16:32:59.239824',0,'Henna','Henna Yasmine','Shaik ','hennayasmineshaik@gmail.com',0,1,'2024-11-12 16:32:52.371315');



UNLOCK TABLES;



--

-- Table structure for table "auth_user_groups"

--



DROP TABLE IF EXISTS auth_user_groups;





CREATE TABLE "auth_user_groups" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "user_id" int NOT NULL,

  "group_id" int NOT NULL,

  PRIMARY KEY ("id"),

  UNIQUE KEY "auth_user_groups_user_id_group_id_94350c0c_uniq" ("user_id","group_id"),

  KEY "auth_user_groups_group_id_97559544_fk_auth_group_id" ("group_id"),

  CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id"),

  CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")

) ;





--

-- Dumping data for table "auth_user_groups"

--



LOCK TABLES "auth_user_groups" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "auth_user_user_permissions"

--



DROP TABLE IF EXISTS auth_user_user_permissions;





CREATE TABLE "auth_user_user_permissions" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "user_id" int NOT NULL,

  "permission_id" int NOT NULL,

  PRIMARY KEY ("id"),

  UNIQUE KEY "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ("user_id","permission_id"),

  KEY "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" ("permission_id"),

  CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id"),

  CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")

) ;





--

-- Dumping data for table "auth_user_user_permissions"

--



LOCK TABLES "auth_user_user_permissions" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "django_admin_log"

--



DROP TABLE IF EXISTS django_admin_log;





CREATE TABLE "django_admin_log" (

  "id" int NOT NULL AUTOINCREMENT,

  "action_time" datetime(6) NOT NULL,

  "object_id" longtext,

  "object_repr" varchar(200) NOT NULL,

  "action_flag" smallint unsigned NOT NULL,

  "change_message" longtext NOT NULL,

  "content_type_id" int DEFAULT NULL,

  "user_id" int NOT NULL,

  PRIMARY KEY ("id"),

  KEY "django_admin_log_content_type_id_c4bce8eb_fk_django_co" ("content_type_id"),

  KEY "django_admin_log_user_id_c564eba6_fk_auth_user_id" ("user_id"),

  CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id"),

  CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),

  CONSTRAINT "django_admin_log_chk_1" CHECK (("action_flag" >= 0))

) ;





--

-- Dumping data for table "django_admin_log"

--



LOCK TABLES "django_admin_log" WRITE;



INSERT INTO "django_admin_log" VALUES (1,'2024-11-02 15:40:05.365007','32','Stage 1 - How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned?',1,'[{\"added\": {}}]',10,4),(2,'2024-11-02 15:40:15.730589','33','Stage 1 - When you feel anxious, how intense are the physical symptoms (e.g., racing heart, sweating, shaking)?',1,'[{\"added\": {}}]',10,4),(3,'2024-11-02 15:40:26.366971','34','Stage 1 - How much does your anxiety interfere with your daily life, such as work, school, or social interactions?',1,'[{\"added\": {}}]',10,4),(4,'2024-11-02 15:40:42.001394','35','Stage 1 - Do you avoid certain situations, places, or activities because of anxiety? If yes, how often?',1,'[{\"added\": {}}]',10,4),(5,'2024-11-02 15:40:45.169734','36','Stage 1 - Over the past few weeks, how often have you felt overwhelmed by sadness or hopelessness?',1,'[{\"added\": {}}]',10,4),(6,'2024-11-02 15:43:01.836733','36','Stage 1 - Over the past few weeks, how often have you felt overwhelmed by sadness or hopelessness?',3,'',10,4),(7,'2024-11-02 15:43:01.836733','35','Stage 1 - Do you avoid certain situations, places, or activities because of anxiety? If yes, how often?',3,'',10,4),(8,'2024-11-02 15:43:01.836733','34','Stage 1 - How much does your anxiety interfere with your daily life, such as work, school, or social interactions?',3,'',10,4),(9,'2024-11-02 15:43:01.836733','33','Stage 1 - When you feel anxious, how intense are the physical symptoms (e.g., racing heart, sweating, shaking)?',3,'',10,4),(10,'2024-11-02 15:43:01.836733','32','Stage 1 - How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned?',3,'',10,4),(11,'2024-11-02 15:49:54.861863','37','Stage 2 - How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned?',1,'[{\"added\": {}}]',10,4),(12,'2024-11-02 15:51:07.730411','18','none',1,'[{\"added\": {}}]',11,4),(13,'2024-11-02 15:51:25.524816','74','How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned? - Rarely',1,'[{\"added\": {}}]',12,4),(14,'2024-11-02 15:52:06.624376','19','Mild anxiety',1,'[{\"added\": {}}]',11,4),(15,'2024-11-02 15:52:10.318569','75','How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned? - Occasionally',1,'[{\"added\": {}}]',12,4),(16,'2024-11-02 16:13:20.966889','75','How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned? - Occasionally',3,'',12,4),(17,'2024-11-02 16:13:20.969431','74','How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned? - Rarely',3,'',12,4),(18,'2024-11-03 11:25:07.012647','37','Stage 2 - How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned?',3,'',10,4),(19,'2024-11-12 06:52:25.776806','19','Mild anxiety',3,'',11,4),(20,'2024-11-12 06:52:25.776806','18','none',3,'',11,4),(21,'2024-11-12 06:52:25.776806','17','Good',3,'',11,4),(22,'2024-11-12 06:52:25.776806','16','Substance Use Disorders',3,'',11,4),(23,'2024-11-12 06:52:25.776806','15','Self-Harm Behavior',3,'',11,4),(24,'2024-11-12 06:52:25.776806','14','Impulse Control Disorders',3,'',11,4),(25,'2024-11-12 06:52:25.776806','13','Sleep-Wake Disorders',3,'',11,4),(26,'2024-11-12 06:52:25.776806','12','Somatic Symptom Disorders',3,'',11,4),(27,'2024-11-12 06:52:25.776806','11','Psychotic Disorders',3,'',11,4),(28,'2024-11-12 06:52:25.776806','10','Neurodevelopmental Disorders',3,'',11,4),(29,'2024-11-12 06:52:25.776806','9','Eating Disorders',3,'',11,4),(30,'2024-11-12 06:52:25.776806','8','Neurocognitive Disorders',3,'',11,4),(31,'2024-11-12 06:52:25.776806','7','Personality Disorders',3,'',11,4),(32,'2024-11-12 06:52:25.776806','6','Dissociative Disorders',3,'',11,4),(33,'2024-11-12 06:52:25.776806','5','Trauma- and Stressor-Related Disorders',3,'',11,4),(34,'2024-11-12 06:52:25.776806','4','Obsessive-Compulsive Disorder (OCD)',3,'',11,4),(35,'2024-11-12 06:52:25.776806','3','Depression',3,'',11,4),(36,'2024-11-12 06:52:25.776806','2','Mood Disorders',3,'',11,4),(37,'2024-11-12 06:52:25.776806','1','Anxiety Disorders',3,'',11,4),(38,'2024-11-12 06:52:50.165874','107','Have you noticed any changes in your ability to think clearly or reason? - Almost always, I feel completely out of touch with reality (Strong confirmation)',3,'',12,4),(39,'2024-11-12 06:52:50.165874','106','Have you noticed any changes in your ability to think clearly or reason? - Frequently, my thoughts are confused or disorganized (Moderate)',3,'',12,4),(40,'2024-11-12 06:52:50.165874','105','Have you noticed any changes in your ability to think clearly or reason? - I may have occasional lapses (Mild symptoms)',3,'',12,4),(41,'2024-11-12 06:52:50.165874','104','Have you noticed any changes in your ability to think clearly or reason? - I have clear and coherent thoughts (No problem)',3,'',12,4),(42,'2024-11-12 06:52:50.165874','103','How do you feel about your ability to perform daily tasks or responsibilities? - Almost always, I cannot perform cognitive tasks well (Strong confirmation)',3,'',12,4),(43,'2024-11-12 06:52:50.165874','102','How do you feel about your ability to perform daily tasks or responsibilities? - Frequently, I struggle with cognitive tasks (Moderate)',3,'',12,4),(44,'2024-11-12 06:52:50.165874','101','How do you feel about your ability to perform daily tasks or responsibilities? - Sometimes, but I have minor forgetfulness (Mild symptoms)',3,'',12,4),(45,'2024-11-12 06:52:50.165874','100','How do you feel about your ability to perform daily tasks or responsibilities? - Never, my cognitive functions are sharp (No problem)',3,'',12,4),(46,'2024-11-12 06:52:50.165874','99','Do you find it difficult to follow conversations or comprehend information? - Almost always, I can뿯ν뿯½뿯½t perform daily activities without assistance (Strong confirmation)',3,'',12,4),(47,'2024-11-12 06:52:50.165874','98','Do you find it difficult to follow conversations or comprehend information? - Frequently, I need help with everyday tasks (Moderate)',3,'',12,4),(48,'2024-11-12 06:52:50.165874','97','Do you find it difficult to follow conversations or comprehend information? - Sometimes, but I need reminders occasionally (Mild symptoms)',3,'',12,4),(49,'2024-11-12 06:52:50.165874','96','Do you find it difficult to follow conversations or comprehend information? - No, I manage my daily tasks well (No problem)',3,'',12,4),(50,'2024-11-12 06:52:50.165874','95','How often do you struggle to remember recent events or conversations? - Almost always, I can뿯ν뿯½뿯½t remember significant details from my daily life (confirmation)',3,'',12,4),(51,'2024-11-12 06:52:50.165874','94','How often do you struggle to remember recent events or conversations? - Frequently, I have trouble recalling recent events (Moderate)',3,'',12,4),(52,'2024-11-12 06:52:50.165874','93','How often do you struggle to remember recent events or conversations? - Occasionally, but it뿯ν뿯½뿯½s minor (Mild symptoms)',3,'',12,4),(53,'2024-11-12 06:52:50.165874','92','How often do you struggle to remember recent events or conversations? - Never',3,'',12,4),(54,'2024-11-12 06:52:50.165874','91','Do you avoid certain situations, places, or activities because of anxiety? If yes, how often? - Almost always, I avoid many situations (Strong confirmation of Anxiety Disorder)',3,'',12,4),(55,'2024-11-12 06:52:50.165874','90','Do you avoid certain situations, places, or activities because of anxiety? If yes, how often? - Frequently, I avoid several situations (Moderate Anxiety Disorder likely)',3,'',12,4),(56,'2024-11-12 06:52:50.165874','89','Do you avoid certain situations, places, or activities because of anxiety? If yes, how often? - Sometimes, but not often (Mild Anxiety Disorder may be present)',3,'',12,4),(57,'2024-11-12 06:52:50.165874','88','Do you avoid certain situations, places, or activities because of anxiety? If yes, how often? - Never',3,'',12,4),(58,'2024-11-12 06:52:50.165874','87','How much does your anxiety interfere with your daily life, such as work, school, or social interactions? - A lot, it prevents me from doing things I need or want to do (Strong Confirmation of Anxiety ',3,'',12,4),(59,'2024-11-12 06:52:50.165874','86','How much does your anxiety interfere with your daily life, such as work, school, or social interactions? - Quite a bit, it뿯ν뿯½뿯½s hard to cope sometimes (Confirm)',3,'',12,4),(60,'2024-11-12 06:52:50.165874','85','How much does your anxiety interfere with your daily life, such as work, school, or social interactions? - A little, but I can still manage (Mild Anxiety may be present)',3,'',12,4),(61,'2024-11-12 06:52:50.165874','84','How much does your anxiety interfere with your daily life, such as work, school, or social interactions? - Not at all',3,'',12,4),(62,'2024-11-12 06:52:50.165874','83','When you feel anxious, how intense are the physical symptoms (e.g., racing heart, sweating, shaking)? - Extreme, they뿯ν뿯½뿯½re overwhelming and hard to control (Strong confirmation)',3,'',12,4),(63,'2024-11-12 06:52:50.165874','82','When you feel anxious, how intense are the physical symptoms (e.g., racing heart, sweating, shaking)? - Severe, they interfere with my ability to function (Confirm)',3,'',12,4),(64,'2024-11-12 06:52:50.165874','81','When you feel anxious, how intense are the physical symptoms (e.g., racing heart, sweating, shaking)? - Moderate, they뿯ν뿯½뿯½re uncomfortable but manageable (Mild to Moderate Anxiety)',3,'',12,4),(65,'2024-11-12 06:52:50.165874','80','When you feel anxious, how intense are the physical symptoms (e.g., racing heart, sweating, shaking)? - Mild, I barely notice them',3,'',12,4),(66,'2024-11-12 06:52:50.165874','79','How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned? - Almost constantly (Strong confirmation)',3,'',12,4),(67,'2024-11-12 06:52:50.165874','78','How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned? - Frequently (Confirm)',3,'',12,4),(68,'2024-11-12 06:52:50.165874','77','How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned? - Occasionally (Mild Anxiety may be present)',3,'',12,4),(69,'2024-11-12 06:52:50.165874','76','How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned? - Rarely',3,'',12,4),(70,'2024-11-12 06:52:50.165874','73','Do you often feel hopeless or like life is not worth living? - No',3,'',12,4),(71,'2024-11-12 06:52:50.165874','72','Do you often feel hopeless or like life is not worth living? - Yes',3,'',12,4),(72,'2024-11-12 06:52:50.165874','71','Have you ever thought about or engaged in self-harm behaviors? - No',3,'',12,4),(73,'2024-11-12 06:52:50.165874','70','Have you ever thought about or engaged in self-harm behaviors? - Yes',3,'',12,4),(74,'2024-11-12 06:52:50.165874','69','Do you find that your substance use has affected your daily life negatively? - No',3,'',12,4),(75,'2024-11-12 06:52:50.165874','68','Do you find that your substance use has affected your daily life negatively? - Yes',3,'',12,4),(76,'2024-11-12 06:52:50.165874','67','Do you often feel the need to use substances (e.g., alcohol, drugs) to cope with stress? - No',3,'',12,4),(77,'2024-11-12 06:52:50.165874','66','Do you often feel the need to use substances (e.g., alcohol, drugs) to cope with stress? - Yes',3,'',12,4),(78,'2024-11-12 06:52:50.165874','65','Have you ever engaged in risky behaviors (e.g., substance use, reckless driving) that caused you harm? - No',3,'',12,4),(79,'2024-11-12 06:52:50.165874','64','Have you ever engaged in risky behaviors (e.g., substance use, reckless driving) that caused you harm? - Yes',3,'',12,4),(80,'2024-11-12 06:52:50.165874','63','Do you find it hard to resist urges to do something harmful to yourself or others? - No',3,'',12,4),(81,'2024-11-12 06:52:50.165874','62','Do you find it hard to resist urges to do something harmful to yourself or others? - Yes',3,'',12,4),(82,'2024-11-12 06:52:50.165874','61','Do you often feel tired or sleepy during the day? - No',3,'',12,4),(83,'2024-11-12 06:52:50.165874','60','Do you often feel tired or sleepy during the day? - Yes',3,'',12,4),(84,'2024-11-12 06:52:50.165874','59','Do you have trouble falling asleep, staying asleep, or waking up too early? - No',3,'',12,4),(85,'2024-11-12 06:52:50.165874','58','Do you have trouble falling asleep, staying asleep, or waking up too early? - Yes',3,'',12,4),(86,'2024-11-12 06:52:50.165874','57','How frequently do you worry about your health? - Rarely',3,'',12,4),(87,'2024-11-12 06:52:50.165874','56','How frequently do you worry about your health? - Often',3,'',12,4),(88,'2024-11-12 06:52:50.165874','55','Do you experience physical symptoms (e.g., pain, fatigue) that cannot be explained by medical evaluation? - No',3,'',12,4),(89,'2024-11-12 06:52:50.165874','54','Do you experience physical symptoms (e.g., pain, fatigue) that cannot be explained by medical evaluation? - Yes',3,'',12,4),(90,'2024-11-12 06:52:50.165874','53','Do you often feel paranoid or suspicious of others뿯ν뿯½뿯½ motives? - No',3,'',12,4),(91,'2024-11-12 06:52:50.165874','52','Do you often feel paranoid or suspicious of others뿯ν뿯½뿯½ motives? - Yes',3,'',12,4),(92,'2024-11-12 06:52:50.165874','51','Have you ever experienced hallucinations or delusions? - No',3,'',12,4),(93,'2024-11-12 06:52:50.165874','50','Have you ever experienced hallucinations or delusions? - Yes',3,'',12,4),(94,'2024-11-12 06:52:50.165874','49','Have you been told you have difficulty concentrating or staying focused? - No',3,'',12,4),(95,'2024-11-12 06:52:50.165874','48','Have you been told you have difficulty concentrating or staying focused? - Yes',3,'',12,4),(96,'2024-11-12 06:52:50.165874','47','Have you been told you have trouble with reading or math, or with other learning tasks? - No',3,'',12,4),(97,'2024-11-12 06:52:50.165874','46','Have you been told you have trouble with reading or math, or with other learning tasks? - Yes',3,'',12,4),(98,'2024-11-12 06:52:50.165874','45','Do you feel that your eating habits have changed in the last 6 months? - 4-5 (Extreme change)',3,'',12,4),(99,'2024-11-12 06:52:50.165874','44','Do you feel that your eating habits have changed in the last 6 months? - 1-2 (No change)',3,'',12,4),(100,'2024-11-12 06:52:50.165874','43','Do you frequently feel like you have no control over your eating, leading to overeating or restricting food? - No',3,'',12,4),(101,'2024-11-12 06:52:50.165874','42','Do you frequently feel like you have no control over your eating, leading to overeating or restricting food? - Yes',3,'',12,4),(102,'2024-11-12 06:52:50.165874','41','How frequently do you worry about your body image or eating habits? - Often',3,'',12,4),(103,'2024-11-12 06:52:50.165874','40','How frequently do you worry about your body image or eating habits? - Rarely',3,'',12,4),(104,'2024-11-12 06:52:50.165874','39','Do you often feel detached or disconnected from your own identity or surroundings? - No',3,'',12,4),(105,'2024-11-12 06:52:50.165874','38','Do you often feel detached or disconnected from your own identity or surroundings? - Yes',3,'',12,4),(106,'2024-11-12 06:52:50.165874','37','Have others told you that you have unusual or inappropriate emotional reactions to situations? - No',3,'',12,4),(107,'2024-11-12 06:52:50.165874','36','Have others told you that you have unusual or inappropriate emotional reactions to situations? - Yes',3,'',12,4),(108,'2024-11-12 06:52:50.165874','35','Have others told you that you have unusual or inappropriate emotional reactions to situations? - Yes',3,'',12,4),(109,'2024-11-12 06:52:50.165874','34','Do you have trouble remembering important details, like appointments, conversations, or daily tasks sometimes? - Never',3,'',12,4),(110,'2024-11-12 06:52:50.165874','33','Do you have trouble remembering important details, like appointments, conversations, or daily tasks sometimes? - Occasionally/Frequently',3,'',12,4),(111,'2024-11-12 06:52:50.165874','32','Do you have trouble remembering important details, like appointments, conversations, or daily tasks sometimes? - Occasionally/Frequently',3,'',12,4),(112,'2024-11-12 06:52:50.165874','31','Rate your level of social discomfort or fear in public places: - 4-5 (Extreme discomfort)',3,'',12,4),(113,'2024-11-12 06:52:50.165874','30','Rate your level of social discomfort or fear in public places: - 1-2 (Low discomfort)',3,'',12,4),(114,'2024-11-12 06:52:50.165874','29','Do you often feel you have to keep up a 뿯ν뿯½뿯½mask뿯ν뿯½뿯½ or different personality depending on the situation? - No',3,'',12,4),(115,'2024-11-12 06:52:50.165874','28','Do you often feel you have to keep up a 뿯ν뿯½뿯½mask뿯ν뿯½뿯½ or different personality depending on the situation? - Yes',3,'',12,4),(116,'2024-11-12 06:52:50.165874','27','Do you often feel you have to keep up a 뿯ν뿯½뿯½mask뿯ν뿯½뿯½ or different personality depending on the situation? - Yes',3,'',12,4),(117,'2024-11-12 06:52:50.165874','26','Have you ever had difficulty recovering emotionally from a stressful event? - Yes',3,'',12,4),(118,'2024-11-12 06:52:50.165874','25','Have you ever had difficulty recovering emotionally from a stressful event? - No',3,'',12,4),(119,'2024-11-12 06:52:50.165874','24','Have you experienced distressing memories, nightmares, or flashbacks related to a traumatic event? - No',3,'',12,4),(120,'2024-11-12 06:52:50.165874','23','Have you experienced distressing memories, nightmares, or flashbacks related to a traumatic event? - Yes',3,'',12,4),(121,'2024-11-12 06:52:50.165874','22','On a scale of 1 to 5, how much control do you feel over your compulsive behaviors (e.g., counting, arranging)? - 4-5 (No Control)',3,'',12,4),(122,'2024-11-12 06:52:50.165874','21','On a scale of 1 to 5, how much control do you feel over your compulsive behaviors (e.g., counting, arranging)? - 1-2 (Total Control)',3,'',12,4),(123,'2024-11-12 06:52:50.165874','20','How often do you experience unwanted thoughts that repeatedly enter your mind? - Often/Always',3,'',12,4),(124,'2024-11-12 06:52:50.165874','19','How often do you experience unwanted thoughts that repeatedly enter your mind? - Rarely/Never',3,'',12,4),(125,'2024-11-12 06:52:50.165874','18','Have you recently lost interest in activities you previously enjoyed? - No',3,'',12,4),(126,'2024-11-12 06:52:50.165874','17','Have you recently lost interest in activities you previously enjoyed? - Yes',3,'',12,4),(127,'2024-11-12 06:52:50.165874','16','How often do you feel a persistent low mood, even when there뿯ν뿯½뿯½s no clear reason? - Often/Always',3,'',12,4),(128,'2024-11-12 06:52:50.165874','15','How often do you feel a persistent low mood, even when there뿯ν뿯½뿯½s no clear reason? - Rarely/Never',3,'',12,4),(129,'2024-11-12 06:52:50.165874','14','Have you experienced prolonged periods of sadness or lack of interest in life recently? - No',3,'',12,4),(130,'2024-11-12 06:52:50.165874','13','Have you experienced prolonged periods of sadness or lack of interest in life recently? - Yes',3,'',12,4),(131,'2024-11-12 06:52:50.165874','12','How often do you feel worried or on edge about doing multiple things at once? - Often/Always',3,'',12,4),(132,'2024-11-12 06:52:50.170581','11','How often do you feel worried or on edge about doing multiple things at once? - Rarely/Never',3,'',12,4),(133,'2024-11-12 06:52:50.170581','10','Do you often feel anxious or nervous in everyday situations? - No',3,'',12,4),(134,'2024-11-12 06:52:50.170694','9','Do you often feel anxious or nervous in everyday situations? - Yes',3,'',12,4),(135,'2024-11-12 06:53:11.753607','97','Stage 2 - How often do you feel sleepy during the day, even after a full night\'s sleep?',3,'',10,4),(136,'2024-11-12 06:53:11.753607','96','Stage 2 - Do you experience any unusual behaviors during sleep, such as sleepwalking or talking in your sleep?',3,'',10,4),(137,'2024-11-12 06:53:11.753607','95','Stage 2 - When you wake up in the morning, how refreshed do you feel?',3,'',10,4),(138,'2024-11-12 06:53:11.753607','94','Stage 2 - How often do you find it difficult to fall asleep or stay asleep throughout the night?',3,'',10,4),(139,'2024-11-12 06:53:11.753607','93','Stage 2 - Have you noticed that your physical symptoms seem to worsen when you are under stress?',3,'',10,4),(140,'2024-11-12 06:53:11.753607','92','Stage 2 - How often do you seek medical help for your physical symptoms?',3,'',10,4),(141,'2024-11-12 06:53:11.753607','91','Stage 2 - Do your physical symptoms interfere with your daily activities (work, social life, etc.)?',3,'',10,4),(142,'2024-11-12 06:53:11.753607','90','Stage 2 - How often do you worry about the physical symptoms you experience?',3,'',10,4),(143,'2024-11-12 06:53:11.753607','89','Stage 2 - Do you feel that your emotions are out of control or that your mood swings are extreme?',3,'',10,4),(144,'2024-11-12 06:53:11.753607','88','Stage 2 - How often do you find it difficult to organize your thoughts or communicate clearly during conversations?',3,'',10,4),(145,'2024-11-12 06:53:11.753607','87','Stage 2 - Do you ever experience delusions (strongly held beliefs that are not based in reality), such as believing you have special powers or that others are plotting against you?',3,'',10,4),(146,'2024-11-12 06:53:11.753607','86','Stage 2 - When you experience hallucinations, how vivid or realistic do they feel to you?',3,'',10,4),(147,'2024-11-12 06:53:11.753607','85','Stage 2 - Do you have a plan or method for self-harm?',3,'',10,4),(148,'2024-11-12 06:53:11.753607','84','Stage 2 - How do you feel after engaging in self-harm or risky behaviors?',3,'',10,4),(149,'2024-11-12 06:53:11.753607','83','Stage 2 - When you think about self-harm, how vivid or strong are those thoughts?',3,'',10,4),(150,'2024-11-12 06:53:11.753607','82','Stage 2 - How often do you feel the urge to harm yourself or engage in risky behaviors?',3,'',10,4),(151,'2024-11-12 06:53:11.753607','81','Stage 2 - How often do you neglect responsibilities due to substance use?',3,'',10,4),(152,'2024-11-12 06:53:11.753607','80','Stage 2 - Have you ever experienced withdrawal symptoms when not using a substance?',3,'',10,4),(153,'2024-11-12 06:53:11.753607','79','Stage 2 - Do you ever feel the need to increase your substance use to achieve the same effect?',3,'',10,4),(154,'2024-11-12 06:53:11.753607','78','Stage 2 - How often do you rely on substances (e.g., alcohol, drugs) to cope with stress?',3,'',10,4),(155,'2024-11-12 06:53:11.753607','77','Stage 2 - How often do you feel compelled to engage in risky behaviors, like gambling or substance use?',3,'',10,4),(156,'2024-11-12 06:53:11.753607','76','Stage 2 - Do you often regret impulsive actions after they happen?',3,'',10,4),(157,'2024-11-12 06:53:11.753607','75','Stage 2 - When feeling angry, how often do you find it difficult to manage your aggression?',3,'',10,4),(158,'2024-11-12 06:53:11.753607','74','Stage 2 - How often do you act on sudden urges or impulses without thinking about the consequences?',3,'',10,4),(159,'2024-11-12 06:53:11.753607','73','Stage 2 - Do you struggle with organizing your thoughts or tasks?',3,'',10,4),(160,'2024-11-12 06:53:11.753607','72','Stage 2 - How do you feel about your learning abilities compared to peers?',3,'',10,4),(161,'2024-11-12 06:53:11.753607','71','Stage 2 - When attempting to focus, how often do you feel easily distracted?',3,'',10,4),(162,'2024-11-12 06:53:11.753607','70','Stage 2 - How often do you find it challenging to keep up with school or work assignments?',3,'',10,4),(163,'2024-11-12 06:53:11.753607','69','Stage 2 - Do you ever feel the need to exercise excessively after eating?',3,'',10,4),(164,'2024-11-12 06:53:11.753607','68','Stage 2 - When you eat, how often do you find yourself feeling guilty afterward?',3,'',10,4),(165,'2024-11-12 06:53:11.753607','67','Stage 2 - How do you feel about your eating habits?',3,'',10,4),(166,'2024-11-12 06:53:11.753607','66','Stage 2 - When you think about food or eating, how often do you feel anxious or distressed?',3,'',10,4),(167,'2024-11-12 06:53:11.753607','65','Stage 2 - Have you noticed any changes in your ability to think clearly or reason?',3,'',10,4),(168,'2024-11-12 06:53:11.753607','64','Stage 2 - How do you feel about your ability to perform daily tasks or responsibilities?',3,'',10,4),(169,'2024-11-12 06:53:11.753607','63','Stage 2 - Do you find it difficult to follow conversations or comprehend information?',3,'',10,4),(170,'2024-11-12 06:53:11.753607','62','Stage 2 - How often do you struggle to remember recent events or conversations?',3,'',10,4),(171,'2024-11-12 06:53:11.753607','61','Stage 2 - Have you ever felt as if you are watching yourself from outside your body?',3,'',10,4),(172,'2024-11-12 06:53:11.753607','60','Stage 2 - How do you react when faced with stressful situations?',3,'',10,4),(173,'2024-11-12 06:53:11.753607','59','Stage 2 - Do you sometimes feel detached from your thoughts, feelings, or sense of identity?',3,'',10,4),(174,'2024-11-12 06:53:11.753607','58','Stage 2 - How often do you experience gaps in your memory for everyday events?',3,'',10,4),(175,'2024-11-12 06:53:11.753607','57','Stage 2 - Do you often feel that you lack a clear sense of self or identity?',3,'',10,4),(176,'2024-11-12 06:53:11.753607','56','Stage 2 - How do you perceive your relationships with family and friends?',3,'',10,4),(177,'2024-11-12 06:53:11.753607','55','Stage 2 - When facing interpersonal conflicts, how do you typically respond?',3,'',10,4),(178,'2024-11-12 06:53:11.753607','54','Stage 2 - How often do you feel that your thoughts or feelings are very different from those of others around you?',3,'',10,4),(179,'2024-11-12 06:53:11.753607','53','Stage 2 - How has your ability to manage stress or emotions changed since the traumatic event?',3,'',10,4),(180,'2024-11-12 06:53:11.753607','52','Stage 2 - Do you avoid places, people, or activities that remind you of the traumatic event? If so, how often?',3,'',10,4),(181,'2024-11-12 06:53:11.753607','51','Stage 2 - How would you describe your emotional response when reminded of the traumatic event?',3,'',10,4),(182,'2024-11-12 06:53:11.753607','50','Stage 2 - How often do you experience intrusive thoughts, memories, or flashbacks of the traumatic event that are difficult to control?',3,'',10,4),(183,'2024-11-12 06:53:11.753607','49','Stage 2 - Do you try to resist or stop your compulsive behaviors? If so, how successful are you?',3,'',10,4),(184,'2024-11-12 06:53:11.753607','48','Stage 2 - To what extent do your compulsive behaviors interfere with your daily tasks or social life?',3,'',10,4),(185,'2024-11-12 06:53:11.753607','47','Stage 2 - How much time do you spend each day performing compulsive behaviors (e.g., checking, cleaning, counting)?',3,'',10,4),(186,'2024-11-12 06:53:11.753607','46','Stage 2 - How often do your obsessive thoughts cause significant distress or anxiety throughout the day?',3,'',10,4),(187,'2024-11-12 06:53:11.753607','45','Stage 2 - Have your sleeping habits changed recently? If so, how would you describe them?',3,'',10,4),(188,'2024-11-12 06:53:11.753607','44','Stage 2 - When thinking about activities you used to enjoy, how much interest do you still have in them?',3,'',10,4),(189,'2024-11-12 06:53:11.753607','43','Stage 2 - How would you describe your energy levels throughout the day?',3,'',10,4),(190,'2024-11-12 06:53:11.753607','42','Stage 2 - Over the past few weeks, how often have you felt overwhelmed by sadness or hopelessness?',3,'',10,4),(191,'2024-11-12 06:53:11.753607','41','Stage 2 - Do you avoid certain situations, places, or activities because of anxiety? If yes, how often?',3,'',10,4),(192,'2024-11-12 06:53:11.753607','40','Stage 2 - How much does your anxiety interfere with your daily life, such as work, school, or social interactions?',3,'',10,4),(193,'2024-11-12 06:53:11.753607','39','Stage 2 - When you feel anxious, how intense are the physical symptoms (e.g., racing heart, sweating, shaking)?',3,'',10,4),(194,'2024-11-12 06:53:11.753607','38','Stage 2 - How often do you find yourself worrying about things, even when there\'s no immediate reason to be concerned?',3,'',10,4),(195,'2024-11-12 06:53:11.753607','31','Stage 1 - Do you often feel hopeless or like life is not worth living?',3,'',10,4),(196,'2024-11-12 06:53:11.753607','30','Stage 1 - Have you ever thought about or engaged in self-harm behaviors?',3,'',10,4),(197,'2024-11-12 06:53:11.753607','29','Stage 1 - Do you find that your substance use has affected your daily life negatively?',3,'',10,4),(198,'2024-11-12 06:53:11.753607','28','Stage 1 - Do you often feel the need to use substances (e.g., alcohol, drugs) to cope with stress?',3,'',10,4),(199,'2024-11-12 06:53:11.753607','27','Stage 1 - Have you ever engaged in risky behaviors (e.g., substance use, reckless driving) that caused you harm?',3,'',10,4),(200,'2024-11-12 06:53:11.753607','26','Stage 1 - Do you find it hard to resist urges to do something harmful to yourself or others?',3,'',10,4),(201,'2024-11-12 06:53:11.753607','25','Stage 1 - Do you often feel tired or sleepy during the day?',3,'',10,4),(202,'2024-11-12 06:53:11.753607','24','Stage 1 - Do you have trouble falling asleep, staying asleep, or waking up too early?',3,'',10,4),(203,'2024-11-12 06:53:11.753607','23','Stage 1 - How frequently do you worry about your health?',3,'',10,4),(204,'2024-11-12 06:53:11.753607','22','Stage 1 - Do you experience physical symptoms (e.g., pain, fatigue) that cannot be explained by medical evaluation?',3,'',10,4),(205,'2024-11-12 06:53:11.753607','21','Stage 1 - Do you often feel paranoid or suspicious of others뿯ν뿯½뿯½ motives?',3,'',10,4),(206,'2024-11-12 06:53:11.753607','20','Stage 1 - Have you ever experienced hallucinations or delusions?',3,'',10,4),(207,'2024-11-12 06:53:11.753607','19','Stage 1 - Have you been told you have difficulty concentrating or staying focused?',3,'',10,4),(208,'2024-11-12 06:53:11.753607','18','Stage 1 - Have you been told you have trouble with reading or math, or with other learning tasks?',3,'',10,4),(209,'2024-11-12 06:53:11.753607','17','Stage 1 - Do you feel that your eating habits have changed in the last 6 months?',3,'',10,4),(210,'2024-11-12 06:53:11.753607','16','Stage 1 - Do you frequently feel like you have no control over your eating, leading to overeating or restricting food?',3,'',10,4),(211,'2024-11-12 06:53:11.753607','15','Stage 1 - How frequently do you worry about your body image or eating habits?',3,'',10,4),(212,'2024-11-12 06:53:11.753607','14','Stage 1 - Do you often feel detached or disconnected from your own identity or surroundings?',3,'',10,4),(213,'2024-11-12 06:53:11.753607','13','Stage 1 - Have others told you that you have unusual or inappropriate emotional reactions to situations?',3,'',10,4),(214,'2024-11-12 06:53:11.753607','12','Stage 1 - Do you have trouble remembering important details, like appointments, conversations, or daily tasks sometimes?',3,'',10,4),(215,'2024-11-12 06:53:11.753607','11','Stage 1 - Rate your level of social discomfort or fear in public places:',3,'',10,4),(216,'2024-11-12 06:53:11.753607','10','Stage 1 - Do you often feel you have to keep up a 뿯ν뿯½뿯½mask뿯ν뿯½뿯½ or different personality depending on the situation?',3,'',10,4),(217,'2024-11-12 06:53:11.753607','9','Stage 1 - Have you ever had difficulty recovering emotionally from a stressful event?',3,'',10,4),(218,'2024-11-12 06:53:11.753607','8','Stage 1 - Have you experienced distressing memories, nightmares, or flashbacks related to a traumatic event?',3,'',10,4),(219,'2024-11-12 06:53:11.753607','7','Stage 1 - On a scale of 1 to 5, how much control do you feel over your compulsive behaviors (e.g., counting, arranging)?',3,'',10,4),(220,'2024-11-12 06:53:11.753607','6','Stage 1 - How often do you experience unwanted thoughts that repeatedly enter your mind?',3,'',10,4),(221,'2024-11-12 06:53:11.753607','5','Stage 1 - Have you recently lost interest in activities you previously enjoyed?',3,'',10,4),(222,'2024-11-12 06:53:11.753607','4','Stage 1 - How often do you feel a persistent low mood, even when there뿯ν뿯½뿯½s no clear reason?',3,'',10,4),(223,'2024-11-12 06:53:11.753607','3','Stage 1 - Have you experienced prolonged periods of sadness or lack of interest in life recently?',3,'',10,4),(224,'2024-11-12 06:53:11.753607','2','Stage 1 - How often do you feel worried or on edge about doing multiple things at once?',3,'',10,4),(225,'2024-11-12 06:53:11.753607','1','Stage 1 - Do you often feel anxious or nervous in everyday situations?',3,'',10,4),(226,'2024-11-12 16:04:08.088558','174','How frequently do you experience vivid dreams or thoughts that feel extremely real?',3,'',10,4),(227,'2024-11-12 16:04:08.088558','173','How would you describe your ability to stay organized and manage your daily tasks?',3,'',10,4),(228,'2024-11-12 16:04:08.088558','172','How often do you experience intense or unusual emotional responses, such as laughing without a clear reason?',3,'',10,4),(229,'2024-11-12 16:04:08.088558','171','How do you feel about your ability to understand and process information?',3,'',10,4),(230,'2024-11-12 16:04:08.088558','170','How would you describe your typical sleep patterns?',3,'',10,4),(231,'2024-11-12 16:04:08.088558','169','How do you feel about social gatherings or events with new people?',3,'',10,4),(232,'2024-11-12 16:04:08.088558','168','How often do you feel physically restless or unable to relax?',3,'',10,4),(233,'2024-11-12 16:04:08.088558','167','How frequently do you experience thoughts or urges to hurt yourself?',3,'',10,4),(234,'2024-11-12 16:04:08.088558','166','How often do you struggle to complete daily activities or responsibilities?',3,'',10,4),(235,'2024-11-12 16:04:08.088558','165','How often do you feel intense or uncontrollable emotions?',3,'',10,4),(236,'2024-11-12 16:04:08.088558','164','How would you describe your general ability to trust others?',3,'',10,4),(237,'2024-11-12 16:04:08.088558','163','How frequently do you find it difficult to feel genuinely connected with people around you?',3,'',10,4),(238,'2024-11-12 16:04:08.088558','162','How frequently do you rely on alcohol, food, or substances to manage emotions?',3,'',10,4),(239,'2024-11-12 16:04:08.088558','161','How frequently do you feel a need to escape from your surroundings or people?',3,'',10,4),(240,'2024-11-12 16:04:08.088558','160','How would you describe your eating habits or relationship with food?',3,'',10,4),(241,'2024-11-12 16:04:08.088558','159','How often do you experience physical discomfort without an identifiable cause?',3,'',10,4),(242,'2024-11-12 16:04:08.088558','158','When faced with sudden changes or new situations, how do you react?',3,'',10,4),(243,'2024-11-12 16:04:08.088558','157','How often do you find yourself needing a strict routine or specific habits to feel in control?',3,'',10,4),(244,'2024-11-12 16:04:08.088558','156','When handling complex or repetitive tasks, how do you feel?',3,'',10,4),(245,'2024-11-12 16:04:08.088558','155','How frequently do you feel energized and ready to take on the day?',3,'',10,4),(246,'2024-11-12 16:04:08.088558','20','How frequently do you experience vivid dreams or thoughts that feel extremely real?',3,'',10,4),(247,'2024-11-12 16:04:08.088558','19','How would you describe your ability to stay organized and manage your daily tasks?',3,'',10,4),(248,'2024-11-12 16:04:08.088558','18','How often do you experience intense or unusual emotional responses, such as laughing without a clear reason?',3,'',10,4),(249,'2024-11-12 16:04:08.088558','17','How do you feel about your ability to understand and process information?',3,'',10,4),(250,'2024-11-12 16:04:08.088558','16','How would you describe your typical sleep patterns?',3,'',10,4),(251,'2024-11-12 16:04:08.088558','15','How do you feel about social gatherings or events with new people?',3,'',10,4),(252,'2024-11-12 16:04:08.088558','14','How often do you feel physically restless or unable to relax?',3,'',10,4),(253,'2024-11-12 16:04:08.088558','13','How frequently do you experience thoughts or urges to hurt yourself?',3,'',10,4),(254,'2024-11-12 16:04:08.088558','12','How often do you struggle to complete daily activities or responsibilities?',3,'',10,4),(255,'2024-11-12 16:04:08.088558','11','How often do you feel intense or uncontrollable emotions?',3,'',10,4),(256,'2024-11-12 16:04:08.088558','10','How would you describe your general ability to trust others?',3,'',10,4),(257,'2024-11-12 16:04:08.088558','9','How frequently do you find it difficult to feel genuinely connected with people around you?',3,'',10,4),(258,'2024-11-12 16:04:08.088558','8','How frequently do you rely on alcohol, food, or substances to manage emotions?',3,'',10,4),(259,'2024-11-12 16:04:08.088558','7','How frequently do you feel a need to escape from your surroundings or people?',3,'',10,4),(260,'2024-11-12 16:04:08.088558','6','How would you describe your eating habits or relationship with food?',3,'',10,4),(261,'2024-11-12 16:04:08.088558','5','How often do you experience physical discomfort without an identifiable cause?',3,'',10,4),(262,'2024-11-12 16:04:08.088558','4','When faced with sudden changes or new situations, how do you react?',3,'',10,4),(263,'2024-11-12 16:04:08.088558','3','How often do you find yourself needing a strict routine or specific habits to feel in control?',3,'',10,4),(264,'2024-11-12 16:04:08.088558','2','When handling complex or repetitive tasks, how do you feel?',3,'',10,4),(265,'2024-11-12 16:04:08.088558','1','How frequently do you feel energized and ready to take on the day?',3,'',10,4),(266,'2024-11-17 02:33:55.708401','269','Generally comfortable, without concern',1,'[{\"added\": {}}]',12,4),(267,'2024-11-17 02:34:42.267587','270','Often uncomfortable. or may avoid eating',1,'[{\"added\": {}}]',12,4),(268,'2024-11-17 02:35:14.389531','271','Occasionally, if at all',1,'[{\"added\": {}}]',12,4),(269,'2024-11-17 02:35:47.327332','272','Very often, with intense focus on these details',1,'[{\"added\": {}}]',12,4),(270,'2024-11-17 02:36:22.231832','273','Never, or rarely',1,'[{\"added\": {}}]',12,4),(271,'2024-11-17 02:36:53.669522','274','Often, it feels like a necessary release',1,'[{\"added\": {}}]',12,4),(272,'2024-11-17 02:37:30.520887','275','By reaching out or managing it in healthy ways',1,'[{\"added\": {}}]',12,4),(273,'2024-11-17 02:38:00.394536','276','I sometimes use self-harm to cope',1,'[{\"added\": {}}]',12,4),(274,'2024-11-17 02:39:38.664686','277','Generally easy, with little trouble sleeping',1,'[{\"added\": {}}]',12,4),(275,'2024-11-17 02:40:10.580515','278','Difficult, often experiencing disruptions',1,'[{\"added\": {}}]',12,4),(276,'2024-11-17 02:40:48.050092','279','Difficult, often experiencing disruptions',1,'[{\"added\": {}}]',12,4),(277,'2024-11-17 02:41:14.648310','280','Generally well-rested and alert',1,'[{\"added\": {}}]',12,4),(278,'2024-11-17 02:41:55.903524','281','Frequently tired and unrefreshed',1,'[{\"added\": {}}]',12,4),(279,'2024-11-17 02:42:58.035326','279','Difficult, often experiencing disruptions',3,'',12,4),(280,'2024-11-17 02:48:25.216397','282','Rarely,unless its severe',1,'[{\"added\": {}}]',12,4),(281,'2024-11-17 02:49:19.154370','283','often, even if symptoms are minor',1,'[{\"added\": {}}]',12,4),(282,'2024-11-17 02:49:40.016292','284','As naturally and not concerning',1,'[{\"added\": {}}]',12,4),(283,'2024-11-17 02:50:11.357813','285','As signs of a potential illness or problem',1,'[{\"added\": {}}]',12,4),(284,'2024-11-17 02:50:58.678542','286','Rarely, only during particularly tough times',1,'[{\"added\": {}}]',12,4),(285,'2024-11-17 02:51:31.987751','287','Frequently, as a recurring feeling',1,'[{\"added\": {}}]',12,4),(286,'2024-11-17 02:52:13.669313','288','Generally motivated, with usual interest',1,'[{\"added\": {}}]',12,4),(287,'2024-11-17 02:52:53.217738','289','Often unmotivated, even for favourite activities',1,'[{\"added\": {}}]',12,4),(288,'2024-11-17 02:53:22.591409','290','Consistent, with clear sense of self',1,'[{\"added\": {}}]',12,4),(289,'2024-11-17 02:54:17.327346','291','Often fluctuating or uncertain',1,'[{\"added\": {}}]',12,4),(290,'2024-11-17 02:55:09.813092','292','Generally stable, with some ups and downs',1,'[{\"added\": {}}]',12,4),(291,'2024-11-17 02:55:53.094478','293','Rarely or never rely on substances',1,'[{\"added\": {}}]',12,4),(292,'2024-11-17 02:56:25.824757','294','Often, substances help me cope',1,'[{\"added\": {}}]',12,4),(293,'2024-11-17 02:57:03.416475','295','I can take it or leave it; doesn뿯ν뿯½뿯½t strongly impact me',1,'[{\"added\": {}}]',12,4),(294,'2024-11-17 02:57:27.545800','296','I feel a strong urge to engage',1,'[{\"added\": {}}]',12,4),(295,'2024-11-17 02:57:52.506006','297','I generally stay organized and on track',1,'[{\"added\": {}}]',12,4),(296,'2024-11-17 02:58:23.512848','298','I struggle with maintaining routines',1,'[{\"added\": {}}]',12,4),(297,'2024-11-17 02:58:44.243716','299','Quite easily; I rarely feel out of place',1,'[{\"added\": {}}]',12,4),(298,'2024-11-17 02:59:05.294275','300','It뿯ν뿯½뿯½s often difficult to understand social cues',1,'[{\"added\": {}}]',12,4),(299,'2024-11-17 02:59:29.939087','301','Yes, I rarely get confused with familiar tasks',1,'[{\"added\": {}}]',12,4),(300,'2024-11-17 03:00:06.527697','302','I often struggle to recall steps or focus',1,'[{\"added\": {}}]',12,4),(301,'2024-11-17 03:00:39.908643','303','Rarely, my memory is consistent',1,'[{\"added\": {}}]',12,4),(302,'2024-11-17 03:01:16.945012','304','Frequently, its hard to recall recent events',1,'[{\"added\": {}}]',12,4),(303,'2024-11-17 03:08:23.506656','305','Often turbulent or hard to maintain',1,'[{\"added\": {}}]',12,4),(304,'2024-11-17 05:18:08.317661','205','How often do you think about the nutritional content or calorie count of your meals before eating?',2,'[]',10,4),(305,'2024-11-17 05:18:35.680353','206','When it comes to food, how comfortable are you around situations where your eating might be observed by others?',2,'[]',10,4),(306,'2024-11-17 05:18:42.508904','204','In moments of intense distress, how often do you feel a need to harm yourself to release tension?',2,'[]',10,4),(307,'2024-11-17 05:18:52.665386','200','When experiencing physical symptoms, how often do you seek medical reassurance?',2,'[]',10,4),(308,'2024-11-17 05:18:59.102422','198','How often do you feel hopeless or worthless?',2,'[]',10,4),(309,'2024-11-17 05:19:19.159120','186','Do you experience strong emotions, like laughter or anger, for no clear reason?',2,'[]',10,4),(310,'2024-11-17 05:19:37.293238','194','When dealing with stress, how likely are you to rely on substances for relief?',2,'[]',10,4),(311,'2024-11-17 05:20:06.240429','192','How organized and consistent are you in managing daily routines?',2,'[]',10,4),(312,'2024-11-17 05:20:44.320672','188','When stressed, do you ever feel as though you뿯ν뿯½뿯½re in a dream-like state?',2,'[]',10,4),(313,'2024-11-17 05:21:02.501701','175','How does your body feel when thinking about upcoming responsibilities?',2,'[]',10,4);



UNLOCK TABLES;



--

-- Table structure for table "django_content_type"

--



DROP TABLE IF EXISTS django_content_type;





CREATE TABLE "django_content_type" (

  "id" int NOT NULL AUTOINCREMENT,

  "app_label" varchar(100) NOT NULL,

  "model" varchar(100) NOT NULL,

  PRIMARY KEY ("id"),

  UNIQUE KEY "django_content_type_app_label_model_76bd3d3b_uniq" ("app_label","model")

) ;





--

-- Dumping data for table "django_content_type"

--



LOCK TABLES "django_content_type" WRITE;



INSERT INTO "django_content_type" VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(14,'myapp','book'),(15,'myapp','breathingexercise'),(9,'myapp','chat'),(8,'myapp','conversation'),(11,'myapp','diagnosis'),(16,'myapp','movie'),(17,'myapp','music'),(12,'myapp','option'),(18,'myapp','podcast'),(1,'myapp','profile'),(10,'myapp','question'),(13,'myapp','userresponse'),(19,'myapp','workout'),(20,'myapp','yoga'),(7,'sessions','session');



UNLOCK TABLES;



--

-- Table structure for table "django_migrations"

--



DROP TABLE IF EXISTS django_migrations;





CREATE TABLE "django_migrations" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "app" varchar(255) NOT NULL,

  "name" varchar(255) NOT NULL,

  "applied" datetime(6) NOT NULL,

  PRIMARY KEY ("id")

) ;





--

-- Dumping data for table "django_migrations"

--



LOCK TABLES "django_migrations" WRITE;



INSERT INTO "django_migrations" VALUES (1,'contenttypes','0001_initial','2024-09-23 09:46:53.959986'),(2,'auth','0001_initial','2024-09-23 09:46:54.475378'),(3,'admin','0001_initial','2024-09-23 09:46:54.624483'),(4,'admin','0002_logentry_remove_auto_add','2024-09-23 09:46:54.624483'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-23 09:46:54.643897'),(6,'contenttypes','0002_remove_content_type_name','2024-09-23 09:46:54.735601'),(7,'auth','0002_alter_permission_name_max_length','2024-09-23 09:46:54.793044'),(8,'auth','0003_alter_user_email_max_length','2024-09-23 09:46:54.828158'),(9,'auth','0004_alter_user_username_opts','2024-09-23 09:46:54.837159'),(10,'auth','0005_alter_user_last_login_null','2024-09-23 09:46:54.899199'),(11,'auth','0006_require_contenttypes_0002','2024-09-23 09:46:54.903646'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-23 09:46:54.912976'),(13,'auth','0008_alter_user_username_max_length','2024-09-23 09:46:54.979718'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-23 09:46:55.060802'),(15,'auth','0010_alter_group_name_max_length','2024-09-23 09:46:55.082137'),(16,'auth','0011_update_proxy_permissions','2024-09-23 09:46:55.091181'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-23 09:46:55.157671'),(18,'myapp','0001_initial','2024-09-23 09:46:55.175472'),(19,'myapp','0002_profile_delete_feature','2024-09-23 09:46:55.280481'),(20,'sessions','0001_initial','2024-09-23 09:46:55.326150'),(21,'myapp','0003_conversation','2024-10-02 05:34:05.119061'),(22,'myapp','0004_chat_delete_conversation','2024-10-08 14:32:39.194894'),(23,'myapp','0005_diagnosis_question_option','2024-10-25 14:06:38.078941'),(24,'myapp','0006_question_stage_userresponse','2024-11-02 15:14:16.053105'),(25,'myapp','0007_remove_option_diagnosis_and_more','2024-11-12 07:10:35.464704'),(26,'myapp','0008_rename_sleep_wake_percentage_option_sleep_disorder_percentage','2024-11-12 07:38:08.085412'),(27,'myapp','0009_alter_option_question','2024-11-12 09:30:46.207855'),(28,'myapp','0010_book_breathingexercise_movie_music_podcast_workout_and_more','2024-11-16 17:20:10.736421'),(29,'myapp','0011_rename_anxiety_percentage_option_anxiety_disorders_percentage_and_more','2024-11-17 06:08:59.843388'),(30,'myapp','0011_rename_dissociative_precentage_option_dissociative_disorders_percentage_and_more','2024-11-17 06:31:31.341812');



UNLOCK TABLES;



--

-- Table structure for table "django_session"

--



DROP TABLE IF EXISTS django_session;





CREATE TABLE "django_session" (

  "session_key" varchar(40) NOT NULL,

  "session_data" longtext NOT NULL,

  "expire_date" datetime(6) NOT NULL,

  PRIMARY KEY ("session_key"),

  KEY "django_session_expire_date_a5c62663" ("expire_date")

) ;





--

-- Dumping data for table "django_session"

--



LOCK TABLES "django_session" WRITE;



INSERT INTO "django_session" VALUES ('0lv3f3z3ugx70z8k2vwwpqw86i88rhcn','.eJxVjMsOgjAUBf-la9PQ0nJbl-79BnJfCGpKQmFl_HclYaHbMzPnZXrc1rHfqi79JOZsnDn9boT80LIDuWO5zZbnsi4T2V2xB632Oos-L4f7dzBiHb91btAlHoB06MARRh_EUc4A7FpOIGFQlhTUgzIRNgmxIy_UNhopknl_AAG0ORo:1tAtjU:ZehSY0UhfxerrYFIrCnTpDtESbHBb8ax-rSjnqFlkMY','2024-11-26 16:27:12.066763'),('0rjh3l9bz9ql1sar1sttw4kq8qbp1cqp','.eJxVjDsOwjAQBe_iGlmO1z9R0nMGa_1ZHEC2FCdVxN1xpBTQzsx7O_O4rcVvPS9-TuzKJnb5ZQHjK9dDpCfWR-Ox1XWZAz8SftrO7y3l9-1s_w4K9jLWRmpJ1jorHAhBACmgFTI6jaRI6cGTGWCSKigw6MhSBBNGIVMkYJ8vsXA3EQ:1svJgX:YYQywXsbk8OGojO_xdX-iHC2tfsknjvJ8RqERh1zHx8','2024-10-14 16:55:45.682482'),('e5al8t160x24f1lazbceby1dk6l4kk6u','.eJxVjDsOwjAQBe_iGlm7_puSnjNY_qxxADlSnFSIu0OkFNC-mXkvFuK2trANWsJU2JlpdvrdUswP6jso99hvM89zX5cp8V3hBx38Ohd6Xg7376DF0b61VOg0gCcDVXjUUMAnoX1BI2sxliIZh0laawhyzVjRZYU1KZkFecfeH7izN0s:1tAtp5:yiqEx2j8R-YP2HZgbyRyVr0BuGiDBEkV4muB2PF82sE','2024-11-26 16:32:59.250511'),('hoe9lclftlmyx9ua1azjn8ue5no0ifz9','.eJxVjMsOgjAUBf-la9PQ0nJbl-79BnJfCGpKQmFl_HclYaHbMzPnZXrc1rHfqi79JOZsnDn9boT80LIDuWO5zZbnsi4T2V2xB632Oos-L4f7dzBiHb91btAlHoB06MARRh_EUc4A7FpOIGFQlhTUgzIRNgmxIy_UNhopknl_AAG0ORo:1tAnCJ:GkuspSlFnvNn89Z2LHITq_Ll_3G8dO-f20TaqCuV6l0','2024-11-26 09:28:31.204460'),('kfe4z68dn8th0vthxirss4x3r1s54igt','.eJxVjEEOwiAQRe_C2pAOnRZw6b5nIAwDUjWQlHZlvLtt0oVu_3vvv4Xz25rd1uLiZhZXgeLyu5EPz1gOwA9f7lWGWtZlJnko8qRNTpXj63a6fwfZt7zXZJMBUD0MCiN7xb6noMAaoEgwoO006sR2tIoJDSTC1CWlCdDsZBSfL9bZN0c:1tAtMZ:4FauvT3hD1yQigPG6R9mDe0KgnZQUR0W_LzK1RlHkM0','2024-11-26 16:03:31.885904'),('km3ln9jzda9fo4o50i0wuo6whsitsx2m','.eJxVjMsOgjAUBf-la9PQ0nJbl-79BnJfCGpKQmFl_HclYaHbMzPnZXrc1rHfqi79JOZsnDn9boT80LIDuWO5zZbnsi4T2V2xB632Oos-L4f7dzBiHb91btAlHoB06MARRh_EUc4A7FpOIGFQlhTUgzIRNgmxIy_UNhopknl_AAG0ORo:1t4WKe:BGS3FDrft4D_l3o4sBQkyVEgTZcllmfy4BXMH8BYULI','2024-11-09 02:15:12.615723'),('knni7530on60v5u8wy3ql53mag4osgsk','.eJxVjDsOwjAQBe_iGlmO1z9R0nMGa_1ZHEC2FCdVxN1xpBTQzsx7O_O4rcVvPS9-TuzKJnb5ZQHjK9dDpCfWR-Ox1XWZAz8SftrO7y3l9-1s_w4K9jLWRmpJ1jorHAhBACmgFTI6jaRI6cGTGWCSKigw6MhSBBNGIVMkYJ8vsXA3EQ:1sxg8D:6OhM5MgC2AwecvWpqjGeM27P3SKNsAhPU1A6UGiWKwc','2024-10-21 05:18:05.673762'),('l9kgit8esixur7jp3ot1q3x7wrgw21cw','.eJxVjMsOwiAQRf-FtSFApwx16d5vIDM8pGogKe3K-O_apAvd3nPOfQlP21r81tPi5yjOwojT78YUHqnuIN6p3poMra7LzHJX5EG7vLaYnpfD_Tso1Mu31gYBkTQHZcgFC4aG7PQACVxmSGbgETmjtSMrwoBgweYwaTVFAgTx_gDLAjdC:1t79La:xy9lVENN2_Tc5ri99h2IhFRo-kx3CrgwHzDmIRuUqk8','2024-11-16 08:19:02.401259'),('lqu8mr6do72fu87guskk0dqj3qz43jk2','.eJxVjEEOwiAQRe_C2pAOnRZw6b5nIAwDUjWQlHZlvLtt0oVu_3vvv4Xz25rd1uLiZhZXgeLyu5EPz1gOwA9f7lWGWtZlJnko8qRNTpXj63a6fwfZt7zXZJMBUD0MCiN7xb6noMAaoEgwoO006sR2tIoJDSTC1CWlCdDsZBSfL9bZN0c:1tCV3g:QRkdIp4zlu9wxP3X_xhKojAnEJPvt2Dy7x3vmMyD94g','2024-12-01 02:30:40.897699'),('mxb0h8qjs7ytzri4a113d3l4bn7ehhkq','.eJxVjDsOwjAQBe_iGlmO1z9R0nMGa_1ZHEC2FCdVxN1xpBTQzsx7O_O4rcVvPS9-TuzKJnb5ZQHjK9dDpCfWR-Ox1XWZAz8SftrO7y3l9-1s_w4K9jLWRmpJ1jorHAhBACmgFTI6jaRI6cGTGWCSKigw6MhSBBNGIVMkYJ8vsXA3EQ:1syBiB:O-wf1sW1gg8h0fxyQRu6Jyi2o3qa1J2d5e2ju3lM1Gc','2024-10-22 15:01:19.010499'),('qtycalgktjjq2i5xyf5t0donwtrxzwof','.eJxVjMEOgyAQBf-Fc0NYBYEee_cbyMJCsW0gET01_Xc18WCvM_Pelzlcl-zWFmc3Ebuznt2uzGN4x3IIemF5Vh5qWebJ8yPhp218rBQ_j7P9O8jY8r5OSD0Ykqh8p0WAAYW1YIAgaJkSkRYDAVgjVWeMtkLvSKoUFCqKCOy3Adx7N6o:1t79ZF:w08_IcHR5aHdhzC0LUeQX6CMMxlkzWG0gvmnptNBwXY','2024-11-16 08:33:09.567661'),('r6dswyg3341eqt9sut1uup7dlayj7hh2','.eJxVjMEOgyAQBf-Fc0NYBYEee_cbyMJCsW0gET01_Xc18WCvM_Pelzlcl-zWFmc3Ebuznt2uzGN4x3IIemF5Vh5qWebJ8yPhp218rBQ_j7P9O8jY8r5OSD0Ykqh8p0WAAYW1YIAgaJkSkRYDAVgjVWeMtkLvSKoUFCqKCOy3Adx7N6o:1t799A:1yf9Xd2XsJ06lIhtiDJXWDNh43i14aFdu4GxXv8cl4Q','2024-11-16 08:06:12.194544'),('rd4t9iuaih8dml208xxnu8115n6ukdj8','.eJxVjMsOgjAUBf-la9PQ0nJbl-79BnJfCGpKQmFl_HclYaHbMzPnZXrc1rHfqi79JOZsnDn9boT80LIDuWO5zZbnsi4T2V2xB632Oos-L4f7dzBiHb91btAlHoB06MARRh_EUc4A7FpOIGFQlhTUgzIRNgmxIy_UNhopknl_AAG0ORo:1t4Fk1:npewcTJFeCPkeRsIWig4nlxTuXQzlZgXct0oRrHbpio','2024-11-08 08:32:17.926096'),('si10y7ui6yi16cwviud7548o7gk45n2e','.eJxVjEEOwiAQRe_C2pAOnRZw6b5nIAwDUjWQlHZlvLtt0oVu_3vvv4Xz25rd1uLiZhZXgeLyu5EPz1gOwA9f7lWGWtZlJnko8qRNTpXj63a6fwfZt7zXZJMBUD0MCiN7xb6noMAaoEgwoO006sR2tIoJDSTC1CWlCdDsZBSfL9bZN0c:1tCNFo:1B0qRxJt756C-NVy30cxXdVpc3e-96x_PS7Zsx4Eh3Q','2024-11-30 18:10:40.637141');



UNLOCK TABLES;



--

-- Table structure for table "myapp_book"

--



DROP TABLE IF EXISTS myapp_book;





CREATE TABLE "myapp_book" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "book_name" varchar(100) NOT NULL,

  "depression_percentage" decimal(5,2) DEFAULT NULL,

  "anxiety_percentage" decimal(5,2) DEFAULT NULL,

  "mood_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "somatic_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "trauma_percentage" decimal(5,2) DEFAULT NULL,

  "stress_percentage" decimal(5,2) DEFAULT NULL,

  "obsessive_compulsive_percentage" decimal(5,2) DEFAULT NULL,

  "psychotic_percentage" decimal(5,2) DEFAULT NULL,

  "dissociative_percentage" decimal(5,2) DEFAULT NULL,

  "neurocognitive_percentage" decimal(5,2) DEFAULT NULL,

  "neurodevelopmental_percentage" decimal(5,2) DEFAULT NULL,

  "substance_use_percentage" decimal(5,2) DEFAULT NULL,

  "personality_percentage" decimal(5,2) DEFAULT NULL,

  "sleep_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "self_harm_percentage" decimal(5,2) DEFAULT NULL,

  "eating_percentage" decimal(5,2) DEFAULT NULL,

  PRIMARY KEY ("id")

) ;





--

-- Dumping data for table "myapp_book"

--



LOCK TABLES "myapp_book" WRITE;



INSERT INTO "myapp_book" VALUES (1,'The Anxiety and Phobia Workbook',100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00),(2,'The Body Keeps the Score',100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00),(3,'Emotional Intelligence',70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00),(4,'The Four Agreements',70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00),(5,'Mindfulness for Beginners',30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00),(6,'The Gifts of Imperfection',30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00);



UNLOCK TABLES;



--

-- Table structure for table "myapp_breathingexercise"

--



DROP TABLE IF EXISTS myapp_breathingexercise;





CREATE TABLE "myapp_breathingexercise" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "exercise_name" varchar(50) NOT NULL,

  "depression_percentage" decimal(5,2) DEFAULT NULL,

  "anxiety_percentage" decimal(5,2) DEFAULT NULL,

  "mood_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "somatic_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "trauma_percentage" decimal(5,2) DEFAULT NULL,

  "stress_percentage" decimal(5,2) DEFAULT NULL,

  "obsessive_compulsive_percentage" decimal(5,2) DEFAULT NULL,

  "psychotic_percentage" decimal(5,2) DEFAULT NULL,

  "dissociative_percentage" decimal(5,2) DEFAULT NULL,

  "neurocognitive_percentage" decimal(5,2) DEFAULT NULL,

  "neurodevelopmental_percentage" decimal(5,2) DEFAULT NULL,

  "substance_use_percentage" decimal(5,2) DEFAULT NULL,

  "personality_percentage" decimal(5,2) DEFAULT NULL,

  "sleep_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "self_harm_percentage" decimal(5,2) DEFAULT NULL,

  "eating_percentage" decimal(5,2) DEFAULT NULL,

  PRIMARY KEY ("id")

) ;





--

-- Dumping data for table "myapp_breathingexercise"

--



LOCK TABLES "myapp_breathingexercise" WRITE;



INSERT INTO "myapp_breathingexercise" VALUES (1,'Deep Breathing',30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00,30.00),(2,'4-7-8 Breathing',70.00,30.00,70.00,70.00,100.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00),(3,'Alternate Nostril Breathing',100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00,100.00),(4,'Grounding Breath',30.00,NULL,30.00,NULL,30.00,NULL,30.00,NULL,30.00,NULL,30.00,NULL,30.00,30.00,NULL,30.00),(5,'Box Breathing',70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00,70.00),(6,'Diaphragmatic Breathing',NULL,NULL,30.00,NULL,NULL,30.00,NULL,NULL,NULL,30.00,NULL,30.00,NULL,NULL,NULL,NULL),(7,'Relaxation Breathing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30.00,NULL,NULL);



UNLOCK TABLES;



--

-- Table structure for table "myapp_chat"

--



DROP TABLE IF EXISTS myapp_chat;





CREATE TABLE "myapp_chat" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "message" longtext NOT NULL,

  "response" longtext NOT NULL,

  "created_at" datetime(6) NOT NULL,

  "user_id" int NOT NULL,

  PRIMARY KEY ("id"),

  KEY "myapp_chat_user_id_4a684788_fk_auth_user_id" ("user_id"),

  CONSTRAINT "myapp_chat_user_id_4a684788_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")

) ;





--

-- Dumping data for table "myapp_chat"

--



LOCK TABLES "myapp_chat" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "myapp_movie"

--



DROP TABLE IF EXISTS myapp_movie;





CREATE TABLE "myapp_movie" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "movie_name" varchar(100) NOT NULL,

  "depression_percentage" decimal(5,2) DEFAULT NULL,

  "anxiety_percentage" decimal(5,2) DEFAULT NULL,

  "mood_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "somatic_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "trauma_percentage" decimal(5,2) DEFAULT NULL,

  "stress_percentage" decimal(5,2) DEFAULT NULL,

  "obsessive_compulsive_percentage" decimal(5,2) DEFAULT NULL,

  "psychotic_percentage" decimal(5,2) DEFAULT NULL,

  "dissociative_percentage" decimal(5,2) DEFAULT NULL,

  "neurocognitive_percentage" decimal(5,2) DEFAULT NULL,

  "neurodevelopmental_percentage" decimal(5,2) DEFAULT NULL,

  "substance_use_percentage" decimal(5,2) DEFAULT NULL,

  "personality_percentage" decimal(5,2) DEFAULT NULL,

  "sleep_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "self_harm_percentage" decimal(5,2) DEFAULT NULL,

  "eating_percentage" decimal(5,2) DEFAULT NULL,

  PRIMARY KEY ("id")

) ;





--

-- Dumping data for table "myapp_movie"

--



LOCK TABLES "myapp_movie" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "myapp_music"

--



DROP TABLE IF EXISTS myapp_music;





CREATE TABLE "myapp_music" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "music_name" varchar(50) NOT NULL,

  "depression_percentage" decimal(5,2) DEFAULT NULL,

  "anxiety_percentage" decimal(5,2) DEFAULT NULL,

  "mood_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "somatic_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "trauma_percentage" decimal(5,2) DEFAULT NULL,

  "stress_percentage" decimal(5,2) DEFAULT NULL,

  "obsessive_compulsive_percentage" decimal(5,2) DEFAULT NULL,

  "psychotic_percentage" decimal(5,2) DEFAULT NULL,

  "dissociative_percentage" decimal(5,2) DEFAULT NULL,

  "neurocognitive_percentage" decimal(5,2) DEFAULT NULL,

  "neurodevelopmental_percentage" decimal(5,2) DEFAULT NULL,

  "substance_use_percentage" decimal(5,2) DEFAULT NULL,

  "personality_percentage" decimal(5,2) DEFAULT NULL,

  "sleep_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "self_harm_percentage" decimal(5,2) DEFAULT NULL,

  "eating_percentage" decimal(5,2) DEFAULT NULL,

  PRIMARY KEY ("id")

) ;





--

-- Dumping data for table "myapp_music"

--



LOCK TABLES "myapp_music" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "myapp_option"

--



DROP TABLE IF EXISTS myapp_option;





CREATE TABLE "myapp_option" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "question_id" bigint NOT NULL,

  "anxiety_percentage" int DEFAULT NULL,

  "depression_percentage" int NOT NULL,

  "dissociative_disorders_percentage" int DEFAULT NULL,

  "eating_percentage" int DEFAULT NULL,

  "mood_disorder_percentage" int NOT NULL,

  "neurocognitive_percentage" int DEFAULT '0',

  "neurodevelopmental_percentage" int DEFAULT '0',

  "obsessive_compulsive_percentage" int DEFAULT '0',

  "option_text" longtext NOT NULL DEFAULT (_utf8mb3'Default option text'),

  "personality_precentage" int DEFAULT '0',

  "psychotic_percentage" int DEFAULT '0',

  "self_harm_percentage" int DEFAULT '0',

  "sleep_disorder_percentage" int DEFAULT '0',

  "somatic_disorder_percentage" int NOT NULL,

  "stress_precentage" int DEFAULT '0',

  "substance_use_percentage" int DEFAULT '0',

  "trauma_percentage" int DEFAULT '0',

  PRIMARY KEY ("id"),

  KEY "myapp_option_question_id_5b970e4f_fk_myapp_question_id" ("question_id"),

  CONSTRAINT "myapp_option_question_id_5b970e4f_fk_myapp_question_id" FOREIGN KEY ("question_id") REFERENCES "myapp_question" ("id")

) ;





--

-- Dumping data for table "myapp_option"

--



LOCK TABLES "myapp_option" WRITE;



INSERT INTO "myapp_option" VALUES (120,20,0,0,0,0,0,0,0,0,'Rarely; my dreams feel like normal dreams.',0,0,0,0,0,0,0,0),(121,20,0,10,0,0,15,0,0,0,'Sometimes I have intense dreams, especially under stress.',0,0,0,0,0,0,0,0),(122,20,20,25,0,0,0,0,0,0,'Often; they feel very vivid and realistic.',0,0,0,0,0,0,0,0),(123,20,30,40,0,0,20,0,0,0,'Almost always; I have vivid dreams that affect my waking life.',0,0,0,0,0,0,0,0),(124,2,0,0,0,0,0,0,0,0,'I stay focused and manage them well.',0,0,0,0,0,0,0,0),(125,2,0,0,0,0,0,0,0,0,'I tend to drift off if it뿯ν뿯½뿯½s too repetitive.',0,0,0,0,15,0,0,0),(126,2,0,0,0,0,0,0,0,0,'It뿯ν뿯½뿯½s challenging to stay engaged; I feel detached.',0,0,0,0,25,0,0,0),(127,2,30,0,0,0,20,0,0,0,'It뿯ν뿯½뿯½s hard to get started and I get frustrated easily.',0,0,0,0,0,0,0,0),(128,3,0,0,0,0,0,0,0,0,'Rarely; I prefer flexibility.',0,0,0,0,0,0,0,0),(129,3,0,20,0,0,0,0,0,0,'Sometimes; routine is helpful but not essential.',0,0,0,0,10,0,0,0),(130,3,0,25,0,0,35,0,0,0,'Often; routines help me manage daily stress.',0,0,0,0,0,0,0,0),(131,3,0,45,0,0,55,0,0,0,'Almost always; breaking routine feels highly stressful.',0,0,0,0,35,0,0,0),(132,4,0,0,0,0,0,0,0,0,'Adapt easily; I handle change well.',0,0,0,0,0,0,0,0),(133,4,15,0,0,0,0,0,0,0,'Sometimes feel unsure but adjust gradually.',0,0,0,0,10,0,0,0),(134,4,40,0,0,0,25,0,0,0,'Often feel tense or anxious with change.',0,0,0,0,0,0,0,0),(135,4,55,0,0,0,40,0,0,0,'Very unsettled; Mostly, I avoid changes.',0,0,0,0,35,0,0,0),(136,5,0,0,0,0,0,0,0,0,'Rarely; I usually feel physically fine.',0,0,0,0,0,0,0,0),(137,5,0,15,0,0,0,0,0,0,'Occasionally, during high-stress times.',0,0,0,0,20,0,0,0),(138,5,25,0,0,0,0,0,0,0,'Often; it feels unexplained and distracting.',0,0,0,0,40,0,0,0),(139,5,45,35,0,0,0,0,0,0,'Almost every day, it뿯ν뿯½뿯½s distressing and affects daily life.',0,0,0,0,60,0,0,0),(148,6,0,0,0,0,0,0,0,0,'Stable; I generally eat without much thought.',0,0,0,0,0,0,0,0),(149,6,0,20,0,0,20,0,0,0,'They change depending on my mood.',0,0,0,0,0,0,0,0),(150,6,0,40,0,0,0,0,0,0,'I often overeat.',0,0,0,0,0,0,0,0),(151,6,0,20,0,0,25,0,0,0,'I forget to eat sometimes.',0,0,0,0,40,0,0,0),(152,6,0,55,0,0,0,0,0,0,'I feel out of control with food choices.',0,0,0,0,25,0,0,0),(153,7,0,0,0,0,0,0,0,0,'Rarely; I feel mostly present.',0,0,0,0,0,0,0,0),(154,7,15,0,0,0,0,0,0,0,'Occasionally, especially when stressed.',0,0,0,0,20,0,0,0),(155,7,30,0,0,0,35,0,0,0,'Often; I struggle to stay grounded.',0,0,0,0,0,0,0,0),(156,7,60,0,0,0,0,0,0,0,'Almost always; I feel disconnected.',0,0,0,0,30,0,0,0),(157,8,0,0,0,0,0,0,0,0,'Never; I have other coping methods.',0,0,0,0,0,0,0,0),(158,8,10,0,0,0,0,0,0,0,'Occasionally, when it뿯ν뿯½뿯½s a party.',0,0,0,0,0,0,0,0),(159,8,35,50,0,0,0,0,0,0,'Often; When I am under stress.',0,0,0,0,0,0,0,0),(160,8,40,65,0,0,0,0,0,0,'Most often; They help me to cope.',0,0,0,0,0,0,0,0),(161,9,0,0,0,0,0,0,0,0,'Never.',0,0,0,0,0,0,0,0),(162,9,0,15,0,0,20,0,0,0,'Sometimes, depending on my mood.',0,0,0,0,0,0,0,0),(163,9,0,30,0,0,45,0,0,0,'Often; I feel distant or misunderstood.',0,0,0,0,0,0,0,0),(164,9,0,65,0,0,50,0,0,0,'Almost always; I struggle to connect.',0,0,0,0,25,0,0,0),(165,10,0,0,0,0,0,0,0,0,'Mostly trusting and open.',0,0,0,0,0,0,0,0),(166,10,0,15,0,0,0,0,0,0,'Cautious but still trustful with time.',0,0,0,0,0,0,0,0),(167,10,25,20,0,0,0,0,0,0,'Often struggle with trusting others.',0,0,0,0,0,0,0,0),(168,10,45,40,0,0,0,0,0,0,'Rarely trust; I assume negative intentions.',0,0,0,0,0,0,0,0),(169,11,0,0,0,0,0,0,0,0,'Rarely; I feel emotionally balanced.',0,0,0,0,0,0,0,0),(170,11,0,15,0,0,0,0,0,0,'Occasionally, during stressful events.',0,0,0,0,0,0,0,0),(171,11,30,45,0,0,0,0,0,0,'Often; emotions feel overwhelming.',0,0,0,0,0,0,0,0),(172,11,50,65,0,0,0,0,0,0,'Almost constantly; I couldn뿯ν뿯½뿯½t control emotions easily.',0,0,0,0,0,0,0,0),(173,12,0,0,0,0,0,0,0,0,'Rarely.',0,0,0,0,0,0,0,0),(174,12,15,20,0,0,0,0,0,0,'Occasionally, I procrastinate.',0,0,0,0,0,0,0,0),(175,12,0,40,0,0,0,0,0,0,'Often, it\'s hard to stay motivated every day.',0,0,0,0,0,0,0,0),(176,12,20,45,0,0,35,0,0,0,'Almost always; daily tasks feel impossible.',0,0,0,0,0,0,0,0),(181,13,0,0,0,0,0,0,0,0,'Never; I have no thoughts of harm.',0,0,0,0,0,0,0,0),(182,13,0,30,0,0,0,0,0,0,'Occasionally, but I don뿯ν뿯½뿯½t act on them.',0,0,0,0,10,0,0,0),(183,13,0,65,0,0,30,0,0,0,'Often; but I try to suppress these urges.',0,0,0,0,20,0,0,0),(184,13,0,85,0,0,60,0,0,0,'Frequently; they feel overwhelming.',0,0,0,0,40,0,0,0),(185,14,0,0,0,0,0,0,0,0,'Rarely; I feel relaxed most of the time.',0,0,0,0,0,0,0,0),(186,14,0,15,0,0,0,0,0,0,'Sometimes; I experience mild restlessness.',0,0,0,0,0,0,0,0),(187,14,20,25,0,0,0,0,0,0,'Often; I find it hard to sit still or calm my mind.',0,0,0,0,10,0,0,0),(188,14,35,50,0,0,40,0,0,0,'Almost always; I feel physically tense.',0,0,0,0,50,0,0,0),(189,15,0,0,0,0,0,0,0,0,'I enjoy meeting new people and talking.',0,0,0,0,0,0,0,0),(190,15,10,15,0,0,0,0,0,0,'I뿯ν뿯½뿯½m okay with meeting people, but need breaks.',0,0,0,0,0,0,0,0),(191,15,40,35,0,0,0,0,0,0,'I feel uncomfortable in social settings, but try to manage.',0,0,0,0,0,0,0,0),(192,15,60,55,0,0,0,0,0,0,'I avoid social gatherings and feel anxious about them.',0,0,0,0,0,0,0,0),(193,16,0,0,0,0,0,0,0,0,'I sleep soundly and feel rested.',0,0,0,0,0,0,0,0),(194,16,0,15,0,0,0,0,0,0,'I sleep well most nights, but occasionally struggle.',0,0,0,0,10,0,0,0),(195,16,20,40,0,0,0,0,0,0,'I have trouble falling asleep or staying asleep.',0,0,0,0,0,0,0,0),(196,16,50,60,0,0,0,0,0,0,'I rarely sleep well; I wake up tired.',0,0,0,0,30,0,0,0),(197,17,0,0,0,0,0,0,0,0,'I understand information easily and retain it well.',0,0,0,0,0,0,0,0),(198,17,0,10,0,0,15,0,0,0,'I sometimes struggle, but manage to process things.',0,0,0,0,0,0,0,0),(199,17,25,30,0,0,0,0,0,0,'I find it challenging to focus or understand new information.',0,0,0,0,0,0,0,0),(200,17,40,45,0,0,0,0,0,0,'I often feel confused and have trouble processing.',0,0,0,0,0,0,0,0),(201,18,0,0,0,0,0,0,0,0,'Rarely; I feel balanced in my emotions.',0,0,0,0,0,0,0,0),(202,18,20,15,0,0,0,0,0,0,'Occasionally, I experience emotional fluctuations.',0,0,0,0,10,0,0,0),(203,18,35,35,0,0,20,0,0,0,'Often; my emotions can be unpredictable or intense.',0,0,0,0,0,0,0,0),(204,18,45,50,0,0,35,0,0,0,'Almost always; my emotions seem out of control.',0,0,0,0,0,0,0,0),(205,19,0,0,0,0,0,0,0,0,'I stay organized and on top of my tasks.',0,0,0,0,0,0,0,0),(206,19,10,15,0,0,0,0,0,0,'I sometimes get behind, but catch up quickly.',0,0,0,0,0,0,0,0),(207,19,20,30,0,0,0,0,0,0,'I often feel disorganized and struggle with tasks.',0,0,0,0,0,0,0,0),(208,19,30,45,0,0,40,0,0,0,'I뿯ν뿯½뿯½m frequently overwhelmed and unable to keep up.',0,0,0,0,0,0,0,0),(213,1,0,0,0,0,0,0,0,0,'Always; I feel enthusiastic and full of energy.',0,0,0,0,0,0,0,0),(214,1,0,10,0,0,15,0,0,0,'Often, though I experience occasional dips.',0,0,0,0,0,0,0,0),(215,1,20,25,0,0,0,0,0,0,'Sometimes; I need to push myself to start.',0,0,0,0,0,0,0,0),(216,1,0,50,0,0,40,0,0,0,'Rarely, I feel a little tired mostly.',0,0,0,0,30,0,0,0),(217,175,0,0,0,0,0,0,0,0,'Some tension, but manageable.',0,0,0,0,0,0,0,0),(218,175,100,0,0,0,0,0,0,0,'Intense discomfort, often overwhelming.',0,0,0,0,0,0,0,0),(219,176,0,0,0,0,0,0,0,0,'Only in rare or high-stress situations.',0,0,0,0,0,0,0,0),(220,176,100,0,0,0,0,0,0,0,'Very frequently, even in normal situations.',0,0,0,0,0,0,0,0),(221,177,0,0,0,0,0,0,0,0,'Uncomfortable, but able to focus on the present.',0,0,0,0,0,0,0,0),(222,177,0,0,0,0,0,0,0,0,'Transported back to the event; very distressed.',0,0,0,0,0,0,0,100),(223,178,0,0,0,0,0,0,0,0,'Can handle them with mild discomfort.',0,0,0,0,0,0,0,0),(224,178,0,0,0,0,0,0,0,0,'I avoid them, as they trigger strong reactions.',0,0,0,0,0,0,0,100),(225,179,0,0,0,0,0,0,0,0,'Brief discomfort, able to manage it.',0,0,0,0,0,0,0,0),(226,179,0,0,0,0,0,0,0,0,'Prolonged physical symptoms like shaking or sweating.',0,0,0,0,0,0,100,0),(227,180,0,0,0,0,0,0,0,0,'I experience mild, manageable stress.',0,0,0,0,0,0,0,0),(228,180,0,0,0,0,0,0,0,0,'I feel overwhelmed by even small stressors.',0,0,0,0,0,0,100,0),(229,181,0,0,0,0,100,0,0,0,'Mostly stable, with usual ups and downs.',0,0,0,0,0,0,0,0),(230,181,0,0,0,0,100,0,0,0,'Frequent, extreme shifts, often unpredictable.',0,0,0,0,0,0,0,0),(231,182,0,0,0,0,100,0,0,0,'Positive or neutral about the day ahead.',0,0,0,0,0,0,0,0),(232,182,0,0,0,0,100,0,0,0,'Dreadful, tired or without energy to face the day.',0,0,0,0,0,0,0,0),(233,183,0,0,0,0,0,0,0,0,'Only occasionally, if ever.',0,0,0,0,0,0,0,0),(234,183,0,0,0,0,0,0,100,0,'Frequently; repeating actions relieves anxiety.',0,0,0,0,0,0,0,0),(235,184,0,0,0,0,0,0,0,0,'Usually easy to let go.',0,0,0,0,0,0,0,0),(236,184,0,0,0,0,0,0,100,0,'They feel stuck and hard to ignore.',0,0,0,0,0,0,0,0),(237,185,0,0,0,0,0,0,0,0,'Rarely, or only in dreams.',0,0,0,0,0,0,0,0),(238,185,0,0,0,0,0,0,0,0,'Sometimes it뿯ν뿯½뿯½s hard to tell what뿯ν뿯½뿯½s real.',0,0,0,0,0,100,0,0),(239,186,0,0,0,0,0,0,0,0,'Only occasionally.',0,0,0,0,0,0,0,0),(240,186,0,0,0,0,0,0,0,0,'Frequently, in a way that feels out of my control.',0,0,0,0,0,100,0,0),(241,187,0,0,100,0,0,0,0,0,'Only rarely, if ever.',0,0,0,0,0,0,0,0),(242,187,0,0,100,0,0,0,0,0,'Frequently, like I뿯ν뿯½뿯½m watching myself from outside.',0,0,0,0,0,0,0,0),(243,188,0,0,100,0,0,0,0,0,'Only very rarely.',0,0,0,0,0,0,0,0),(244,188,0,0,100,0,0,0,0,0,'Yes, frequently during stress.',0,0,0,0,0,0,0,0),(269,206,0,0,0,0,0,0,0,0,'Generally comfortable, without concern',0,0,0,0,0,0,0,0),(270,206,0,0,0,100,0,0,0,0,'Often uncomfortable. or may avoid eating',0,0,0,0,0,0,0,0),(271,205,0,0,0,0,0,0,0,0,'Occasionally, if at all',0,0,0,0,0,0,0,0),(272,205,0,0,0,100,0,0,0,0,'Very often, with intense focus on these details',0,0,0,0,0,0,0,0),(273,204,0,0,0,0,0,0,0,0,'Never, or rarely',0,0,0,0,0,0,0,0),(274,204,0,0,0,0,0,0,0,0,'Often, it feels like a necessary release',0,0,100,0,0,0,0,0),(275,203,0,0,0,0,0,0,0,0,'By reaching out or managing it in healthy ways',0,0,0,0,0,0,0,0),(276,203,0,0,0,0,0,0,0,0,'I sometimes use self-harm to cope',0,0,100,0,0,0,0,0),(277,202,0,0,0,0,0,0,0,0,'Generally easy, with little trouble sleeping',0,0,0,0,0,0,0,0),(278,202,0,0,0,0,0,0,0,0,'Difficult, often experiencing disruptions',0,0,0,100,0,0,0,0),(280,201,0,0,0,0,0,0,0,0,'Generally well-rested and alert',0,0,0,0,0,0,0,0),(281,201,0,0,0,0,0,0,0,0,'Frequently tired and unrefreshed',0,0,0,100,0,0,0,0),(282,200,0,0,0,0,0,0,0,0,'Rarely,unless its severe',0,0,0,0,0,0,0,0),(283,200,0,0,0,0,0,0,0,0,'often, even if symptoms are minor',0,0,0,0,100,0,0,0),(284,199,0,0,0,0,0,0,0,0,'As naturally and not concerning',0,0,0,0,0,0,0,0),(285,199,0,0,0,0,0,0,0,0,'As signs of a potential illness or problem',0,0,0,0,100,0,0,0),(286,198,0,0,0,0,0,0,0,0,'Rarely, only during particularly tough times',0,0,0,0,0,0,0,0),(287,198,0,100,0,0,0,0,0,0,'Frequently, as a recurring feeling',0,0,0,0,0,0,0,0),(288,197,0,0,0,0,0,0,0,0,'Generally motivated, with usual interest',0,0,0,0,0,0,0,0),(289,197,0,100,0,0,0,0,0,0,'Often unmotivated, even for favourite activities',0,0,0,0,0,0,0,0),(290,196,0,0,0,0,0,0,0,0,'Consistent, with clear sense of self',0,0,0,0,0,0,0,0),(291,196,0,0,0,0,0,0,0,0,'Often fluctuating or uncertain',100,0,0,0,0,0,0,0),(292,195,0,0,0,0,0,0,0,0,'Generally stable, with some ups and downs',0,0,0,0,0,0,0,0),(293,194,0,0,0,0,0,0,0,0,'Rarely or never rely on substances',0,0,0,0,0,0,0,0),(294,194,0,0,0,0,0,0,0,0,'Often, substances help me cope',0,0,0,0,0,0,100,0),(295,193,0,0,0,0,0,0,0,0,'I can take it or leave it; doesn뿯ν뿯½뿯½t strongly impact me',0,0,0,0,0,0,0,0),(296,193,0,0,0,0,0,0,0,0,'I feel a strong urge to engage',0,0,0,0,0,0,100,0),(297,192,0,0,0,0,0,0,0,0,'I generally stay organized and on track',0,0,0,0,0,0,0,0),(298,192,0,0,0,0,0,0,100,0,'I struggle with maintaining routines',0,0,0,0,0,0,0,0),(299,191,0,0,0,0,0,0,0,0,'Quite easily; I rarely feel out of place',0,0,0,0,0,0,0,0),(300,191,0,0,0,0,0,0,100,0,'It뿯ν뿯½뿯½s often difficult to understand social cues',0,0,0,0,0,0,0,0),(301,190,0,0,0,0,0,0,0,0,'Yes, I rarely get confused with familiar tasks',0,0,0,0,0,0,0,0),(302,190,0,0,0,0,0,100,0,0,'I often struggle to recall steps or focus',0,0,0,0,0,0,0,0),(303,189,0,0,0,0,0,0,0,0,'Rarely, my memory is consistent',0,0,0,0,0,0,0,0),(304,189,0,0,0,0,0,100,0,0,'Frequently, its hard to recall recent events',0,0,0,0,0,0,0,0),(305,195,0,0,0,0,0,0,0,0,'Often turbulent or hard to maintain',100,0,0,0,0,0,0,0);



UNLOCK TABLES;



--

-- Table structure for table "myapp_podcast"

--



DROP TABLE IF EXISTS myapp_podcast;





CREATE TABLE "myapp_podcast" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "podcast_name" varchar(100) NOT NULL,

  "depression_percentage" decimal(5,2) DEFAULT NULL,

  "anxiety_percentage" decimal(5,2) DEFAULT NULL,

  "mood_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "somatic_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "trauma_percentage" decimal(5,2) DEFAULT NULL,

  "stress_percentage" decimal(5,2) DEFAULT NULL,

  "obsessive_compulsive_percentage" decimal(5,2) DEFAULT NULL,

  "psychotic_percentage" decimal(5,2) DEFAULT NULL,

  "dissociative_percentage" decimal(5,2) DEFAULT NULL,

  "neurocognitive_percentage" decimal(5,2) DEFAULT NULL,

  "neurodevelopmental_percentage" decimal(5,2) DEFAULT NULL,

  "substance_use_percentage" decimal(5,2) DEFAULT NULL,

  "personality_percentage" decimal(5,2) DEFAULT NULL,

  "sleep_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "self_harm_percentage" decimal(5,2) DEFAULT NULL,

  "eating_percentage" decimal(5,2) DEFAULT NULL,

  PRIMARY KEY ("id")

) ;





--

-- Dumping data for table "myapp_podcast"

--



LOCK TABLES "myapp_podcast" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "myapp_profile"

--



DROP TABLE IF EXISTS myapp_profile;





CREATE TABLE "myapp_profile" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "avatar" varchar(100) DEFAULT NULL,

  "mobile_number" varchar(15) DEFAULT NULL,

  "gender" varchar(1) DEFAULT NULL,

  "nationality" varchar(50) DEFAULT NULL,

  "user_id" int NOT NULL,

  PRIMARY KEY ("id"),

  UNIQUE KEY "user_id" ("user_id"),

  CONSTRAINT "myapp_profile_user_id_9fe34268_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")

) ;





--

-- Dumping data for table "myapp_profile"

--



LOCK TABLES "myapp_profile" WRITE;



INSERT INTO "myapp_profile" VALUES (1,'','8328523706','M','Indian',1),(2,'','6301784025','O','Indian',2),(3,'','09063222603','M','Mongolian',3),(4,'',NULL,NULL,NULL,4),(5,'','9014343328','F','Indian',5);



UNLOCK TABLES;



--

-- Table structure for table "myapp_question"

--



DROP TABLE IF EXISTS myapp_question;





CREATE TABLE "myapp_question" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "question_text" longtext NOT NULL,

  "question_type" varchar(255) DEFAULT 'stage_1',

  PRIMARY KEY ("id")

) ;





--

-- Dumping data for table "myapp_question"

--



LOCK TABLES "myapp_question" WRITE;



INSERT INTO "myapp_question" VALUES (1,'How frequently do you feel energized and ready to take on the day?','stage_1'),(2,'When handling complex or repetitive tasks, how do you feel?','stage_1'),(3,'How often do you find yourself needing a strict routine or specific habits to feel in control?','stage_1'),(4,'When faced with sudden changes or new situations, how do you react?','stage_1'),(5,'How often do you experience physical discomfort without an identifiable cause?','stage_1'),(6,'How would you describe your eating habits or relationship with food?','stage_1'),(7,'How frequently do you feel a need to escape from your surroundings or people?','stage_1'),(8,'How frequently do you rely on alcohol, food, or substances to manage emotions?','stage_1'),(9,'How frequently do you find it difficult to feel genuinely connected with people around you?','stage_1'),(10,'How would you describe your general ability to trust others?','stage_1'),(11,'How often do you feel intense or uncontrollable emotions?','stage_1'),(12,'How often do you struggle to complete daily activities or responsibilities?','stage_1'),(13,'How frequently do you experience thoughts or urges to hurt yourself?','stage_1'),(14,'How often do you feel physically restless or unable to relax?','stage_1'),(15,'How do you feel about social gatherings or events with new people?','stage_1'),(16,'How would you describe your typical sleep patterns?','stage_1'),(17,'How do you feel about your ability to understand and process information?','stage_1'),(18,'How often do you experience intense or unusual emotional responses, such as laughing without a clear reason?','stage_1'),(19,'How would you describe your ability to stay organized and manage your daily tasks?','stage_1'),(20,'How frequently do you experience vivid dreams or thoughts that feel extremely real?','stage_1'),(175,'How does your body feel when thinking about upcoming responsibilities?','Anxiety Disorders'),(176,'How often do you anticipate the worst-case scenario in unfamiliar situations?','Anxiety Disorders'),(177,'When reminded of a past difficult experience, how do you typically feel?','Trauma-Related Disorders'),(178,'When encountering things linked to past trauma, how do you react?','Trauma-Related Disorders'),(179,'When facing unexpected situations, how does your body react?','Stress-Related Disorders'),(180,'How do you handle routine stressors in your day-to-day life?','Stress-Related Disorders'),(181,'How would you describe your overall mood consistency over the past month?','Mood Disorders'),(182,'How do you feel when you wake up in the morning?','Mood Disorders'),(183,'How often do you feel the need to repeat certain actions to reduce worry?','Obsessive-Compulsive Disorder (OCD)'),(184,'When certain thoughts come to mind, how easy is it for you to dismiss them?','Obsessive-Compulsive Disorder (OCD)'),(185,'How often do you experience thoughts or perceptions that don뿯ν뿯½뿯½t align with reality?','Psychotic Disorders'),(186,'Do you experience strong emotions, like laughter or anger, for no clear reason?','Psychotic Disorders'),(187,'How often do you feel disconnected from yourself or your surroundings?','Dissociative Disorders'),(188,'When stressed, do you ever feel as though you뿯ν뿯½뿯½re in a dream-like state?','Dissociative Disorders'),(189,'How often do you find yourself forgetting recent events or important details?','Neurocognitive Disorders'),(190,'Do you feel confident in your ability to complete familiar tasks without confusion?','Neurocognitive Disorders'),(191,'How easily do you follow and understand social cues in conversations?','Neurodevelopmental Disorders'),(192,'How organized and consistent are you in managing daily routines?','Neurodevelopmental Disorders'),(193,'How do you respond when you뿯ν뿯½뿯½re in an environment with substances like alcohol or drugs?','Substance Use Disorders'),(194,'When dealing with stress, how likely are you to rely on substances for relief?','Substance Use Disorders'),(195,'How stable are your close relationships over time?','Personality Disorders'),(196,'How would you describe your general sense of self and identity?','Personality Disorders'),(197,'How motivated are you to engage in activities you usually enjoy?','Depression'),(198,'How often do you feel hopeless or worthless?','Depression'),(199,'How do you usually interpret minor physical sensations in your body?','Somatic Disorders'),(200,'When experiencing physical symptoms, how often do you seek medical reassurance?','Somatic Disorders'),(201,'How rested do you feel upon waking in the morning?','Sleep-Wake Disorders'),(202,'How easy is it for you to fall asleep and stay asleep?','Sleep-Wake Disorders'),(203,'How do you handle overwhelming emotional pain?','Self-Harm'),(204,'In moments of intense distress, how often do you feel a need to harm yourself to release tension?','Self-Harm'),(205,'How often do you think about the nutritional content or calorie count of your meals before eating?','Eating Disorders'),(206,'When it comes to food, how comfortable are you around situations where your eating might be observed by others?','Eating Disorders');



UNLOCK TABLES;



--

-- Table structure for table "myapp_userresponse"

--



DROP TABLE IF EXISTS myapp_userresponse;





CREATE TABLE "myapp_userresponse" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "created_at" datetime(6) NOT NULL,

  "question_id" bigint NOT NULL,

  "selected_option_id" bigint NOT NULL,

  "user_id" int NOT NULL,

  PRIMARY KEY ("id"),

  KEY "myapp_userresponse_question_id_f1a27497_fk_myapp_question_id" ("question_id"),

  KEY "myapp_userresponse_selected_option_id_eaffce05_fk_myapp_opt" ("selected_option_id"),

  KEY "myapp_userresponse_user_id_80d3bd1d_fk_auth_user_id" ("user_id"),

  CONSTRAINT "myapp_userresponse_question_id_f1a27497_fk_myapp_question_id" FOREIGN KEY ("question_id") REFERENCES "myapp_question" ("id"),

  CONSTRAINT "myapp_userresponse_selected_option_id_eaffce05_fk_myapp_opt" FOREIGN KEY ("selected_option_id") REFERENCES "myapp_option" ("id"),

  CONSTRAINT "myapp_userresponse_user_id_80d3bd1d_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")

) ;





--

-- Dumping data for table "myapp_userresponse"

--



LOCK TABLES "myapp_userresponse" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "myapp_workout"

--



DROP TABLE IF EXISTS myapp_workout;





CREATE TABLE "myapp_workout" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "workout_name" varchar(50) NOT NULL,

  "depression_percentage" decimal(5,2) DEFAULT NULL,

  "anxiety_percentage" decimal(5,2) DEFAULT NULL,

  "mood_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "somatic_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "trauma_percentage" decimal(5,2) DEFAULT NULL,

  "stress_percentage" decimal(5,2) DEFAULT NULL,

  "obsessive_compulsive_percentage" decimal(5,2) DEFAULT NULL,

  "psychotic_percentage" decimal(5,2) DEFAULT NULL,

  "dissociative_percentage" decimal(5,2) DEFAULT NULL,

  "neurocognitive_percentage" decimal(5,2) DEFAULT NULL,

  "neurodevelopmental_percentage" decimal(5,2) DEFAULT NULL,

  "substance_use_percentage" decimal(5,2) DEFAULT NULL,

  "personality_percentage" decimal(5,2) DEFAULT NULL,

  "sleep_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "self_harm_percentage" decimal(5,2) DEFAULT NULL,

  "eating_percentage" decimal(5,2) DEFAULT NULL,

  PRIMARY KEY ("id")

) ;





--

-- Dumping data for table "myapp_workout"

--



LOCK TABLES "myapp_workout" WRITE;





UNLOCK TABLES;



--

-- Table structure for table "myapp_yoga"

--



DROP TABLE IF EXISTS myapp_yoga;





CREATE TABLE "myapp_yoga" (

  "id" bigint NOT NULL AUTOINCREMENT,

  "yoga_name" varchar(50) NOT NULL,

  "depression_percentage" decimal(5,2) DEFAULT NULL,

  "anxiety_percentage" decimal(5,2) DEFAULT NULL,

  "mood_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "somatic_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "trauma_percentage" decimal(5,2) DEFAULT NULL,

  "stress_percentage" decimal(5,2) DEFAULT NULL,

  "obsessive_compulsive_percentage" decimal(5,2) DEFAULT NULL,

  "psychotic_percentage" decimal(5,2) DEFAULT NULL,

  "dissociative_percentage" decimal(5,2) DEFAULT NULL,

  "neurocognitive_percentage" decimal(5,2) DEFAULT NULL,

  "neurodevelopmental_percentage" decimal(5,2) DEFAULT NULL,

  "substance_use_percentage" decimal(5,2) DEFAULT NULL,

  "personality_percentage" decimal(5,2) DEFAULT NULL,

  "sleep_disorder_percentage" decimal(5,2) DEFAULT NULL,

  "self_harm_percentage" decimal(5,2) DEFAULT NULL,

  "eating_percentage" decimal(5,2) DEFAULT NULL,

  PRIMARY KEY ("id")

) ;





--

-- Dumping data for table "myapp_yoga"

--



LOCK TABLES "myapp_yoga" WRITE;





UNLOCK TABLES;





















-- Dump completed on 2024-11-17 12:51:09

