/*{{ config(materialized="table", transient = false) }}
moved this to project yaml
*/


with cte_customer as (
select c.id as cust_id, c.first_name, c.last_name
from {{ref("jaffle_shop_customer")}} c )

select * from cte_customer
