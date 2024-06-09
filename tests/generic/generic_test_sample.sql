{% test new_test(model,column_name)%}

SELECT * FROM {{model}}
WHERE {{column_name}} > 1000

{% endtest %}