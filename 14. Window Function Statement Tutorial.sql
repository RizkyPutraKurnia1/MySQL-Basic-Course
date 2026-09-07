select gender, avg(salary) as avg_salary
from parks_and_recreation.employee_demographics demo
join employee_salary sal
	on demo.employee_id = sal.employee_id
group by gender;

select demo.first_name, demo.last_name, gender, avg(salary) over(partition by gender)
from parks_and_recreation.employee_demographics demo
join employee_salary sal
	on demo.employee_id = sal.employee_id;
    
select demo.first_name, demo.last_name, gender, salary, sum(salary) over(partition by gender order by demo.employee_id) as Rolling_Total
from parks_and_recreation.employee_demographics demo
join employee_salary sal
	on demo.employee_id = sal.employee_id;