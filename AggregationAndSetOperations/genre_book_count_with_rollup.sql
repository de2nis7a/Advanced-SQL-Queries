-- TASK: List all genres and the number of the books in each genre. Sort them in alphabetical order. 
SELECT 
    g.genre_name,
    COUNT(b.book_title)
FROM 
    genres g
JOIN 
    books b ON b.genre_id = g.genre_id
GROUP BY 
    ROLLUP (g.genre_name)
ORDER BY 
    g.genre_name;