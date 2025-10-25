-- TASK: For each genre, what's the average number of pages for the books? List them in alphabetical order. Can you round to nearest integer?
SELECT 
    g.genre_name,
    ROUND(AVG(b.book_pages)) AS "Average Pages"
FROM 
    genres g
JOIN 
    books b ON b.genre_id = g.genre_id
GROUP BY 
    g.genre_name
ORDER BY 
    g.genre_name;