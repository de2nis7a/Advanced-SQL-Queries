-- TASK: List all the books that are meeting these conditions:
-- They are published between 2000 and 2020
-- They have pages between 200 and 300
-- Or pages between 400 and 500
SELECT
    b.book_title
FROM 
    books b 
WHERE 
    b.book_pub_year BETWEEN 2000 AND 2020 
    AND (b.book_pages BETWEEN 200 AND 300 OR b.book_pages BETWEEN 400 AND 500);