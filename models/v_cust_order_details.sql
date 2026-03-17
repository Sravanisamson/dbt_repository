{{
    config(
        materialized='table',
        transient=false
    )
}}
select first_name,order_date,amount,p.status,p.paymentmethod
 from icici_db.banking_schema.customers c
inner join icici_db.banking_schema.orders o on o.customer_id=c.customer_id
inner join icici_db.banking_schema.payment p on p.orderid =o.order_id
where c.customer_id=1
