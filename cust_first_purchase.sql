-- Stage 1. Finding each customers first purchase date

select * from clean_orders limit 10;

create or replace view customer_first_prchase_date as
select customer_id, min(date(invoicedate)) as first_purchase
from clean_orders
group by customer_id
order by first_purchase asc;

create or replace view customer_with_type as
	select o.*, 
			case
				when o.invoicedate = f.first_purchase then 'new'
                else 'repeat'
                end as customer_type
			from clean_orders o
            join customer_first_prchase_date f
            on o.customer_id = f.customer_id;
            
select customer_type,count(customer_type) as count from customer_with_type group by customer_type;