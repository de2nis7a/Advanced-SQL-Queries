-- TASK: Find all authors who have 'Michael' as their first name. List their full name as one column.
SELECT 
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "Full Name"
FROM 
    authors a
WHERE 
    a.auth_name = 'Michael';