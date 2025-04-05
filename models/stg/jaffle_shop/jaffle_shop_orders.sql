/*{{ config(materialized="table", transient = true) }}
moved this to project yaml
*/
select *
from 
---RAW.JAFFLE_SHOP.ORDERS 
{{ source('jaffle_shop','orders') }}