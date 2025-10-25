-- TASK: Count all the books for each genre, and What is the percentage of books for each genre?
SELECT 
    g.genre_name,
    COUNT(b.book_id) AS "Book Count",
    ROUND(COUNT(b.book_id) * 100.0 / (SELECT COUNT(*) FROM books b), 2) AS "Percentage of Books"
FROM 
    genres g 
JOIN 
    books b ON g.genre_id = b.genre_id
GROUP BY 
    g.genre_name;