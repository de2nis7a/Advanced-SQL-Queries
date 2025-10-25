-- TASK: What is the date of the first loan and last loan for each student?
SELECT 
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "Name",
    MAX(l.loan_date) AS "Last Loan Date",
    MIN(l.loan_date) AS "First Loan Date"
FROM 
    students s
JOIN 
    loans l ON l.stu_id = s.stu_id
GROUP BY 
    "Name";