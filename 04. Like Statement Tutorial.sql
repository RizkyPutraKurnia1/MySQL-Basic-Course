select *
from parks_and_recreation.employee_demographics
where first_name like 'Les%';

select *
from parks_and_recreation.employee_demographics
where first_name like '%es%';

select *
from parks_and_recreation.employee_demographics
where first_name like 'a__';

select *
from parks_and_recreation.employee_demographics
where first_name like 'a__%';

select *
from parks_and_recreation.employee_demographics
where birth_date like '1989%';