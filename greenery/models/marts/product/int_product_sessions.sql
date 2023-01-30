{{
  config(
    materialized='table'
  )
}}

with purchases as (
select 
    p.product_name,
    count(distinct session_guid) as unique_purchase_sessions
from 
    {{ ref('stg_postgres__events')}} e
    left join {{ ref('stg_postgres__order_items')}} oi on e.order_guid = oi.order_guid
    left join {{ ref('stg_postgres__products')}} p on oi.product_guid = p.product_guid
where event_type = 'checkout'
group by 1
),
product_views as (
select p.product_name,
    count(distinct session_guid) as unique_view_sessions
from 
    {{ ref('stg_postgres__events')}} e
    left join {{ ref('stg_postgres__products')}} p on e.product_guid = p.product_guid
    group by 1
)
select 
p.product_name,
p.unique_purchase_sessions, 
pv.unique_view_sessions
from purchases p 
join product_views pv on p.product_name = pv.product_name

