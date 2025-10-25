-- TASK: List all publishers that have published a minimum of 5 books.
SELECT 
    p.pub_name,
    COUNT(b.book_id) AS "Book Count"
FROM 
    publishers p
JOIN 
    books b ON b.pub_id = p.pub_id
GROUP BY 
    p.pub_name
HAVING 
    COUNT(b.book_id) >= 5;