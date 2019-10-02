--TASK 1 customer_id's who have spent at least 110 with staff id 2
-- SELECT customer_id, SUM(amount) AS total_amount_spent FROM payment
-- WHERE staff_id = 2
-- GROUP BY customer_id
-- HAVING SUM(amount) > 110

--TASK2 how many films start with J
-- SELECT COUNT(*) FROM FILM
-- WHERE title LIKE ('J%')

--TASK3 what custimer has highest customer_id whose name starts E and address id is lower than 500
SELECT first_name, last_name, customer_id, address_id FROM customer
WHERE first_name LIKE ('E%')
AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1