with raw as (

    SELECT * FROM {{source("Snowflake Source","raw_payments")}}
),

final as (

    select ID AS PAYMENT_ID,
    ORDER_ID,
    PAYMENT_METHOD AS PAYMENT_MODE,
    AMOUNT/100 as SALES_AMOUNT
    from raw

)

SELECT * FROM final