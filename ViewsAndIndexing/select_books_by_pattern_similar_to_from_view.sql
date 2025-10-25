-- TASK: Using the books_details view, find all books whose titles start with 'The' followed by any word, then end with a word that starts with 'of'
SELECT 
    bd.book_title
FROM 
    books_details bd
WHERE 
    bd.book_title SIMILAR TO 'The % of %';