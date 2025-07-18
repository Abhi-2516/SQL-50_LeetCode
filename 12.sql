# Write your MySQL query statement below
SELECT S.student_id , S.student_name ,SB.subject_name , COUNT(E.student_id) as attended_exams FROM Students as S cross join Subjects as SB LEFT JOIN Examinations as E ON S.student_id = E.student_id AND SB.subject_name = E.subject_name

GROUP BY S.student_id, S.student_name, SB.subject_name
ORDER BY S.student_id, S.student_name, SB.subject_name
