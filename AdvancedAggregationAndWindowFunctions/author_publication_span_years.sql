-- TASK: Find the difference between the first and last book wrote by each author (how many years past from their first published book to the latest - please ignore editions).
SELECT 
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "NAME",
    MAX(b.book_pub_year) - MIN(b.book_pub_year) AS "Publication Span (Years)"
FROM 
    authors a
JOIN 
    books_authors ba ON ba.auth_id = a.auth_id
JOIN 
    books b ON b.book_id = ba.book_id
GROUP BY 
    "NAME";