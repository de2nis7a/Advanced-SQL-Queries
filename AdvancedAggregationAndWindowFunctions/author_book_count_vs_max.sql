-- TASK: List the full name of each author in one column, The total number of books wrote, and what is the difference between their count and the highest number of books written by any author?
SELECT
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "NAME",
    COUNT(ba.book_id) AS "Book Count",
    MAX(COUNT(ba.book_id)) OVER() - COUNT(ba.book_id) AS "Difference from Max"
FROM 
    authors a
JOIN 
    books_authors ba ON ba.auth_id = a.auth_id
GROUP BY 
    "NAME";