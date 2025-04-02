CREATE TABLE employees (

  emp_id INT PRIMARY KEY,

  first_name VARCHAR(50),

  last_name VARCHAR(50),

  department VARCHAR(50),

  salary INT,

  joining_date DATE

);

INSERT INTO employees (emp_id, first_name, last_name, department, salary, joining_date)

VALUES 

(101, 'John', 'Doe', 'IT', 60000, '2018-05-21'),

(102, 'Jane', 'Smith', 'HR', 50000, '2020-07-11'),

(103, 'Michael', 'Brown', 'IT', 75000, '2016-03-03'),

(104, 'Emily', 'Davis', 'Finance', 68000, '2019-10-01'),

(105, 'Daniel', 'Johnson', 'IT', 56000, '2021-02-15'),

(106, 'Sarah', 'Wilson', 'HR', 52000, '2017-11-25');

--Retrieve all employees
SELECT * from employees

--Retrieve all employees from the IT department.
SELECT * from employees WHERE department = 'IT'

--Find all employees whose first names start with 'J'.
SELECT * from employees WHERE first_name LIKE 'J%'

--Count the number of employees in the HR department.
SELECT COUNT(*) from employees WHERE department = 'HR'

--Get all employees whose salary is between 55000 and 70000.
SELECT * from employees WHERE salary BETWEEN 55000 and 70000

--Retrieve the details of employees who are in the Finance or HR department.
SELECT * from employees WHERE department = 'Finance' or department = 'HR'

--Retrieve all employees who joined after January 1, 2019.
SELECT * from employees WHERE YEAR(joining_date) >= 2019

--Find employees whose last name ends with 'n'.
SELECT * from employees WHERE last_name LIKE '%n'

--Display the first name and salary of employees with salaries not between 55000 and 70000.
SELECT first_name, salary from employees WHERE salary Not BETWEEN 55000 and 70000

--Find all employees whose first name contains the letter 'a'.
SELECT * from employees WHERE first_name LIKE '%a%'

--Display all employees who joined between 2017 and 2020.
SELECT * from employees WHERE YEAR(joining_date) BETWEEN 2017 and 2020