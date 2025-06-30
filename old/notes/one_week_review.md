a quick review
===
# introduction 
the zero to query workshop covers many details and many attendees were seeing those for the very first time. thus it is natural to expect that they get forgotten in less than one week from the event. a one week after the fact is a good time to remind/review the attendees what was learned and waht it means. 

# revision
- we learned that sql is a powerful language, and the lingua franca of databases.
- the sql statements we learned all begin with `SELECT ...`, contain a `FROM ...` reference, and end with a `;`
- all sql statements are composed of component *clauses*. the minimum statement has only two: `SELECT ... FROM ...;`
- the clauses, in the order you type them, are: 
    + `SELECT ...`
    + `FROM ...`,
    + `WHERE ...`,
    + `GROUP BY ...`,
    + `HAVING ...`,
    + `ORDER BY ...`,
    + `LIMIT ...`,
    + `;`.
- by arranging these components together correctly, smartly filling in the `...` placeholders with computations/column identifiers`, table identifiers, and running your code directly on a database/data warehouse, you can perform any data wrangling task which requires slicing, filtering, splitting up and aggregating, on any data set, of almost any size.
- the real power of knowing sql is the ability to translate a real-world question into a query to run on the available data and producing an answer.
- the trickiest concept we discussed is table joins. every data professional should understand table joins.
    + always try to visualise the desired output of a join before trying to write a `JOIN` clause.
    + `LEFT JOIN` or `INNER JOIN` are the most useful kinds
    + first join smaller tables, then larger. 
- i encourage you to practice with the exercise set that came with the workshop. you will also find the solutions to the exercises in the workshop repository.

finally, please consider this query, which reviews most of what we covered:

```

    SELECT
        a.first_name, 
        a.last_name,
        COUNT(*) AS num_rentals
    FROM
        actor a
        INNER JOIN film_actor fa ON a.actor_id=fa.actor_id
        INNER JOIN film        f ON fa.film_id=f.film_id 
        INNER JOIN inventory   i ON f.film_id=i.film_id
        INNER JOIN rental      r ON i.inventory_id=r.inventory_id
    WHERE
        f.release_year = 2006
        AND f.rating = 'R'
    GROUP BY a.first_name, a.last_name
    ORDER BY num_rentals DESC
    LIMIT 10
;
```
