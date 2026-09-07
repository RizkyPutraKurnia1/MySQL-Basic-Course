with CTE_Example (Gender, Avg_Sal, Max_Sal, Min_Sal, Count_sal) as
(
select gender, avg(salary), max(salary), min(salary), count(salary)
from parks_and_recreation.employee_demographics as demo
join employee_salary as sal
	on demo.employee_id = sal.employee_id
group by gender
)
select *
from CTE_Example;

select avg(avg_sal)
from (select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from parks_and_recreation.employee_demographics as demo
join employee_salary as sal
	on demo.employee_id = sal.employee_id
group by gender
)
example_subquery;

with CTE_example1 as
(
select employee_id, gender, birth_date
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
),
CTE_Example2 as
(
select employee_id, salary
from parks_and_recreation.employee_salary
where salary > 50000
)
select *
from CTE_Example1
join CTE_example2
	on CTE_Example1.employee_id = CTE_example2.employee_id
;

