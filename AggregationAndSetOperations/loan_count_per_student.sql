-- TASK: How many books has each student borrowed? Order them on last name alphabetical order.
SELECT 
    s.stu_name,
    s.stu_last_name,
    COUNT(l.loan_id) AS "Loan Count"
FROM 
    students s
JOIN 
    loans l ON l.stu_id = s.stu_id
GROUP BY 
    s.stu_name, s.stu_last_name
ORDER BY 
    s.stu_last_name;