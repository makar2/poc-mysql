# MySQL Hands on

My little MySQL project, learning while coding

## Prerequisites
1. Docker
1. Docker Compose
1. MySQL client only: `apt install mysql`


## How to start

Use this script to start or flush and restore the DB to original data.
```
. ./flush.sh
```

## How to run an sql script

The repo includes a number of sql scripts in the `create`, `read`, `update` and `delete` folder. They're meant to work with the original data.

Use the `run.sh` script with those optional arguments:

| Argument  | Description                     |
|-----------|:-------------------------------:|
| r         | run as root user                |
| w         | run as a `watch` shell command  |
| e         | run a string instead of a file  |

### Examples

Running from a file
```
. ./run.sh -rw read/dbs.sh
```

Running with an inline script
```
. ./run.sh -rwe "USE bestbuy; SELECT id, slug, price FROM items ORDER BY id"
```