sql workshops
===
# introduction
this is a trilogy of free workshops on sql for beginners offered in the brighton data forum since 2023. the workshops are:

1. **from zero to query** (for absolute beginners, introduces the `SELECT` statement and some variants of it)
2. **the sql sequel - WIP** (the next step for beginners, a short refresher, followed by introduction to subqueries, common table expressions, pivots)
3. **tbd - WIP** (a planned follow-up for slightly more advanced topics like window functions and user defined functions)

# preparation
since these are workshops with exercises, the only way to benefit from the repo is by following/doing the exercises. this requires some preparation:

	1. clone or download this repo. 
    2. install sqlite.

## about `sqlite3`
`sqlite` is a simple and popular open source sql database engine in the form of a command line application. you will access it in a terminal (unix/linux/mac) or the command prompt (windows). you may already have it installed. in case you do not, you can download and install `sqlite` from [here](https://www.sqlite.org/download.html).

navigate to your copy of the repo folder and launch `sqlite` there. when you do it should look something like the following (on my mac, the `sqlite` application is invoked with `sqlite3`):

```
    sql_workshop> sqlite3
        SQLite version 3.39.5 2022-10-14 20:58:05
        Enter ".help" for usage hints.
        Connected to a transient in-memory database.
        Use ".open FILENAME" to reopen on a persistent database.
    sqlite>
```

(to quit the `sqlite` application, type `.quit` at the prompt.)

next, try opening one of the databases, as a test, (e.g. `data/sqlite-sakila.db`):

```
    .open data/sqlite-sakila.db
```

optionally, you can configure your `sqlite3` output appearance and behaviour:

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

if your output is like the above, you are ready to start the exercises for this workshop.


# the exercises
each workshop is based on exercises that gradually build up skills in sql. you will find these in the `exercises/` folder under each workshop. the exercises are provided as markdown and as pdf files.


# the data sets
in order to practice the commands you need the training database included for your convenience in this repo. in the first workshop we work with the sakila training database which i got from kaggle, [here](https://www.kaggle.com/datasets/atanaskanev/sqlite-sakila-sample-database) and [here](https://www.kaggle.com/code/dilarabr/dvd-rental-database-project-sqlite). it was originally made for `mysql`, as is [described here](https://dev.mysql.com/doc/sakila/en/): 


