{{
  config(
    materialized='table'
  )
}}

select 
count_if(add_to_cart_count > 0) / count_if(page_view_count > 0) add_to_cart_div_page_view,
count_if(checkout_count > 0) / count(*) as checkout_div_page_view,
count_if(checkout_count > 0) / count_if(add_to_cart_count > 0) as checkout_div_add_to_cart
from {{ ref('fact_session_activity') }}