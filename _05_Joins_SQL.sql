create database joins_sql;
use joins_sql;

create table Customers
(
customer_id int not null,
customername varchar (255),
contact_name varchar (255),
address varchar(255),
city varchar(255),
postalcode varchar(255),
country varchar(255),
PRIMARY KEY (customer_id)
);

CREATE TABLE Orders
(
Order_id int not null,
customer_id int not null,
employee_id int not null,
Order_date datetime,
shipper_id int not null,
PRIMARY KEY (Order_id),
FOREIGN KEY (customer_id) references Customers(customer_id)
);

show tables;
select * from customers;
select * from orders;

# Customer Details

insert into customers values (1, 'Vamshi', 'Vamshi', 'Warangal', 'Telangana', 506002, 'India');
insert into customers values (2, 'Shalini', 'Shalini', 'Warangal', 'Telangana', 506002, 'India');
insert into customers values (3, 'Anusha', 'Anusha', 'Warangal', 'Telangana', 506002, 'India');
insert into customers values (4, 'Vaishali', 'Vaishali', 'Warangal', 'Telangana', 506002, 'India');
insert into customers values (5, 'Madhu', 'Madhu', 'Warangal', 'Telangana', 506002, 'India');
insert into customers values (6, 'Sharath', 'Sharath', 'Warangal', 'Telangana', 506002, 'India');
insert into customers values (7, 'Anna', 'Anna', 'Warangal', 'Telangana', 506002, 'India');
insert into customers values (8, 'Rupa', 'Rupa', 'Warangal', 'Telangana', 506002, 'India');
insert into customers values (9, 'Leslie', 'Leslie', 'Warangal', 'Telangana', 506002, 'India');
insert into customers values (10, 'Ben Wyatt', 'Ben Wyatt', 'Warangal', 'Telangana', 506002, 'India');


# Order details

insert into orders values (901, 1, 1, sysdate(), 92601);
insert into orders values (902, 4, 2, sysdate(), 92604);
insert into orders values (903, 9, 3, sysdate(), 92606);
insert into orders values (905, 6, 4, sysdate(), 92601);
insert into orders values (904, 8, 5, sysdate(), 92606);


# LEFT JOIN
select * from customers c
LEFT JOIN Orders o
on c.customer_id = o.customer_id;

# RIGHT JOIN
select * from customers c
RIGHT JOIN Orders o
on c.customer_id = o.customer_id;

# FULL JOIN
select * from customers c
CROSS JOIN Orders o
on c.customer_id = o.customer_id;
 
# INNER JOIN
select * from customers c
INNER JOIN Orders o
on c.customer_id = o.customer_id;

# FULL OUTER JOIN
select c.customer_id, c.customername, c.country, o.order_id, o.order_date
from customers c
RIGHT OUTER JOIN Orders o
on c.customer_id = o.customer_id
UNION
select c.customer_id, c.customername, c.country, o.order_id, o.order_date
from customers c
LEFT OUTER JOIN Orders o
on c.customer_id = o.customer_id;
