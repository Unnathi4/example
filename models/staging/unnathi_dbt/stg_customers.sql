 with customers as (
    select 
         c_custkey as customer_id,
         c_name as name ,
         c_address as address
    from analytics.unnathi_dbt.customer
 )

 select* from customers