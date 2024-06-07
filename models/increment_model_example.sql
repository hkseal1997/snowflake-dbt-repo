{{config(
    materialized = 'incremental'
)}}

SELECT * FROM {{source("sahil's sources",'DIM_SALES')}} t1

{% if is_incremental() %}
WHERE
t1.date > (SELECT MAX(DATE) from {{this}})
{% endif %}

