select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
and gender = 'Male';

select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
or gender = 'Male';

select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
or not gender = 'Male';

select *
from parks_and_recreation.employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 45;