{{
    config(
        materialized='ephemeral'
    )
}}
SELECT * FROM {{source("sahil's sources","USERS")}} 