-- TASK: list all genres and the total number of books in each genre, including the genres with no books allocated
SELECT 
    g.genre_name,
    COUNT(b.book_id) AS "Book Count"
FROM 
    genres g 
LEFT JOIN 
    books b ON g.genre_id = b.genre_id
GROUP BY 
    g.genre_name
ORDER BY 
    g.genre_name;