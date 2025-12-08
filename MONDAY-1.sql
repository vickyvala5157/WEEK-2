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