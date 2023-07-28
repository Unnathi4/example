{{

config(

materialized='incremental',

incremental_strategy='delete+insert',

alias='dim_customer',

unique_key= 'customer_id'

)

}}

select *

FROM {{ ref('stg_customers') }}

order by customer_id