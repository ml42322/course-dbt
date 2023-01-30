{{
  config(
    materialized='table'
  )
}}

select
    user_guid,
    count( distinct session_guid) as page_views
from {{ref('stg_postgres__events')}}
group by 1