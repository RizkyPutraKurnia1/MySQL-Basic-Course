select *
from parks_and_recreation.employee_demographics
limit 3;

select *
from parks_and_recreation.employee_demographics
order by age desc
limit 3;

select gender, avg(age) as avg_age
from parks_and_recreation.employee_demographics
group by gender
having avg_age > 38;