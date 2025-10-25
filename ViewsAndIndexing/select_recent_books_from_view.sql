-- TASK: Based on the previous VIEW, create a new query that will return concatenated full author(s) name, the book title and genre for all books published in 2020 and after. Order from the most recent book. 
SELECT 
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "Author Name",
    bd.book_title,
    bd.genre_name
FROM 
    authors a
JOIN 
    books_authors ba ON ba.auth_id = a.auth_id 
JOIN 
    books_details bd ON bd.book_id = ba.book_id
WHERE 
    bd.book_pub_year >= 2020
ORDER BY 
    bd.book_pub_year DESC;