# postgresqlTask 1
create database module;
create table users;
create table users (id serial primary key, 
		    gender varchar(2) not null default 'm' , 
		    nane text, mail text);
copy users from 'D:\Postgsql\module.txt' with delimiter '|';
select * from users;

--------------------------------------------------------------------------------
Task 2
select concat('We have ', count(gender), ' boys') from users where gender = 'm'
union
select concat('We have ', count(gender), ' girls') from users where gender = 'f';

----------------------------------------------------------------------------------
Task 3
select concat('This is ', name, ', he has email ', mail) from users where gender = 'm'
module-# union
module-# select concat('This is ', name, ', she has email ', mail) from users where gender = 'f';
