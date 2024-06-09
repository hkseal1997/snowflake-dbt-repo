SELECT 
    {{ currency('Currency', 'Value') }} AS converted_value 
FROM 
    {{ source("sahil's sources", "CURRENCY") }}
