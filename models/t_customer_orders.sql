{{config(materialized='table', transcient = false)}}


with cte_customer_orders as (
select c.id as cust_id, c.first_name, c.last_name, o.id as order_id, o.order_date, o.status
from RAW.JAFFLE_SHOP.CUSTOMERS c
inner join RAW.JAFFLE_SHOP.ORDERS o on c.id = o.user_id )

select * from cte_customer_orders;
