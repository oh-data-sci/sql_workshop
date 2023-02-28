
SELECT replacement_cost AS price, COUNT(*) AS num_films FROM film GROUP BY replacement_cost;

SELECT 
  replacement_cost      AS price, 
  COUNT(*)              AS num_films, 
  SUM(replacement_cost) AS total_value 
FROM film 
GROUP BY replacement_cost
;


-- how many films are there of each rating
SELECT 
  rating, 
  COUNT(*)              AS num_films
FROM film 
GROUP BY rating;

-- what is the total replacement cost of all 
SELECT 
  rating, 
  SUM(replacement_cost) AS total_value 
FROM film 
GROUP BY rating;


-- how many films are there at each price point? which are the most/least common?
SELECT
  replacement_cost AS price_point,
  COUNT(*) AS num_films_at_price_point
FROM film
GROUP BY replacement_cost
ORDER BY num_films_at_price_point DESC
;


-- how many films have each rental duration allowed?
SELECT
  rental_duration AS allowed_rental_duration_days,
  COUNT(*)        AS num_films
FROM film
GROUP BY rental_duration
ORDER BY allowed_rental_duration_days
;


