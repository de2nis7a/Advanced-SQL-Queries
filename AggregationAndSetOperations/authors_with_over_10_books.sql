-- TASK: List all authors who have written more than 10 books.
SELECT 
    a.auth_name,
    a.auth_last_name,
    COUNT(ba.book_id) AS "Book Count"
FROM 
    authors a
JOIN 
    books_authors ba ON ba.auth_id = a.auth_id
GROUP BY 
    a.auth_name, a.auth_last_name 
HAVING 
    COUNT(ba.book_id) > 10;