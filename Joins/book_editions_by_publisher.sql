-- TASK: Retrieve the book title, edition publication year, and edition number for all book editions along with the corresponding publisher name.
SELECT
    b.book_title,
    be.ed_year,
    be.ed_no,
    p.pub_name
FROM 
    publishers p 
JOIN 
    books b ON b.pub_id = p.pub_id
JOIN 
    books_editions be ON be.book_id = b.book_id;