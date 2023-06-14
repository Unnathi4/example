with customers as (

    select
        c_custkey as customer_id,
        C_name,
        c_address

    from analytics.unnathi_dbt.customer

)
