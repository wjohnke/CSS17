INSERT INTO City VALUES(0, "Denver", "USA", "Oweaifeajfo", 20000);

INSERT INTO Country
	VALUES("BBB", "OSIFJSOAIFJ", 2, "OEIFJO", 289.04, 2013, 30400, 72.1, 10000, 8000, "dsaoidj", "sdoifaj", "dsjoafdsj", 92, "CS"),
	("DDD", "OSIFJSOAIFJ", 2, "OEIFJO", 289.04, 2013, 30400, 72.1, 10000, 8000, "dsaoidj", "sdoifaj", "dsjoafdsj", 92, "CS"),
	("CCC", "OSIFJSOAIFJ", 2, "OEIFJO", 289.04, 2013, 30400, 72.1, 10000, 8000, "dsaoidj", "sdoifaj", "dsjoafdsj", 92, "CS");

REPLACE INTO City VALUES(100, "SAASOIFJ", "USA", "SASFAS", 41234);

UPDATE City SET Population=Population-(Population*.03) WHERE Name LIKE 'D%';

UPDATE Country SET Population=Population-(Population*.10), GovernmentForm='Republic' WHERE IndepYear>1920;

ALTER TABLE City ADD FavoriteFood varchar(255) Default "Pizza";

ALTER TABLE City DROP COLUMN FavoriteFood;

DELETE FROM CountryLanguage WHERE IsOfficial="F";

TRUNCATE TABLE City;

