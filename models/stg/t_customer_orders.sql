{{ config(materialized="table", transient = false) }}


with cte_customer_orders as (
select c.cust_id as cust_id, c.first_name, c.last_name, o.order_id as order_id, o.order_date, o.status
from {{ ref("t_customer")}} c
inner join {{ ref("t_orders")}} o on c.cust_id = o.user_id )

select * from cte_customer_orders
