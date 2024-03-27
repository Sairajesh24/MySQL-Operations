-- # MySQL command for database
show databases;
create database [db_name];
use [db_name];
drop database [db_name]

-- # MySQL command for table
create table [table_name] (col1 , col2, col3 , col4......);

show tables;
desc [tb_name];
drop table [table_name];

alter table [old table name] rename to [new name];
TRUNCATE TABLE [table_name];

insert into [table_name](id,name,city) values(12,'durgesh','delhi');
insert into [table_name] values(12,'ankit','kanpur');

alter table [table_name] add col1;
update [table_name] set col= value , col = value where col=value;
delete from [table_name] where col=value;
