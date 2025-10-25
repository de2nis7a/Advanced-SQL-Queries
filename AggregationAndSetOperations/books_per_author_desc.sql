-- TASK: List all authors and the count of books they have authored, ordered by the number of written books in descending order.
SELECT 
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "Author Name",
    COUNT(ba.book_id) AS "Book Count"
FROM 
    authors a
JOIN 
    books_authors ba ON ba.auth_id = a.auth_id 
GROUP BY 
    a.auth_name, a.auth_mid_name, a.auth_last_name
ORDER BY 
    "Book Count" DESC;