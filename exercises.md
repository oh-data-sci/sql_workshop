exercises
===
# introduction 
these are light exercises for a 2 hour workshop, "_from zero to query_", using the `sakila` training database with `sqlite`. there is no expectation that the participants finish all of these exercises in the time available. the solutions to these exercises are found in the `solutions/` folder.

the exercises below practice a specific aspect of the `SELECT` statement and are meant to build towards preparing answering the question: 

```
"which top 10 actors were rented out 
the greatest number of times, 
counting only ‘R’ rated films 
made in 2006?"
```

## 01 retrieve table contents
- go ahead and retrieve a list of tables with `.tables`
- explore all columns of the `category` table, using `SELECT * FROM <tablename>`
- explore the first 5 records of each table using `LIMIT`
- rename the columns on output with: `SELECT col AS colname FROM table`

## 02 aggregate functions
`COUNT(), SUM(), AVG(), MIN(), MAX()`

- use `COUNT(*)` for a count of records. 
- use `COUNT(DISTINCT <colname>)` for a count of distinct values in a column.
- out of 200 actors, how many distinct first names are there?
- out of 200 actors, how many distinct surnames are there?
- how many pricing tiers are there for a film's replacement cost?
- how much would it cost to buy one copy of all the films?
- what is the average replacement cost of a film?
- what is the maximum replacement cost of the films?
- what is the minimum replacement cost of the films?
- how long are the films, generally? (range and average).
- what date range (first date, last date) does our rental dataset cover? 
- what range does the rental rate span?

## 03 filter rows by `WHERE` condition
- only show me any 5 of the 'G' rated films. use a single '=' for exact match
- what is the name of the country with `country_id=97`?
- what is the title of the film with `film_id=97`?
- use `<>` to exclude matches: 3how many films are there that don't have an 'R' rating?
- can also use `!=`. use it to show how many films are there that don't have an 'G' rating?
- what is the least replacement cost of a film whose price exceeds £12?
- use `IN` (elem1, elem2, ...) to test membership in a list.
- what is the total length of films that are not rated 'R', nor 'NC-17'?
- use `LIKE` and the `%` wildcard for approximate string matches
- wassisname, that actor... name begins with "jo"- something?
- use `BETWEEN ... AND ...` to constrain a quantitative to a range: how many films are between 80 and 90 minutes long, inclusive?
- show me films that are between 80 and 81 minutes long, inclusive?
- how many rentals were made between '2005-12-15' and '2005-12-31'
- you can string together multple conditions using brackets, and logical the operators: `AND`, `OR`

## 04 sort output with `ORDER BY... LIMIT ...`
- what are the top 20 longest films?
- which film has the highest price per minute of footage?
- which film has the lowest price per minute of footage?
- which three films have the highest rental rate per minute of feature length?

## 05 segment rows by column value with `GROUP BY`
- how many films are there of each rating?
- how many films are there at each price point? 
- which are the most/least common?
- how many films have each rental duration allowed?

## 06 filter aggregated values with a `HAVING` condition
- which actor ids have appeared in fewer than 15 films?
- what actor name (first name, last name) occurs more than once in the actor table?
- what film rating categories have average length of film under 115 minutes?
- what countries have more than 40 cities?

## 07 merge two tables with a `JOIN`
- use `INNER JOIN ...  ON ...` to merge two tables and return rows where key value is matched in both tables.
- show the country name that each city belongs to, using `country_id` as the key
- show a table of `title` and `language` of some 10 'R' rated films 
- which `language` are the 15 longest films in?
- you can join multiple tables together in one go: show the title and category of 'G' and 'PG' films between 85 min and 90 min long

# final challenge
- which top 10 actors were rented out the greatest number of times, counting only ‘R’ rated films made in 2006?


