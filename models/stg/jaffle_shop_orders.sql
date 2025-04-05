{{ config(materialized="table", transient = true) }}


select *
from RAW.JAFFLE_SHOP.ORDERS 