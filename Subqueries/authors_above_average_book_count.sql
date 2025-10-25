-- TASK: Write a query to list authors who have published more than the average number of books across all authors. Use a subquery to calculate the average.
SELECT 
    CONCAT(a.auth_name, ' ', a.auth_last_name) AS "Author",
    COUNT (ba.book_id) AS "Number of Books Published"
FROM 
    authors a
JOIN 
    books_authors ba ON a.auth_id = ba.auth_id
GROUP BY 
    a.auth_id
HAVING 
    COUNT (ba.book_id) > (
        -- Subquery to find the average
        SELECT 
            AVG (book_count)
        FROM (
            -- Subquery to get book counts per author
            SELECT 
                COUNT (book_id) AS book_count
            FROM 
                books_authors
            GROUP BY 
                auth_id
        ) AS avg_books
    )
ORDER BY 
    "Number of Books Published" DESC;