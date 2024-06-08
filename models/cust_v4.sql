{{
    config(
        materialized='view')

}}


    
SELECT * ,'{{invocation_id}}' as Invocation_ID
FROM {{source("sahil's sources","USERS")}} 