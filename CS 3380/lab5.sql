INSERT INTO `classes` VALUES("Database", "Computer Science", "CS3280", '4:00','5:00', "MWF");
INSERT INTO `classes` VALUES("Statistics", "Math", "MATH2200", '9:00', '10:00', "TTh");
INSERT INTO `classes` VALUES("Discrete Math", "Math", "MATH2300", '1:00', '2:00', "TTh");
INSERT INTO `classes` VALUES("Anthropology", "Anthropology", "AN1050", '12:00', '3:00', "MWF");
INSERT INTO `classes` VALUES("Algorithms", "Computer Science", "CS1050", '8:00', '9:00', "MWF");
INSERT INTO `classes` VALUES("Calculus 3", "Math", "MATH2100", '6:00', '7:00', "MWF");
INSERT INTO `classes` VALUES("Calculus 2", "Math", "MATH2000", '3:00', '4:00', "MWF");
INSERT INTO `classes` VALUES("Intro to English", "English", "ENGL1000", '4:00', '5:00', "TTh");
INSERT INTO `classes` VALUES("Psychology", "Psychology", "PSYCH1000", '12:00', '1:00', "TTh");
INSERT INTO `classes` VALUES("Web Design", "Computer Science", "CS3180", '2:00', '4:00', "MWF");


/*Select Statements*/
SELECT * FROM `classes`;
SELECT `start` FROM `classes`;
SELECT `department` FROM `classes` where department="Computer Science";
SELECT `name`, `course_id` FROM `classes` where `days`="MWF";
SELECT TIMEDIFF(`end`, `start`) FROM `classes`;

UPDATE `classes` SET `course_id` = "CS3180" where `course_id` = "CS3380";
UPDATE `classes` set `start`="2:00", `end`="2:50" where `days`="MWF";
UPDATE `classes` set `department` = "New Department" where `department` = "Math";
UPDATE `classes` set `name`="New Course", `course_id`="NEW3300" where name="Database";
DELETE FROM `classes` where `department` = "Computer Science";
