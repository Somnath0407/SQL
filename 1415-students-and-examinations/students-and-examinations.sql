# Write your MySQL query statement below
select s.student_id,s.student_name ,sb.subject_name ,
    count(e.subject_name) as attended_exams
from Students as s
cross join Subjects as sb
left join Examinations as e
  on  s.student_id =e.student_id 
  and sb.subject_name =e.subject_name 
GROUP BY 
    s.student_id,
    s.student_name,
    sb.subject_name
ORDER BY 
    s.student_id,
    sb.subject_name;