-- 1

-- 2
select  'LAB06_Preg02', concat(cu.first_name,' ',cu.last_name)
                as Persona, count(cu.customer_id) as NPeliculas
from customer cu
		join rental r using (customer_id)
        join inventory i using (inventory_id)
        join film f using (film_id)
        join film_category fc using (film_id)
        join category c using (category_id)
 group by cu.customer_id
 order by NPeliculas desc limit 10 ;

-- 3
select *
from actor_info;

select *
from film;

select *
from rental;

select *
from customer;