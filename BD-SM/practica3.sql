-- 1.Cuidad con mayor poblacion de cada continente
-- mal
SELECT 'Practica01_Preg001' ,co.Continent as continente , ci.Name as ciudad , ci.Population as poblacion
FROM world.country co
inner join world.city ci
on co.Code = ci.CountryCode
group by Continent
having max(ci.Population);

-- 2. Mostrar los datos de los 20 paises donde tienen mas de 1 idioma

SELECT 'Practica01_Preg002',co.Name, co.Continent,co.Population,co.Code, COUNT(cl.Language) AS N_Idiomas
FROM country co INNER JOIN countrylanguage cl
ON co.Code = cl.CountryCode
GROUP BY co.Name
HAVING count(Language) > 1
LIMIT 20;

-- 3.Cuantos paises por continente hablan español e ingles

SELECT 'Practica01_Preg003',c.Continent , COUNT(c.Name) AS N_Paises
FROM country c INNER JOIN countrylanguage cl
ON c.Code = cl.CountryCode AND cl.Language IN ('English','Spanish')
GROUP BY c.Continent;

-- 4. Calcular la cantidad de paises por tipo de gobierno donde se habla ingles o español

SELECT 'Practica01_Preg004',c.GovernmentForm , COUNT(c.Name) AS N_Paises
FROM country c INNER JOIN countrylanguage cl
ON c.Code = cl.CountryCode AND cl.Language IN ('English','Spanish')
GROUP BY c.GovernmentForm;


-- 5. Muestre los datos de los paises que tienen mas de un idioma oficial y que tengan entre 20 y 30 ciudades
-- que wea esta mal
select 'Practica01_Preg005',co.*
from  world.country co
inner join world.city ci on co.Code = ci.CountryCode
inner join world.countrylanguage cl on cl.CountryCode = co.Code
where cl.IsOfficial like 'T'
group by co.Name
having count(ci.name) between 20 and 30 ;
/* 6. Mostrar los datos de los 10 paises donde tienen la mayor cantidad de poblacion
   (exprese la poblacion en millones)*/

SELECT 'Practica01_Preg006',c.Name, ROUND(c.Population/1000000) AS Poblacion_Millones
FROM country c
ORDER BY Population DESC
LIMIT 10;

/* 7. Mostrar la informacion de los paises que tengan mas de un idioma
oficial y este entre los 20 mas poblados*/
-- ?
select 'Practica01_Preg007' , co.Continent ,co.name as pais ,  count(cl.Language) as cant_lenguages , co.Population
from world.country co
inner join world.countrylanguage cl
on co.Code = cl.CountryCode
where  cl.IsOfficial like 'T'
group by co.Name
having count(cl.Language)>1 and max(co.Population)
order by co.Population desc limit 20;

-- 8. Listar la cantidad de paises y total de personas por cada continente que no hablen el idioma español

select 'Practica01_Preg008', count(co.name) as cant_paises , sum(co.Population) as total_Personas, co.Continent
from world.country co
inner join world.countrylanguage cl
on co.Code = cl.CountryCode
where not cl.IsOfficial like 'T'
group by co.Continent;

-- 9. Mostra los datos del pais y su capital que tenga la mayor poblacion de cada continente
select  'Practica01_Preg009',co.*
from world.country co
group by continent
having max(Population);

/*10. cuales son los cinco idiomas que son hablados por la mayor cantidad de personas
  (usar campos country.population y countrylanguage.Percentage) */

SELECT
	'Practica01_Preg010' as Pregunta,
    cl.Language,Name AS pais, cl.Percentage , co.Population,
    cl.Percentage * (co.Population) / 100 AS idiHa
FROM
    world.countrylanguage cl
        INNER JOIN
    world.country co ON co.Code = cl.CountryCode
GROUP BY Language
ORDER BY idiHa DESC
LIMIT 5;