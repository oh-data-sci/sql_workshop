
-- what are the top 20 longest films?
SELECT title, length, rating, rental_duration FROM film ORDER BY length DESC LIMIT 20;

-- which film has the highest price per minute of footage?
SELECT 
  film_id,
  title, 
  replacement_cost, 
  length,
  replacement_cost/length AS price_per_minute
FROM film
ORDER BY price_per_minute DESC
LIMIT 1
; -- RIDGEMONT SUBMARINE

-- which film has the lowest price per minute of footage?
SELECT 
  film_id,
  title, 
  replacement_cost, 
  length,
  replacement_cost/length AS price_per_minute
FROM film
ORDER BY price_per_minute
LIMIT 1
; -- CONTROL ANTHEM


-- which three films have the highest rental rate per minute of feature length?
SELECT 
  film_id,
  title, 
  rental_rate, 
  length,
  rental_rate/length AS price_per_minute
FROM film
ORDER BY price_per_minute DESC
LIMIT 3
; -- 'IRON MOON','HANOVER GALAXY', 'ACE GOLDFINGER'
