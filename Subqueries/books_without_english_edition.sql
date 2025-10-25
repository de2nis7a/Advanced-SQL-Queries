-- TASK: Find the titles of books that have no editions available in English, using a subquery to filter out books with English editions.
SELECT 
    b.book_title AS "Book Title"
FROM 
    books b
WHERE 
    NOT EXISTS (
        SELECT 1
        FROM 
            books_languages bl
        JOIN 
            languages l ON bl.lang_id = l.lang_id
        WHERE 
            l.lang_code = 'EN'
            AND bl.book_id = b.book_id
    )
ORDER BY 
    b.book_title;