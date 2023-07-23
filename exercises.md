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
* 01.01 get a list of tables in the sakila database.
* 01.02 explore all columns of the `category` table, using `SELECT * FROM <tablename>`
* 01.03 explore the first 5 records of a table of your choice using a `LIMIT` clause.
* 01.04 try to rename the columns of the output: `SELECT col AS colname FROM <table>`

## 02 aggregate functions
the aggregate functions are: `COUNT(), COUNT(DISTINCT ) SUM(), AVG(), MIN(), MAX()`

- 02.01 use `COUNT(*)` to get a count of records in a table.
- 02.02 use `COUNT(DISTINCT <colname>)` for a count of distinct values in a column.
- 02.03 out of all 200 actors, how many distinct first names are there?
- 02.04 out of all 200 actors, how many distinct surnames are there?
- 02.05 how many pricing tiers are there for a film's replacement cost?
- 02.06 how much would it cost to buy one copy of all the films?
- 02.07 what is the average replacement cost of a film?
- 02.08 what is the maximum replacement cost of the films?
- 02.09 what is the minimum replacement cost of the films?
- 02.10 how long are the films, generally? (ie. calculate the range and average length).
- 02.11 what date range (first date, last date) does our rental table cover?
- 02.12 what does it cost to rent the cheapest film? how about the most expensive?

## 03 filter rows by `WHERE` condition
- 03.01 only show (any) 5 of the 'G' rated films. (use a single '=', or '<>' for exact match).
- 03.02 what is the name of the country with `country_id=97`?
- 03.03 what is the title of the film with `film_id=97`?
- 03.04 use `<>` to exclude matches: how many films are there that don't have an 'R' rating?
- 03.05 you can also use `!=` to exclude matches. use it to show how many films there are that don't have a 'G' rating?
- 03.06 what is the least replacement cost of a film whose replacement price exceeds £12?
- 03.07 use `IN` (elem1, elem2, ...) to test membership in a list. how many films are there that have either 'G', 'PG', or 'PG-13' rating?
- 03.08 you can use `NOT IN` to reverse the condition. what is the total length of films that are not rated 'R', nor 'NC-17'?
- 03.09 use `LIKE` and the `%` wildcard for approximate string matches. how many film titles start with 'Y'?
- 03.10 wassisname, that actor... name begins with "jo"- something?
- 03.11 use `BETWEEN ... AND ...` to constrain a quantitative to a range: how many films are between 80 and 90 minutes long, inclusive?
- 03.12 show me films that are between 80 ad 81 minutes long, inclusive?
- 03.13 how many rentals were made between '2005-12-15' and '2005-12-31'
- 03.14 you can string together multple conditions using brackets + logical the operators: `AND`, `OR`. how many affordable (replacement cost under $16.00) family films (rating='G') are there?

## 04 sort output with `ORDER BY... LIMIT ...`
- 04.01 what are the top 20 longest films?
- 04.02 which film has the highest price per minute of footage?
- 04.03 which film has the lowest price per minute of footage?
- 04.04 which three films have the highest rental rate per minute of feature length?

## 05 segment rows by column value with `GROUP BY`
- 05.01 how many films are there of each rating?
- 05.02 how many films are there at each rental price point? 
- 05.03 which are the most/least common?
- 05.04 how many films have each rental duration allowed?

## 06 filter aggregated values with a `HAVING` condition
- 06.01 which actor ids have appeared in fewer than 15 films?
- 06.02 which actor's name (first name, last name) occurs more than once in the actor table?
- 06.03 what film rating categories have average length of film under 115 minutes?
- 06.04 what countries have more than 40 cities?

## 07 merge two tables with a `JOIN`
- use `INNER JOIN ...  ON ...` to merge two tables and return rows where key value is matched in both tables.
- show the country name that each city belongs to, using `country_id` as the key
- show a table of `title` and `language` of some 10 'R' rated films 
- which `language` are the 15 longest films in?
- you can join multiple tables together in one go: show the title and category of 'G' and 'PG' films between 85 min and 90 min long. try it.

# final challenge
- which top 10 actors were rented out the greatest number of times, counting only ‘R’ rated films made in 2006?

 
