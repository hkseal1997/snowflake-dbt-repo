


{% set columns = adapter.get_columns_in_relation(source("sahil's sources", "dim_payments")) %}
-- {{columns}} 
-- {% for i in columns -%}
--     {{i.column}}
-- {% endfor %}


select
    {% for c in columns -%}
        {% if c.name.startswith('PAY') %}
            {{ c.column }}
            {% if not loop.last %}, {% endif %}
        {% endif %}
    {%- endfor %}
from {{ source("sahil's sources", "dim_payments") }}