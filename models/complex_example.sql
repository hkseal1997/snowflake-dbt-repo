{% set payment_modes=dbt_utils.get_column_values(source("sahil's sources",'PAYMENT_MODES'),'PAYMENT_MODE') %} 
SELECT
{% for i in payment_modes %}
SUM(CASE WHEN PAYMENT_MODE='{{i}}' THEN SALES END) AS {{i}}_sales {%- if not loop.last -%},{% endif %},
{% endfor %}
FROM {{source("sahil's sources",'PAYMENT_MODES')}}


-- {% set payment_modes=dbt_utils.get_column_values(source("sahil's sources",'PAYMENT_MODES'),'PAYMENT_MODE') %} 
-- SELECT
-- {% for i in payment_modes %}
-- SUM(CASE WHEN PAYMENT_MODE='{{i}}' THEN SALES END) AS {{ i | lower }}_SALES 
-- {{loop.first}}
-- {% endfor %}
-- FROM {{source("sahil's sources",'PAYMENT_MODES')}}

-- {% set a=['a','b','c']%}
-- {% for i in a%}
-- {{i}}
-- {% endfor %}


-- SELECT * FROM {{source("sahil's sources",'PAYMENT_MODES')}}

-- SELECT 
-- SUM(CASE WHEN PAYMENT_MODE='UPI' THEN SALES END) AS UPI_SALES
-- ,SUM(CASE WHEN PAYMENT_MODE='CASH' THEN SALES END) AS CASH_SALES
-- ,SUM(CASE WHEN PAYMENT_MODE='CC' THEN SALES END) AS CC_SALES
-- ,SUM(CASE WHEN PAYMENT_MODE='DC' THEN SALES END) AS DC_SALES
-- ,SUM(CASE WHEN PAYMENT_MODE='VOUCHER' THEN SALES END) AS VOUCHER_SALES
-- FROM
-- {{source("sahil's sources",'PAYMENT_MODES')}}

-- JINJA LOGIC + SQL

--{% set payment_modes=['UPI','CASH','CC','DC','VOUCHER'] %}










