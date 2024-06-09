{{config(
    materialized='table'
)}}

SELECT * FROM {{source("sahil's sources","pii_raw")}}