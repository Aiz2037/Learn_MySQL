-- 1. Write a MySQL query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name='Bull'.
-- Requirement 1: salary higher than employee last_name = Bull
-- Requrement 2: name of employee that fulfill requirement 1

Select e1.first_name, e1.last_name, e1.salary
From employees e1
where e1.salary > (Select e2.salary From employees e2 where e2.last_name='Bull')
order by e1.salary desc;

Select e2.salary From employees e2 where e2.last_name='Bull'

-- 3. Write a MySQL query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department.

-- Selecting the first name and last name of employees 
-- Selecting the first name and last name of employees 
SELECT first_name, last_name 
-- Selecting data from the employees table
FROM employees 
-- Filtering the result set to include only employees whose manager_id is in the set of employee_ids 
-- where the department_id is in the set of department_ids associated with locations in the US
WHERE manager_id in 
    (SELECT manager_id
    -- Subquery to select employee_ids from the employees table
    FROM employees 
    -- Filtering the employee_ids to include only those associated with departments 
    -- where the location_id is in the set of location_ids associated with countries having country_id 'US'
    WHERE department_id 
    IN 
        (SELECT department_id 
        -- Subquery to select department_ids from the departments table
        FROM departments 
        -- Filtering the department_ids to include only those associated with locations 
        -- where the country_id is 'US'
        WHERE location_id 
        IN 
            (SELECT location_id 
            -- Subquery to select location_ids from the locations table
            FROM locations 
            -- Filtering the location_ids to include only those associated with countries 
            -- having country_id 'US'
            WHERE country_id='US')
        )
    );
