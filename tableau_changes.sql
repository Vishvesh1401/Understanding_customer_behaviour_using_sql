use multi;

select * from customer_with_type limit 10;

select 
	customer_type,
    sum(revenue) as total_rev
from customer_with_type
group by customer_type;

select 
	customer_type,
    count(invoice) as total_orders
from customer_with_type
group by customer_type;

select 
	country,
    sum(revenue) as rev
from customer_with_type
group by country;