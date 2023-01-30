{{
  config(
    materialized='table'
  )
}}

select 
    session_guid,
    boolor_agg(e.event_type = 'checkout') AS checkout_event_flag
from {{ ref('stg_postgres__events')}} e
group by 1
