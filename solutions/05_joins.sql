-- INNER JOIN two tables only returns rows where key value is matched in both tables.

-- show the country name that each city belongs to, using country_id as the key
SELECT city, country
FROM city a
  INNER JOIN country b ON a.country_id=b.country_id
;

-- show a table of title and language of some 10 'R' rated films 
SELECT f.title, f.length, l.name AS language
FROM film f
  INNER JOIN language l ON f.language_id=l.language_id
WHERE rating='R'
LIMIT 10
;

-- which language are the 15 longest films in?
SELECT
  f.title, f.length, l.name AS language
FROM film f
    INNER JOIN language l ON f.language_id=l.language_id
ORDER BY length DESC
LIMIT 15
;

-- wait a moment! how many distinct languages are there in the film list?!
SELECT 
    DISTINCT l.name AS language
FROM 
    film f
    INNER JOIN language l ON f.language_id=l.language_id
; -- only one language present: english
-- verify:
SELECT COUNT(DISTINCT language_id) AS num_film_languages FROM film;


-- you can join multiple tables together in one go: show the title and category of 'G' and 'PG' films between 85 min and 90 min long
SELECT
  f.title  AS film_title,
  f.rating AS film_rating,
  f.length AS film_length,
  c.name   AS film_category
FROM 
  film f
  LEFT JOIN film_category fc ON f.film_id=fc.film_id
  LEFT JOIN category c ON fc.category_id=c.category_id
WHERE 
  rating IN ('G', 'PG')
  AND length BETWEEN 85 AND 90
;
