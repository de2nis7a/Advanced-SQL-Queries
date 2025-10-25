-- TASK: Get the author name, book title, and publication year for all books written by authors.
SELECT 
    a.auth_name,
    a.auth_mid_name,
    a.auth_last_name,
    b.book_title,
    b.book_pub_year
FROM 
    authors a 
JOIN 
    books_authors ba ON a.auth_id = ba.auth_id
JOIN 
    books b ON b.book_id = ba.book_id;