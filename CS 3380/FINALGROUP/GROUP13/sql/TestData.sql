DROP TABLE IF EXISTS `CUSTOMER_LOG`, `ADMIN`, `ENGINEER`, `CONDUCTOR`,`TRAIN_LOGS`, `EQUIPMENT`,`TRAIN`,`CUSTOMER`,`EMPLOYEE`;

CREATE TABLE `CUSTOMER`
(
    `Customer_Id_Num` INT UNIQUE NULL AUTO_INCREMENT,
    `First_Name` VARCHAR(255),
    `Last_Name` VARCHAR(255),
    `Billing_Email` VARCHAR(255),
    `Password` VARCHAR(255),
    PRIMARY KEY(`Billing_Email`)
);

CREATE TABLE `EMPLOYEE` (
    `Employee_Id` VARCHAR(255) UNIQUE,
    `Password` VARCHAR(255),
    `Train_Assigned` VARCHAR(255),
    `Login_Time` DATETIME
);

CREATE TABLE `TRAIN`(
           `Train_Num` VARCHAR(255) UNIQUE NULL,
            `Loco_Assigned` VARCHAR(255),
            `Cars_Assigned` int,
            `Conductor_Assigned` VARCHAR(255) UNIQUE,
            `Engineer_Assigned` VARCHAR(255) UNIQUE,
            `Depart_City` VARCHAR(255),
            `Arrive_City` VARCHAR(255),
            `Distance` int,
            `Estimated_Arrival` DATETIME,
           `Estimated_Departure` DATETIME,
	PRIMARY KEY(`Train_Num`),
    	FOREIGN KEY(`Conductor_Assigned`) REFERENCES `EMPLOYEE`(`Employee_Id`),
    	FOREIGN KEY(`Engineer_Assigned`) REFERENCES `EMPLOYEE`(`Employee_Id`)
);


CREATE TABLE `CUSTOMER_LOG`
(
    `IPAddress` VARCHAR(255),
    `Orders` INT,
    `Date_Accessed` DATETIME,
	`Order_Num` INT AUTO_INCREMENT,
	PRIMARY KEY(`Order_Num`)
);

CREATE TABLE `EQUIPMENT`(
	`Car_Id_Num` VARCHAR(255) UNIQUE,
	`Load_Capacity` INT,
	`Car_Type` VARCHAR(255),
	`Location` VARCHAR(255),
	`Manufacturer` VARCHAR(255),
	`Reserve_Status` VARCHAR(255),
	`Train_Num` VARCHAR(255) NULL,
    `Customer_Id_Num` INT NULL,
	`Price` INT,
   	 PRIMARY KEY(`Car_Id_Num`),
	FOREIGN KEY(`Train_Num`) REFERENCES `TRAIN`(`Train_Num`),
    FOREIGN KEY(`Customer_Id_Num`) REFERENCES `CUSTOMER`(`Customer_Id_Num`)
);



CREATE TABLE `TRAIN_LOGS`(
    `Log_Number` VARCHAR(255) UNIQUE,
    `Employee_Id` VARCHAR(255) UNIQUE,
    `Train_Num` VARCHAR(255) UNIQUE,
	PRIMARY KEY(`Log_Number`),
    FOREIGN KEY(`Train_Num`) REFERENCES `TRAIN`(`Train_Num`),
    FOREIGN KEY(`Employee_Id`) REFERENCES `EMPLOYEE`(`Employee_Id`)
);


CREATE TABLE `ADMIN`(
    `Location` VARCHAR(255),
    `Employee_Id` VARCHAR(255) UNIQUE,
    FOREIGN KEY(`Employee_Id`) REFERENCES `EMPLOYEE`(`Employee_Id`)
);


CREATE TABLE `ENGINEER` (
    `Rank` VARCHAR(255),
    `Hours` int,
    `Employee_Id` VARCHAR(255) UNIQUE,
    FOREIGN KEY(`Employee_Id`) REFERENCES `EMPLOYEE`(`Employee_Id`),
	`Status` VARCHAR(255)
);

CREATE TABLE `CONDUCTOR` (
    `Rank` VARCHAR(255),
`Status` VARCHAR(255),
    `Employee_Id` VARCHAR(255) UNIQUE,
    FOREIGN KEY(`Employee_Id`) REFERENCES `EMPLOYEE`(`Employee_Id`)
); 

INSERT INTO `EMPLOYEE` VALUES ("1234","pass1","NULL",'2017-03-28 12:15:00');
INSERT INTO `EMPLOYEE` VALUES ("1432","pass2","NULL",'2017-03-28 12:15:00');
INSERT INTO `EMPLOYEE` VALUES ("2345","pass3","1000",'2017-03-28 12:15:00');
INSERT INTO `EMPLOYEE` VALUES ("2543","pass4","2000",'2017-03-28 12:15:00');
INSERT INTO `EMPLOYEE` VALUES ("3456","pass5","1000",'2017-03-28 12:15:00');
INSERT INTO `EMPLOYEE` VALUES ("3654","pass6","2000",'2017-03-28 12:15:00');

INSERT INTO `ADMIN` VALUES ("Kansas City","1234");
INSERT INTO `ADMIN` VALUES ("St. Louis","1432");

INSERT INTO `CONDUCTOR` VALUES ("Senior","active","2345");
INSERT INTO `CONDUCTOR` VALUES ("Senior","active","2543");

INSERT INTO `ENGINEER` VALUES ("Senior",50,"3456","active");
INSERT INTO `ENGINEER` VALUES ("Senior",50,"3654","active");

INSERT INTO `TRAIN` VALUES (1000,100,5,2345,3654,"Kansas City","St.Louis",400,'2017-03-29 12:15:00 PM','2017-03-30 12:15:00 AM');
INSERT INTO `TRAIN` VALUES (2000,200,5,2543,3456,"St.Louis","Kansas City",400,'2017-03-28 12:15:00 AM','2017-03-29 12:15:00 PM');

INSERT INTO `TRAIN_LOGS` VALUES (0001,1234,1000);
INSERT INTO `TRAIN_LOGS` VALUES (0002,2345,2000);

INSERT INTO `CUSTOMER` VALUES (1,"test1","test1","billing1@gmail.com","pass1");
INSERT INTO `CUSTOMER` VALUES (2,"test2","test2","billing2@gmail.com","pass2");

INSERT INTO `CUSTOMER_LOG` VALUES ("123456789",1,'2017-03-28 12:15:00 AM',1);
INSERT INTO `CUSTOMER_LOG` VALUES ("987654321",2,'2017-03-28 12:15:00 PM',2);

INSERT INTO `EQUIPMENT` VALUES ("1",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("2",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("3",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("4",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("5",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("6",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("7",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("8",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("9",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("10",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);

INSERT INTO `EQUIPMENT` VALUES ("11",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("12",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("13",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("14",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("15",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("16",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("17",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("18",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("19",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
INSERT INTO `EQUIPMENT` VALUES ("20",121,"coal","Kansas City","BNSF","available",NULL,NULL,121);
