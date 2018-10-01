CREATE OR REPLACE VIEW weight as SELECT person.pid, person.fname, person.lname, body_composition.weight FROM person 
	JOIN body_composition ON (person.pid=body_composition.pid) WHERE weight>140;


CREATE OR REPLACE VIEW BMI AS SELECT person.fname, person.lname , ROUND((weight.weight/POWER(body_composition.height,2))*703)
	AS  bmi FROM person, weight JOIN body_composition ON (weight.pid=body_composition.pid)
	WHERE weight.weight>150;


select university_name, city from university WHERE NOT EXISTS (SELECT * from person where person.uid = university.uid);

SELECT pid FROM participated_in WHERE activity_name="running" UNION (SELECT pid from participated_in WHERE activity_name="racquetball");

