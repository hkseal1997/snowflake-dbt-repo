with students as (

    select * from {{ref("stg_students")}}
)
,enrollments as (
    select * from {{ref("stg_enrollments")}}
)
,courses as (
    select * from {{ref("stg_courses")}}
)

,final as (
    SELECT s.*,e.ENROLLMENT_ID FROM students s
    left join enrollments e
    on s.student_id=e.student_id
)

SELECT * FROM final