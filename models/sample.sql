WITH customers AS (
    SELECT
        c_custkey AS customer_id,
        C_name,
        c_address
    FROM analytics.unnathi_dbt.customer
)

CREATE OR REPLACE VIEW analytics.dbt_unnathi4.sample AS
SELECT * FROM customers;

