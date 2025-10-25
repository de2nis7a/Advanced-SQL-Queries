-- TASK: Retrieve the titles of all books that belong to either science fiction or action genres.
SELECT
    b.book_title
FROM 
    books b
JOIN 
    genres g ON b.genre_id = g.genre_id
WHERE 
    g.genre_name IN ('Sci-Fi', 'Action');