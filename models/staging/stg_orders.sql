{{config(
    database='STAGING',
    schema='stg'
)}}


with raw as (

    SELECT * FROM {{source("Snowflake Source","raw_orders")}}
),

rename2 as (

    select ID AS ORDER_ID,
    "USER_ID" AS CUSTOMER_ID,
    ORDER_DATE,
    STATUS
    from raw

)

SELECT * FROM rename2