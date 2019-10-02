SELECT customer.customer_id, first_name, last_name, email, amount, payment_date FROM customer --first INNER JOIN example
INNER JOIN payment ON payment.customer_id = customer.customer_id
WHERE customer.customer_id = 2
ORDER BY customer.customer_id 