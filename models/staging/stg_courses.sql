
with raw as (
SELECT * FROM {{source("Sf_sources",'courses')}}
),
final as (
    SELECT
    *,
    CASE WHEN CREDITS=4 THEN 'Advanced' ELSE 'Beginer' END AS Level_of_couse, -- level of course
    CASE WHEN CURRENT_DATE() BETWEEN START_DATE AND END_DATE THEN 'Active' ELSE 'Inactive' END AS Active_Flag, -- is the course still runnning?
    DATEDIFF('days',START_DATE,END_DATE) AS Days_Passsed -- how many days have passed since the course stared
from raw

)


select * from final