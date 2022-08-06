--Soru1
SELECT COUNT(*) FROM film
WHERE length >
(SELECT AVG(film.length) FROM film );
--Soru2
SELECT COUNT(*) FROM film
WHERE rental_rate =
(SELECT MAX(film.rental_rate) FROM film );
--Soru3
SELECT * FROM film
WHERE rental_rate =
(SELECT MIN(film.rental_rate) FROM film ) AND 
replacement_cost=
(SELECT MIN(film.replacement_cost) FROM film );
--Soru4
SELECT * FROM customer
WHERE customer_id=(
SELECT customer_id FROM payment
GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 1);
