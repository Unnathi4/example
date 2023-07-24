{{ config(

    materialized = 'incremental',

    unique_key = 'user_id'

) }}

with events as (

    select id as order_id,user_id as customer_id,order_date,status,_etl_loaded_at
    from {{ source('public', 'orders') }}

    {% if is_incremental() %}

    where order_date >= (select dateadd('day',-1,max(order_date)) from {{ this }})

    {% endif %}

)

select * from events