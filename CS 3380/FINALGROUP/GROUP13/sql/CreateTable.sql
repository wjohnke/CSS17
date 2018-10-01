DROP TABLE IF EXISTS `CUSTOMER_LOG`, `ADMIN`, `ENGINEER`, `CONDUCTOR`,`TRAIN_LOGS`, `EQUIPMENT`,`TRAIN`,`CUSTOMER`,`EMPLOYEE`;

CREATE TABLE `CUSTOMER`
(
    `Customer_Id_Num` INT UNIQUE NOT NULL AUTO_INCREMENT,
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
           `Train_Num` VARCHAR(255) UNIQUE,
            `Cars_Assigned` int NULL,
			`Locomotive` VARCHAR(255),
            `Conductor_Assigned` VARCHAR(255) UNIQUE NULL,
            `Engineer_Assigned_1` VARCHAR(255) UNIQUE NULL,
			`Engineer_Assigned_2` VARCHAR(255) UNIQUE NULL,
            `Depart_City` VARCHAR(255),
            `Arrive_City` VARCHAR(255) NULL,
            `Distance` int NULL,
            `Estimated_Arrival` DATETIME NULL,
           `Estimated_Departure` DATETIME NULL,
		PRIMARY KEY(`Train_Num`),
    	FOREIGN KEY(`Conductor_Assigned`) REFERENCES `EMPLOYEE`(`Employee_Id`),
    	FOREIGN KEY(`Engineer_Assigned_1`) REFERENCES `EMPLOYEE`(`Employee_Id`),
    	FOREIGN KEY(`Engineer_Assigned_2`) REFERENCES `EMPLOYEE`(`Employee_Id`)
);


CREATE TABLE `CUSTOMER_LOG`
(
    `IPAddress` VARCHAR(255),
    `Number_of_cars_ordered` INT,
	`Car_Type` VARCHAR(255),
    `Date_Accessed` DATETIME,
	`Order_Num` INT AUTO_INCREMENT,
	`Customer_Id` INT,
	PRIMARY KEY(`Order_Num`),
    FOREIGN KEY(`Customer_Id`) REFERENCES `CUSTOMER`(`Customer_Id_Num`)
);

/*CREATE TABLE `EQUIPMENT`(
	`Car_Id_Num` VARCHAR(255) UNIQUE,
	`Load_Capacity` INT,
	`Car_Type` VARCHAR(255),
	`Location` VARCHAR(255),
	`Manufacturer` VARCHAR(255),
	`Reserve_Status` VARCHAR(255),
	`Train_Num` VARCHAR(255),
    `Customer_Id_Num` INT,
	`Price` INT,
   	 PRIMARY KEY(`Car_Id_Num`),
	FOREIGN KEY(`Train_Num`) REFERENCES `TRAIN`(`Train_Num`),
    FOREIGN KEY(`Customer_Id_Num`) REFERENCES `CUSTOMER`(`Customer_Id_Num`)
);*/



CREATE TABLE `TRAIN_LOGS`(
    `Log_Number` INT UNIQUE AUTO_INCREMENT,
    `Customer_Id` INT,
    `Train_Num` VARCHAR(255),
    `Cars_Assigned` int,
    `Conductor_Assigned` VARCHAR(255),
    `Engineer_Assigned_1` VARCHAR(255),
	`Engineer_Assigned_2` VARCHAR(255),
    `Depart_City` VARCHAR(255),
    `Arrive_City` VARCHAR(255),
    `Distance` int,
    `Estimated_Arrival` DATETIME,
    `Estimated_Departure` DATETIME,
	PRIMARY KEY(`Log_Number`),
    FOREIGN KEY(`Conductor_Assigned`) REFERENCES `EMPLOYEE`(`Employee_Id`),
    FOREIGN KEY(`Engineer_Assigned_1`) REFERENCES `EMPLOYEE`(`Employee_Id`),
    FOREIGN KEY(`Engineer_Assigned_2`) REFERENCES `EMPLOYEE`(`Employee_Id`),
    FOREIGN KEY(`Train_Num`) REFERENCES `TRAIN`(`Train_Num`),
    FOREIGN KEY(`Customer_Id`) REFERENCES `CUSTOMER`(`Customer_Id_Num`)
);


CREATE TABLE `ADMIN`(
    `Location` VARCHAR(255),
    `Employee_Id` VARCHAR(255) UNIQUE,
    FOREIGN KEY(`Employee_Id`) REFERENCES `EMPLOYEE`(`Employee_Id`)
);


