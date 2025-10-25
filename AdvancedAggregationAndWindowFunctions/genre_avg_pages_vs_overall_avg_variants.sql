-- TASK: What is the average number of pages of books in each genre, and how does this compare to the overall average book length?

-- Helper query to find the average (581)
SELECT
    ROUND(AVG(book_pages), 0) AS "Pages AVG of all books"
FROM
    books;


-- V1: Using the hardcoded average (581)
SELECT
    g.genre_name AS "Genre",
    ROUND(AVG(b.book_pages), 0) AS "Genre AVG",
    581 AS "Overall AVG",
    ROUND(AVG(b.book_pages) - 581, 0) AS "Diff from overall"
FROM
    genres g
    JOIN books b ON g.genre_id = b.genre_id
GROUP BY
    g.genre_name
ORDER BY
    g.genre_name;


-- V2: Using a dynamic Subquery
SELECT
    g.genre_name AS "Genre",
    ROUND(AVG(b.book_pages), 0) AS "Genre AVG",
    (SELECT ROUND(AVG(book_pages), 0)
        FROM books) AS "Overall AVG",
    ROUND(AVG(b.book_pages) - (SELECT AVG(book_pages) FROM books), 0) AS "Diff from overall"
FROM
    genres g
    JOIN books b ON g.genre_id = b.genre_id
GROUP BY
    g.genre_name
ORDER BY
    G.genre_name;


-- V3: Using Window Functions (no subquery)
SELECT
    DISTINCT genre_name AS "Genre",
    ROUND(AVG(book_pages), 0) AS "Genre AVG",
    ROUND(SUM(SUM(book_pages)) OVER() / SUM(COUNT(book_title)) OVER()) AS "Overall AVG",
    ROUND(AVG(book_pages) - SUM(SUM(book_pages)) OVER() / SUM(COUNT(book_title)) OVER()) AS "Diff from overall"  
FROM
    genres g
    JOIN books b ON g.genre_id = b.genre_id
GROUP BY
    genre_name;