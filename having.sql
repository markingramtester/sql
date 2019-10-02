-- SELECT customer_id, SUM(amount) FROM payment -- adds filter after GROUP BY using HAVING
-- GROUP BY customer_id
-- HAVING SUM(amount) > 200

-- SELECT store_id, COUNT(customer_id) FROM customer -- adds filter after GROUP BY using HAVING
-- GROUP BY store_id
-- HAVING count(customer_id) > 300

-- SELECT rating, ROUND(AVG(rental_rate),2) AS average_rental_rate FROM film --WHERE and HAVING working together
-- WHERE rating IN ('R', 'G', 'PG')
-- GROUP BY rating
-- HAVING AVG(rental_rate) < 3

--CHALLENGE 1 which customers have 40 or more transactions
-- SELECT customer_id, COUNT(amount) as number_transactions FROM payment
-- GROUP BY customer_id
-- HAVING COUNT(amount) >= 40
-- ORDER BY COUNT(amount) DESC


--CHALLENGE 2 what rating of movie has averge duration over 5 days
SELECT rating, AVG(rental_duration) AS average_rental_duration FROM film
GROUP BY rating
HAVING AVG(rental_duration) > 5
ORDER BY AVG(rental_duration) DESC