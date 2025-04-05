{{ config(materialized="table", transient = true) }}


with cte_customer as (
select c.id as cust_id, c.first_name, c.last_name
from RAW.JAFFLE_SHOP.CUSTOMERS c )

select * from cte_customer
