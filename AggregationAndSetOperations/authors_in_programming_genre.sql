-- TASK: List all authors that wrote books in Programming genre and count the number of books they wrote.
SELECT 
    a.auth_name,
    a.auth_last_name,
    COUNT(ba.book_id) AS "Book Count"
FROM 
    authors a 
JOIN 
    books_authors ba ON ba.auth_id = a.auth_id
JOIN 
    books b ON b.book_id = ba.book_id
JOIN 
    genres g ON g.genre_id = b.genre_id
WHERE 
    g.genre_name = 'Programming'
GROUP BY 
    a.auth_name, a.auth_last_name;