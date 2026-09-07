select gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender;

select gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 38;

select occupation, avg(salary)
from parks_and_recreation.employee_salary
group by occupation;

select occupation, avg(salary)
from parks_and_recreation.employee_salary
where occupation like '%manager%'
group by occupation;

select occupation, avg(salary)
from parks_and_recreation.employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 80000;