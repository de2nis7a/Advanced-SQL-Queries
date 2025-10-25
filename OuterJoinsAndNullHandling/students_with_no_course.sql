-- TASK: Find all the students that are not registered to any course along with their full name and contact details (email and phone).  
SELECT 
    s.stu_name AS "Student Name",
    s.stu_email,
    s.stu_phone
FROM 
    students s 
LEFT JOIN 
    courses c ON c.course_id = s.stu_course 
WHERE 
    s.stu_course IS NULL;