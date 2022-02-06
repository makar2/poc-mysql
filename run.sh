#!/bin/bash

# Get the script name to run now
export $(cat .env)

# Fallback values
USER=$MYSQL_USER
PASSWORD=$MYSQL_PASSWORD
PREFIX="bash -c"
SUFIX="<"

# Retreice the script name from bash command (or use the fallback value from .env if not provided here)
OPTIND=1
while getopts rwe o
do	case "$o" in
	r)	USER=root;
      PASSWORD="$MYSQL_ROOT_PASSWORD";;
	w)	PREFIX=watch;;
	e)	SUFIX="-e";;
	esac
done
shift $((OPTIND-1))


# Log in to mysql and run $SCRIPT
$PREFIX "mysql -h 127.0.0.1 -u $USER '-p$PASSWORD' --table=TRUE $SUFIX '$1'"
