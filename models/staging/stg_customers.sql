{{config(
    database='STAGING',
    schema='stg'
)}}

with raw as (

    SELECT * FROM {{source("Snowflake Source","raw_customers")}}
),

final as (

    select ID AS Customer_ID,
    FIRST_NAME,
    LAST_NAME
    from raw

)

SELECT * FROM final