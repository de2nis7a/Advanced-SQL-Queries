-- TASK: List 2 most common languages of the books in our library.
SELECT 
    l.lang_name,
    COUNT(b.book_id) AS "Book Count"
FROM 
    languages l
JOIN 
    books_languages b ON l.lang_id = b.lang_id
GROUP BY 
    l.lang_name
ORDER BY 
    "Book Count" DESC
LIMIT 2;