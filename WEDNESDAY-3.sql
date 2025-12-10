CREATE DATABASE students_db;

USE students_db;

CREATE TABLE student(
	enrollment_id INT PRIMARY KEY,
    name varchar(20),
    contact_no varchar(15),
    courses varchar(25)
	);
    
INSERT INTO student (enrollment_id, name, contact_no, courses) VALUES
(101, 'Riya Malhotra', '9876501234', 'BBA'),
(102, 'Arjun Desai', '9123456701', 'BSc CS'),
(103, 'Meera Joshi', '9988771122', 'B.Com'),
(104, 'Kabir Khanna', '9090901234', 'BA English'),
(105, 'Tanvi Shah', '9812345678', 'BCA');

SELECT * FROM student;
DROP TABLE student;

CREATE TABLE student(
	enrollment_id INT PRIMARY KEY,
    name varchar(20),
    courses varchar(25),
    age int
	);
    
INSERT INTO student (enrollment_id, name, courses, age) VALUES
(101, 'Riya Malhotra', 'BBA', 20),
(102, 'Arjun Desai', 'BSc CS', 19),
(103, 'Meera Joshi', 'B.Com', 21),
(104, 'Kabir Khanna', 'BA English',22),
(105, 'Tanvi Shah','BCA', 21);

INSERT INTO student (enrollment_id, name, courses, age) VALUES
(106, 'Kunal Mehta', 'BSc IT', 20),
(107, 'Priya Singh', 'B.Com', 22),
(108, 'Harshit Jain', 'Data Science', 23),
(109, 'Vedika Rao', 'BSc CS', 19),
(110, 'Manav Kapoor', 'B.Tech', 21);

SELECT * FROM student;

SELECT * FROM student
WHERE name LIKE 'A%';

SELECT * FROM student
WHERE age BETWEEN 18 AND 25;

SELECT * FROM student
WHERE name = 'Kunal Mehta';

USE students_db;

SELECT * FROM student
ORDER BY name ASC;

SELECT * FROM student
ORDER BY age ASC;

SELECT * FROM student
ORDER BY age ASC
LIMIT 3;

UPDATE student
SET age = 21
WHERE enrollment_id = 103;

SELECT * FROM student;

UPDATE student
SET courses = 'Data Science'
WHERE enrollment_id = '101';

DELETE FROM student
WHERE enrollment_id = '110';


