congratulations to yesterday's cohort for enduring the rapid fire sql workshop from zero to query. as a quick refresher, what we learned was:

- that the real skill of sql is the ability to translate a question of the data into a SELECT statement
- the minimum statement contains: `SELECT {column} FROM {table};`
- to be more and more specific with what data is returned you add clauses to the statement.
- the clauses, in order are:
    + `SELECT {columns} FROM {table}`
    + `INNER JOIN {table_2} ON {col1}={col2}`
    + `WHERE {condition}`
    + `GROUP BY {columns}`
    + `HAVING {condition}`
    + `ORDER BY {columns}`
    + `LIMIT {num}`
    + and don't forget the `;`

master this, and you become able to *filter, slice, join, group, aggregate*, and *sort* data from a database of *any* size!
