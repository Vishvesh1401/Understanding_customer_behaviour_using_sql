use multi;
select * from ondata limit 10;

select count(*) from ondata;

alter table ondata
rename column Customer_ID  to customer_id;

select count(*) from ondata where customer_id is NULL;

select count(*) from ondata where price<=0 and quantity<=0;

create view clean_orders as
select 
	invoice,
    stockcode,
    Description,
    quantity,
    invoicedate,
    price,
    customer_id,
    country
from ondata;

select description from clean_orders limit 10;

select count(distinct customer_id) from ondata;
