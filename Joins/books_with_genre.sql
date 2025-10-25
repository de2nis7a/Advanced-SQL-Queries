-- TASK: Retrieve the book title, publication year, and number of pages for all books along with the corresponding genre name.
SELECT 
    b.book_title AS "Book Title",
    b.book_pub_year AS "Publication Year",
    b.book_pages AS "Number of Pages",
    g.genre_name AS "Genre Name"
FROM 
    books b 
JOIN 
    genres g ON b.genre_id = g.genre_id;