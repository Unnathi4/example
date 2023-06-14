WITH customers AS (
    SELECT
        c_custkey AS customer_id,
        C_name,
        c_address
    FROM analytics.unnathi_dbt.customer
)
SELECT * FROM customers;

