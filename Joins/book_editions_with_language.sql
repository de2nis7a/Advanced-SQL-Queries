-- TASK: List the book title, publication year, and language name for all books along with the corresponding edition number.
SELECT 
    b.book_title,
    b.book_pub_year,
    l.lang_name,
    be.ed_no
FROM 
    languages l 
JOIN 
    books_languages bl ON bl.lang_id = l.lang_id
JOIN 
    books b ON b.book_id = bl.book_id
JOIN 
    books_editions be ON be.book_id = b.book_id;