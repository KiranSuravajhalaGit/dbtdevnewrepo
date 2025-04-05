{{ config(materialized="table", transient = true) }}


with cte_orders as (
select o.id as order_id, o.order_date, o.status, o.user_id as user_id
from RAW.JAFFLE_SHOP.ORDERS o )

select * from cte_orders
