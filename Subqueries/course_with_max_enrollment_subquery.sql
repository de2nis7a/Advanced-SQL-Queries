-- TASK: Identify the course with the highest number of enrolled students. Use a subquery to calculate the total, then identify the course with the highest enrolment.
SELECT 
    c.course_name AS "Course Name",
    COUNT (s.stu_id) AS "Number of Enrolled Students"
FROM 
    courses c
JOIN 
    students s ON c.course_id = s.stu_course
GROUP BY 
    c.course_id
HAVING 
    COUNT (s.stu_id) = (
        -- Subquery to find the maximum count
        SELECT 
            MAX (enrollment_count)
        FROM (
            -- Subquery to get counts for all courses
            SELECT 
                COUNT (stu_id) AS enrollment_count
            FROM 
                students
            GROUP BY 
                stu_course
        ) AS enrollment_totals
    );