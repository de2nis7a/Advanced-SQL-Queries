-- TASK: Create a VIEW named books_details that will hold the book id, title, genre, publisher and publication year. List the output in genre alphabetical order.  
CREATE VIEW books_details AS
SELECT
    b.book_id,
    b.book_title,
    g.genre_name,
    p.pub_name,
    b.book_pub_year
FROM 
    books b 
JOIN 
    publishers p ON p.pub_id = b.pub_id
JOIN 
    genres g ON g.genre_id = b.genre_id
ORDER BY 
    g.genre_name;