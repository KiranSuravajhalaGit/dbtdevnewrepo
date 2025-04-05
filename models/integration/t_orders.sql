{{ config(materialized="table", transient = false) }}


with cte_orders as (
select o.id as order_id, o.order_date, o.status, o.user_id as user_id
from {{ref("jaffle_shop_orders")}} o )

select * from cte_orders
