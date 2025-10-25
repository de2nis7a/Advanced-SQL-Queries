-- TASK: List the full name of all authors who have any of their names starting with letter M (any name - first, mid, last).
SELECT 
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "Author Name"
FROM 
    authors a
WHERE 
    a.auth_name LIKE 'M%' 
    OR a.auth_mid_name LIKE 'M%' 
    OR a.auth_last_name LIKE 'M%';