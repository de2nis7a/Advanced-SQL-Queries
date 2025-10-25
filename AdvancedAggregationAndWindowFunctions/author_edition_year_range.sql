-- TASK: What is the earliest and latest publication year amongst book editions for each author?
SELECT
    CONCAT_WS(' ', a.auth_name, a.auth_mid_name, a.auth_last_name) AS "NAME",
    MIN(be.ed_year) AS "Earliest Edition Year",
    MAX(be.ed_year) AS "Latest Edition Year"
FROM 
    authors a
JOIN 
    books_authors ba ON ba.auth_id = a.auth_id
JOIN 
    books b ON ba.book_id = b.book_id
JOIN 
    books_editions be ON be.book_id = b.book_id
GROUP BY 
    "NAME";