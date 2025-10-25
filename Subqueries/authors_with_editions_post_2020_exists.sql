-- TASK: Modifying the previous query, list authors name and last name who have at least one edition of their books published after the year 2020. Use a subquery.
SELECT
    a.auth_name AS "Author Name",
    a.auth_last_name AS "Author Last Name"
FROM 
    authors AS a
WHERE 
    EXISTS (
        SELECT 1
        FROM 
            books_authors AS ba
        JOIN 
            books_editions AS be ON ba.book_id = be.book_id
        WHERE 
            ba.auth_id = a.auth_id
            AND be.ed_year > 2020
    );