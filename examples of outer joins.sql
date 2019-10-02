-- SELECT film.film_id, film.title, inventory.inventory_id FROM film
-- LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id
-- WHERE inventory.inventory_id IS NULL
-- ORDER BY film.film_id

SELECT film.film_id, film.title, inventory.inventory_id FROM film
LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id
WHERE inventory_id IS NULL
ORDER BY film_id