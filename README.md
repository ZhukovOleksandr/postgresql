# postgresql
Task 1

Создать таблицу, выдающую следующее:

select * from users;

1 | m      | Vasya  | mmm@mail.com
2 | m      | Alex   | mmm@gmail.com
3 | m      | Alexey | alexey@gmail.com
4 | f      | Helen  | hell@gmail.com
5 | f      | Jenny  | eachup@gmail.com
6 | f      | Lora   | tpicks@gmail.com

create database module;
create table users;
create table users (id serial primary key, 
		    gender varchar(2) not null default 'm' , 
		    nane text, mail text);
copy users from 'D:\Postgsql\module.txt' with delimiter '|';
select * from users;

--------------------------------------------------------------------------------
Task 2

Получить результат вида:
We have 3 boys!
We have 3 girls!


select concat('We have ', count(gender), ' boys') from users where gender = 'm'
union
select concat('We have ', count(gender), ' girls') from users where gender = 'f';

----------------------------------------------------------------------------------
Task 3
Получить результат вида:
This is Vasya, he has email mmm@mail.com
This is Alex, he has email mmm@gmail.com
This is Alexey, he has email alexey@gmail.com
This is Helen, she has email hell@gmail.com
This is Jenny, she has email eachup@gmail.com
This is Lora, she has email tpicks@gmail.com

select concat('This is ', name, ', he has email ', mail) from users where gender = 'm'
module-# union
module-# select concat('This is ', name, ', she has email ', mail) from users where gender = 'f';
