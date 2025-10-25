-- TASK: What is the total number of loans for each student, and what percentage does this represent of the total number of loans?
SELECT 
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "Name",
    COUNT(l.loan_id) AS "Loan Count",
    CONCAT(ROUND(COUNT(l.loan_id) * 100.0 / SUM(COUNT(l.loan_id)) OVER(), 2), '%') AS "Percentage of Total Loans"
FROM 
    students s
JOIN 
    loans l ON l.stu_id = s.stu_id
GROUP BY 
    "Name"
ORDER BY 
    "Loan Count";