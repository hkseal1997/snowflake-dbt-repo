-- SELECT *,
-- ((Sales1-Sales2)/Sales2)*100 as Change,
-- ((Sales1-Sales3)/Sales3)*100 as Change,
-- ((Sales1-Cost)/Cost)*100 as Change
--  FROM {{source("sahil's sources",'person_sales')}}


SELECT *,
{{perc_change('Sales1','Sales2')}} as Change,
{{perc_change('Sales1','Sales2')}} as Change,
{{perc_change('Sales1','Sales2')}} as Change
 FROM {{source("sahil's sources",'person_sales')}}
