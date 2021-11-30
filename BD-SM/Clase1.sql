select Code , Name ,Continent,Region
from country
where Continent= "North America"
limit 100;

/*
cuantos paises estan en el continente de america del norte que 
se encuentran en la region del caribe y cual es el area que ocupan
*/

select count(*) as "Cantidad Paises"
from country
where Continent = "North America" and Region="Caribbean";

/*
cuantos paises estan en el continente de america del norte que 
se encuentran en la region del caribe y cual es el area que ocupan
*/
select count(*) as "Cantidad Paises",sum(SurfaceArea) as "Superficie Total"
from country
where Continent = "North America" and Region="Caribbean";

/*
Mostrar la informacion de los paises que se encuentran en america del sur
*/

select *
from country
where Continent="South America"
limit 10;

/*
Mostrar informacion de paises que empiecen con la letra P y que tengan un gobierno de tipo Republicano
*/

select *
from country
where GovernmentForm="Republic" and Name LIKE "P%"
limit 10;

/*
Mostrar informacion de paises que empiecen con la letra P ,C y E que tengan un gobierno de
tipo constitucional
*/

select *
from country
where (Name LIKE "P%" or Name like "C%" or Name like "E%" ) and (GovernmentForm="Constitutional Monarchy")
limit 10;
