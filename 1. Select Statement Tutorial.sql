use parks_and_recreation; #select database

select *
from employee_demographics; #select table (option 1)

select *
from parks_and_recreation.employee_demographics; #select table (option 2)

select first_name
from parks_and_recreation.employee_demographics; #select column in table

select first_name, last_name
from parks_and_recreation.employee_demographics; #select columns in table

select first_name, last_name, age, age + 10
from parks_and_recreation.employee_demographics; #select columns in table and add more column