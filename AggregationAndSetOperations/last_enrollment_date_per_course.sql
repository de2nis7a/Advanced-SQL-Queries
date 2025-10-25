-- TASK: What is the last enrolment date for each of the courses? List them from the latest enrolment date to the earliest.
SELECT
    c.course_name,
    MAX(s.stu_enroll) AS "Last Enrollment Date"
FROM
    courses c
JOIN
    students s ON c.course_id = s.stu_course
GROUP BY
    c.course_name
ORDER BY
    "Last Enrollment Date" DESC;