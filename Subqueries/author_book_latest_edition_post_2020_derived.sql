-- TASK: Extending from the previous query, list the author name & last name as one column, book title, original publication year and last edition year after 2020. Use subquery.
SELECT
    CONCAT(a.auth_name, ' ', a.auth_last_name) AS "Author",
    b.book_title AS "Book Title",
    b.book_pub_year AS "Pub. Year",
    le."Last Ed." AS "Latest Ed. Year"
FROM 
    authors a
JOIN 
    books_authors ba ON a.auth_id = ba.auth_id
JOIN 
    books b ON ba.book_id = b.book_id
JOIN (
    -- Subquery (Derived Table) to find only the latest editions post-2020
    SELECT
        be.book_id,
        MAX(be.ed_year) AS "Last Ed."
    FROM 
        books_editions be
    GROUP BY 
        be.book_id
    HAVING 
        MAX(be.ed_year) > 2020
) le ON b.book_id = le.book_id
ORDER BY 
    "Author", b.book_title;