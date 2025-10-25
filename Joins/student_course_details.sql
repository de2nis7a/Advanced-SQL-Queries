-- TASK: List the student name, last name and student email along with the course name and course code.
SELECT 
    s.stu_name AS "Student Name",
    s.stu_last_name AS "Student Last Name",
    s.stu_email AS "Student Email",
    c.course_name AS "Course Name",
    c.course_code AS "Course Code"
FROM 
    students s
JOIN 
    courses c ON c.course_id = s.stu_course;