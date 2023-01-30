{{
  config(
    materialized='table'
  )
}}

select
user_guid,
sum(order_cost) lifetime_order_cost,
sum(shipping_cost) lifetime_shipping_cost, 
sum(order_total) lifetime_order_total,
count(order_guid) order_count
from {{ ref('stg_postgres__orders')}}
group by 1