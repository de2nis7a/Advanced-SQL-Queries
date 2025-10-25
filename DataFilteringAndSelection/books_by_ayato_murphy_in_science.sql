-- TASK: List all books within science genre written by the author Ayato Murphy.
SELECT 
    b.book_title 
FROM 
    books b
JOIN 
    genres g ON g.genre_id = b.genre_id
JOIN 
    books_authors ba ON ba.book_id = b.book_id
JOIN 
    authors a ON ba.auth_id = a.auth_id
WHERE 
    g.genre_name = 'Science' 
    AND a.auth_name = 'Ayato' 
    AND a.auth_last_name = 'Murphy';