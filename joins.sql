SELECT film_actor.film_id, actor.first_name, actor.last_name, film.title
FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
LEFT JOIN film ON film.film_id = film_actor.film_id 
ORDER BY film_id ASC