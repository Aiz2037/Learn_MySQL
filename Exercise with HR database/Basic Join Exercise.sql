-- 2. Write a MySQL query to find the name (first_name, last name), department ID and name of all the employees.

Select e.First_Name, e.Last_Name, e.Department_ID, d.Department_Name
From employees e 
Left Join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 3. Write a  MySQL query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.

Select e.First_Name, e.Last_Name, j.job_title, e.department_ID, d.department_name, l.city
From employees e 
Left Join jobs j on e.job_id = j.job_id
Left Join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
Left Join locations l on d.LOCATION_ID = l.LOCATION_ID
where City = "London";

-- 5. Write a  MySQL query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
-- use join an subquery (FAVOURITE)

Select e.First_name, e.last_name, e.hire_Date
from employees e
join (select e.hire_Date from employees e where e.last_name = 'Jones' ) as JoneDate
on e.HIRE_DATE > JoneDate.HIRE_DATE;

-- 6. Write a  MySQL query to get the department name and number of employees in the department.

Select count(e.employee_id), d.department_name
from employees e
left join departments d on d.department_id = e.department_Id
group by d.department_name
order by d.department_name asc;

-- 7. Write a  MySQL query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.
Select e.employee_ID,  DATEDIFF(jh.end_date, jh.start_date)
from employees e
Left Join jobs j on j.job_id = e.job_id
Left join job_history jh on jh.employee_id = e.EMPLOYEE_ID
-- Left join job_history jh on jh.job_id = e.job_ID
where jh.department_ID = "90"; 

select employee_id, department_id, job_id
from employees
where DEPARTMENT_ID = '90';

select employee_id, department_id,job_id
from job_history
where DEPARTMENT_ID = '90';

-- This SQL query retrieves specific columns from the 'job_history' table and calculates the duration of each job in days for employees in the specified department.

SELECT 
    employee_id, -- Selecting the 'employee_id' column from the result set.
    job_title, -- Selecting the 'job_title' column from the result set.
    datediff(end_date,start_date) AS Days -- Calculating the difference between 'end_date' and 'start_date' columns and aliasing it as 'Days'.
FROM 
    job_history -- Specifying the 'job_history' table.
NATURAL JOIN 
    jobs -- Performing a natural join with the 'jobs' table.
WHERE 
    department_id = 90; -- Filtering the result to include only records where the department ID is 90.
    
-- 8