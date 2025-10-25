-- TASK: Get the full name of all authors who have written books with minimum 800 pages along with the book title and order them by ascending number of pages.
SELECT
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "Author Name",
    b.book_title
FROM 
    authors a
JOIN 
    books_authors ba ON ba.auth_id = a.auth_id
JOIN 
    books b ON b.book_id = ba.book_id
WHERE 
    b.book_pages >= 800
ORDER BY 
    b.book_pages ASC;