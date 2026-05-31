-- schema is like a default folder is our database which is veryimportant

-- db -> schema -> table -> rows
create schema if not exists basics;

-- PS C:\Users\shaik\Desktop\Learning Postgresql> psql -U postgres -d postgresql_part1 -f part1/02_first_schema.sql

create extension if not exists pgcrypto;

select schema_name
from information_schema.schemata 
-- this is postgress standard meta data schema
order by schema_name;