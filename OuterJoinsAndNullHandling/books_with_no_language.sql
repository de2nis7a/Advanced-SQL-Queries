-- TASK: Our database has an incorrect entry. One of the books do not have any language associated with it. What is the book name and the ID?
SELECT 
    b.book_title,
    b.book_id
FROM 
    books b 
LEFT JOIN 
    books_languages bl ON b.book_id = bl.book_id
WHERE 
    bl.lang_id IS NULL;