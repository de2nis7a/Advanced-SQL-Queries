-- TASK: Using the books_details view, find all books details whose titles contain the word 'Science'.
SELECT
    bd.book_id,
    bd.book_title
FROM 
    books_details bd 
WHERE 
    bd.book_title LIKE ('%Science%');