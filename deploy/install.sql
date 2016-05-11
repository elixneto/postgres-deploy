--> Change the properties
--------------------------------------------
\set projectName '\'POSTGRES-DEPLOY\''
\set versionDeploy '\'0.0.0-0\''
--------------------------------------------
\i ../include/init_deploy.sql
--------------------------------------------

--> Files to run...
\i #0000.sql

--------------------------------------------
\i ../include/end_deploy.sql
--------------------------------------------