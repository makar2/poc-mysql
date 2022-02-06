#!/bin/bash

# Get the script name to run now
export $(cat .env)

# Remove prevoiusly existing dump
rm -f dumped.sql

# Dump all databases
mysqldump -h 127.0.0.1 -u root "-p$MYSQL_ROOT_PASSWORD" $MYSQL_DATABASE > dumped.sql
