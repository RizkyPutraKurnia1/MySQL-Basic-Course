select first_name, last_name, age,
case
 when age <= 30 then 'Young'
 when age between 31 and 40 then 'Mature'
 when age >= 41 then "Old"
end as label
from parks_and_recreation.employee_demographics;

select *
from parks_and_recreation.employee_salary;

-- Pay increase and Bonus !!
-- < 50000 = 5%
-- = 50000 = 7%
-- > 50000 = 10%
-- Finance = 15% Bonus

select first_name, last_name, salary,
case
	when salary < 50000 then salary + (salary * 0.05) #5%
    when salary = 50000 then salary + (salary * 0.07) #5%
    when salary > 50000 then salary + (salary * 0.10) #7%
end as new_salary,
case
	when dept_id = 6 then salary + (salary * 0.15) # 15%
end as bonus
from parks_and_recreation.employee_salary;