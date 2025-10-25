-- TASK: Find all books published by Elsevier in 2015.
SELECT 
    b.book_title
FROM 
    books b
JOIN 
    publishers p ON b.pub_id = p.pub_id
WHERE 
    p.pub_name = 'Elsevier' AND b.book_pub_year = 2015;