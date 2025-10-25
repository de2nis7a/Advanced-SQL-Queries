-- TASK: Write a query to retrieve all book titles and publication year of all books with more than 500 pages.
SELECT 
    b.book_title,
    b.book_pub_year
FROM 
    books b
WHERE 
    b.book_pages > 500;