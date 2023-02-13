-- what is the name of the country with country_id=97?
SELECT country FROM country WHERE country_id=97;

-- what is the title of the film with film_id=97?
SELECT title FROM film WHERE film_id=97; -- BRIDE INTRIGUE


-- only show me the 'G' rated films: use a single '=' for exact match
SELECT title, rating, description FROM FILM WHERE rating='G' LIMIT 10;
SELECT * FROM actor WHERE first_name='ED';

-- use <> to exclude matches: 
-- how many films are there that don't have an 'R' rating?
SELECT COUNT(*) FROM FILM WHERE rating<>'R'; -- 805
-- can also use !=
-- how many films are there that don't have an '' rating?
SELECT COUNT(*) FROM FILM WHERE rating!='G'; -- 822

-- what is the least replacement cost of a film whose price exceeds £12?
SELECT MIN(replacement_cost) AS price FROM film WHERE replacement_cost >12;

-- use IN (elem1, elem2, ...) to test membership in a list.
-- what is the total length of films that are not rated 'R' nor 'NC-17'?
SELECT 
  COUNT(*)    AS num_films, 
  SUM(length) AS total_length 
FROM film 
WHERE rating IN ('G', 'PG', 'PG-13')
;
-- shorter way: use NOT negation:
SELECT 
  COUNT(*)    AS num_films, 
  SUM(length) AS total_length 
FROM film 
WHERE rating NOT IN ('NC-17', 'R')
;

-- use LIKE  and '%' wildcard for approximate string matches
-- wassisname, that actor... begins with jo... something?
SELECT * FROM actor WHERE first_name LIKE 'JO%';

-- use BETWEEN ... AND to constrain a quantitative to a range:
-- how many films are between 80 and 90 minutes long, inclusive?
SELECT COUNT(*) FROM film WHERE length BETWEEN 80 AND 90;
-- show me films that are between 80 and 81 minutes long, inclusive?
SELECT title, length, rating FROM film WHERE length BETWEEN 80 AND 81;

-- how many rentals were made between '2005-12-15' and '2005-12-31'
SELECT COUNT(*) FROM rental WHERE rental_date BETWEEN '2005-12-15' AND '2005-12-31';


-- you can string together multple conditions using brackets, and logical the operators: AND, OR
SELECT COUNT(*) AS num_affordable_family_films 
FROM film 
WHERE replacement_cost<17 AND rating='G'
; --73

-- you can string together multple conditions using brackets, and logical the operators: AND, OR
SELECT COUNT(*) FROM film WHERE replacement_cost<17 AND rating='G'; --73
