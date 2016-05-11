@echo off
cls

REM Reading user input...

SET server=localhost
SET /P server="Server [localhost] ...: "

SET port=5433
SET /P port="Port [5432] ..........: "

SET username=postgres
SET /P username="Username [postgres] ..: "

SET database=postgres
SET /P database="Database [postgres] ..: "

REM Running PSQL to execute install.sql
"C:\Program Files\PostgreSQL\9.5\bin\psql.exe" -h %server% -p %port% -U %username% -d %database% -f install.sql > pub.log 2> errpub.log

pause
