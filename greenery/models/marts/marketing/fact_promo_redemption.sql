{{
  config(
    materialized='table'
  )
}}

with promo_usage as (
    select
    created_at_utc promo_redeemed_at_utc,
    promo_desc,
    status,
    count(order_guid) as order_count
    from {{ ref('stg_postgres__orders') }}
    where promo_desc is not null 
    group by 1,2,3
)
select
    pu.promo_redeemed_at_utc,
    pu.promo_desc,
    pu.status,
    pu.order_count,
    p.discount_amt
from promo_usage pu 
left join {{ ref('stg_postgres__promos')}} p on pu.promo_desc = p.promo_guid

