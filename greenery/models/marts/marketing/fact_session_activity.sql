{{
  config(
    materialized='table'
  )
}}

select
session_guid,
user_guid,
{{ by_event_type() }} 
from {{ ref('stg_postgres__events')}}
group by 1,2