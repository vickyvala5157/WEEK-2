-- CREATE DATABASE command
CREATE DATABASE Company_DB;

-- Select the new database to work within it
USE Company_DB;

-- CREATE TABLE command (5 columns)
CREATE TABLE StaffData (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(100) NOT NULL,   
    department VARCHAR(50),
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE
);

-- INSERT DATA
INSERT INTO StaffData (staff_name, department, salary, hire_date) VALUES
('Rohan Verma', 'Marketing', 65000.00, '2021-06-15'),
('Pooja Shah', 'Sales', 72000.50, '2022-01-20'),
('Aditya Singh', 'Engineering', 95000.00, '2019-11-01'),
('Divya Menon', 'HR', 58000.00, '2023-03-10'),
('Karan Iyer', 'Engineering', 105000.75, '2020-09-25'),
('Sneha Rao', 'Marketing', 68000.00, '2021-02-14'),
('Vishal Reddy', 'Sales', 70000.00, '2023-07-01'),
('Meera Sharma', 'Engineering', 110000.00, '2018-05-15'),
('Arjun Kapoor', 'HR', 55000.00, '2024-01-05'),
('Nisha Choudhary', 'Sales', 75000.25, '2022-11-30'),
('Gaurav Joshi', 'Operations', 62000.00, '2024-02-01'),
('Tanya Malhotra', 'Marketing', 80000.00, '2017-08-20');

-- UPDATE query (-- Give a 10% raise to all staff members in the 'Marketing' department)
UPDATE StaffData
SET salary = salary * 1.10
WHERE department = 'Marketing';

-- 5. DELETE query (-- Remove the newest staff member in the 'HR' department)
DELETE FROM StaffData
WHERE staff_name = 'Arjun Kapoor';

-- Find staff members whose name includes 'Singh'
SELECT staff_name, department FROM StaffData
WHERE staff_name LIKE '%Singh%';

-- Find staff members in 'Sales' with a salary greater than $75,000
SELECT staff_name, salary FROM StaffData
WHERE department = 'Sales' AND salary > 75000.00;

-- Find staff members hired before January 1, 2020
SELECT staff_name, hire_date FROM StaffData
WHERE hire_date < '2020-01-01';

-- Find all staff in 'Engineering' OR 'HR'
SELECT staff_name, department FROM StaffData
WHERE department IN ('Engineering', 'HR');

-- Find staff members with a salary between $55,000 and $65,000
SELECT staff_name, salary FROM StaffData
WHERE salary BETWEEN 55000.00 AND 65000.00;

-- List all staff members ordered by salary (highest to lowest)
SELECT staff_name, salary FROM StaffData
ORDER BY salary DESC;

-- List all staff members ordered by their hire date (most recently hired first)
SELECT staff_name, hire_date FROM StaffData
ORDER BY hire_date DESC;

-- List all staff members ordered first by department, then by name
SELECT department, staff_name FROM StaffData
ORDER BY department ASC, staff_name ASC;

-- Get the 2 highest-paid staff members
SELECT staff_name, salary FROM StaffData
ORDER BY salary DESC
LIMIT 2;

-- Get the 3 staff members who were hired the earliest
SELECT staff_name, hire_date FROM StaffData
ORDER BY hire_date ASC
LIMIT 3;

-- Analytical Query 1: COUNT (-- Total number of staff members in each department)
SELECT department, COUNT(staff_id) AS NumberOfStaff FROM StaffData
GROUP BY department;

-- 7. Analytical Query 2: MIN and MAX (-- Find the minimum and maximum salary paid across the entire company)
SELECT MIN(salary) AS LowestSalary,
       MAX(salary) AS HighestSalary
FROM StaffData;