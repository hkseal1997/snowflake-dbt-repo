{% macro currency(currency_col, value_col) %}
{% if currency_col=="Yen" %}
    {{value_col}}/2
{% elif currency_col=="Dollars" %}
     {{value_col}}/4
{% else %}
    {{value_col}}/6
{% endif %}
{% endmacro %}
