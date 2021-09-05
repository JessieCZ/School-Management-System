/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : examination_system

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2021-08-24 00:03:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for college
-- ----------------------------
-- DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `collegeID` int(11) NOT NULL,
  `collegeName` varchar(200) NOT NULL COMMENT 'Course Name',
  PRIMARY KEY (`collegeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', 'Computer Science');
INSERT INTO `college` VALUES ('2', 'Arts & Design');
INSERT INTO `college` VALUES ('3', 'Economics');
INSERT INTO `college` VALUES ('4', 'Social Science');
INSERT INTO `college` VALUES ('5', 'Mathematics');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(200) NOT NULL COMMENT 'Course Name',
  `teacherID` int(11) NOT NULL,
  `courseTime` varchar(200) DEFAULT NULL COMMENT 'Schedule',
  `classRoom` varchar(200) DEFAULT NULL COMMENT 'Location',
  `courseWeek` int(200) DEFAULT NULL COMMENT 'Sessions',
  `courseType` varchar(20) DEFAULT NULL COMMENT 'Notes',
  `collegeID` int(11) NOT NULL COMMENT 'Department',
  `score` int(11) NOT NULL COMMENT 'Credits',
  PRIMARY KEY (`courseID`),
  KEY `collegeID` (`collegeID`),
  KEY `teacherID` (`teacherID`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`),
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Intro to System Design', '1001', 'Tue', 'LJ401', '18', 'Required', '1', '3');
INSERT INTO `course` VALUES ('2', 'Python I', '1001', 'Thur', 'X402', '18', 'Public', '1', '3');
INSERT INTO `course` VALUES ('3', 'Data Structure & Algorithms', '1001', 'Thur', 'TG401', '18', 'Required', '1', '2');
INSERT INTO `course` VALUES ('4', 'Java II', '1002', 'Fri', 'TG401', '18', 'Optional', '1', '2');
INSERT INTO `course` VALUES ('5', 'Web Dev Intermediate', '1002', 'Thur', 'X302', '18', 'Required', '2', '2');
INSERT INTO `course` VALUES ('6', 'Business Intelligence', '1003', 'Mon', 'AS401', '18', 'Optional', '2', '2');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `roleName` varchar(20) NOT NULL,
  `permissions` varchar(255) DEFAULT NULL COMMENT 'role',
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('0', 'admin', null);
INSERT INTO `role` VALUES ('1', 'teacher', null);
INSERT INTO `role` VALUES ('2', 'student', null);

-- ----------------------------
-- Table structure for selectedcourse
-- ----------------------------
DROP TABLE IF EXISTS `selectedcourse`;
CREATE TABLE `selectedcourse` (
  `courseID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `mark` int(11) DEFAULT NULL COMMENT 'Grade',
  KEY `courseID` (`courseID`),
  KEY `studentID` (`studentID`),
  CONSTRAINT `selectedcourse_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  CONSTRAINT `selectedcourse_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selectedcourse
-- ----------------------------
INSERT INTO `selectedcourse` VALUES ('2', '10001', '12');
INSERT INTO `selectedcourse` VALUES ('1', '10001', '95');
INSERT INTO `selectedcourse` VALUES ('1', '10002', '66');
INSERT INTO `selectedcourse` VALUES ('1', '10003', null);
INSERT INTO `selectedcourse` VALUES ('2', '10003', '99');
INSERT INTO `selectedcourse` VALUES ('5', '10001', null);
INSERT INTO `selectedcourse` VALUES ('3', '10001', null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthYear` date DEFAULT NULL COMMENT 'DoB',
  `grade` date DEFAULT NULL COMMENT 'Start Date',
  `collegeID` int(11) NOT NULL COMMENT 'Department ID',
  PRIMARY KEY (`userID`),
  KEY `collegeID` (`collegeID`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('10001', 'Jack', 'Male', '1996-09-02', '2018-09-02', '1');
INSERT INTO `student` VALUES ('10002', 'Ann', 'Female', '1997-11-14', '2019-09-02', '3');
INSERT INTO `student` VALUES ('10003', 'Jessie', 'Female', '1996-04-13', '2020-09-02', '2');
INSERT INTO `student` VALUES ('10004', 'David', 'Male', '1996-06-27', '2019-09-02', '2');
INSERT INTO `student` VALUES ('10005', 'Amy', 'Female', '1999-01-22', '2019-09-02', '4');
INSERT INTO `student` VALUES ('10006', 'Hester', 'Female', '1998-05-01', '2021-01-02', '1');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthYear` date NOT NULL,
  `degree` varchar(20) DEFAULT NULL COMMENT 'Education',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `grade` date DEFAULT NULL COMMENT 'Start Date',
  `collegeID` int(11) NOT NULL COMMENT 'Department',
  PRIMARY KEY (`userID`),
  KEY `collegeID` (`collegeID`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1001', 'Victoria P', 'Female', '1990-03-08', 'Master', 'Associate Professor', '2015-09-02', '2');
INSERT INTO `teacher` VALUES ('1002', 'Andrew Ng', 'Male', '1979-09-02', 'PhD', 'Professor', '2015-09-02', '1');
INSERT INTO `teacher` VALUES ('1003', 'Kyle A', 'Male', '1983-09-02', 'Master', 'Lecturer', '2021-07-07', '3');

-- ----------------------------
-- Table structure for userlogin
-- ----------------------------
DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE `userlogin` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '2' COMMENT 'Role',
  PRIMARY KEY (`userID`),
  KEY `role` (`role`),
  CONSTRAINT `userlogin_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlogin
-- ----------------------------
INSERT INTO `userlogin` VALUES ('1', 'admin', '123', '0');
INSERT INTO `userlogin` VALUES ('8', '10001', '123', '2');
INSERT INTO `userlogin` VALUES ('9', '10002', '123', '2');
INSERT INTO `userlogin` VALUES ('10', '10003', '123', '2');
INSERT INTO `userlogin` VALUES ('11', '10005', '123', '2');
INSERT INTO `userlogin` VALUES ('12', '10004', '123', '2');
INSERT INTO `userlogin` VALUES ('13', '10006', '123', '2');
INSERT INTO `userlogin` VALUES ('14', '1001', '123', '1');
INSERT INTO `userlogin` VALUES ('15', '1002', '123', '1');
INSERT INTO `userlogin` VALUES ('16', '1003', '123', '1');
SET FOREIGN_KEY_CHECKS=1;
