DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
	`name` varchar(255),
	`department` varchar(64),
	`course_id` varchar(64),
	`start` TIME,
	`end` TIME,
	`days` varchar(4),
	PRIMARY KEY(`course_id`)
);
