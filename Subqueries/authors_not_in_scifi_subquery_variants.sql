-- TASK: List the name and last name of all authors that do not have a book in the genre of Science Fiction. Use subquery.

-- V1: Using NOT EXISTS (Preferred Method)
SELECT 
    CONCAT(a.auth_name, ' ', a.auth_last_name) AS "Author"
FROM 
    authors a
WHERE 
    NOT EXISTS (
        SELECT 1
        FROM 
            genres g
        JOIN 
            books b ON b.genre_id = g.genre_id
        JOIN 
            books_authors ba ON ba.book_id = b.book_id
        WHERE 
            a.auth_id = ba.auth_id AND g.genre_name = 'Sci-Fi'
    );

-- V2: Using NOT IN
SELECT
    a.auth_name AS "Author Name",
    a.auth_last_name AS "Author Last Name"
FROM
    authors AS a
WHERE
    a.auth_id NOT IN (
        SELECT
            ba.auth_id
        FROM
            books_authors AS ba
        JOIN 
            books AS b ON ba.book_id = b.book_id
        JOIN 
            genres AS g ON b.genre_id = g.genre_id
        WHERE
            g.genre_name = 'Sci-Fi'
    );