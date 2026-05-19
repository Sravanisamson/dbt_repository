--- secure view 
{{
    config(
        materialized='view',
        secure=true
    )
}}

select first_name,o.status,o.order_date,paymentmethod,amount 
from icici_db.BANKING_SCHEMA.customers c 
inner join icici_db.BANKING_SCHEMA.orders o  on o.customer_id=c.customer_id
inner join icici_db.BANKING_SCHEMA.payment p  on o.order_id=p.orderid
where c.status='Y'





