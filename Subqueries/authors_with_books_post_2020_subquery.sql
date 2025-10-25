-- TASK: List the author name and last name who have written books published after the year 2020. Use a subquery to identify these books. Just the names.
SELECT DISTINCT
    a.auth_name AS "Author Name",
    a.auth_last_name AS "Author Last Name"
FROM 
    authors AS a
JOIN 
    books_authors AS ba ON a.auth_id = ba.auth_id
WHERE 
    ba.book_id IN (
        SELECT b.book_id
        FROM books AS b
        WHERE b.book_pub_year > 2020
    );