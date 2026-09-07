select *
from parks_and_recreation.employee_demographics;

select *
from parks_and_recreation.employee_salary;

select *
from parks_and_recreation.employee_demographics
inner join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id;
    
select *
from parks_and_recreation.employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select *
from parks_and_recreation.employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
select *
from parks_and_recreation.employee_salary as sal_1 #can add 'as'
join employee_salary sal_2 #didn't add 'as' also work
	on sal_1.employee_id = sal_2.employee_id;
    
select sal_1.employee_id as sal_santa,
sal_1.first_name as first_name_santa,
sal_1.last_name as last_name_santa,
sal_2.employee_id as sal_emp,
sal_2.first_name as first_name_emp,
sal_2.last_name as last_name_emp
from parks_and_recreation.employee_salary sal_1
join employee_salary sal_2
	on sal_1.employee_id = sal_2.employee_id;
    
select *
from parks_and_recreation.employee_demographics as demo
inner join employee_salary as sal
	on demo.employee_id = sal.employee_id;
    
select *
from parks_and_recreation.parks_departments;

select *
from parks_and_recreation.employee_demographics as demo
inner join employee_salary as sal
	on demo.employee_id = sal.employee_id
inner join parks_and_recreation.parks_departments as pd
	on sal.dept_id = pd.department_id;