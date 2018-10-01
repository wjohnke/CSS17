DROP TABLE IF EXISTS `EQUIPMENT`;

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


INSERT INTO `EQUIPMENT` VALUES ("1",121,"coal","Kansas City","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("2",121,"coal","Kansas City","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("3",121,"coal","Kansas City","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("4",121,"coal","Kansas City","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("5",121,"coal","Kansas City","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("6",121,"coal","Kansas City","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("7",121,"coal","Kansas City","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("8",121,"coal","Kansas City","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("9",121,"coal","Kansas City","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("10",121,"coal","Kansas City","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("11",121,"coal","St. Louis","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("12",121,"coal","St. Louis","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("13",121,"coal","St. Louis","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("14",121,"coal","St. Louis","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("15",121,"coal","St. Louis","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("16",121,"coal","St. Louis","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("17",121,"coal","St. Louis","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("18",121,"coal","St. Louis","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("19",121,"coal","St. Louis","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("20",121,"coal","St. Louis","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("21",121,"coal","Columbia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("22",121,"coal","Columbia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("23",121,"coal","Columbia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("24",121,"coal","Columbia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("25",121,"coal","Columbia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("26",121,"coal","Columbia","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("27",121,"coal","Columbia","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("28",121,"coal","Columbia","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("29",121,"coal","Columbia","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("30",121,"coal","Columbia","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("31",121,"coal","Chicago","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("32",121,"coal","Chicago","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("33",121,"coal","Chicago","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("34",121,"coal","Chicago","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("35",121,"coal","Chicago","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("36",121,"coal","Chicago","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("36",121,"coal","Chicago","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("36",121,"coal","Chicago","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("36",121,"coal","Chicago","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("36",121,"coal","Chicago","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("41",121,"coal","Nashville","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("42",121,"coal","Nashville","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("43",121,"coal","Nashville","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("44",121,"coal","Nashville","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("45",121,"coal","Nashville","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("45",121,"coal","Nashville","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("45",121,"coal","Nashville","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("45",121,"coal","Nashville","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("45",121,"coal","Nashville","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("45",121,"coal","Nashville","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("51",121,"coal","San Francisco","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("52",121,"coal","San Francisco","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("53",121,"coal","San Francisco","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("54",121,"coal","San Francisco","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("55",121,"coal","San Francisco","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("56",121,"coal","San Francisco","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("56",121,"coal","San Francisco","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("56",121,"coal","San Francisco","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("56",121,"coal","San Francisco","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("56",121,"coal","San Francisco","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("61",121,"coal","Los Angeles","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("62",121,"coal","Los Angeles","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("63",121,"coal","Los Angeles","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("64",121,"coal","Los Angeles","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("65",121,"coal","Los Angeles","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("66",121,"coal","Los Angeles","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("66",121,"coal","Los Angeles","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("66",121,"coal","Los Angeles","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("66",121,"coal","Los Angeles","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("66",121,"coal","Los Angeles","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("71",121,"coal","Philadelphia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("72",121,"coal","Philadelphia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("73",121,"coal","Philadelphia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("74",121,"coal","Philadelphia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("75",121,"coal","Philadelphia","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("76",121,"coal","Philadelphia","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("76",121,"coal","Philadelphia","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("76",121,"coal","Philadelphia","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("76",121,"coal","Philadelphia","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("76",121,"coal","Philadelphia","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("81",121,"coal","Denver","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("82",121,"coal","Denver","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("83",121,"coal","Denver","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("84",121,"coal","Denver","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("85",121,"coal","Denver","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("86",121,"coal","Denver","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("86",121,"coal","Denver","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("86",121,"coal","Denver","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("86",121,"coal","Denver","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("86",121,"coal","Denver","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("91",121,"coal","San Diego","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("92",121,"coal","San Diego","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("93",121,"coal","San Diego","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("94",121,"coal","San Diego","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("95",121,"coal","San Diego","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("96",121,"coal","San Diego","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("96",121,"coal","San Diego","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("96",121,"coal","San Diego","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("96",121,"coal","San Diego","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("96",121,"coal","San Diego","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("101",121,"coal","Dallas","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("102",121,"coal","Dallas","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("103",121,"coal","Dallas","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("104",121,"coal","Dallas","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("105",121,"coal","Dallas","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("106",121,"coal","Dallas","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("106",121,"coal","Dallas","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("108",121,"coal","Dallas","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("109",121,"coal","Dallas","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("110",121,"coal","Dallas","UP","open",NULL,NULL,605);

INSERT INTO `EQUIPMENT` VALUES ("111",121,"coal","New York","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("112",121,"coal","New York","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("113",121,"coal","New York","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("114",121,"coal","New York","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("115",121,"coal","New York","BNSF","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("116",121,"coal","New York","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("117",121,"coal","New York","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("118",121,"coal","New York","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("119",121,"coal","New York","UP","open",NULL,NULL,605);
INSERT INTO `EQUIPMENT` VALUES ("120",121,"coal","New York","UP","open",NULL,NULL,605);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

INSERT INTO `EQUIPMENT` VALUES ("121",100 ,"box","Kansas City","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("122",100 ,"box","Kansas City","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("123",100 ,"box","Kansas City","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("124",100 ,"box","Kansas City","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("125",100 ,"box","Kansas City","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("126",100 ,"box","Kansas City","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("127",100 ,"box","Kansas City","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("128",100 ,"box","Kansas City","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("129",100 ,"box","Kansas City","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("130",100 ,"box","Kansas City","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("131",100 ,"box","St. Louis","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("132",100 ,"box","St. Louis","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("133",100 ,"box","St. Louis","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("134",100 ,"box","St. Louis","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("135",100 ,"box","St. Louis","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("136",100 ,"box","St. Louis","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("137",100 ,"box","St. Louis","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("138",100 ,"box","St. Louis","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("139",100 ,"box","St. Louis","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("140",100 ,"box","St. Louis","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("141",100 ,"box","Columbia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("142",100 ,"box","Columbia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("143",100 ,"box","Columbia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("144",100 ,"box","Columbia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("145",100 ,"box","Columbia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("146",100 ,"box","Columbia","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("147",100 ,"box","Columbia","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("148",100 ,"box","Columbia","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("149",100 ,"box","Columbia","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("150",100 ,"box","Columbia","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("151",100 ,"box","Chicago","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("152",100 ,"box","Chicago","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("153",100 ,"box","Chicago","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("154",100 ,"box","Chicago","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("155",100 ,"box","Chicago","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("156",100 ,"box","Chicago","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("157",100 ,"box","Chicago","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("158",100 ,"box","Chicago","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("159",100 ,"box","Chicago","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("160",100 ,"box","Chicago","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("161",100 ,"box","Nashville","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("162",100 ,"box","Nashville","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("163",100 ,"box","Nashville","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("164",100 ,"box","Nashville","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("165",100 ,"box","Nashville","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("166",100 ,"box","Nashville","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("167",100 ,"box","Nashville","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("168",100 ,"box","Nashville","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("169",100 ,"box","Nashville","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("170",100 ,"box","Nashville","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("171",100 ,"box","San Francisco","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("172",100 ,"box","San Francisco","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("173",100 ,"box","San Francisco","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("174",100 ,"box","San Francisco","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("175",100 ,"box","San Francisco","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("176",100 ,"box","San Francisco","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("177",100 ,"box","San Francisco","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("178",100 ,"box","San Francisco","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("179",100 ,"box","San Francisco","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("180",100 ,"box","San Francisco","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("181",100 ,"box","Los Angeles","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("182",100 ,"box","Los Angeles","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("183",100 ,"box","Los Angeles","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("184",100 ,"box","Los Angeles","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("185",100 ,"box","Los Angeles","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("186",100 ,"box","Los Angeles","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("187",100 ,"box","Los Angeles","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("188",100 ,"box","Los Angeles","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("189",100 ,"box","Los Angeles","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("190",100 ,"box","Los Angeles","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("191",100 ,"box","Philadelphia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("192",100 ,"box","Philadelphia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("193",100 ,"box","Philadelphia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("194",100 ,"box","Philadelphia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("195",100 ,"box","Philadelphia","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("196",100 ,"box","Philadelphia","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("197",100 ,"box","Philadelphia","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("198",100 ,"box","Philadelphia","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("199",100 ,"box","Philadelphia","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("200",100 ,"box","Philadelphia","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("201",100 ,"box","Denver","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("202",100 ,"box","Denver","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("203",100 ,"box","Denver","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("204",100 ,"box","Denver","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("205",100 ,"box","Denver","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("206",100 ,"box","Denver","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("207",100 ,"box","Denver","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("208",100 ,"box","Denver","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("209",100 ,"box","Denver","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("210",100 ,"box","Denver","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("211",100 ,"box","San Diego","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("212",100 ,"box","San Diego","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("213",100 ,"box","San Diego","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("214",100 ,"box","San Diego","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("215",100 ,"box","San Diego","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("216",100 ,"box","San Diego","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("217",100 ,"box","San Diego","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("218",100 ,"box","San Diego","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("219",100 ,"box","San Diego","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("220",100 ,"box","San Diego","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("221",100 ,"box","Dallas","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("222",100 ,"box","Dallas","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("223",100 ,"box","Dallas","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("224",100 ,"box","Dallas","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("225",100 ,"box","Dallas","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("226",100 ,"box","Dallas","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("227",100 ,"box","Dallas","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("228",100 ,"box","Dallas","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("229",100 ,"box","Dallas","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("230",100 ,"box","Dallas","UP","open",NULL,NULL,500);

INSERT INTO `EQUIPMENT` VALUES ("231",100 ,"box","New York","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("232",100 ,"box","New York","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("233",100 ,"box","New York","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("234",100 ,"box","New York","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("235",100 ,"box","New York","BNSF","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("236",100 ,"box","New York","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("237",100 ,"box","New York","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("238",100 ,"box","New York","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("239",100 ,"box","New York","UP","open",NULL,NULL,500);
INSERT INTO `EQUIPMENT` VALUES ("240",100 ,"box","New York","UP","open",NULL,NULL,500);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

INSERT INTO `EQUIPMENT` VALUES ("241",110 ,"flat","Kansas City","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("242",110 ,"flat","Kansas City","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("243",110 ,"flat","Kansas City","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("244",110 ,"flat","Kansas City","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("245",110 ,"flat","Kansas City","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("246",110 ,"flat","Kansas City","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("247",110,"flat","Kansas City","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("248",110 ,"flat","Kansas City","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("249",110 ,"flat","Kansas City","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("250",110 ,"flat","Kansas City","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("251",110 ,"flat","St. Louis","BNSF","open",NULL,NULL,550;
INSERT INTO `EQUIPMENT` VALUES ("252",110 ,"flat","St. Louis","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("253",110 ,"flat","St. Louis","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("254",110 ,"flat","St. Louis","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("255",110 ,"flat","St. Louis","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("256",110 ,"flat","St. Louis","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("257",110 ,"flat","St. Louis","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("258",110 ,"flat","St. Louis","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("259",110 ,"flat","St. Louis","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("260",110 ,"flat","St. Louis","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("261",110 ,"flat","Columbia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("262",110 ,"flat","Columbia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("263",110 ,"flat","Columbia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("264",110 ,"flat","Columbia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("265",110 ,"flat","Columbia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("266",110 ,"flat","Columbia","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("267",110 ,"flat","Columbia","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("268",110 ,"flat","Columbia","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("269",110 ,"flat","Columbia","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("270",110 ,"flat","Columbia","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("271",110 ,"flat","Chicago","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("272",110 ,"flat","Chicago","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("273",110 ,"flat","Chicago","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("274",110 ,"flat","Chicago","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("275",110 ,"flat","Chicago","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("276",110 ,"flat","Chicago","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("277",110 ,"flat","Chicago","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("278",110 ,"flat","Chicago","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("279",110 ,"flat","Chicago","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("280",110 ,"flat","Chicago","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("281",110 ,"flat","Nashville","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("282",110 ,"flat","Nashville","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("283",110 ,"flat","Nashville","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("284",110 ,"flat","Nashville","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("285",110 ,"flat","Nashville","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("286",110 ,"flat","Nashville","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("287",110 ,"flat","Nashville","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("288",110 ,"flat","Nashville","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("289",110 ,"flat","Nashville","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("290",110 ,"flat","Nashville","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("291",110 ,"flat","San Francisco","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("292",110 ,"flat","San Francisco","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("293",110 ,"flat","San Francisco","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("294",110 ,"flat","San Francisco","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("295",110 ,"flat","San Francisco","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("296",110 ,"flat","San Francisco","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("297",110 ,"flat","San Francisco","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("298",110 ,"flat","San Francisco","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("299",110 ,"flat","San Francisco","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("300",110 ,"flat","San Francisco","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("301",110 ,"flat","Los Angeles","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("302",110 ,"flat","Los Angeles","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("303",110 ,"flat","Los Angeles","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("304",110 ,"flat","Los Angeles","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("305",110 ,"flat","Los Angeles","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("306",110 ,"flat","Los Angeles","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("307",110 ,"flat","Los Angeles","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("308",110 ,"flat","Los Angeles","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("309",110 ,"flat","Los Angeles","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("310",110 ,"flat","Los Angeles","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("311",110 ,"flat","Philadelphia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("312",110 ,"flat","Philadelphia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("313",110 ,"flat","Philadelphia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("314",110 ,"flat","Philadelphia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("315",110 ,"flat","Philadelphia","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("316",110 ,"flat","Philadelphia","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("317",110 ,"flat","Philadelphia","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("318",110 ,"flat","Philadelphia","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("319",110 ,"flat","Philadelphia","UP","open",NULL,NULL,550;
INSERT INTO `EQUIPMENT` VALUES ("320",110 ,"flat","Philadelphia","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("321",110 ,"flat","Denver","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("322",110 ,"flat","Denver","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("323",110 ,"flat","Denver","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("324",110 ,"flat","Denver","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("325",110 ,"flat","Denver","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("326",110 ,"flat","Denver","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("327",110 ,"flat","Denver","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("328",110 ,"flat","Denver","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("329",110 ,"flat","Denver","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("330",110 ,"flat","Denver","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("331",110 ,"flat","San Diego","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("332",110 ,"flat","San Diego","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("333",110 ,"flat","San Diego","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("334",110 ,"flat","San Diego","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("335",110 ,"flat","San Diego","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("336",110 ,"flat","San Diego","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("337",110 ,"flat","San Diego","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("338",110 ,"flat","San Diego","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("339",110 ,"flat","San Diego","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("340",110 ,"flat","San Diego","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("341",110 ,"flat","Dallas","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("342",110 ,"flat","Dallas","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("343",110 ,"flat","Dallas","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("344",110 ,"flat","Dallas","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("345",110 ,"flat","Dallas","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("346",110 ,"flat","Dallas","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("347",110 ,"flat","Dallas","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("348",110 ,"flat","Dallas","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("349",110 ,"flat","Dallas","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("350",110 ,"flat","Dallas","UP","open",NULL,NULL,550);

INSERT INTO `EQUIPMENT` VALUES ("351",110 ,"flat","New York","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("352",110 ,"flat","New York","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("353",110 ,"flat","New York","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("354",110 ,"flat","New York","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("355",110 ,"flat","New York","BNSF","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("356",110 ,"flat","New York","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("357",110 ,"flat","New York","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("358",110 ,"flat","New York","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("359",110 ,"flat","New York","UP","open",NULL,NULL,550);
INSERT INTO `EQUIPMENT` VALUES ("360",110 ,"flat","New York","UP","open",NULL,NULL,550);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

INSERT INTO `EQUIPMENT` VALUES ("361",115 ,"hop","Kansas City","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("362",115 ,"hop","Kansas City","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("363",115 ,"hop","Kansas City","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("364",115 ,"hop","Kansas City","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("365",115 ,"hop","Kansas City","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("366",115 ,"hop","Kansas City","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("367",115 ,"hop","Kansas City","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("368",115 ,"hop","Kansas City","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("369",115 ,"hop","Kansas City","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("370",115 ,"hop","Kansas City","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("371",115 ,"hop","St. Louis","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("372",115 ,"hop","St. Louis","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("373",115 ,"hop","St. Louis","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("374",115 ,"hop","St. Louis","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("375",115 ,"hop","St. Louis","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("376",115 ,"hop","St. Louis","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("377",115 ,"hop","St. Louis","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("378",115 ,"hop","St. Louis","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("379",115 ,"hop","St. Louis","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("380",115 ,"hop","St. Louis","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("381",115 ,"hop","Columbia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("382",115 ,"hop","Columbia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("383",115 ,"hop","Columbia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("384",115 ,"hop","Columbia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("385",115 ,"hop","Columbia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("386",115 ,"hop","Columbia","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("387",115 ,"hop","Columbia","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("388",115 ,"hop","Columbia","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("389",115 ,"hop","Columbia","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("390",115 ,"hop","Columbia","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("391",115 ,"hop","Chicago","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("392",115 ,"hop","Chicago","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("393",115 ,"hop","Chicago","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("394",115 ,"hop","Chicago","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("395",115 ,"hop","Chicago","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("396",115 ,"hop","Chicago","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("397",115 ,"hop","Chicago","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("398",115 ,"hop","Chicago","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("399",115 ,"hop","Chicago","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("400",115 ,"hop","Chicago","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("401",115 ,"hop","Nashville","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("402",115 ,"hop","Nashville","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("403",115 ,"hop","Nashville","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("404",115 ,"hop","Nashville","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("405",115 ,"hop","Nashville","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("406",115 ,"hop","Nashville","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("407",115 ,"hop","Nashville","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("408",115 ,"hop","Nashville","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("409",115 ,"hop","Nashville","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("410",115 ,"hop","Nashville","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("411",115 ,"hop","San Francisco","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("412",115 ,"hop","San Francisco","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("413",115 ,"hop","San Francisco","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("414",115 ,"hop","San Francisco","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("415",115 ,"hop","San Francisco","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("416",115 ,"hop","San Francisco","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("417",115 ,"hop","San Francisco","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("418",115 ,"hop","San Francisco","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("419",115 ,"hop","San Francisco","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("420",115 ,"hop","San Francisco","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("421",115 ,"hop","Los Angeles","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("422",115 ,"hop","Los Angeles","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("423",115 ,"hop","Los Angeles","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("424",115 ,"hop","Los Angeles","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("425",115 ,"hop","Los Angeles","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("426",115 ,"hop","Los Angeles","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("427",115 ,"hop","Los Angeles","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("428",115 ,"hop","Los Angeles","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("429",115 ,"hop","Los Angeles","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("430",115 ,"hop","Los Angeles","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("431",115 ,"hop","Philadelphia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("432",115 ,"hop","Philadelphia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("433",115 ,"hop","Philadelphia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("434",115 ,"hop","Philadelphia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("435",115 ,"hop","Philadelphia","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("436",115 ,"hop","Philadelphia","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("437",115 ,"hop","Philadelphia","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("438",115 ,"hop","Philadelphia","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("439",115 ,"hop","Philadelphia","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("440",115 ,"hop","Philadelphia","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("441",115 ,"hop","Denver","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("442",115 ,"hop","Denver","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("443",115 ,"hop","Denver","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("444",115 ,"hop","Denver","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("445",115 ,"hop","Denver","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("446",115 ,"hop","Denver","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("447",115 ,"hop","Denver","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("448",115 ,"hop","Denver","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("449",115 ,"hop","Denver","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("450",115 ,"hop","Denver","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("451",115 ,"hop","San Diego","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("452",115 ,"hop","San Diego","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("453",115 ,"hop","San Diego","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("454",115 ,"hop","San Diego","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("455",115 ,"hop","San Diego","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("456",115 ,"hop","San Diego","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("457",115 ,"hop","San Diego","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("458",115 ,"hop","San Diego","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("459",115 ,"hop","San Diego","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("460",115 ,"hop","San Diego","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("461",115 ,"hop","Dallas","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("462",115 ,"hop","Dallas","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("463",115 ,"hop","Dallas","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("464",115 ,"hop","Dallas","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("465",115 ,"hop","Dallas","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("466",115 ,"hop","Dallas","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("467",115 ,"hop","Dallas","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("468",115 ,"hop","Dallas","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("469",115 ,"hop","Dallas","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("470",115 ,"hop","Dallas","UP","open",NULL,NULL,575);

INSERT INTO `EQUIPMENT` VALUES ("471",115 ,"hop","New York","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("472",115 ,"hop","New York","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("473",115 ,"hop","New York","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("474",115 ,"hop","New York","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("475",115 ,"hop","New York","BNSF","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("476",115 ,"hop","New York","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("477",115 ,"hop","New York","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("478",115 ,"hop","New York","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("479",115 ,"hop","New York","UP","open",NULL,NULL,575);
INSERT INTO `EQUIPMENT` VALUES ("480",115 ,"hop","New York","UP","open",NULL,NULL,575);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

INSERT INTO `EQUIPMENT` VALUES ("481",70 ,"grain","Kansas City","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("482",70 ,"grain","Kansas City","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("483",70 ,"grain","Kansas City","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("484",70 ,"grain","Kansas City","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("485",70 ,"grain","Kansas City","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("486",70 ,"grain","Kansas City","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("487",70 ,"grain","Kansas City","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("488",70 ,"grain","Kansas City","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("489",70 ,"grain","Kansas City","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("490",70 ,"grain","Kansas City","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("491",70 ,"grain","St. Louis","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("492",70 ,"grain","St. Louis","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("493",70 ,"grain","St. Louis","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("494",70 ,"grain","St. Louis","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("495",70 ,"grain","St. Louis","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("496",70 ,"grain","St. Louis","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("497",70 ,"grain","St. Louis","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("498",70 ,"grain","St. Louis","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("499",70 ,"grain","St. Louis","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("500",70 ,"grain","St. Louis","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("501",70 ,"grain","Columbia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("502",70 ,"grain","Columbia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("503",70 ,"grain","Columbia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("504",70 ,"grain","Columbia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("505",70 ,"grain","Columbia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("506",70 ,"grain","Columbia","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("507",70 ,"grain","Columbia","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("508",70 ,"grain","Columbia","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("509",70 ,"grain","Columbia","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("510",70 ,"grain","Columbia","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("511",70 ,"grain","Chicago","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("512",70 ,"grain","Chicago","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("513",70 ,"grain","Chicago","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("514",70 ,"grain","Chicago","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("515",70 ,"grain","Chicago","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("516",70 ,"grain","Chicago","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("517",70 ,"grain","Chicago","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("518",70 ,"grain","Chicago","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("519",70 ,"grain","Chicago","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("520",70 ,"grain","Chicago","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("521",70 ,"grain","Nashville","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("522",70 ,"grain","Nashville","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("523",70 ,"grain","Nashville","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("524",70 ,"grain","Nashville","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("525",70 ,"grain","Nashville","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("526",70 ,"grain","Nashville","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("527",70 ,"grain","Nashville","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("528",70 ,"grain","Nashville","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("529",70 ,"grain","Nashville","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("530",70 ,"grain","Nashville","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("531",70 ,"grain","San Francisco","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("532",70 ,"grain","San Francisco","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("533",70 ,"grain","San Francisco","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("534",70 ,"grain","San Francisco","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("535",70 ,"grain","San Francisco","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("536",70 ,"grain","San Francisco","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("537",70 ,"grain","San Francisco","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("538",70 ,"grain","San Francisco","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("539",70 ,"grain","San Francisco","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("540",70 ,"grain","San Francisco","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("541",70 ,"grain","Los Angeles","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("542",70 ,"grain","Los Angeles","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("543",70 ,"grain","Los Angeles","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("544",70 ,"grain","Los Angeles","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("545",70 ,"grain","Los Angeles","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("546",70 ,"grain","Los Angeles","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("547",70 ,"grain","Los Angeles","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("548",70 ,"grain","Los Angeles","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("549",70 ,"grain","Los Angeles","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("550",70 ,"grain","Los Angeles","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("551",70 ,"grain","Philadelphia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("552",70 ,"grain","Philadelphia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("553",70 ,"grain","Philadelphia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("554",70 ,"grain","Philadelphia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("555",70 ,"grain","Philadelphia","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("556",70 ,"grain","Philadelphia","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("557",70 ,"grain","Philadelphia","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("558",70 ,"grain","Philadelphia","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("559",70 ,"grain","Philadelphia","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("560",70 ,"grain","Philadelphia","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("561",70 ,"grain","Denver","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("562",70 ,"grain","Denver","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("563",70 ,"grain","Denver","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("564",70 ,"grain","Denver","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("565",70 ,"grain","Denver","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("566",70 ,"grain","Denver","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("567",70 ,"grain","Denver","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("568",70 ,"grain","Denver","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("569",70 ,"grain","Denver","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("570",70 ,"grain","Denver","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("571",70 ,"grain","San Diego","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("572",70 ,"grain","San Diego","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("573",70 ,"grain","San Diego","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("574",70 ,"grain","San Diego","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("575",70 ,"grain","San Diego","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("576",70 ,"grain","San Diego","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("577",70 ,"grain","San Diego","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("578",70 ,"grain","San Diego","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("579",70 ,"grain","San Diego","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("580",70 ,"grain","San Diego","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("581",70 ,"grain","Dallas","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("582",70 ,"grain","Dallas","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("583",70 ,"grain","Dallas","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("584",70 ,"grain","Dallas","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("585",70 ,"grain","Dallas","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("586",70 ,"grain","Dallas","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("587",70 ,"grain","Dallas","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("588",70 ,"grain","Dallas","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("589",70 ,"grain","Dallas","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("590",70 ,"grain","Dallas","UP","open",NULL,NULL,350);

INSERT INTO `EQUIPMENT` VALUES ("591",70 ,"grain","New York","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("592",70 ,"grain","New York","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("593",70 ,"grain","New York","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("594",70 ,"grain","New York","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("595",70 ,"grain","New York","BNSF","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("596",70 ,"grain","New York","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("597",70 ,"grain","New York","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("598",70 ,"grain","New York","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("599",70 ,"grain","New York","UP","open",NULL,NULL,350);
INSERT INTO `EQUIPMENT` VALUES ("600",70 ,"grain","New York","UP","open",NULL,NULL,350);