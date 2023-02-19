-- aggregate functions yield one row per table, instead of one row per record.
-- e.g. count number of records in each table:
SELECT COUNT(*) FROM actor                 ;
SELECT COUNT(*) FROM address               ;
SELECT COUNT(*) FROM category              ;
SELECT COUNT(*) FROM city                  ; -- 600 cities
SELECT COUNT(*) FROM country               ;
SELECT COUNT(*) FROM customer              ;
SELECT COUNT(*) FROM customer_list         ;
SELECT COUNT(*) FROM film                  ;
SELECT COUNT(*) FROM film_actor            ; -- 5462 actor-film casting records
SELECT COUNT(*) FROM film_category         ;
SELECT COUNT(*) FROM film_list             ;
SELECT COUNT(*) FROM film_text             ;
SELECT COUNT(*) FROM inventory             ;
SELECT COUNT(*) FROM language              ;
SELECT COUNT(*) FROM payment               ;
SELECT COUNT(*) FROM rental                ;
SELECT COUNT(*) FROM sales_by_film_category;
SELECT COUNT(*) FROM sales_by_store        ;
SELECT COUNT(*) FROM staff                 ;
SELECT COUNT(*) FROM staff_list            ;
SELECT COUNT(*) FROM store                 ;

-- COUNT(*) gives count of records. if you want to know how many DISTINCT values there are:
SELECT COUNT(DISTINCT rating) AS num_ratings FROM film; -- there are 5 distinct ratings
-- out 200 actors how many distinct first names?
SELECT COUNT(DISTINCT first_name) AS num_names FROM actor; -- 128
-- out 200 actors how many distinct surnames?
SELECT COUNT(DISTINCT last_name) AS num_surnames FROM actor; -- 121
-- out 200 actors how many distinct last names? 
SELECT COUNT(DISTINCT special_features) AS num_features FROM film; -- 15
-- how many pricing tiers are there for a film's replacement cost?
SELECT COUNT(DISTINCT replacement_cost) AS num_features FROM film; -- 21


-- note that you cannot mix aggregations and per record values (what would that even mean?!)

-- how much would it cost to buy one copy of all the films?
SELECT 'total cost' AS calculation, SUM(replacement_cost) AS result FROM film; -- £19,984

  
-- what is the maximum replacement cost of all the films
SELECT 'maximum cost' AS calculation, MAX(replacement_cost) AS result FROM film; -- £29.99

-- what is the minimum replacement cost of all the films
SELECT 'minimum cost' AS calculation, MIN(replacement_cost) AS result FROM film; -- £9.99

-- you can do multiple aggregations at once, separated by a comma:
SELECT 
  MIN(replacement_cost) AS min_price,
  AVG(replacement_cost) AS average_price,
  MAX(replacement_cost) AS max_price,
  SUM(replacement_cost) AS total_cost
FROM film
;

-- how long are films, generally?
SELECT
  MIN(length) AS min_length,
  AVG(length) AS average_length,
  MAX(length) AS max_length,
  AVG(length*length) - AVG(length)*AVG(length) AS variance_length
FROM film
;

-- what date range does our rental dataset cover?
SELECT
  MIN(rental_date) AS earliest_rental_date,
  MAX(rental_date) AS latest_rental_date
FROM rental
; -- covers rentals between 2005-05-24 and 2006-02-14



-- what range does the rental rate span?
SELECT
  MIN(rental_rate) AS min_rental_rate,
  AVG(rental_rate) AS average_rental_rate,
  MAX(rental_rate) AS max_rental_rate
FROM film
;
