select length('Putra') as len;

select first_name, length(first_name) as len
from parks_and_recreation.employee_demographics
order by 2;

select upper('putra') as uppercase;
select lower('PUTRA') as lowercase;

select first_name, upper(first_name) as uppercase, lower(first_name) as lowercase
from parks_and_recreation.employee_demographics;

select('           putra         ') as no_trim;
select trim('           putra         ') as trim;
select rtrim('           putra         ') as right_trim;
select ltrim('           putra         ') as left_trim;

select first_name, left(first_name, 2) as 2_left_characters_only,
					substring(first_name, 3, 2) as 2_mid_characters_only, #mid
                    right(first_name, 2) as 2_right_characters_only
from parks_and_recreation.employee_demographics;

select first_name, birth_date
from parks_and_recreation.employee_demographics;

select first_name, 
		substring(birth_date, 1,4) as birth_year,
		substring(birth_date, 6, 2) as birth_month,
        substring(birth_date, 9, 2) as birth_date,
        birth_date
from parks_and_recreation.employee_demographics;

select first_name, last_name,
concat(first_name,' ', last_name) as concatenate_name
from parks_and_recreation.employee_demographics;