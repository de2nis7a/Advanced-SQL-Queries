-- TASK: Display all authors (full name) along with the title of a book they have written, if any
SELECT 
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "Author Name",
    COALESCE(b.book_title, 'N/A') AS "Book Title"
FROM 
    authors a
LEFT JOIN 
    books_authors ba ON ba.auth_id = a.auth_id
LEFT JOIN 
    books b ON b.book_id = ba.book_id;