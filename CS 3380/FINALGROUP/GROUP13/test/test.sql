DROP TABLE IF EXISTS `CUSTOMER`, `CUSTOMER_LOG`, `EQUIPMENT`, `TRAIN`, `ADMIN`, `EMPLOYEE`, `ENGINEER`, `TRAIN_LOGS`, `CONDUCTOR`;

CREATE TABLE `CUSTOMER`
(
    `Customer_Id_Num` INT,
    PRIMARY KEY(`Customer_Id_Num`),
    `First_Name` VARCHAR(255),
    `Last_Name` VARCHAR(255),
    `Billing_Information` VARCHAR(255),
    `Password` VARCHAR(255)
);

CREATE TABLE `EMPLOYEE` (
    `Employee_Id` VARCHAR(255) UNIQUE,
    `Password` VARCHAR(255),
    `Train_Assigned` VARCHAR(255),
    `Login_Time` DATETIME
);

CREATE TABLE `TRAIN`(
           `Train_Num` VARCHAR(255) UNIQUE,
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
	`Train_Num` VARCHAR(255) UNIQUE,
    	`Customer_Id_Num` INT UNIQUE,
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


