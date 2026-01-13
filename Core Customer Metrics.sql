-- Core Customer Metrics

use multi;

select * from customer_with_type limit 10;

-- Number of New and Repeating Customers 

select count(distinct customer_id),
		count(distinct case
						when customer_type = 'repeat' then customer_id
                        end)
		as repeat_customers
        from customer_with_type;

create or replace view clean_orders as
select 
	invoice,
    stockcode,
    Description,
    quantity,
    invoicedate,
    price,
    quantity*price as revenue,
    customer_id,
    country
from ondata;

-- Revenue from Type of Customers

select customer_type,
		sum(revenue) as total_rev
	from customer_with_type
    group by customer_type;
    
-- Number of orders from customers

select customer_id,
		count(invoice) as total_orders
	from customer_with_type
    group by customer_id
    order by total_orders desc;
    
-- Average number of orders
select round(avg(total_orders)) as avg_order_customer
from(
select customer_id,
		count(invoice) as total_orders
	from customer_with_type
    group by customer_id
    order by total_orders desc
    )t;