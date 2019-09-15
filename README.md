Sample Postgres database
---

## Restore database
- Create a database name `workshop`
- Use the commands below to restore the database

```
pg_restore -Fc --no-owner --clean -d quicksell quicksell.dump
```

```
psql -d workshop -f workshop.sql
```

**Note:**
You may need to add `-U username -W` if authentication required

## Database structure

Quicksell: https://dbdiagram.io/d/5d7dee9f83427516dc0baa30
