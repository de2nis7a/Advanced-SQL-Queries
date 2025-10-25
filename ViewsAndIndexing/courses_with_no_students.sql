-- TASK: List the course name and code that do not have any student registered. 
SELECT
    c.course_name,
    c.course_code
FROM 
    courses c 
LEFT JOIN 
    students s ON s.stu_course = c.course_id
WHERE 
    s.stu_course IS NULL;