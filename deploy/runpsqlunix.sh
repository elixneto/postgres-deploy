#!/bin/sh

#Reading user input...

read -p "Server [localhost] ...: " server
server=${server:-localhost}

read -p "Port [5432] ..........: " port
port=${port:-5432}

read -p "Username [postgres] ..: " username
username=${username:-postgres}

read -p "Database [postgres] ..: " database
database=${database:-postgres}

#Running PSQL to execute install.sql
psql -h $server -p $port -U $username -d $database -f install.sql 2>&1 | tee pub.log
