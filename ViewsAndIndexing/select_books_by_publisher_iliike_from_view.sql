-- TASK: Using the books_details view, find all books details whose publishers' name starts with 'penguin'.
SELECT 
    bd.book_title,
    bd.pub_name
FROM 
    books_details bd 
WHERE 
    bd.pub_name ILIKE ('penguin%');