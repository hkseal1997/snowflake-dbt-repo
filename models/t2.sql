{{
    config(
        tag=['daily']
    )
}}

SELECT * 
FROM {{source("sahil's sources","USERS")}} 