-- TASK: Find the union of book titles written by the author with ID 3 and the author with ID 4.
SELECT
    b.book_title AS "Combined Books"
FROM
    books b
    JOIN books_authors ba ON b.book_id = ba.book_id
WHERE
    ba.auth_id = 3 
UNION
SELECT
    b.book_title
FROM
    books b
    JOIN books_authors ba ON b.book_id = ba.book_id
WHERE
    ba.auth_id = 4;