select * from superstore_usa;

# HAVING
select region, sales, profit, count(region) from superstore_usa 
group by region
having count(region) > 2500;

# LIMIT and ORDER BY
select * from superstore_usa
order by 'Customer Segment'
limit 5;