.cd data/

.mode qbox
.header ON
.open data/sqlite-sakila.db
.databases
.tables

-- explore one table in full.
SELECT * FROM category;

-- some tables have many many records. let's LIMIT the output to 5 records:
SELECT * FROM actor                  LIMIT 5;
SELECT * FROM address                LIMIT 5;
SELECT * FROM category               LIMIT 5;
SELECT * FROM city                   LIMIT 5;
SELECT * FROM country                LIMIT 5;
SELECT * FROM customer               LIMIT 5;
SELECT * FROM customer_list          LIMIT 5;
SELECT * FROM film                   LIMIT 5;
SELECT * FROM film_actor             LIMIT 5;
SELECT * FROM film_category          LIMIT 5;
SELECT * FROM film_list              LIMIT 5;
SELECT * FROM film_text              LIMIT 5;
SELECT * FROM inventory              LIMIT 5;
SELECT * FROM language               LIMIT 5;
SELECT * FROM payment                LIMIT 5;
SELECT * FROM rental                 LIMIT 5;
SELECT * FROM sales_by_film_category LIMIT 5;
SELECT * FROM sales_by_store         LIMIT 5;
SELECT * FROM staff                  LIMIT 5;
SELECT * FROM staff_list             LIMIT 5; 
SELECT * FROM store                  LIMIT 5; -- there are only two stores

-- how do we know which tables have a large number of records? we COUNT()!
SELECT COUNT(*) FROM actor                    ; -- 200 records in actors
-- are the primary keys unique?
SELECT COUNT(DISTINCT actor_id) AS num_actors FROM actor ; -- 200 actors verified
-- same goes for all primary key tables.
SELECT COUNT(*) FROM address                ;
SELECT COUNT(*) FROM category               ; -- 16 ctegories
SELECT COUNT(*) FROM city                   ; -- 600 cities
SELECT COUNT(*) FROM country                ; -- 109 countries
SELECT COUNT(*) FROM customer               ; -- 599 customers
SELECT COUNT(*) FROM customer_list          ;
SELECT COUNT(*) FROM film                   ; -- 1,000 films
SELECT COUNT(*) FROM film_actor             ; -- 5,462 film roles/actor assignments
SELECT COUNT(*) FROM film_category          ; -- 1,000 film category assignments (1 per film)
SELECT COUNT(*) FROM film_list              ;
SELECT COUNT(*) FROM film_text              ;
SELECT COUNT(*) FROM inventory              ; -- inventory links what films are offered where
SELECT COUNT(*) FROM language               ; -- 6 languages
SELECT COUNT(*) FROM payment                ; -- 16,049 records of payments
SELECT COUNT(*) FROM rental                 ; -- 16,044 records of rentals
SELECT COUNT(*) FROM sales_by_film_category ; 
SELECT COUNT(*) FROM sales_by_store         ; 
SELECT COUNT(*) FROM staff                  ; 
SELECT COUNT(*) FROM staff_list             ; 
SELECT COUNT(*) FROM store                  ; -- 2 stores


-- we now know there are only 6 languages, we can just list their names
SELECT name FROM language;

-- there are other ways to limit what is output. we can filter the records
-- based on a logical criteria and only show records WHERE condition is TRUE.
SELECT title, special_features FROM film WHERE rating = 'R' LIMIT 5;
SELECT COUNT(*) FROM film_actor WHERE actor_id=1;
SELECT COUNT(*) FROM film_actor WHERE actor_id=1;



SELECT 
    DISTINCT l.name AS language
FROM 
    film f
    INNER JOIN language l ON f.language_id=l.language_id
; -- only one language present: english


SELECT
    rating,
    COUNT(*)             AS num_films,
    AVG(rental_duration) AS avg_rental_duration
FROM film
GROUP BY rating
ORDER BY rating
;


SELECT
    f.film_id,
    f.title,
    f.rating,
    fc.category_id
FROM 
    film f
    LEFT JOIN film_category fc  ON fc.film_id=f.film_id
