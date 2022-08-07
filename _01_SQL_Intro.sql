create database Intro_SQL;

use Intro_SQL;

# Students --> id, name, age, gender, location
drop table Students;

create table Students
(
student_id int,
student_name varchar(50) ,
age int,
gender varchar(1),
location varchar(100)
);

show tables;

select * from students;

INSERT INTO Students values (1, 'Vamshi', 25, 'M', 'India');

INSERT INTO Students values (2, null, 28, 'M', 'Japan');

select * from students;

# create department table with department id as primary key
create table dep(
depid int not null primary key,
depname varchar(100),
depaddress varchar(255)
);

# create employee table with employee id as primary key 
# and depid from department table as foreign key

create table emp(
empid int primary key,
empname varchar(255),
empadd varchar(255),
depid int,
FOREIGN KEY (depid) references dep(depid)
);
