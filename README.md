Sample Postgres database
---

This repo contains 2 databases `workshop` and `quicksell`

## Create your database first
Using `psql` to create database or any of your favorite tools

```
$ psql
=# create database workshop;
=# create database quicksell;
```

## Restore database
- Create a database name `workshop`
- Use the command below to restore the database

```
psql -d workshop -f workshop.sql
```
- Use this command below to create database `quicksell`

```
pg_restore -Fc --no-owner --clean -d quicksell quicksell.dump
```

**Note:**
You may need to add `-U username -W` if authentication required

## Database structure

Quicksell: https://dbdiagram.io/d/5d7dee9f83427516dc0baa30
