-- TASK: List the book name, genre, edition number and the number of copies of each edition. 
SELECT
    b.book_title,
    g.genre_name,
    be.ed_no,
    bi.total_copies
FROM 
    books b
JOIN 
    genres g ON g.genre_id = b.genre_id
JOIN 
    books_inventory bi ON bi.book_id = b.book_id
JOIN 
    books_editions be ON be.book_id = b.book_id
    AND be.ed_id = bi.ed_id;