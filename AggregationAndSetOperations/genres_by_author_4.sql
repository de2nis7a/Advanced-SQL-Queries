-- TASK: List all genres and the number of books in each genre written by the author with ID 4.
SELECT 
    g.genre_name,
    COUNT(b.book_id) AS "Book Count"
FROM 
    genres g
JOIN 
    books b ON b.genre_id = g.genre_id
JOIN 
    books_authors ba ON ba.book_id = b.book_id
WHERE 
    ba.auth_id = 4
GROUP BY 
    g.genre_name;