{{config(
    database='Golder_layer_DB',
    schema='analytics'
)}}

with customers as (
    SELECT * FROM {{ref('stg_customers')}}
),

orders as (
    SELECT * FROM {{ref('stg_orders')}}
),

 payments as (
    SELECT * FROM {{ref('stg_payments')}}
),

customer_level_details as (
    SELECT
    c.CUSTOMER_ID,
    min(o.ORDER_DATE) as first_order,
    max(o.ORDER_DATE) as most_recent_order
    from customers c
    LEFT JOIN orders o
    on c.Customer_ID=o.CUSTOMER_ID
    GROUP BY  c.FIRST_NAME,c.LAST_NAME,c.CUSTOMER_ID
),

payment_details as (
    SELECT 
    o.Customer_ID,
    SUM(p.SALES_AMOUNT) as AMOUNT
    FROM payments p
    LEFT JOIN orders o
    ON p.ORDER_ID=o.ORDER_ID
    GROUP BY o.Customer_ID
),

final as (

    SELECT pd.* FROM customer_level_details cl
    LEFT JOIN payment_details pd
    ON cl.CUSTOMER_ID=pd.CUSTOMER_ID
)

SELECT * FROM final

