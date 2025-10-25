-- TASK: Find the titles of books that have been published between the years 2000 and 2005, inclusive. Sort them ascending on publication year. Format columns.
SELECT 
    b.book_title AS "Book Title",
    b.book_pub_year AS "Publication Year"
FROM 
    books b
WHERE 
    b.book_pub_year BETWEEN 2000 AND 2005 
ORDER BY 
    b.book_pub_year ASC;