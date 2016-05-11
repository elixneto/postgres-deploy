# postgres-deploy
An easy project structure deploy for PostgreSQL

Useful for incremental versions of databases

## Installation
- Install PostgreSQL

        sudo apt-get install postgresql postgresql-contrib
- Download repository
- Connect to your PostgreSQL database with username *postgres*
- Run the script **/include/install-pg-deploy.sql** on *psql*

        \i {{your_path}}/include/install-pg-deploy.sql

## Executing
#### Unix
- Open terminal
- Run the following commands:

        cd {{your_path}}
        sh runpsqlunix.sh
