-- Write a query to display for each store its store ID, city, and country.
SELECT * FROM sakila.store;
SELECT * FROM sakila.city;
SELECT * FROM sakila.country;
SELECT s.store_id, c.city, co.country
FROM sakila.store s
JOIN sakila.city c
ON s.store_id = c.country_id
JOIN sakila.country co
ON s.store_id = co.country_id;

-- Write a query to display how much business, in dollars, each store brought in.
SELECT * FROM sakila.store;
SELECT * FROM sakila.payment;

SELECT s.store_id, SUM(p.amount)
FROM sakila.store s
JOIN sakila.payment p
ON s.store_id = p.staff_id
GROUP BY s.store_id
ORDER BY SUM(p.amount) DESC;

-- Which film categories are longest?
SELECT * FROM sakila.category;
SELECT * FROM sakila.film_category;
SELECT c.name, COUNT(f.category_id)
FROM sakila.category c
JOIN sakila.film_category f
ON  c.category_id = f.category_id
group by c.name
ORDER BY COUNT(f.category_id) DESC;

-- Display the most frequently rented movies in descending order.
SELECT * FROM sakila.inventory;
SELECT * FROM sakila.rental;
SELECT i.inventory_id,  COUNT(r.inventory_id)
FROM sakila.inventory i
JOIN sakila.rental r
ON  i.inventory_id = r.inventory_id
GROUP BY i.inventory_id
ORDER BY COUNT(r.rental_id) DESC;

-- List the top five genres in gross revenue in descending order.


-- Is "Academy Dinosaur" available for rent from Store 1?
SELECT f.title, i.store_id
FROM sakila.film f
JOIN sakila.inventory i
ON i.inventory_id = f.film_id
WHERE (title = 'Academy Dinosaur');

-- Get all pairs of actors that worked together
SELECT * FROM sakila.actor;

