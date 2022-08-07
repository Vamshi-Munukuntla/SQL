use intro_sql;

show tables;

# COUNT
select city, count(*) from superstore_usa
group by city
order by count(city) desc;

# SUM
select `Product Container`, `Ship Mode`, sum(`Shipping Cost`) as 'Total Shipping Cost' from superstore_usa
group by `product container`
order by `Ship Mode`;

# MIN
select min(`order date`) as `first_order` from superstore_usa;

# MAX
select max(`order date`) as last_order from superstore_usa;









