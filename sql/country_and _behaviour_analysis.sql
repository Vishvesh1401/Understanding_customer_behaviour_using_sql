-- Country and Behaviour Analysis

select * from customer_with_type limit 10;

-- Revenue by Country

select 
	country,
    sum(revenue) as total_revenue
from customer_with_type
group by country
order by total_revenue desc;

-- Number of Disticnt Customers Country wise

select 
	country,
    count(distinct(customer_id)) as total_orders
from customer_with_type
group by country
order by total_orders;

-- New vs Repeat Revenue by Country

select 
	country,
    customer_type,
    sum(revenue) as total_rev
from customer_with_type
group by country, customer_type
order by  country, total_rev;

-- New vs Repeat Orders by Country

select 
	country, 
    customer_type,
    count(invoice) as orders
from customer_with_type
group by country, customer_type 
order by country, orders;

-- Number of Repeat Customers

select 
	country,
    count(distinct(customer_id)) as total_customers,
    count(distinct case
		when customer_type = 'repeat' then customer_id
        end)
	as repeat_customers
    from customer_with_type
    group by country
    order by repeat_customers desc;
