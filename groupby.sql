-- SELECT customer_id FROM payment --behaves like distinct
-- GROUP BY customer_id

-- SELECT customer_id, SUM(amount) FROM payment --adds up total per customer_id
-- GROUP BY customer_id

-- SELECT customer_id, SUM(amount) FROM payment --adds up total per customer_id and puts greatest value at top of list 
-- GROUP BY customer_id
-- ORDER BY SUM(amount) DESC

-- SELECT staff_id, COUNT(payment_id) FROM payment --grouped by staff id and counts how many times each appears in payment_id column
-- GROUP BY staff_id

-- SELECT rating, COUNT(rating) FROM film --filter and count on same column
-- GROUP BY rating

-- SELECT rental_duration, COUNT(rental_duration) FROM film --filter and count on same column
-- GROUP BY rental_duration

-- SELECT rating, AVG(rental_rate) FROM FILM --finding average of a column
-- GROUP BY rating



--CHALLENGE 1 - number of trx per staff and total of trx 
-- SELECT staff_id, COUNT(amount), SUM(amount) FROM payment
-- GROUP BY staff_id


--CHALLENGE 2 average replacement cost oer rating
-- SELECT rating, ROUND( AVG(replacement_cost), 2) FROM film
-- GROUP BY rating


--CHALLENGE 3 top 5 customers spending most, get customer_id's
SELECT customer_id, SUM(amount) AS total_amount FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5