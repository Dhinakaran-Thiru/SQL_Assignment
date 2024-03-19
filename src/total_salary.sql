create database Total_salary;
use total_salary;
create table dept_table(
	id_deptname varchar(30),
	emp_name varchar(30),
	salary int
	);

-- insert given records from the table

insert into dept_table (id_deptname,emp_name,salary) values
	('1111-MATH', 'RAHUL', 10000),
('1111-MATH', 'RAKESH', 20000),
('2222-SCIENCE', 'AKASH', 10000),
('2222-SCIENCE', 'ANDREW', 10000),
('3333-CHEM', 'ANKIT', 25000),
('3333-CHEM', 'SONIKA', 12000),
('4444-BIO', 'HITESH', 2300),
('4444-BIO', 'AKSHAY', 10000);

-- total salary of each department

SELECT
    SUBSTRING(id_deptname, CHARINDEX('-', id_deptname) + 1, LEN(id_deptname)) AS dept_name,
    SUM(salary) AS total_salary
FROM
    dept_table
GROUP BY
    SUBSTRING(id_deptname, CHARINDEX('-', id_deptname) + 1, LEN(id_deptname));



