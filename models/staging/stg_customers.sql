{{
    config(
        materialized='table'
    )
}}
select id as customer_id,first_name,last_name
from {{ source('public', 'customers') }}
order by customer_id