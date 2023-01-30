{{
  config(
    materialized='table'
  )
}}


with order_quantity as (
select
order_guid,
sum(item_quantity) as items_ordered,
count(distinct product_guid) as num_unique_products_ordered
from {{ ref('stg_postgres__order_items') }}
group by 1
)
select 
    o.order_guid,
    o.user_guid,
    o.promo_desc,
    o.address_guid,
    o.created_at_utc, 
    o.order_cost, 
    o.shipping_cost, 
    o.order_total, 
    o.tracking_guid, 
    o.shipping_service, 
    o.estimated_delivery_at_utc, 
    o.delivered_at_utc, 
    o.status,
    oq.items_ordered,
    oq.num_unique_products_ordered
from {{ ref('stg_postgres__orders') }} o
left join order_quantity oq on o.order_guid = oq.order_guid
