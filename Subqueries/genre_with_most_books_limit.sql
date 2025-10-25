-- TASK: What is the genre with the highest number of books published, and how many books are published under this genre?
SELECT
    g.genre_name,
    COUNT(b.book_id) AS "Number of Books"
FROM 
    genres g
JOIN 
    books b ON b.genre_id = g.genre_id
GROUP BY 
    g.genre_name
ORDER BY 
    "Number of Books" DESC
LIMIT 1;