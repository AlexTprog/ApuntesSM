select * from actor;
-- 1 Actores que tengan una x en el nombre o en el apellido
select 'LAB05_PREG01',first_name,last_name
from actor
where last_name like '%x%' OR
      first_name like '%x%';

-- 2 Direcciones de california que tengan ‘274’ en el número de teléfono
select 'LAB05_PREG02',address,phone
from address
where phone like '%274%';

-- 3 Películas ‘Épicas’ (Epic) o ‘Brillantes’ (brilliant) que duren más de 180 minutos
select 'LAB05_PREG03',title,description,length
from film
where (description like '%Epic%' or description like '%brilliant%')
  and length>180;

-- 4 Películas que duren entre 100 y 120 minutos o entre 50 y 70 minutos
select 'LAB05_PREG04',title,length
from film
where length between 100 and 120
   or length between 50 and 70;

-- 5 Películas que cuesten 0.99, 2.99 y tengan un rating ‘g’ o ‘r’ y que hablen de cocodrilos (crocodile)
select 'LAB05_Preg05',title,description,rental_rate,rating
from film
where rental_rate between 0.99 and 2.99 and
      (rating = 'G' or rating = 'R') and
   description like '%crocodile%';

-- 6 Direcciones de ontario o de punjab o que su código postal acabe en 5 o que su teléfono acabe en 5
select 'LAB05_PREG06',address,district,postal_code,phone
from address
where district='Ontario' or
      district='Punjab' or
      postal_code like '%5' or
      phone like '%5';

-- 7 Actores que contengan una ‘O’ en su nombre y en una ‘A’ en su apellido
select 'LAB05_PREG07',first_name,last_name
from actor
where first_name like '%o%' and
      last_name like '%a%';

-- 8 Actores donde su tercera letra sea ‘B’.
select 'LAB05_PREG08',first_name,last_name
from actor
where first_name like '__b%';

-- 9 Películas con un rental_rate entre 1 y 3.
select 'LAB05_PREG09',title,rental_rate
from film
where rental_rate between 1 and 3;

-- 10 Películas que no tengan un rating de NC-17.
select 'LAB05_PREG10',title,rating
from film
where rating not like 'NC-17';

-- 11 Media de duración de peliculas con PG.
select 'LAB05_PREG11',title,rating
from film
where rating not like 'NC-17';

-- 12 Película con mayor duración.
select 'LAB05_PREG12',title,length
from film
order by length desc
limit 1;

-- 13 Cantidad de películas de cada rating
select 'LAB05_PREG13',rating,count(*)
from film
group by rating;

-- 14 Ciudades con nombres compuestos.
select 'LAB05_PREG14',city
from city
where city like '% %';

-- 15 Ciudades del country ‘Spain’.
select 'LAB05_PREG15',city,country
from city
    join country using(country_id)
where country_id=87;

-- 16 Mostrar el nombre de la película y el nombre de los actores.
select 'LAB05_PREG16',title,
       concat(last_name,' ',first_name) as Actores
from film
    join film_actor using (film_id)
    join actor using (actor_id)
order by title;

-- 17 Mostrar el nombre de la película y el de sus categorías.
select 'LAB05_PREG16',title,name
from film
    join film_category using (film_id)
    join category using (category_id);

-- 18 Mostrar el country, la ciudad y dirección de cada miembro del staff.

-- 19 Mostrar el country, la ciudad y dirección de cada customer.

-- 20 Cuántas películas ha realizado el actor ED CHASE.

-- 21 Media de duración de las películas de cada categoría.

show tables ;

select *
from category;

select *
from film_category
