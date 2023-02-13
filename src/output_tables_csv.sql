.open data/sqlite-sakila.db
.mode csv
.header ON
.output data/city.csv
SELECT * FROM city;
.output data/country.csv
SELECT * FROM country;
.output data/city_country_listing.csv
SELECT
    city_id, city, country
FROM
    city
    INNER JOIN country ON city.country_id=country.country_id
;
.output
.mode qbox
.quit