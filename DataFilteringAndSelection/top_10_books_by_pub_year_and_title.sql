-- TASK: Retrieve the titles of the first 10 books, sorted by their publication year in descending order and book title alphabetical order.
SELECT
    b.book_title
FROM 
    books b
ORDER BY 
    b.book_pub_year DESC, b.book_title ASC
LIMIT 10;