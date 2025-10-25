-- TASK: Count the number of books currently borrowed by each student. CONCAT student names.
SELECT
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "Name",
    COUNT(l.loan_id) AS "Borrowed Count"
FROM 
    students s
JOIN 
    loans l ON s.stu_id = l.stu_id
WHERE 
    l.status = 'Borrowed'
GROUP BY 
    "Name";