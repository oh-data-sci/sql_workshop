-- first get a list of tables with .tables
-- then explore all columns of the category table, using SELECT * FROM <tablename>
SELECT * FROM category;

-- some tables have many many records. let's LIMIT the output to 5 records:
SELECT * FROM actor                  LIMIT 5;

-- explore the first few records of each table:
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
SELECT * FROM store                  LIMIT 5;

-- you can select specific columns, separated with a comma:
SELECT title, rating, length, release_year FROM film LIMIT 10;
SELECT first_name, last_name FROM staff;

-- you can rename the columns on output with: SELECT col AS colname FROM table:
SELECT first_name AS recipient, email AS email_address FROM staff;

-- you can alias the table and refer to the alias in the columns with: SELECT a.col1, a.col2 FROM table a
SELECT a.first_name, a.last_name FROM staff a;

