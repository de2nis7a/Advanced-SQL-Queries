-- TASK: Find the intersection of book titles written by the author with ID 3 and the author with ID 4.
SELECT 
    b.book_title 
FROM 
    books b
JOIN 
    books_authors ba ON ba.book_id = b.book_id
WHERE 
    ba.auth_id = 3
INTERSECT
SELECT 
    b.book_title
FROM 
    books b
JOIN 
    books_authors ba ON ba.book_id = b.book_id
WHERE 
    ba.auth_id = 4;