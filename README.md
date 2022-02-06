# MySQL Hands on

My little MySQL project, learning while coding

## Prerequisites
1. Docker
1. Docker Compose
1. MySQL client only: `apt install mysql`


## How to start

Use this script to
1. Purge the container and its volume
1. Restore the `bestbuy` database.
```
. ./flush.sh
```

Alternatively, run the `restore.sql` script just to drop and restore the `bestbuy` database (example below).

## How to run an SQL script

The repo includes a number of SQL scripts in the `create`, `read`, `update` and `delete` folder. They're meant to work with the original data.

Use the `run.sh` script with those optional arguments:

| Argument  | Description                     |
|-----------|:-------------------------------:|
| r         | run as root user                |
| w         | run as a `watch` shell command  |
| e         | run a string instead of a file  |

### Examples

Running from a file
```
. ./run.sh -r create/restore.sql
```

Running with an inline script
```
. ./run.sh -rwe "USE bestbuy; SELECT id, slug, price FROM items ORDER BY id"
```

## P.S.
More tips spread around SQL script files.