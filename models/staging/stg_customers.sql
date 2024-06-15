{{ config(schema='staging') }}



with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ source("sahil's sources",'raw_customers') }}

),

final as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from final