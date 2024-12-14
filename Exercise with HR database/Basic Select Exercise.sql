-- 1) Write a query to display the names (first_name, last_name) using alias name "First Name", "Last Name"
Select FIRST_NAME, LAST_NAME
FROM employees;

-- 2) Write a query to get unique department ID from employee table.
Select FIRST_NAME, LAST_NAME, DEPARTMENT_ID
FROM employees;

-- The DISTINCT keyword ensures that only unique values of department_id are returned, eliminating duplicates.
Select DISTINCT DEPARTMENT_ID
FROM employees;

-- 3) Write a query to get all employee details from the employee table order by first name, descending.
Select *
FROM employees
ORDER BY FIRST_NAME DESC;

-- 4) Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).
Select FIRST_NAME, LAST_NAME, SALARY, 0.15*SALARY AS PF
FROM employees;

-- 5)  Write a query to get the employeeID, names,salary in ascending order of the salary
Select FIRST_NAME, LAST_NAME, SALARY
FROM employees
ORDER BY SALARY ASC;

-- 6) Write a query to get the total salaries payable to employees.
SELECT SUM(SALARY) as Total
from employees;

-- 7)  Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(SALARY) maximum, MIN(SALARY) minimum
from employees;

-- 8) Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(SALARY) average, COUNT(EMPLOYEE_ID) NumberEmployee
from employees;

-- 10. Write a query to get the number of jobs available in the employees table.
SELECT COUNT(DISTINCT JOB_ID)  -- distinct will count duplicated values as 1x time
FROM employees;

-- 14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
SELECT CONCAT(First_Name, " ", Last_Name) as FullName
FROM employees;

-- 19. Write a query to get monthly salary (round 2 decimal places) of each and every employee
-- Note : Assume the salary field provides the 'annual salary' information.

SELECT CONCAT(First_Name, " ", Last_Name) as Full_Name, round(Salary,2) as MonthlySalary
From employees;

