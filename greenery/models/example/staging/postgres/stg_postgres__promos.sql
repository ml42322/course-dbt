{{
  config(
    materialized='table'
  )
}}
with src_promos as (
    select * from {{ source('postgres','promos') }}
)
, renamed_recast as (
select 
    promo_id as promo_guid
    , discount as discount_amt
    , status
from src_promos
)
select * from renamed_recast