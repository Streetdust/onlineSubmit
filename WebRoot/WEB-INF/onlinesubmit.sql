/*
Navicat MySQL Data Transfer

Source Server         : li
Source Server Version : 50537
Source Host           : 127.0.0.1:3306
Source Database       : onlinesubmit

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2019-05-12 21:32:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stu_file
-- ----------------------------
DROP TABLE IF EXISTS `stu_file`;
CREATE TABLE `stu_file` (
  `student_id` varchar(10) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`task_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `stu_file_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`),
  CONSTRAINT `stu_file_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tb_task` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_file
-- ----------------------------

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin_name` varchar(20) NOT NULL,
  `admin_pass` varchar(15) NOT NULL,
  PRIMARY KEY (`admin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------

-- ----------------------------
-- Table structure for tb_classes
-- ----------------------------
DROP TABLE IF EXISTS `tb_classes`;
CREATE TABLE `tb_classes` (
  `class_id` int(10) NOT NULL AUTO_INCREMENT,
  `class_num` varchar(5) NOT NULL,
  `class_depa` varchar(50) NOT NULL,
  `class_major` varchar(50) NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `class_depa` (`class_depa`),
  KEY `class_depa_2` (`class_depa`),
  KEY `class_major` (`class_major`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_classes
-- ----------------------------
INSERT INTO `tb_classes` VALUES ('1', '1611', '计算机工程学院', '软件工程');

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `class_depa` varchar(50) NOT NULL,
  `class_major` varchar(50) NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `class_depa` (`class_depa`),
  KEY `class_major` (`class_major`),
  CONSTRAINT `tb_course_ibfk_1` FOREIGN KEY (`class_major`) REFERENCES `tb_classes` (`class_major`),
  CONSTRAINT `class_depa` FOREIGN KEY (`class_depa`) REFERENCES `tb_classes` (`class_depa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_course
-- ----------------------------
INSERT INTO `tb_course` VALUES ('math', '数学', '计算机工程学院', '软件工程');

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `student_id` varchar(10) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `student_pass` varchar(15) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `tb_student_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_classes` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------

-- ----------------------------
-- Table structure for tb_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_task`;
CREATE TABLE `tb_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_desc` varchar(10000) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `task_release` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `task_abort` date DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `file_id` (`file_name`),
  KEY `teacher_id` (`teacher_id`),
  KEY `class_id` (`class_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `tb_task_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `tb_teacher` (`teacher_id`),
  CONSTRAINT `tb_task_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `tb_classes` (`class_id`),
  CONSTRAINT `tb_task_ibfk_4` FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_task
-- ----------------------------
INSERT INTO `tb_task` VALUES ('6', '张勋复辟给后面尽快了', '4a3fec21-5feb-42af-a1c4-d7a75523c137.docx', '2016117', '1', 'math', '2019-05-12 21:30:46', '2019-05-13');

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `teacher_id` varchar(10) NOT NULL,
  `teacher_name` varchar(20) NOT NULL,
  `teacher_pass` varchar(15) NOT NULL,
  `teacher_tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES ('2016117', 'Tom', '12345', '668011');

-- ----------------------------
-- Table structure for teacher_class
-- ----------------------------
DROP TABLE IF EXISTS `teacher_class`;
CREATE TABLE `teacher_class` (
  `teacher_id` varchar(10) NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  PRIMARY KEY (`teacher_id`,`class_id`,`course_id`),
  KEY `class_id` (`class_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `teacher_class_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`course_id`),
  CONSTRAINT `teacher_class_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `tb_teacher` (`teacher_id`),
  CONSTRAINT `teacher_class_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `tb_classes` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_class
-- ----------------------------
