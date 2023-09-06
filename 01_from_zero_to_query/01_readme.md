from zero to query
===
# introduction
in this first workshop, aimed at absolute beginners, we will introduce the `SELECT` statement and learn to piece together the main components of a query:

- `SELECT ... FROM ... [opt];`
- where `[opt]` is one or more of 
    + `JOIN ...`
    + `WHERE ...`
    + `GROUP BY ...`
    + `HAVING ...`
    + `ORDER BY ...`
    + `LIMIT ...`


# getting started
![from zero to query](../img/from02sql.001.jpeg)



# slides
the slides are found in the `notes/` folder. open them first and read the first few, and then work along on your `sqlite` instance. 
## query structures covered
we do not cover the full range of query possibilities in this workshop. the queries we cover are all of one of the following types:

- `SELECT * FROM <tablename>`
- `SELECT * FROM <tablename> LIMIT <n>`
- `SELECT <column1>, <column2>, ... FROM <tablename>`
- `SELECT <column1> AS alias1, <column2> AS alias2, ... FROM <tablename>`
- `SELECT <columns> FROM <tablename> WHERE <condition>`
- `SELECT <columns> FROM <tablename> ORDER BY <a_column> LIMIT <n>`
- `SELECT <a_column>, <aggregation of columns>, ... FROM <tablename> GROUP BY <a_column>`
- `SELECT <a_column>, <aggregation of columns>, ... FROM <tablename> GROUP BY <a_column> HAVING <condition>`
- `SELECT a.column1, b.column1 FROM <tablename> a INNER JOIN <tablename> b ON a.key_column=b.key_column`
- `SELECT a.column1, b.column1 FROM <tablename> a LEFT JOIN <tablename> b ON a.key_column=b.key_column`


# the exercises
the exercises, are found in the `exercises.md` document in each workshop folder. their solutions are found in the `solutions/` sub-folder.

