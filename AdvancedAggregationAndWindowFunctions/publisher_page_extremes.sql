-- TASK: Find the highest (MAX) and lowest (MIN) number of pages for books from each publisher.
SELECT 
    p.pub_name,
    MAX(b.book_pages) AS "Max Pages", 
    MIN(b.book_pages) AS "Min Pages"
FROM 
    publishers p
JOIN 
    books b ON b.pub_id = p.pub_id
GROUP BY 
    p.pub_name;