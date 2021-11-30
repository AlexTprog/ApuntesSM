desc city;
desc country;
desc countrylanguage;

select count(*), min(ID), max(ID),sum(Population),AVG(Population) from city;
select count(*) from country;
select count(*) from countrylanguage;

select Name from country c where c.GovernmentForm = 'Republic';

/* Mostrar la informacion de los paises del continente africano
   independizados entre los años 1900 al 1920*/

select *
from country c
where (c.Continent like '%Asia%') and (c.IndepYear between 1900 and 1920);

/* Mostrar la cantidad de paises por continente ordenado
   de forma descendente por el numero de paises*/
select c.Continent, count(*) as TotalPaises
from country c
GROUP BY  c.Continent
ORDER BY  TotalPaises DESC;

/* Mostrar la cantidad de paises por continente independizados entre los años
   1900 al 1950 ordenado de forma descendete por el numero de paises*/

select c.Continent, count(*) as TotalPaises
from country c
where c.IndepYear between  1900 and 1950
GROUP BY  c.Continent
ORDER BY  TotalPaises DESC;

/* Mostrar los continentes con la cantidad de paises independizados entre los años
   1800 al 2000 este entre 20 y 50 ordenado de forma descendete por el numero de paises*/

select c.Continent, count(*) as TotalPaises
from country c
where c.IndepYear between  1800 and 2000
GROUP BY  c.Continent
having count(*) between 20 and 50
ORDER BY  TotalPaises DESC;

-- Forma General: unir dos tablas
select ci.*
from world.country c, world.city ci
where c.code = ci.CountryCode and c.Code = 'PER';
-- P1
/* Cantidad de paises por continente y tipo de gobierno*/
select Continent, GovernmentForm, count(*)
from country
group by GovernmentForm, Continent;
-- P2
/* Mostrar la informacion de los 5 paises que tienen mayor superficie*/
select name,Continent,Region,SurfaceArea
from country
order by SurfaceArea DESC
limit 5;

/* P002 Mostrar la informacion de los 5 paises que tienen mayor superficie y cual es su capital*/
/* select '2021-10-23-Preg002' as Pregunta*/

select '2021-10-23_Preg002' as Pregunta,
c.Name, ci.Name
from country c inner join city ci
on c.Capital = ci.ID
order by SurfaceArea desc
limit 5;

select 'prueba' as Prueba, c.Name as Pais, cl.Language as Idioma
from country c inner join countrylanguage cl
on c.Code = cl.CountryCode and c.Code = 'PER';

select *
from country
where Code2 like 'P%';

-- P003 cuales son los paises que tienen de dos a mas lenguajes oficiales '2021-10-23_Preg003'

select '2021-10-23_Preg003' as Pregunta,c.Name as Pais, count(cl.Language) as N_Leng
from country c inner join countrylanguage cl
on c.Code = cl.CountryCode
where cl.IsOfficial='T'
group by c.Name
having count(cl.Language) > 1;





