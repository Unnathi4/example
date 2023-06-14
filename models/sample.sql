with customers as (

    select
        c_custkey as customer_id,
        C_name,
        c_address

    from analytics.unnathi_dbt.customer

),

orders as (

    select
        o_orderkey as order_id,
        o_custkey as customer_id,
        o_orderstatus,
        o_orderdate as order_date 

    from analytics.unnathi_dbt.orders

),

customer_orders as (

    select
        customer_id,

        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders

    from orders

    group by 1

),


final as (

    select
        customers.customer_id,
        customers.c_name,
        customers.c_address,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders

    from customers

    left join customer_orders using (customer_id)

)
select * from final