-- TASK: Find all students studying the course of Software Engineering who lives in Portsmouth.
SELECT 
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "Student Name"
FROM 
    students s
JOIN 
    courses c ON c.course_id = s.stu_course
WHERE 
    s.stu_city = 'Portsmouth' AND c.course_name = 'Software Engineering';