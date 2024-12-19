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

--6. Write a  MySQL query to get the department name and number of employees in the department.

Select count(e.employee_id), d.department_name
from employees e
left join departments d on d.department_id = e.department_Id
group by d.department_name
order by d.department_name asc;


