with orders as (
    select 
    o_orderkey as order_id,
    o_custkey as customer_id,
    o_orderstatus as status,
    o_orderdate as order_date
    from {{ source('unnathi_dbt','orders')}}
)

 select * from orders