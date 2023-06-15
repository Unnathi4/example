 with customers as (
    select 
         c_custkey as customer_id,
         c_name as name ,
         c_address as address
    from {{source('unnathi_dbt','customer')}}
 )

 select* from customers