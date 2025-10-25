-- TASK: Get the details of books that are available in German and published by Wiley. Order them by publication year.
SELECT
    b.book_title,
    b.book_pub_year
FROM 
    books b
JOIN 
    books_languages bl ON bl.book_id = b.book_id 
JOIN 
    languages l ON l.lang_id = bl.lang_id
JOIN 
    publishers p ON p.pub_id = b.pub_id
WHERE 
    l.lang_name = 'German' AND p.pub_name = 'Wiley'
ORDER BY 
    b.book_pub_year;