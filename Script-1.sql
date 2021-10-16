--1
select employees.employee_name, employees_salary.monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id;
--2
select employees.employee_name
from employees
join employees_salary
on employees.id = employees_salary.employee_id
where monthly_salary < 2000;
--3
select employees_salary.monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employee_name is null;
--4
select employees_salary.monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where monthly_salary < 2000 and employee_name is null ;
--5
select employees.employee_name 
from employees
left join employees_salary
on employees.id = employees_salary.employee_id
where monthly_salary is null ;
--6
select employees.employee_name, roles.role_name 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id;
--7
select employees.employee_name, roles.role_name 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%Java developer';
--8
select employees.employee_name, roles.role_name 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%Python developer';
--9
select employees.employee_name, roles.role_name 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%QA%';
--10
select employees.employee_name, roles.role_name 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%Manual QA%';
--11
select employees.employee_name, roles.role_name 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%Automation QA%';
--12
select employees.employee_name, roles.role_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Junior%';
--13
select employees.employee_name, roles.role_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Middle%';
--14
select employees.employee_name, roles.role_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Senior%';
--15
select employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Java developer';
--16
select employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Python%';
--17
select employees.employee_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Junior Python%';
--18
select employees.employee_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Middle JavaScript%';
--19
select employees.employee_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Senior Java developer%';
--20
select employees.employee_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Junior % QA%';
--21
select avg(employees_salary.monthly_salary)
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%Junior%';
--22
select sum(employees_salary.monthly_salary)
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%JavaScript%';
--23
select min(employees_salary.monthly_salary)
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%QA%';
--24
select max(employees_salary.monthly_salary)
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%QA%';
--25
select count(*)
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%QA%';
--26
select count(*)
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%Middle%';
--27
select count(*)
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%developer%';
--28
select sum(employees_salary.monthly_salary)
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where role_name like '%developer%';
--29
select employees.employee_name, roles.role_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
order by monthly_salary asc;
--30
select employees.employee_name, roles.role_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;
--31
select employees.employee_name, roles.role_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where monthly_salary < 2300
order by monthly_salary asc;
--32
select employees.employee_name, roles.role_name, employees_salary.monthly_salary 
from roles_employees
join employees 
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
join employees_salary
on employees_salary.employee_id = employees.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;
