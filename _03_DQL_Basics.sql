use intro_sql;

drop table if exists empinfo;
# create table empinfo

create table empinfo
(
first_name varchar(50),
last_name varchar(50),
emp_id int not null,
age int,
city varchar(100),
state varchar(100),
PRIMARY KEY (emp_id)
);

# inserting values into empinfo table

insert into empinfo values ('John', 'Jones', 99980, 45, 'Payson', 'Arizona');
insert into empinfo values ('Mary', 'Jones', 99982, 25, 'Payson', 'Arizona');
insert into empinfo values ('Eric', 'Edwards', 88232, 32, 'San Diego', 'California');
insert into empinfo values ('Mary Ann', 'Edwards', 88233, 32, 'Phoenix', 'Arizona');
insert into empinfo values ('Ginger', 'Howell', 98002, 42, 'Cottonwood', 'Arizona');
insert into empinfo values ('Sebastian', 'Smith', 92001, 23, 'Gila Bend', 'Arizona');
insert into empinfo values ('Gus', 'Gray', 22322, 35, 'Bagdad','Arizona');
insert into empinfo values ('Mary Ann', 'May', 32326, 52, 'Tucson','Arizona');
insert into empinfo values ('Erica', 'Williams', 32327, 60, 'Show Low','Arizona');
insert into empinfo values ('Leroy', 'Brown', 32380, 22, 'Pinetop','Arizona');
insert into empinfo values ('Elroy', 'Cleaver', 32382, 22, 'Globe','Arizona');

select * from empinfo;

select count(*) as Record_Count from empinfo;

select first_name, last_name, city from empinfo;

select last_name, city, age from empinfo
where age > 30;

select first_name, last_name, city, state from empinfo
where first_name like 'J%';

select * from empinfo;

select first_name, last_name from empinfo
where last_name like '%s';

select first_name, last_name, age from empinfo
where last_name like '%illia%';

select * from empinfo where age = 22 or age = 32;

select * from empinfo where age in (22,32);

select * from empinfo where state like '%z%';