CREATE TABLE `ENGINEER` (
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





INSERT INTO `TRAIN` VALUES ("100",NULL,"601",NULL,NULL,NULL,"Kansas City",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("101",NULL,"602",NULL,NULL,NULL,"Kansas City",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("102",NULL,"603",NULL,NULL,NULL,"Kansas City",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("103",NULL,"604",NULL,NULL,NULL,"Kansas City",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("104",NULL,"605",NULL,NULL,NULL,"Kansas City",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("105",NULL,"606",NULL,NULL,NULL,"St. Louis",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("106",NULL,"607",NULL,NULL,NULL,"St. Louis",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("107",NULL,"608",NULL,NULL,NULL,"St. Louis",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("108",NULL,"609",NULL,NULL,NULL,"St. Louis",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("109",NULL,"610",NULL,NULL,NULL,"St. Louis",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("110",NULL,"611",NULL,NULL,NULL,"Columbia",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("111",NULL,"612",NULL,NULL,NULL,"Columbia",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("112",NULL,"613",NULL,NULL,NULL,"Columbia",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("113",NULL,"614",NULL,NULL,NULL,"Columbia",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("114",NULL,"615",NULL,NULL,NULL,"Columbia",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("115",NULL,"616",NULL,NULL,NULL,"Chicago",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("116",NULL,"617",NULL,NULL,NULL,"Chicago",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("117",NULL,"618",NULL,NULL,NULL,"Chicago",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("118",NULL,"619",NULL,NULL,NULL,"Chicago",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("119",NULL,"620",NULL,NULL,NULL,"Chicago",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("120",NULL,"621",NULL,NULL,NULL,"Nashville",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("121",NULL,"622",NULL,NULL,NULL,"Nashville",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("122",NULL,"623",NULL,NULL,NULL,"Nashville",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("123",NULL,"624",NULL,NULL,NULL,"Nashville",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("124",NULL,"625",NULL,NULL,NULL,"Nashville",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("125",NULL,"626",NULL,NULL,NULL,"San Francisco",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("126",NULL,"627",NULL,NULL,NULL,"San Francisco",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("127",NULL,"628",NULL,NULL,NULL,"San Francisco",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("128",NULL,"629",NULL,NULL,NULL,"San Francisco",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("129",NULL,"630",NULL,NULL,NULL,"San Francisco",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("130",NULL,"631",NULL,NULL,NULL,"Los Angeles",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("131",NULL,"632",NULL,NULL,NULL,"Los Angeles",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("132",NULL,"633",NULL,NULL,NULL,"Los Angeles",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("133",NULL,"634",NULL,NULL,NULL,"Los Angeles",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("134",NULL,"635",NULL,NULL,NULL,"Los Angeles",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("135",NULL,"636",NULL,NULL,NULL,"Philadelphia",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("136",NULL,"637",NULL,NULL,NULL,"Philadelphia",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("137",NULL,"638",NULL,NULL,NULL,"Philadelphia",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("138",NULL,"639",NULL,NULL,NULL,"Philadelphia",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("139",NULL,"640",NULL,NULL,NULL,"Philadelphia",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("140",NULL,"641",NULL,NULL,NULL,"Denver",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("141",NULL,"642",NULL,NULL,NULL,"Denver",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("142",NULL,"643",NULL,NULL,NULL,"Denver",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("143",NULL,"644",NULL,NULL,NULL,"Denver",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("144",NULL,"645",NULL,NULL,NULL,"Denver",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("145",NULL,"646",NULL,NULL,NULL,"San Diego",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("146",NULL,"647",NULL,NULL,NULL,"San Diego",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("147",NULL,"648",NULL,NULL,NULL,"San Diego",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("148",NULL,"649",NULL,NULL,NULL,"San Diego",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("149",NULL,"650",NULL,NULL,NULL,"San Diego",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("150",NULL,"651",NULL,NULL,NULL,"Dallas",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("151",NULL,"652",NULL,NULL,NULL,"Dallas",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("152",NULL,"653",NULL,NULL,NULL,"Dallas",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("153",NULL,"654",NULL,NULL,NULL,"Dallas",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("154",NULL,"655",NULL,NULL,NULL,"Dallas",NULL,NULL,NULL,NULL);

INSERT INTO `TRAIN` VALUES ("155",NULL,"656",NULL,NULL,NULL,"New York",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("156",NULL,"657",NULL,NULL,NULL,"New York",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("157",NULL,"658",NULL,NULL,NULL,"New York",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("158",NULL,"659",NULL,NULL,NULL,"New York",NULL,NULL,NULL,NULL);
INSERT INTO `TRAIN` VALUES ("159",NULL,"660",NULL,NULL,NULL,"New York",NULL,NULL,NULL,NULL);