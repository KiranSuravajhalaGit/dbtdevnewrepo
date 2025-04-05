/*{{ config(materialized="table", transient = true) }}
moved this to project yaml
*/
select *
from 
----RAW.JAFFLE_SHOP.CUSTOMERS c 
{{ source('jaffle_shop', 'customers') }}