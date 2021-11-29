-- 1. Calcular cuantos empleados por genero existen en la BD

select gender, count(*) as NumEmpleados
from employees
group by gender;

-- 2. Calcular cuentos el % de los empleados por genero que existen en la BD

select case
        when gender = 'M' then 'MASCULINO'
        when gender = 'F' then 'FEMENINO'
        else ''
    end as Genero,
    count(*) as NumEmpleados,
    count(*)*100 / (select count(*) from employees) as Porcentaje
from employees
group by gender;

select gender, count(*) as NumEmpleados,
       count(*)*100 / (select count(*) from employees) as Porcentaje
from employees
group by gender;

-- 3.
select count(*) from employees;
select count(*) from departments;
select count(*) from dept_emp;
select de.to_date, count(*) from dept_emp de group by de.to_date;
select de.to_date, count(*) from dept_emp de where de.to_date > now();


select d.dept_name as Departamento,
       count(*) as NumEmpleados,
       (count(*)/(select count(*) from employees))*100 as Porcentaje
from employees e
    join dept_emp de using(emp_no)
    join departments d using(dept_no)
where de.to_date > now()
group by d.dept_name
order by d.dept_name;

-- 3. Obtener la relacion de administradores activos de cada departamento

select departments.dept_name as Dep,
       concat(employees.first_name, ' ' , employees.last_name) as Nombre,
    dept_manager.from_date as FechaInicio
from employees
    join dept_manager using (emp_no)
    join departments using (dept_no)
where dept_manager.to_date > now()
group by departments.dept_name
order by departments.dept_name;

-- Todos los empleados activos

select departments.dept_name as Dep,
       concat(employees.first_name, ' ' , employees.last_name) as Nombre,
    dept_emp.from_date as FechaInicio
from employees
    join dept_emp using (emp_no)
    join departments using (dept_no)
where dept_emp.to_date > now()
order by departments.dept_name;

-- Salario de todos los gerentes activos

select departments.dept_name as Dep,
       concat(employees.first_name, ' ' , employees.last_name) as Nombre,
    dept_manager.from_date as FechaInicio,
    salaries.salary as Salario
from employees
    join dept_manager using (emp_no)
    join departments using (dept_no)
    join salaries using (emp_no)
where dept_manager.to_date > now()
group by departments.dept_name
order by departments.dept_name;

-- 4. Obtener la informacion del total de trabajadores, total de trabajadores por sexo de cada departamento
-- y el administrador actual
-- departameno ,administrador, total de trabajadores, total de hombre y total de mujeres

select d.dept_name,
       (select concat_ws('',e.first_name,e.last_name)
           from employees join dept_manager using (emp_no)
           where to_date > now() and dept_manager.dept_no=d.dept_no
           ) as Administrador,
       count(*) Trabajadores,
       sum(case when e.gender = 'M' then 1 else 0 end ) Hombres,
       sum(case when e.gender = 'M' then 1 else 0 end ) Mujeres
from employees e
    join dept_emp de using (emp_no)
    join departments d using (dept_no)
where de.to_date > now()
group by d.dept_name;