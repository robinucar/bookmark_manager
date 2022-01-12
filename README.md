User Story 1
## As a regular internet user
## So that I want to easily visit the web site I visit regularly
## I would like to see a bookmark list.

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

User Story 2
## As a regular internet user
## So I can store the websites I like easily
## I want to add a new bookmark to Bookmark Manager