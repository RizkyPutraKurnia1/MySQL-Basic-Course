select first_name, last_name
from parks_and_recreation.employee_demographics
union all
select first_name, last_name
from parks_and_recreation.employee_salary;

select first_name, last_name
from parks_and_recreation.employee_demographics
union distinct #distinct only take unique values
select first_name, last_name
from parks_and_recreation.employee_salary;

select first_name, last_name, 'Old' as label
from parks_and_recreation.employee_demographics
where age > 45
union
select first_name, last_name, 'Highly Paid Employee' as label
from parks_and_recreation.employee_salary
where salary > 70000;

select first_name, last_name, age, 'Old_Man' as label
from parks_and_recreation.employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name, age, 'Old_Lady' as label
from parks_and_recreation.employee_demographics
where age > 40 and gender != 'Male';

select first_name, last_name, salary, 'Highly Paid Employee' as label
from parks_and_recreation.employee_salary
where salary > 70000
union 
select first_name, last_name, salary, 'Lower Paid Employee' as label
from parks_and_recreation.employee_salary
where salary < 30000;

select demo.first_name, demo.last_name, demo.age, sal.salary, 'Old Highly Paid Man' as label
from parks_and_recreation.employee_demographics demo
join parks_and_recreation.employee_salary sal
	on demo.employee_id = sal.employee_id
where age > 40 and gender = 'Male' and salary > 70000
union
select demo.first_name, demo.last_name, demo.age, sal.salary, 'Old Highly Paid Lady' as label
from parks_and_recreation.employee_demographics demo
join parks_and_recreation.employee_salary sal
	on demo.employee_id = sal.employee_id
where age > 40 and gender != 'Male' and salary > 70000;