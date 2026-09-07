select *
from parks_and_recreation.employee_salary
where first_name = 'Leslie';

select *
from parks_and_recreation.employee_salary
where salary > 50000;

select *
from parks_and_recreation.employee_salary
where salary >= 50000;

select *
from parks_and_recreation.employee_salary
where salary < 50000;

select *
from parks_and_recreation.employee_demographics
where gender = 'Female';

select *
from parks_and_recreation.employee_demographics
where gender != 'Female';

select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01';