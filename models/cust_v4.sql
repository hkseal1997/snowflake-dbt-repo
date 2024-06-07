{{
    config(
        materialized='view'
    )
}}
SELECT *,
'{{invocation_id}}',
'{{run_start}}',
'{{run_end}}',
'{{model_start}}',
'{{model_end}}' 
FROM {{source("sahil's sources","USERS")}} 