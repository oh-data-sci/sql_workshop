from zero to query
===
![from zero to query](img/from02sql.001.jpeg)
# introduction
this is a free sql workshop for beginners offered in the brighton data forum in 2023. the workshop is based on exercises that gradually build up skills in sql. in order to practice the commands you need the training database included for your convenience in this repo. the database is the sakila database which i got from kaggle, [here](https://www.kaggle.com/datasets/atanaskanev/sqlite-sakila-sample-database) and [here](https://www.kaggle.com/code/dilarabr/dvd-rental-database-project-sqlite). it was originally made for `mysql`, as is [described here](https://dev.mysql.com/doc/sakila/en/): 


# get started
since this is a workshop with exercises, the only way to benefit from this is by following/doing the exercises.

	1. clone or download this repo. 
    2. install sqlite.

`sqlite` is a simple and popular open source sql database engine in the form a command line application. you will access it in a terminal (unix/linux/mac) or the command prompt (windows). you may already have it installed. in case you do not, you can download and install `sqlite` from [here](https://www.sqlite.org/download.html).

navigate to your copy of the repo folder and launch `sqlite` there. when you do it should look something like the following (on my system the `sqlite` application is envoked with `sqlite3`):

```
    sql_workshop> sqlite3
        SQLite version 3.39.5 2022-10-14 20:58:05
        Enter ".help" for usage hints.
        Connected to a transient in-memory database.
        Use ".open FILENAME" to reopen on a persistent database.
    sqlite>
```

(note that to quit the `sqlite` application at any time you just type `.quit` in the prompt.)

next, open the database file/document from `data/sqlite-sakila.db`:

```
    .open data/sqlite-sakila.db
```

optionally, you can then configure your application appearance and behaviour:

```
    sqlite> .header ON
    sqlite> .mode qbox
    sqlite> .show
```

next, inspect what tables are available in the training database
```
    sqlite> .tables
    actor           film            payment
    address         film_actor      rental
    category        film_category   sales_by_film_category
    city            film_list       sales_by_store
    country         film_text       staff
    customer        inventory       staff_list
    customer_list   language        store
```

if your output is like the above, you are ready to start the exercises.


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
the exercises, are found in the `exercises.md` document. their solutions are found in the `solutions/` folder.

