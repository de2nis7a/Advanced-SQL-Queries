-- TASK: List the total number of students in each course, including new courses with no students, ordered from most students to least. 
SELECT 
    c.course_name,
    COUNT(s.stu_course) AS "Student Count"
FROM 
    students s
RIGHT JOIN 
    courses c ON c.course_id = s.stu_course 
GROUP BY 
    c.course_name
ORDER BY 
    "Student Count" DESC;