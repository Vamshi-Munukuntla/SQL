use intro_sql;
select * from superstore_usa;
select datediff(`Ship Date`, `Order Date`) from superstore_usa;

# STR_TO_DATE()
select `Order Date`, str_to_date(`Order Date`,'%d-%m-%Y') as converted_order_date from superstore_usa;

# DATEDIFF()
select datediff(str_to_date(`Ship Date`,'%d-%m-%Y'), str_to_date(`Order Date`,'%d-%m-%Y')) as delivery_days from superstore_usa;
select datediff(sysdate(), str_to_date(`Order Date`,'%d-%m-%Y')) as delivery_days from superstore_usa;

# DATEFORMAT()

SELECT DATE_FORMAT(str_to_date(`Order Date`,'%d-%m-%Y'), '%Y') as order_year FROM superstore_usa;

# DAY, MONTH, YEAR, QUARTER
SELECT `Order Date`, day(str_to_date(`Order Date`,'%d-%m-%y')) as order_day from superstore_usa;

SELECT `Order Date`, month(str_to_date(`Order Date`,'%d-%m-%y')) as order_day from superstore_usa;

SELECT `Order Date`, quarter(str_to_date(`Order Date`,'%d-%m-%y')) as order_day from superstore_usa;

# ADDDATE
select adddate('2011-01-10', interval 10 quarter);

# SUBDATE
select SUBDATE('2016-07-29', interval 15 day);


