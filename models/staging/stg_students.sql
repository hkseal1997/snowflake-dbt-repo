
with raw as (
SELECT * FROM {{source("Sf_sources",'students')}}
),

final as (
SELECT * ,
YEAR(ENROLLMENT_DATE) as Enrollment_year, -- enrollment year
FIRST_NAME || LAST_NAME as Full_name    -- full names
-- age of students
-- number of days since enrollment is done
from
raw

)

select * from final