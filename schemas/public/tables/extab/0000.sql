\set descFile '\'#0000 - CREATE EXTAB\''
-------------------------------
\i ../include/init_file.sql
-------------------------------

--> Table...
CREATE TABLE public.EXTAB
(
    --> Columns
    ID SERIAL NOT NULL
   ,COLUMN01 CHARACTER VARYING (100)
   ,COLUMN02 DATE
   ,COLUMN03 TIMESTAMP(6)
   ,COLUMN04 INTEGER
   --> PK
   ,CONSTRAINT PK_TABLENAME PRIMARY KEY (ID)
);

-------------------------------
\i ../include/end_file.sql
-------------------------------