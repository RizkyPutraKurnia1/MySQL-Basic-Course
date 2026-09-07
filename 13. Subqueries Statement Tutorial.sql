select *
from parks_and_recreation.employee_demographics
where employee_id in (
				select employee_id
                from employee_salary
                where dept_id = 6
);

select first_name, salary, 
		(select avg(salary) 
		from employee_salary) as avg_salary
from parks_and_recreation.employee_salary;