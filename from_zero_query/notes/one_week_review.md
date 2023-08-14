hello to the participants of the second cohort of the sql workshop. since it has now been a week since the workshop, i fully expect that the details are now fully forgotten. that is fine, but let us review some main points covered.

- we learned that sql is a powerful language, and the lingua franca of databases.
- we learned to write sql queries which:
    + always start with `SELECT ...`
    + always end with `;`
    + always contain a `FROM` clause
    + optionally include one or more of the
    `JOIN`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT` clauses.
- the real magic power of knowing sql is being able to translate a real-world question into a query that produces an answer, when run on a database with the relevant information.
- the trickiest concept we discussed is table joins. always try to visualise the desired output of a join before trying to write it.
- i encourage you to practice with the exercise set that came with the workshop. you will also find the solutions to the exercises in the workshop repository.
- don't forget, should you run into sql trouble in the future, that you have plenty of colleagues (myself, jaishankar, damir, and many others) ready and willing to help out.

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
