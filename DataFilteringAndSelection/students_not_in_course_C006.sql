-- TASK: Get the student name and last name as one column who are not enrolled in the course with the course code 'C006'. Show the courses name and code that are registered on. List them on student name alphabetical order.
SELECT 
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "Student Name",
    c.course_name,
    c.course_code
FROM 
    students s
JOIN 
    courses c ON s.stu_course = c.course_id
WHERE 
    c.course_code NOT IN ('C006')
ORDER BY 
    s.stu_name;