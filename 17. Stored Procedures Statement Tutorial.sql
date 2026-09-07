select *
from parks_and_recreation.employee_salary
where salary >= 50000;

create procedure large_salaries()
select *
from parks_and_recreation.employee_salary
where salary >= 50000;

call large_salaries();

delimiter $$
create procedure large_salaries2()
begin
	select *
	from parks_and_recreation.employee_salary
	where salary >= 50000;
	select *
	from parks_and_recreation.employee_salary
	where salary >= 100000;
end $$
delimiter ;

call large_salaries2();

delimiter $$
create procedure large_salaries3(p_employee_id int)
begin
	select first_name, salary
	from parks_and_recreation.employee_salary
	where employee_id = p_employee_id;
end $$
delimiter ;

call large_salaries3(1);