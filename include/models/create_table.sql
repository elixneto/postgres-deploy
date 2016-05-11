\set descFile '\'#xxxx - CREATE TABLE_NAME\''
-------------------------------
\i ../include/init_file.sql
-------------------------------

--> Table...
CREATE TABLE public.TABLE_NAME
(
    --> Columns
    ID SERIAL NOT NULL
   ,COLUMN01 CHARACTER VARYING (100)
   ,COLUMN02 DATE
   ,COLUMN03 TIMESTAMP(6)
   ,COLUMN04 INTEGER
   --> PK
   ,CONSTRAINT PK_TABLENAME PRIMARY KEY (ID)
   --> FKs
   ,CONSTRAINT FK_TABLE_NAME_01 FOREIGN KEY (COLUMN04) REFERENCES public.OTHER_TABLE_NAME (ID)
   --> UNQs
   ,CONSTRAINT UNQ_TABLE_NAME UNIQUE (COLUMN01)
);

--> Indexes...
CREATE INDEX IDX_TABLE_NAME_01 ON public.TABLE_NAME (COLUMN02);

--> Comments...
COMMENT ON TABLE  public.TABLE_NAME IS 'Table description';
COMMENT ON COLUMN public.TABLE_NAME.ID IS 'PK';
COMMENT ON COLUMN public.TABLE_NAME.COLUMN03 IS 'Comment to column03';

--> Grants...
GRANT SELECT, INSERT, UPDATE ON TABLE_NAME TO USERNAME;

-------------------------------
\i ../include/end_file.sql
-------------------------------