LIMIT 5
;

SELECT
    f.film_id,
    f.title,
    f.rating,
    fc.category_id
FROM 
    film f
    LEFT JOIN film_category fc  ON fc.film_id=f.film_id
    LEFT JOIN category c ON fc.category_id=c.category_id
LIMIT 5
;




SELECT
    f.film_id,
    f.title,
    f.rating,
    fc.category_id
FROM 
    film f
    LEFT JOIN film_category fc  ON fc.film_id=f.film_id
    LEFT JOIN category c ON fc.category_id=c.category_id
LIMIT 5
;


SELECT
    c.category_id AS category_id,
    c."name" AS category,
    COUNT(*) AS number_of_films,
    AVG(f.rental_duration) AS avg_rental_duration
FROM 
    film f
    LEFT JOIN film_category fc  ON fc.film_id=f.film_id
    LEFT JOIN category c ON fc.category_id=c.category_id
GROUP BY 
    c.category_id 
ORDER BY avg_rental_duration
LIMIT 5
;

SELECT
    c.category_id AS category_id,
    c."name" AS category,
    COUNT(*) AS number_of_films,
    AVG(f.rental_duration) AS avg_rental_duration
FROM 
    film f
    LEFT JOIN film_category fc  ON fc.film_id=f.film_id
    LEFT JOIN category c ON fc.category_id=c.category_id
GROUP BY 
    c.category_id 
ORDER BY number_of_films ASC
LIMIT 5
;
-- 
SELECT
    c.category_id           AS category_id,
    c."name"                AS category,
    COUNT(*)                AS number_of_films,
    SUM(length)             AS total_footage_length,
    SUM(f.replacement_cost) AS cost_to_replace,
    AVG(f.rental_duration)  AS avg_rental_duration
FROM 
    film f
    LEFT JOIN film_category fc  ON fc.film_id=f.film_id
    LEFT JOIN category c ON fc.category_id=c.category_id
GROUP BY 
    c.category_id 
ORDER BY avg_rental_duration ASC
LIMIT 5
;


SELECT
  a.first_name ||' '|| a.last_name AS actor_name
--  COUNT(DISTINCT r.rental_id)      AS num_rentals
FROM
  rental r
  INNER JOIN inventory i   ON r.inventory_id=i.inventory_id
  INNER JOIN film f        ON i.film_id=f.film_id
  INNER JOIN film_actor fa ON f.film_id=fa.film_id
  INNER JOIN actor a       ON fa.actor_id=a.actor_id
WHERE 
  f.rating='R'
  AND f.release_year=2006
GROUP BY a.first_name, a.last_name
ORDER BY COUNT(DISTINCT r.rental_id) DESC
LIMIT 10
;


-- chinook dataset
-- first few rows
SELECT * FROM albums         LIMIT 5;
SELECT * FROM artists        LIMIT 5;
SELECT * FROM customers      LIMIT 5;
SELECT * FROM employees      LIMIT 5;
SELECT * FROM invoice_items  LIMIT 5;
SELECT * FROM invoices       LIMIT 5;
SELECT * FROM genres         LIMIT 5;
SELECT * FROM media_types    LIMIT 5;
SELECT * FROM playlist_track LIMIT 5;
SELECT * FROM playlists      LIMIT 5;
SELECT * FROM tracks         LIMIT 5;

-- total number of rows
SELECT COUNT(*) FROM albums         ;
SELECT COUNT(*) FROM artists        ;
SELECT COUNT(*) FROM customers      ;
SELECT COUNT(*) FROM employees      ;
SELECT COUNT(*) FROM invoice_items  ;
SELECT COUNT(*) FROM invoices       ;
SELECT COUNT(*) FROM genres         ;
SELECT COUNT(*) FROM media_types    ;
SELECT COUNT(*) FROM playlist_track ;
SELECT COUNT(*) FROM playlists      ;
SELECT COUNT(*) FROM tracks         ;


