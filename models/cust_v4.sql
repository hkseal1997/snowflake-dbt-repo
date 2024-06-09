{{
    config(
        materialized='view',
        alias="New_table_name" ,
        tags=['daily']
        )

}}


    
SELECT * ,'{{invocation_id}}' as Invocation_ID
FROM {{source("sahil's sources","USERS")}} 