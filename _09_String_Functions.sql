# CONCAT
select first_name, last_name, concat(first_name, space(1),  last_name) as full_name from emp_new;
update emp_new set last_name = 'Reddy' where first_name = 'Varun';

# SUBSTR
select substr('SQL Tutorial', 5, 5);

# UPPER
select upper(first_name) from emp_new;

# LOWER
select lower(last_name) from emp_new;

# INITCAP()
select initcap(lower(last_name)) from emp_new;


select mid('Vamshi',1,6);