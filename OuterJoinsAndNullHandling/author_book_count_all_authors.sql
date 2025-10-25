-- TASK: List all authors full name along with the number of books published, from the most books published to the lowest. 
SELECT
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "Author",
    COUNT(ba.book_id) AS "No of Books"
FROM 
    authors a
LEFT JOIN 
    books_authors ba ON a.auth_id = ba.auth_id
GROUP BY 
    a.auth_id, a.auth_name, a.auth_mid_name, a.auth_last_name
ORDER BY 
    "No of Books" DESC;